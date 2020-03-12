/*
 * Copyright (c) 2013, Stefan Kristiansson <stefan.kristiansson@saunalahti.fi>
 * All rights reserved.
 *
 * Redistribution and use in source and non-source forms, with or without
 * modification, are permitted provided that the following conditions are met:
 *     * Redistributions of source code must retain the above copyright
 *       notice, this list of conditions and the following disclaimer.
 *     * Redistributions in non-source form must reproduce the above copyright
 *       notice, this list of conditions and the following disclaimer in the
 *       documentation and/or other materials provided with the distribution.
 *
 * THIS WORK IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
 * AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO,
 * THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR
 * PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR
 * CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL,
 * EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO,
 * PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
 * LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND
 * ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
 * (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
 * WORK, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 */
`include "cpu/defines.v"
 
module wb32_avalon16 (
	input			  sdram_clk,
	input 		  clk,
	input 		  reset_n,
	
	// Wishbone Slave Input
	(*keep*)input [31:0] 		wishbone_addr_i,
	(*keep*)input [31:0] 	 	wishbone_data_i,
	(*keep*)input [3:0]  		wishbone_sel_i,
	(*keep*)input 		 	 		wishbone_we_i,
	(*keep*)input 		 	 		wishbone_cyc_i,
	(*keep*)input 		 			wishbone_stb_i,
	output 	  [31:0] wishbone_data_o,					//ok
	output reg  	  	wishbone_ack_o,						

	// Avalon Master Output
	output reg [21:0] avalon_sdram_address_o,
	output reg [1:0]  avalon_sdram_byteenable_n_o,
	output reg		   avalon_sdram_read_n_o,
	(*keep*)input  	  [15:0] avalon_sdram_readdata_i,
	output  		 	   avalon_sdram_chipselect_o,		//ok
	output reg		   avalon_sdram_write_n_o,
	output reg [15:0] avalon_sdram_writedata_o,
	(*keep*)input 		  		avalon_sdram_waitrequest_i,
	(*keep*)input 		  		avalon_sdram_readdatavalid_i
);

reg 	[3:0]	state;
reg	[4:0] cnt;
reg   [31:0] rdata;
reg	done;
reg	skip_to_idle;
reg	[31:0] wishbone_addr_r;
reg	[31:0] wishbone_data_r;
reg	[3:0]  wishbone_sel_r;
reg 			 wishbone_we_r;
reg		 	 wishbone_cyc_r;
reg			 wishbone_stb_r;

(*noprune*)reg	[15:0] avalon_sdram_readdata_r;
(*noprune*)reg			 avalon_sdram_waitrequest_r;
(*noprune*)reg			 avalon_sdram_readdata_valid_r;


always @(posedge sdram_clk) begin
	avalon_sdram_readdata_r <= avalon_sdram_readdata_i;
	avalon_sdram_waitrequest_r <= avalon_sdram_waitrequest_i;
	avalon_sdram_readdata_valid_r <= avalon_sdram_readdatavalid_i;
end

assign avalon_sdram_chipselect_o = ~(avalon_sdram_write_n_o & avalon_sdram_read_n_o);

localparam state_idle				= 4'b0000;
localparam state_write_byte_lo	= 4'b0001;
localparam state_write_wait_lo   = 4'b0010;
localparam state_write_byte_hi   = 4'b0011;
localparam state_write_wait_hi	= 4'b0100;

localparam state_read_byte_lo  	= 4'b0101;
localparam state_read_wait_lo		= 4'b0110;
localparam state_read_byte_hi  	= 4'b0111;
localparam state_read_wait_hi		= 4'b1000;

localparam state_done 				= 4'b1001;

assign wishbone_data_o = rdata;

always @(posedge clk) begin
	if(reset_n == `RstEnable) begin
		wishbone_addr_r <= 32'b0;
		wishbone_data_r <= 32'b0;
		wishbone_sel_r <= 4'b0;
		wishbone_we_r <= 1'b0;
		wishbone_cyc_r <= 1'b0;
		wishbone_stb_r <= 1'b0;
		wishbone_ack_o <= 1'b0;
	end else if(state == state_done) begin
		wishbone_ack_o <= 1'b1;
		skip_to_idle <= 1'b1;
	end else begin
		wishbone_ack_o <= 1'b0;
		skip_to_idle <= 1'b0;
		wishbone_addr_r <= wishbone_addr_i;
		wishbone_data_r <= wishbone_data_i;
		wishbone_sel_r <= wishbone_sel_i;
		wishbone_we_r <= wishbone_we_i;
		wishbone_cyc_r <= wishbone_cyc_i;
		wishbone_stb_r <= wishbone_stb_i;
	end
