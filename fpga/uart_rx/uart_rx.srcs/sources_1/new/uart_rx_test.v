// UART 接收器顶层：固定选择 baud_set=0，将接收字节锁存后送入 VIO 观察。
module uart_rx_test(
	clk,
	reset_n,

	uart_rx
);
	wire reset; // 内部高有效复位，由外部低有效 reset_n 反相得到
	assign reset=~reset_n;

	input clk; // 系统时钟输入，设计按 50 MHz 计算
	input reset_n; // 外部低有效复位

	input uart_rx; // UART 串行接收输入，空闲时应为高电平
	
	wire [7:0]data_byte_rx; // 接收模块当前输出的数据
	wire rx_done; // 接收完成脉冲
  
	reg [7:0]data_byte_reg; // 保持最近一次收到的字节，便于 VIO 稳定读取
	
	// UART 字节接收器；baud_set=0 使用默认波特率（约 9600 baud）。
	uart_byte_rx uart_byte_rx(
		.clk(clk),
		.reset_n(reset_n),

		.baud_set(3'd0),
		.uart_rx(uart_rx),
		
		.data_byte(data_byte_rx),
		.rx_done(rx_done)
	);

	// 将已锁存的接收数据送到 VIO 的输入探针，供 Hardware Manager 查看。
	vio_0 vio_0 (
		.clk(clk),  // input wire clk
		.probe_in0(data_byte_reg)   // input wire [7 : 0] probe_in0
	);

	// rx_done 到来时更新显示寄存器；其余时间保持上一次接收结果。
	always@(posedge clk or posedge reset)
	if(reset)
		data_byte_reg <= 8'd0;
	else if(rx_done)
		data_byte_reg <= data_byte_rx;
	else
		data_byte_reg <= data_byte_reg;

endmodule
