/*
 *  PicoSoC - A simple example SoC using PicoRV32
 *
 *  Copyright (C) 2017  Clifford Wolf <clifford@clifford.at>
 *
 *  Permission to use, copy, modify, and/or distribute this software for any
 *  purpose with or without fee is hereby granted, provided that the above
 *  copyright notice and this permission notice appear in all copies.
 *
 *  THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES
 *  WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF
 *  MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR
 *  ANY SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES
 *  WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN
 *  ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF
 *  OR IN CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.
 *
 */
`include "cpu/defines.v"
module wishbone_uart_lite #(
	parameter ClkFreq   = 20000000,
	parameter BoundRate = 115200
)(
	input clk,
	input resetn,

	output ser_tx,
	input  ser_rx,

	input  [`WishboneDataBus]	  wishbone_addr_i,
	input  [`WishboneDataBus]    wishbone_data_i,
	input								  wishbone_we_i,
	input  [`WishboneSelBus]	  wishbone_sel_i,
	input 							  wishbone_stb_i,
	input								  wishbone_cyc_i,
	output [`WishboneDataBus]    wishbone_data_o,
	output							  wishbone_ack_o

);
	localparam CfgDivder = ClkFreq/BoundRate;
	localparam StateIdle = 2'b00;
	localparam StateReq  = 2'b01;
	localparam StateWait = 2'b10;
	localparam StateOk	= 2'b11;
	
	reg [9:0] send_pattern;
	reg [3:0] send_bitcnt;
	reg [9:0] send_divcnt;
	reg [1:0] state;
	
	wire req = wishbone_cyc_i && wishbone_stb_i && wishbone_we_i;
	assign wishbone_ack_o = state == StateOk ? 1'b1 : 1'b0;
	assign wishbone_data_o = 32'b0;
	assign ser_tx = send_pattern[0];
	
	always @(posedge clk) begin
		if(resetn == `RstEnable) begin
			state <= StateIdle;
			send_pattern[0] = 1'b1;
		end else begin
		case(state)
			StateIdle: begin
				if(req) begin
					state <= StateReq;
					send_pattern <= {1'b1, wishbone_data_i[7:0], 1'b0};
					send_bitcnt <= 10;
					send_divcnt <= 0;
				end else begin
					send_pattern <= ~0;
					send_bitcnt <= 0;
					send_divcnt <= 0;
				end
			end
			StateReq: begin
				if(send_bitcnt == 0) begin
					state <= StateOk;
				end else if(send_divcnt >= CfgDivder) begin
					send_pattern <= {1'b1, send_pattern[9:1]};
					send_bitcnt <= send_bitcnt - 1;
					send_divcnt <= 0;
				end else begin
					send_divcnt = send_divcnt + 1;
				end
			end
			StateOk: begin
				state <= StateIdle;
				send_pattern[0] = 1'b1;
			end
		endcase
		end
	end
		
	/*
	
	always @(posedge clk) begin
		if (!resetn || !req) begin
		end else begin
			send_divcnt <= send_divcnt + 1'b1;
			if (send_bitcnt == 4'b0000) begin
				send_pattern <= ~0;
				send_bitcnt <= 4'b1111;
				send_divcnt <= 0;
			end else
			if (send_bitcnt == 4'b1111) begin
				send_pattern <= {1'b1, wishbone_data_i[7:0], 1'b0};			//MSB ~ LSB 分别为终止，数据，起始位
				send_bitcnt <= 10;
				send_divcnt <= 0;
			end else
			if (send_divcnt > CfgDivder && send_bitcnt) begin
				send_pattern <= {1'b1, send_pattern[9:1]};
				send_bitcnt <= send_bitcnt - 1;
				send_divcnt <= 0;
			end
		end
	end
	*/
endmodule
