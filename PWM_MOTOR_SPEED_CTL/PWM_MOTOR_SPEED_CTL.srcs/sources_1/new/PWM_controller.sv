`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.01.2022 21:30:44
// Design Name: 
// Module Name: PWM_controller
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


module PWM_controller(
input  UpInput,
input  clk_in1,
input  DownInput,
input  EnableInput,
output PWM_O
    );
    
    logic clk_i=0;
    logic rst_ni=0;
    logic write;                                    
    logic  [7:0]    addr_i=0;                                            
    logic  [31:0]   wdata_i=0;                                                                            
    logic  [31:0]      rdata_o;                                                                                                
    logic             o_pwm_1;
    logic             oe_pwm1;
    logic           psel;
    logic           penable;
    logic           pslverr;
    logic           pready;
    
   
   
   pwm( .clk_i(clk_i),
        .rst_ni(rst_ni), // Active low reset                                                
        .write(write),    // write =1 write : write =0 read                                    
        .addr_i(addr_i),// Adress of register to set/modify                                            
        .wdata_i(wdata_i),//    
        .psel(psel),
        .penable(penable),// Peripheral select or enable signals                                                                            
        .rdata_o(rdata_o), // read channel                                                                                                 
        .o_pwm_1(o_pwm_1), // PWM output of 1st channel 
        .oe_pwm1(oe_pwm1), // PWM valid indication 
        .pslverr(pslverr),
        .pready(pready)  );
        
        
        
    
endmodule
