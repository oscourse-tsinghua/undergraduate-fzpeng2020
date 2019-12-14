`include "cpu/defines.v"

//数据存储器data_ram
`define DataAddrBus 31:0
`define DataBus 31:0
`define DataMemNum (4*1024*1024)
`define DataMemNumLog2 22
`define ByteWidth 7:0

module ram_wishbone (
	input wire clk,
	input wire rst_n,

	input wire[`WishboneAddrBus]           wishbone_addr_i,
	input wire[`WishboneDataBus]           wishbone_data_i,
	input wire                    wishbone_we_i,
	input wire[`WishboneSelBus]               wishbone_sel_i,
	input wire                    wishbone_stb_i,
	input wire                    wishbone_cyc_i,
	
	output reg[`WishboneDataBus]           wishbone_data_o,
	output wire                   wishbone_ack_o
);
	// request signal
	wire request;

	// request signal's rising edge
	reg  request_delay;
	wire request_rising_edge;
	wire is_read, is_write;

	// ack signal
	reg  [2:0]ram_ack_delay;

	// get request signal
	assign request = wishbone_stb_i & wishbone_cyc_i;

	// Internal Assignments
	assign is_read  = wishbone_stb_i & wishbone_cyc_i & ~wishbone_we_i;
	assign is_write = wishbone_stb_i & wishbone_cyc_i & wishbone_we_i;


	reg[`WishboneDataBus]  mem[0:`DataMemNum-1];
	
	always @ (posedge clk or negedge rst_n)
		if(rst_n == `RstEnable)
			request_delay <= 1'b0;
		else
			request_delay <= request;
 
 	assign request_rising_edge = ((request_delay ^ request) & request) | (request & request_delay & ram_ack_delay[2]);

	// generate a 1 cycle acknowledgement for each request rising edge
	always @ (posedge clk or negedge rst_n)
	begin
		if (rst_n == `RstEnable) begin
			{ram_ack_delay} <= 3'b000;
			wishbone_data_o <= `ZeroWord;
		end
		else if(request == 1'b0)
			{ram_ack_delay} <= 3'b000;
		else if (request_rising_edge == 1'b1)
		begin
			{ram_ack_delay} <= {ram_ack_delay[1:0], 1'b1};

			if(is_write)
			begin
				if (wishbone_sel_i[3] == 1'b1)
					mem[wishbone_addr_i[`DataMemNumLog2+1:2]][31:24] <= wishbone_data_i[31:24];
				if (wishbone_sel_i[2] == 1'b1)
					mem[wishbone_addr_i[`DataMemNumLog2+1:2]][23:16] <= wishbone_data_i[23:16];
				if (wishbone_sel_i[1] == 1'b1)
					mem[wishbone_addr_i[`DataMemNumLog2+1:2]][15:8] <= wishbone_data_i[15:8];
				if (wishbone_sel_i[0] == 1'b1)
					mem[wishbone_addr_i[`DataMemNumLog2+1:2]][7:0] <= wishbone_data_i[7:0];
			end
			else
			begin
				wishbone_data_o <= `ZeroWord;

				if (wishbone_sel_i[3] == 1'b1)
					wishbone_data_o[31:24] <= mem[wishbone_addr_i[`DataMemNumLog2+1:2]][31:24];
				if (wishbone_sel_i[2] == 1'b1)
					wishbone_data_o[23:16] <= mem[wishbone_addr_i[`DataMemNumLog2+1:2]][23:16];
				if (wishbone_sel_i[1] == 1'b1)
					wishbone_data_o[15:8] <= mem[wishbone_addr_i[`DataMemNumLog2+1:2]][15:8];
				if (wishbone_sel_i[0] == 1'b1)
					wishbone_data_o[7:0] <= mem[wishbone_addr_i[`DataMemNumLog2+1:2]][7:0];
			end
		end
		else
		begin
			{ram_ack_delay} <= {ram_ack_delay[1:0], 1'b0};
		end
	end

	assign wishbone_ack_o = ram_ack_delay[0] & request;
endmodule
