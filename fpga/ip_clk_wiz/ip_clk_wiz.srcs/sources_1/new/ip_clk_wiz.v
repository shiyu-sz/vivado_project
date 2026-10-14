//****************************************************************************************//

module  ip_clk_wiz(
    input               sys_clk        ,  //系统时钟
    input               sys_rst_n      ,  //系统复位，低电平有效
    //输出时钟
    output              clk_100m       ,  //100Mhz时钟频率
    output              clk_100m_180deg,  //100Mhz时钟频率,相位偏移180度
    output              clk_50m        ,  //50Mhz时钟频率
    output              clk_25m           //25Mhz时钟频率
    );

//wire define
wire        locked;

//*****************************************************
//**                    main code
//*****************************************************

//PLL IP核的例化
clk_wiz_0  clk_wiz_0
(
	// Clock out ports
	.clk_out1          (clk_100m       ),  // output clk_out1
	.clk_out2          (clk_100m_180deg),  // output clk_out2
	.clk_out3          (clk_50m        ),  // output clk_out3
	.clk_out4          (clk_25m        ),  // output clk_out4
	// Status and control signals
	.reset             (~sys_rst_n     ),  // input reset
	.locked            (locked         ),  // output locked
	// Clock in ports
	.clk_in1           (sys_clk        )   // input clk_in1
);      

endmodule