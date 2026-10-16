// UART 接收仿真 testbench：用发送模块产生串行波形并回接到接收器，
// 依次发送 0xAA 和 0x55，观察接收数据与完成标志。
`timescale 1ns/1ns
`define CLK_PERIOD 20 // 50 MHz 时钟周期为 20 ns

module uart_byte_rx_tb;
	reg clk; // testbench 产生的系统时钟
	reg reset_n; // 接收器和发送器共用的低有效复位
	reg [2:0] baud_set; // 两端使用相同的波特率设置
	reg [7:0] data_byte_tx; // 待发送的测试字节
	reg send_en; // 发送使能脉冲
	wire tx_done; // 发送端完成一字节的标志
	wire uart_state; // 发送端正在发送时为高
	wire [7:0]data_byte_rx; // 接收端解出的字节
	wire rx_done; // 接收端完成一字节的标志
	wire uart_tx_rx; // 发送端 TX 与接收端 RX 之间的回环连线

	// 仿真用 UART 发送器：把并行字节转换为 UART 串行帧。
	uart_byte_tx uart_byte_tx(
		.clk(clk),
		.reset_n(reset_n),

		.data_byte(data_byte_tx),
		.send_en(send_en),
		.baud_set(baud_set),
		
		.uart_tx(uart_tx_rx),
		.tx_done(tx_done),
		.uart_state(uart_state  )
	);
	
	// 被测接收器：接收发送器输出的同一条串行线。
	uart_byte_rx uart_byte_rx(
		.clk(clk),
		.reset_n(reset_n),

		.baud_set(baud_set),
		.uart_rx(uart_tx_rx),

		.data_byte(data_byte_rx),
		.rx_done(rx_done)
	);
	
	// 产生周期为 20 ns 的连续时钟。
	initial clk = 1;
	always#(`CLK_PERIOD/2)clk = ~clk;
	
	// 仿真激励：先复位，释放后等待，再发送 0xAA 和 0x55。
	initial begin
		reset_n = 1'b0;
		data_byte_tx = 8'd0;
		send_en = 1'd0;
		baud_set = 3'd4;
		#(`CLK_PERIOD*20 + 1 );
		reset_n = 1'b1;
		#(`CLK_PERIOD*50);
    
		// 发送第一个测试字节 0xAA。
		data_byte_tx = 8'haa;
		send_en = 1'd1;
		#`CLK_PERIOD;
		send_en = 1'd0;
		
		// 等待第一字节发送完成，再留出足够时间让接收器完成处理。
		@(posedge tx_done)		
		#(`CLK_PERIOD*5000);
    
		// 发送第二个测试字节 0x55。
		data_byte_tx = 8'h55;
		send_en = 1'd1;
		#`CLK_PERIOD;
		send_en = 1'd0;

		// 等待第二字节发送完成后结束仿真。
		@(posedge tx_done)
		#(`CLK_PERIOD*5000);
		$stop;	
	end

endmodule
