`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/03/14 14:18:44
// Design Name: 
// Module Name: color_bar_hdmi
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


module color_bar_hdmi(
    input clk50M,
    input reset_n,
    output [15:0]TFT_rgb,
    output TFT_hs,
    output TFT_vs,
    output TFT_clk,
    output TFT_de,
    output TFT_pwm,
    output SiI9022_sclk,
    inout SiI9022_sdat,
    output led
    
);

    wire clk_ctrl;
    wire pixelclk;
    wire pixelclk5x;
    wire [23:0]disp_data;
    wire disp_data_req;
    wire [11:0]visible_hcount;
    wire [11:0]visible_vcount;
    wire [4:0]Disp_Red;
    wire [5:0]Disp_Green;
    wire [4:0]Disp_Blue;
    
    parameter DISP_WIDTH  = 1920;
    parameter DISP_HEIGHT = 1080;
    
    colour_bar_dat_gen
    #(
        .DISP_WIDTH(DISP_WIDTH),
        .DISP_HEIGHT(DISP_HEIGHT)
    )colour_bar_dat_gen
    (
        .clk_50M(clk50M),
        .reset_n(reset_n),
        .disp_data_req(disp_data_req),
        .visible_hcount(visible_hcount),
        .visible_vcount(visible_vcount),
        .disp_data(disp_data)
    );
    
        clk_wiz_0 pll
    (
        // Clock out ports
        .clk_out1(clk_ctrl), // output clk_out1
        // Status and control signals
        .resetn(reset_n), // input reset,active low
        .locked(), // output locked
        // Clock in ports
        .clk_in1(clk50M)  // input clk_in1
    ); 
    
    disp_driver(
        .ClkDisp(clk_ctrl),
        .Rst_p(!reset_n),
        
        .Data(disp_data),
        .DataReq(disp_data_req),
        
        .H_Addr(visible_hcount),
        .V_Addr(visible_vcount),
        
        .Disp_HS(TFT_hs),
        .Disp_VS(TFT_vs),
        .Disp_Red(Disp_Red),
        .Disp_Green(Disp_Green),
        .Disp_Blue(Disp_Blue),
        .Frame_Begin(),
        .Disp_DE(TFT_de),
        .Disp_PCLK(TFT_clk)
    );
    assign TFT_pwm = 1'b1;
    assign TFT_rgb = {Disp_Red,Disp_Green,Disp_Blue};

    reg [20:0]cnt;
    reg Go;
    
    always@(posedge clk50M or negedge reset_n)
    if(!reset_n)
        cnt <= 0;
    else if(cnt <= 499999)
        cnt <= cnt + 1 ;
    else
        cnt <= 500001;
        
        
    always@(posedge clk50M or negedge reset_n)
    if(!reset_n)
        Go <= 0;
    else if(cnt == 499999)
        Go <= 1'b1;
    else
        Go <= 0;
    
    SiI9022_Init SiI9022_Init(
        .Clk(clk50M),
        .Rst_n(reset_n),
        
        .Go(Go),
        .device_id(8'h72),
        .Init_Done(led),
        
        .i2c_sclk(SiI9022_sclk),
        .i2c_sdat(SiI9022_sdat)
    );

endmodule
