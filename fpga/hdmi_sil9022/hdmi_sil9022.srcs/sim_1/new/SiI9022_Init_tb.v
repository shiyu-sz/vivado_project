`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/03/23 18:31:37
// Design Name: 
// Module Name: SiI9022_Init_tb
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
`timescale 1ns / 1ns
`define CLK_PERIOD 20

module SiI9022_Init_tb();
    reg ctrl_50M;
    reg reset_n;
    reg Go;
    wire led;
    wire SiI9022_sclk;
    wire SiI9022_sdat;
    
    SiI9022_Init SiI9022_Init(
        .Clk(ctrl_50M),
        .Rst_n(reset_n),
        
        .Go(Go),
        .device_id(8'h72),
        .Init_Done(led),
        
        .i2c_sclk(SiI9022_sclk),
        .i2c_sdat(SiI9022_sdat)
    );
    
	initial ctrl_50M = 1;
	always#(`CLK_PERIOD/2)ctrl_50M = ~ctrl_50M;
	
    initial begin
    reset_n = 1'b0;
    #(`CLK_PERIOD*20 + 1 );
    reset_n = 1'b1;
    #(`CLK_PERIOD*50);
    Go = 1'b1;
    #(`CLK_PERIOD*50);
    Go = 1'b0;
    #(`CLK_PERIOD*5000);
    
    $stop;	
  end

endmodule
