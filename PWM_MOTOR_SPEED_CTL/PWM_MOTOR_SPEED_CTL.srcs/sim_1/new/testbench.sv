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
//	logic clk_i=0;
//	logic rst_ni=0;
//	logic write;									
//	logic  [7:0]    addr_i=0;											
//	logic  [31:0]   wdata_i=0;																			
//	logic  [31:0]  	rdata_o;																								
//  	logic         	o_pwm_1;
//	logic     		oe_pwm1;
//	logic           psel;
//	logic           penable;
//	logic           pslverr;
//	logic           pready;


    logic  UpInput; 
    logic  reset_l;
    logic  DownInput;
    logic  EnableInput;
    logic PWM_O;
    logic clk_in1=0;	
    
//pwm pwm_dut(.*);
PWM_controller dut (.UpInput(UpInput),
                .clk_in1(clk_in1),
                .reset_l(reset_l),
                .DownInput(DownInput),
                .EnableInput(EnableInput),
                .PWM_O(PWM_O)
                 );

always begin
    #10;
    clk_in1=1'b0;
    #10;
    clk_in1=1'b1;
end

initial begin
     UpInput=0; 
     reset_l=1'b0;
     DownInput=0;
     EnableInput=1;
     
     #5 reset_l=1'b1;
     
     #50000 UpInput=1;     
     #40053 UpInput=0;
     #40044 UpInput=1;
     #40053 UpInput=0;
     #40044 UpInput=1;
     #40053 UpInput=0;
     #40044 UpInput=1;
     #40053 UpInput=0;
     #40044 UpInput=1;
     #40053 UpInput=0;
     #40044 UpInput=1;
     #40053 UpInput=0;
     #40044 UpInput=1;
     #40053 UpInput=0;
     #40044 UpInput=1;
     #40053 UpInput=0;
     #40044 UpInput=1;
     #40053 UpInput=0;
     #40044 UpInput=1;
     #40053 UpInput=0;
     #50000 UpInput=1;
     #50000 UpInput=1;
     #40053 UpInput=0;
     #40044 UpInput=1;
     #40053 UpInput=0;
     #40044 UpInput=1;
     #40053 UpInput=0;
     #40044 UpInput=1;
     #40053 UpInput=0;
     #40044 UpInput=1;
     #40053 UpInput=0;
     #40044 UpInput=1;
     #40053 UpInput=0;
     #40044 UpInput=1;
     #40053 UpInput=0;
     #40044 UpInput=1;
     #40053 UpInput=0;
     #40044 UpInput=1;
     #40053 UpInput=0;
     #40044 UpInput=1;
     #40053 UpInput=0;
     #40044 UpInput=1;
     #40053 UpInput=0;
     #40044 UpInput=1;
     #40053 UpInput=0;
     #40044 UpInput=1;
     #40053 UpInput=0;
     #50000 UpInput=1;
     #50000 UpInput=1;
     #40053 UpInput=0;
     #40044 UpInput=1;
     #40053 UpInput=0;
     #40044 UpInput=1;
     #40053 UpInput=0;
     #40044 UpInput=1;
     #40053 UpInput=0;
     #40044 UpInput=1;
     #40053 UpInput=0;
     #40044 UpInput=1;
     #40053 UpInput=0;
     #40044 UpInput=1;
     #40053 UpInput=0;
     #40044 UpInput=1;
     #40053 UpInput=0;
     #40044 UpInput=1;
     #40053 UpInput=0;
     #40044 UpInput=1;
     #40053 UpInput=0;
     #40053 UpInput=0;
     #40044 UpInput=1;
     #40053 UpInput=0;
     #40044 UpInput=1;
     #40053 UpInput=0;
     #40044 UpInput=1;
     #40053 UpInput=0;
     #40044 UpInput=1;
     #40053 UpInput=0;
     #40044 UpInput=1;
     #40053 UpInput=0;
     #40044 UpInput=1;
     #40053 UpInput=0;
     #40044 UpInput=1;
     #40053 UpInput=0;
     #40044 UpInput=1;
     #40053 UpInput=0;
     #40044 UpInput=1;
     #40053 UpInput=0;
     #40044 UpInput=1;
     #40053 UpInput=0;
     #40044 UpInput=1;
     #40053 UpInput=0;
     #40044 UpInput=1;
     #40053 UpInput=0;
     #50000 UpInput=1;
     #50000 UpInput=1;
     #40053 UpInput=0;
     #40044 UpInput=1;
     #40053 UpInput=0;
     #40044 UpInput=1;
     #40053 UpInput=0;
     #40044 UpInput=1;
     #40053 UpInput=0;
     #40044 UpInput=1;
     #40053 UpInput=0;
     #40044 UpInput=1;
     #40053 UpInput=0;
     #40044 UpInput=1;
     #40053 UpInput=0;
     #40044 UpInput=1;
     #40053 UpInput=0;
     #40044 UpInput=1;
     #40053 UpInput=0;
     #40044 UpInput=1;
     #40053 UpInput=0;          

 
     
   #30333 DownInput=1;
   #33033 DownInput=0;
   #33033 DownInput=1;
   #33033 DownInput=0;
   #33033 DownInput=1;
   #33033 DownInput=0;
   #33033 DownInput=1;
   #33033 DownInput=0;
   #33033 DownInput=1;
   #33033 DownInput=0;
   #33033 DownInput=1;
   #33033 DownInput=0;
   #33033 DownInput=1;
   #33033 DownInput=0;
   #33033 DownInput=1;
   #33033 DownInput=0;
   #33033 DownInput=1;
   #33033 DownInput=0;
   #33033 DownInput=1;
   #33033 DownInput=0;
   #33033 DownInput=1;
   #33033 DownInput=0;
   #33033 DownInput=1;
   #33033 DownInput=0;
   #30333 DownInput=1;
   #33033 DownInput=0;
   #33033 DownInput=1;
   #33033 DownInput=0;
   #33033 DownInput=1;
   #33033 DownInput=0;
   #33033 DownInput=1;
   #33033 DownInput=0;
   #33033 DownInput=1;
   #33033 DownInput=0;
   #33033 DownInput=1;
   #33033 DownInput=0;
   #33033 DownInput=1;
   #33033 DownInput=0;
   #33033 DownInput=1;
   #33033 DownInput=0;
   #33033 DownInput=1;
   #33033 DownInput=0;
   #33033 DownInput=1;
   #33033 DownInput=0;
   #33033 DownInput=1;
   #33033 DownInput=0;
   #33033 DownInput=1;
   #33033 DownInput=0;
   #33033 DownInput=1;
   #33033 DownInput=0;
   #33033 DownInput=1;
   #33033 DownInput=0;
   #33033 DownInput=1;
   #33033 DownInput=0;
   #33033 DownInput=1;
   #33033 DownInput=0;
   #33033 DownInput=1;
   #33033 DownInput=0;
   #33033 DownInput=1;
   #33033 DownInput=0;
   #33033 DownInput=1;
   #33033 DownInput=0;
   #33033 DownInput=1;
   #33033 DownInput=0;
   #33033 DownInput=1;
   #33033 DownInput=0;
   #33033 DownInput=1;
   #33033 DownInput=0;
   #33033 DownInput=1;
   #33033 DownInput=0;
   #33033 DownInput=1;
   #33033 DownInput=0;
   #33033 DownInput=1;
   #33033 DownInput=0;
   #33033 DownInput=1;
   #33033 DownInput=0;
   #33033 DownInput=0;
   #33033 DownInput=1;
   #33033 DownInput=0;
   #33033 DownInput=1;
   #33033 DownInput=0;
   #33033 DownInput=1;
   #33033 DownInput=0;
   #33033 DownInput=1;
   #33033 DownInput=0;
   #33033 DownInput=1;
   #33033 DownInput=0;
   #33033 DownInput=1;
   #33033 DownInput=0;
   #33033 DownInput=1;
   #33033 DownInput=0;
   #30333 DownInput=1;
   #33033 DownInput=0;
   #33033 DownInput=1;
   #33033 DownInput=0;
   #33033 DownInput=1;
   #33033 DownInput=0;
   #33033 DownInput=1;
   #33033 DownInput=0;
   #33033 DownInput=1;
   #33033 DownInput=0;
   #33033 DownInput=1;
   #33033 DownInput=0;
   #33033 DownInput=1;
   #33033 DownInput=0;
   #33033 DownInput=1;
   #33033 DownInput=0;
   #33033 DownInput=1;
   #33033 DownInput=0;
   #33033 DownInput=1;
   #33033 DownInput=0;
   #33033 DownInput=1;
   #33033 DownInput=0;
   #33033 DownInput=1;
   #33033 DownInput=0;
   #33033 DownInput=1;
   #33033 DownInput=0;
   #33033 DownInput=1;
   #33033 DownInput=0;
   #33033 DownInput=1;
   #33033 DownInput=0;
   #33033 DownInput=1;
   #33033 DownInput=0;
   #33033 DownInput=1;
   #33033 DownInput=0;
   #33033 DownInput=1;
   #33033 DownInput=0;
   #33033 DownInput=1;
   #33033 DownInput=0;
   
                  
                  
//    psel = 1'b1;
//    write = 1'b0;
//    penable = 1'b1;
//	rst_ni = 1'b0;
	
//	@(posedge clk_i);
//	write = 1'b0;
//	rst_ni = 1'b1;  // deassert reset
//	// control (channel 1)
    
//    @(posedge clk_i);
//	write = 1'b1;
//	//divisor (channel 1)
//	addr_i = 8'd4;
//	wdata_i = 32'd1;
//	@(posedge clk_i);
//	write = 1'b0;
//	//period (channel 1)
//	@(posedge clk_i);
//	addr_i = 8'd8;;
//	wdata_i = 32'd50;
//	write = 1'b1;
//	@(posedge clk_i);
//	write = 1'b0;
//	//DC (channel 1)
//	@(posedge clk_i);
//	addr_i = 8'd12;
//	wdata_i = 32'd20;;
//	write = 1'b1;
//	@(posedge clk_i);
//	write = 1'b0;
//	// CTRL_ENABLE
//	@(posedge clk_i);
//    addr_i = 8'd0;;
//    wdata_i = 32'd7;
//    write  = 1'b1;


end 


endmodule 