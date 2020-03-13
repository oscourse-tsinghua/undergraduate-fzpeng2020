`include "defines.v"
module sdram_naked_master(
	input 					clk,
	input 					rst_n,
	output  	 	[31:0]	wishbone_addr_o,
	output  reg	[31:0]   wishbone_data_o,
	output  reg				wishbone_we_o,
	output  	  	[3:0]	   wishbone_sel_o,
	output  reg				wishbone_stb_o,
	output  reg			   wishbone_cyc_o,
	input  		[31:0]   wishbone_data_i,
	input			 	  	   wishbone_ack_i
);

reg [3:0] state;
reg [31:0] rdata;

localparam state_idle				= 4'b0000;
localparam state_write				= 4'b0001;
localparam state_write_wait      = 4'b0010;

localparam state_read				= 4'b0011;
localparam state_read_wait			= 4'b0100;
localparam state_print			   = 4'b0101;
localparam state_print_wait	   = 4'b0110;


localparam DATA = 32'h30313233; //ASCII 0123

// slave1 uart(所以最高位是1) slave0 sdram(最高位变为0)
// 经过slave后的地址:
// uart地址 -> 1000_0000  sdram地址 8000_0000 -> 0000_0000
assign wishbone_addr_o = (state == state_print || state == state_print_wait ) ? 32'h10000000 : 00000000;
assign wishbone_sel_o = 4'b1111;

reg [2:0] cnt;
	
always @(posedge clk) begin
	if(rst_n == `RstEnable) begin
		state <= state_idle;
		wishbone_stb_o <= 1'b0;
		wishbone_cyc_o <= 1'b0;
		wishbone_we_o <= 1'b0;
	end else begin
		case (state)
			state_idle: begin
				`ifdef Simulation
					state <= state_print;
					rdata <= 32'h30313233;
				`else
					state <= state_write;
				`endif
			end
			state_write: begin
				wishbone_data_o <= DATA;
				state <= state_write_wait;
				wishbone_stb_o <= 1'b1;
				wishbone_cyc_o <= 1'b1;
				wishbone_we_o <= 1'b1;
			end
			state_write_wait: begin
				if(wishbone_ack_i) begin
					wishbone_stb_o <= 1'b0;
					wishbone_cyc_o <= 1'b0;
					wishbone_we_o <= 1'b0;				
					state <= state_read;
				end 
			end
			state_read: begin
				state <= state_read_wait;
				wishbone_stb_o <= 1'b1;
				wishbone_cyc_o <= 1'b1;		
			
			end
			state_read_wait: begin
				if(wishbone_ack_i) begin
					state <= state_print;
					rdata <= wishbone_data_i;
					wishbone_stb_o <= 1'b0;
					wishbone_cyc_o <= 1'b0;
					cnt <= 3'b000;
				end 
			end
			state_print: begin
				wishbone_stb_o <= 1'b1;
				wishbone_cyc_o <= 1'b1;
				wishbone_we_o <= 1'b1;
				wishbone_data_o <= rdata[7:0];
				cnt <= cnt + 3'b1;
				state <= state_print_wait;
			end
			state_print_wait: begin
				if(wishbone_ack_i) begin
					wishbone_stb_o <= 1'b0;
					wishbone_cyc_o <= 1'b0;
					wishbone_we_o <= 1'b0;
					if(cnt == 3'b100) state <= state_idle;
					else begin
						rdata = rdata >> 8;
						state <= state_print;
					end
				end
			end
		endcase
	end
end
endmodule
		
		
