`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.01.2022 18:16:06
// Design Name: 
// Module Name: testbench
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

`timescale 1ns/1ns
module pwm_tb;
	logic clk_i=0;
	logic rst_ni=0;
	logic write;									
	logic  [7:0]    addr_i=0;											
	logic  [31:0]   wdata_i=0;																			
	logic  [31:0]  	rdata_o;																								
  	logic         	o_pwm_1;
	logic     		oe_pwm1;
	logic           psel;
	logic           penable;
	logic           pslverr;
	logic           pready;
	
pwm pwm_dut(.*);

always begin
    #10;
    clk_i=1'b0;
    #10;
    clk_i=1'b1;
end

initial begin
    psel = 1'b1;
    write = 1'b0;
    penable = 1'b1;
	rst_ni = 1'b0;
	
	@(posedge clk_i);
	write = 1'b0;
	rst_ni = 1'b1;  // deassert reset
	// control (channel 1)
    
    @(posedge clk_i);
	write = 1'b1;
	//divisor (channel 1)
	addr_i = 8'd4;
	wdata_i = 32'd1;
	@(posedge clk_i);
	write = 1'b0;
	//period (channel 1)
	@(posedge clk_i);
	addr_i = 8'd8;;
	wdata_i = 32'd5;
	write = 1'b1;
	@(posedge clk_i);
	write = 1'b0;
	//DC (channel 1)
	@(posedge clk_i);
	addr_i = 8'd12;
	wdata_i = 32'd3;;
	write = 1'b1;
	@(posedge clk_i);
	write = 1'b0;
	
	@(posedge clk_i);
    addr_i = 8'd0;;
    wdata_i = 32'd7;
    write  = 1'b1;


end 
endmodule 