// 仿真专用 UART 字节发送器：由 uart_byte_rx_tb 驱动，产生接收器测试输入。
// 该文件位于 sim_1，不作为 uart_rx 工程的综合逻辑。

module uart_byte_tx(
	clk,
	reset_n,
  
	data_byte,
	send_en,   
	baud_set,  
	
	uart_tx,  
	tx_done,   
	uart_state 
);

	input clk ;    // 仿真时钟，50 MHz
	input reset_n;    // 低有效复位
	input [7:0]data_byte;  // 待发送的并行字节
	input send_en;    // 发送使能；有效时锁存 data_byte 并开始发送
	input [2:0]baud_set;   // 波特率选择编码
	
	output reg uart_tx;    // UART 串行输出，空闲为高电平
	output reg tx_done;    // 一字节发送完成脉冲
	output reg uart_state; // 发送期间为高
	
	assign reset=~reset_n; // 内部使用高有效复位
	localparam START_BIT = 1'b0;
	localparam STOP_BIT = 1'b1; 
	
	reg bps_clk;	     //波特率时钟	
	reg [15:0]div_cnt;      //分频计数器	
	reg [15:0]bps_DR;       //分频计数最大值	
	reg [3:0]bps_cnt;      //波特率时钟计数器	
	reg [7:0]data_byte_reg;//data_byte寄存后数据
	
	always@(posedge clk or posedge reset)
	if(reset)
		uart_state <= 1'b0;
	else if(send_en)
		uart_state <= 1'b1;
	else if(bps_cnt == 4'd11)
		uart_state <= 1'b0;
	else
		uart_state <= uart_state;
	
	always@(posedge clk or posedge reset)
	if(reset)
		data_byte_reg <= 8'd0;
	else if(send_en)
		data_byte_reg <= data_byte;
	else
		data_byte_reg <= data_byte_reg;
	
	always@(posedge clk or posedge reset)
	if(reset)
		bps_DR <= 16'd5207;
	else begin
			// 分频终值决定 UART 位周期；这些值按 50 MHz 时钟设置。
			case(baud_set)
			0:bps_DR <= 16'd5207;
			1:bps_DR <= 16'd2603;
			2:bps_DR <= 16'd1301;
			3:bps_DR <= 16'd867;
			4:bps_DR <= 16'd433;
			default:bps_DR <= 16'd5207;			
		endcase
	end	
	
	// 发送期间累计系统时钟；达到分频终值后回零。
	always@(posedge clk or posedge reset)
	if(reset)
		div_cnt <= 16'd0;
	else if(uart_state)begin
		if(div_cnt == bps_DR)
			div_cnt <= 16'd0;
		else
			div_cnt <= div_cnt + 1'b1;
	end
	else
		div_cnt <= 16'd0;
	
	// 每个 UART 位周期产生一个采样/移位节拍脉冲。
	always@(posedge clk or posedge reset)
	if(reset)
		bps_clk <= 1'b0;
	else if(div_cnt == 16'd1)
		bps_clk <= 1'b1;
	else
		bps_clk <= 1'b0;
	
	// bps_cnt 标记当前帧位置：空闲、起始位、8 个数据位和停止位。
	always@(posedge clk or posedge reset)
	if(reset)	
		bps_cnt <= 4'd0;
	else if(bps_cnt == 4'd11)
		bps_cnt <= 4'd0;
	else if(bps_clk)
		bps_cnt <= bps_cnt + 1'b1;
	else
		bps_cnt <= bps_cnt;
		
	always@(posedge clk or posedge reset)
	if(reset)
		tx_done <= 1'b0;
	else if(bps_cnt == 4'd11)
		tx_done <= 1'b1;
	else
		tx_done <= 1'b0;
		
	always@(posedge clk or posedge reset)
	if(reset)
		uart_tx <= 1'b1;
	else begin
			// UART 采用 LSB 优先：起始位为低，随后依次输出 bit0 到 bit7，停止位为高。
			case(bps_cnt)
			0:uart_tx <= 1'b1;
			1:uart_tx <= START_BIT;
			2:uart_tx <= data_byte_reg[0];
			3:uart_tx <= data_byte_reg[1];
			4:uart_tx <= data_byte_reg[2];
			5:uart_tx <= data_byte_reg[3];
			6:uart_tx <= data_byte_reg[4];
			7:uart_tx <= data_byte_reg[5];
			8:uart_tx <= data_byte_reg[6];
			9:uart_tx <= data_byte_reg[7];
			10:uart_tx <= STOP_BIT;
			default:uart_tx <= 1'b1;
		endcase
	end	

endmodule
