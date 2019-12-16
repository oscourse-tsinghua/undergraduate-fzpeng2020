`include "cpu/defines.v"

module rom_wishbone (
	 input 						 	 clk,		//
	 input 						 	 rst_n,	
	 input  [`WishboneDataBus]	 wishbone_addr_i,
	 input  [`WishboneDataBus]  wishbone_data_i,
	 input							 wishbone_we_i,
	 input  [`WishboneSelBus]	 wishbone_sel_i,
	 input 							 wishbone_stb_i,
	 input							 wishbone_cyc_i,
	 output	[`WishboneDataBus] wishbone_data_o,
	 output							 wishbone_ack_o
);

ip_rom ip_rom0 (
	.address		(wishbone_addr_i[14:2]),
	.clock		(clk),	
	.q				(wishbone_data_o)
);

// request signal
	wire request;

	// request signal's rising edge
	reg  request_delay;
	wire request_rising_edge;

	// ack signal
	reg  [2:0]ram_ack_delay;

	// get request signal
	assign request = wishbone_stb_i & wishbone_cyc_i;

	always @ (posedge clk or negedge rst_n)
		if(rst_n == `RstEnable)
			request_delay <= 1'b0;
		else
			request_delay <= request;
 
 	assign request_rising_edge = ((request_delay ^ request) & request) | (request & request_delay & ram_ack_delay[2]);

always @ (posedge clk or negedge rst_n)
	begin
		if (rst_n == `RstEnable)
		begin
			{ram_ack_delay} <= 3'b000;
		end
		else if(request == 1'b0)
		begin
			{ram_ack_delay} <= 3'b000;
		end
		else if (request_rising_edge == 1'b1)
		begin
			{ram_ack_delay} <= {ram_ack_delay[1:0], 1'b1};	
		end
		else
		begin
			{ram_ack_delay} <= {ram_ack_delay[1:0], 1'b0};
		end
	end

	assign wishbone_ack_o = ram_ack_delay[0] & request;


endmodule