end

always @(posedge sdram_clk) begin
	if(reset_n == `RstEnable) begin
		state <= state_idle;
		avalon_sdram_byteenable_n_o <= 2'b11;
		avalon_sdram_read_n_o <= 1'b1;//_n低电平有效
		avalon_sdram_write_n_o <= 1'b1;
		avalon_sdram_writedata_o <= 16'b0;
		cnt <= 5'b00000;

	end else begin
		case(state)
			state_idle: begin
				done <= 1'b0;
				//wait some cycles
				if(wishbone_cyc_r == 1'b0 || wishbone_stb_r == 1'b0) begin
					cnt <= 5'b0;
				end else begin
					cnt <= cnt + 5'b1;
					if (cnt == 5'b11111) begin//31
					
					//读写检测
						if(wishbone_we_r) begin 
							state <= state_write_byte_lo;
							avalon_sdram_writedata_o <= wishbone_data_r[15:0];
							avalon_sdram_byteenable_n_o <= ~wishbone_sel_r[1:0];
							avalon_sdram_address_o <= {wishbone_addr_r[21:1],1'b0};
						end
						else state <= state_read_wait_lo;//
					end
				end 
			end
			
			
			//写
			state_write_byte_lo: begin
				if(wishbone_sel_r[1:0] != 2'b00) begin // write low
					avalon_sdram_write_n_o <= 1'b0;
					state <= state_write_wait_lo;
				end else begin 
					state <= state_write_byte_hi;
				end	
			end
			state_write_wait_lo: begin
				if(!avalon_sdram_waitrequest_i) begin//不等待就写
					avalon_sdram_writedata_o <= wishbone_data_r[31:16];
					avalon_sdram_byteenable_n_o <= ~wishbone_sel_r[3:2];
					avalon_sdram_address_o <= {wishbone_addr_r[21:1],1'b1};
					avalon_sdram_write_n_o <= 1'b1;
					state <= state_write_byte_hi;
				end
				
			end
			state_write_byte_hi: begin
				if(wishbone_sel_r[3:2] != 2'b00) begin // write high
					avalon_sdram_write_n_o <= 1'b0;
					state <= state_write_wait_hi;
				end else begin
					state <= state_done;
				end
			end
			state_write_wait_hi: begin
				if(!avalon_sdram_waitrequest_i) begin
					avalon_sdram_write_n_o <= 1'b1;
					state <= state_done;				
				end
			end
			
			
			
			
			// if no wait request, start read low byte
			state_read_wait_lo: begin
				avalon_sdram_read_n_o <= 1'b0;
				avalon_sdram_address_o <= {wishbone_addr_r[21:1],1'b0};
				avalon_sdram_byteenable_n_o <= 2'b00;
				state <= state_read_byte_lo;
				
			end
			
			// read low byte
			state_read_byte_lo: begin//
				if(!avalon_sdram_waitrequest_i) begin
					avalon_sdram_read_n_o <= 1'b1;
				end
				if(avalon_sdram_readdatavalid_i) begin 	
					state <= state_read_wait_hi;
				end
				rdata[15:0] <= avalon_sdram_readdata_i;
			end
			
			// if no wait request, start read high byte
			state_read_wait_hi: begin
				avalon_sdram_read_n_o <= 1'b0;
				avalon_sdram_address_o <= {wishbone_addr_r[21:1],1'b1};
				avalon_sdram_byteenable_n_o <= 2'b00;
				state <= state_read_byte_hi;
			end
			
			// read high byte
			state_read_byte_hi: begin
				if(!avalon_sdram_waitrequest_i) begin
					avalon_sdram_read_n_o <= 1'b1;
				end
				if(avalon_sdram_readdatavalid_i) begin 	
					state <= state_done;
					avalon_sdram_read_n_o <= 1'b1;
				end
				rdata[31:16] <= avalon_sdram_readdata_i;
			end
			
			
			
			
			state_done: begin
				cnt <= 5'b0;
				if (skip_to_idle == 1'b1) state <= state_idle;
			end
			
		endcase
	end
end	
	/*
assign avalon_sdram_address_o = wishbone_addr_i;
assign avalon_sdram_write_n_o = req & wishbone_we_i;
assign avalon_sdram_read_n_o = req & !wishbone_we_i;
assign wishbone_ack_o = write_ack | avalon_sdram_readdatavalid_i;


assign avalon_sdram_writedata_o = wishbone_data_i;
assign avalon_sdram_byteenable_n_o = wishbone_sel_i;
assign wishbone_data_o = avalon_sdram_readdata_i;
assign avalon_sdram_chipselect_o = 1'b1;
*/
endmodule
