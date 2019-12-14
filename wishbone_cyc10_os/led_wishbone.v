`include "cpu/defines.v"

module led_wishbone(
	 input 						 	 clk,		
	 input 						 	 rst_n,	
	 input  [`WishboneDataBus]	 wishbone_addr_i,
	 input  [`WishboneDataBus]  wishbone_data_i,
	 input							 wishbone_we_i,
	 input  [`WishboneSelBus]	 wishbone_sel_i,
	 input 							 wishbone_stb_i,
	 input							 wishbone_cyc_i,
	 output	[`WishboneDataBus] wishbone_data_o,
	 output	reg					 wishbone_ack_o,
	 output  reg [7:0]			 led
);


always @(posedge clk) begin
	if (rst_n == `RstEnable) begin
		wishbone_ack_o <= 1'b0;
		led <= 8'b1;
	end else if(wishbone_stb_i == 1'b1 && wishbone_cyc_i == 1'b1 && wishbone_we_i == 1'b1) begin
		wishbone_ack_o <= 1'b1;
		led <= wishbone_data_i[7:0];
	end else if(wishbone_stb_i == 1'b1 && wishbone_cyc_i == 1'b1 && wishbone_we_i == 1'b0) begin
		wishbone_ack_o <= 1'b1;
	end else begin
		wishbone_ack_o <= 1'b0;
	end
end

assign wishbone_data_o = {24'h0,led};

endmodule
