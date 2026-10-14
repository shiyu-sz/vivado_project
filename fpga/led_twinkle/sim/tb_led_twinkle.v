//****************************************************************************************//

`timescale 1ns / 1ns        //仿真单位/仿真精度

module tb_led_twinkle();

//parameter define
parameter  CLK_PERIOD = 20; //时钟周期 20ns

//reg define
reg   sys_clk;
reg   sys_rst_n;

//wire define
wire  led;

//信号初始化
initial begin
    sys_clk   <= 1'b0;
    sys_rst_n <= 1'b0;
    #200
    sys_rst_n <= 1'b1;
end

//产生时钟
always #(CLK_PERIOD/2) sys_clk = ~sys_clk;

//例化待测设计
led_twinkle u_led_twinkle(
    .sys_clk      (sys_clk  ),
    .sys_rst_n    (sys_rst_n),
    .led          (led      )
);

endmodule
