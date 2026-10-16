// UART 单字节接收模块：接收 8N1 格式的数据，并在一帧接收完成后输出 rx_done 脉冲。
// baud_set 选择波特率；数据位按 UART 约定以最低位（LSB）优先接收。
module uart_byte_rx(
	clk,
	reset_n,

	baud_set,
	uart_rx,

	data_byte,
	rx_done
);
	wire reset=~reset_n; // 内部复位为高有效，外部 reset_n 为低有效

	input clk;    // 模块时钟，设计注释和分频参数按 50 MHz 时钟计算
	input reset_n;   // 外部低有效复位

	input [2:0]baud_set;  // 波特率选择编码，具体分频值见 bps_DR 的 case
	input uart_rx;   // UART 串行输入，空闲为高电平
	
	output [7:0]data_byte; // 最近一次完整接收的 8 位数据
	output rx_done;   // 一帧接收完成时拉高一个 clk 周期
	
	reg [7:0]data_byte;
	reg rx_done;
	reg uart_rx_sync1;   // 两级同步寄存器第一级
	reg uart_rx_sync2;   // 两级同步寄存器第二级，降低异步输入造成亚稳态的风险

	reg uart_rx_reg1;    // 延迟一级的同步输入
	reg uart_rx_reg2;    // 延迟两级的同步输入，用于检测下降沿

	reg [15:0]bps_DR;    // 每个 16 倍过采样节拍对应的分频终值
	reg [15:0]div_cnt;   // 系统时钟分频计数器
	reg bps_clk;   // 分频产生的单周期采样使能脉冲（并非独立时钟）
	reg [7:0] bps_cnt;   // 一帧内的过采样计数，正常接收计到 159
	reg uart_state;// 接收状态：1 表示正在接收一帧

	wire uart_rx_nedge;  // 检测到起始位下降沿时为 1

	reg [2:0]START_BIT; // 起始位有效采样累计值（有效低电平）
	reg [2:0]STOP_BIT;  // 停止位高电平采样累计值（有效高电平）
	reg [2:0]data_byte_pre [7:0]; // 每个数据位的多次采样累计值，用于多数判决

	// UART_RX 相对于 clk 是异步输入；用两级触发器同步后再参与逻辑判断。
	always@(posedge clk or posedge reset)
	if(reset)begin
		uart_rx_sync1 <= 1'b0;
		uart_rx_sync2 <= 1'b0;	
	end
	else begin
		uart_rx_sync1 <= uart_rx;
		uart_rx_sync2 <= uart_rx_sync1;	
	end
	
	// 再延迟两拍，形成边沿检测所需的前后两个采样值。
	always@(posedge clk or posedge reset)
	if(reset)begin
		uart_rx_reg1 <= 1'b0;
		uart_rx_reg2 <= 1'b0;	
	end
	else begin
		uart_rx_reg1 <= uart_rx_sync2;
		uart_rx_reg2 <= uart_rx_reg1;	
	end
	
	// 前一拍为高、当前拍为低时，检测到 UART 起始位的下降沿。
	assign uart_rx_nedge = !uart_rx_reg1 & uart_rx_reg2;
	
	always@(posedge clk or posedge reset)
	if(reset)
		bps_DR <= 16'd324;
	else begin
		case(baud_set)
			// 分频值按 16 倍过采样设计；baud_set=0 对应约 9600 baud（50 MHz 时钟）。
			0:bps_DR <= 16'd324;
			1:bps_DR <= 16'd162;
			2:bps_DR <= 16'd80;
			3:bps_DR <= 16'd53;
			4:bps_DR <= 16'd26;
			default:bps_DR <= 16'd324;			
		endcase
	end
	
	// 接收期间运行分频计数器；每数到 bps_DR 后回零，产生过采样节拍。
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
		
	// 在分频计数到指定位置时产生一个 clk 周期宽的 bps_clk 采样使能脉冲。
	always@(posedge clk or posedge reset)
	if(reset)
		bps_clk <= 1'b0;
	else if(div_cnt == 16'd1)
		bps_clk <= 1'b1;
	else
		bps_clk <= 1'b0;
	
	// 每个 bps_clk 增加一次帧内计数。每个 UART 位按 16 个节拍采样，
	// 一帧共 10 位（起始位、8 个数据位、停止位），因此计数到 159。
	always@(posedge clk or posedge reset)
	if(reset)	
		bps_cnt <= 8'd0;
	else if(bps_cnt == 8'd159 | (bps_cnt == 8'd12 && (START_BIT > 2)))
		bps_cnt <= 8'd0;
	else if(bps_clk)
		bps_cnt <= bps_cnt + 1'b1;
	else
		bps_cnt <= bps_cnt;

	// 一帧计数到 159 时，给出一个时钟周期的接收完成标志。
	always@(posedge clk or posedge reset)
	if(reset)
		rx_done <= 1'b0;
	else if(bps_cnt == 8'd159)
		rx_done <= 1'b1;
	else
		rx_done <= 1'b0;		
		
	// 在每个数据位附近连续采样 6 次并累加，减少输入抖动/采样偏差的影响。
	// data_byte_pre 的 bit[2] 用作数据位多数判决；起始位和停止位累计值用于帧格式检查。
	always@(posedge clk or posedge reset)
	if(reset)begin
		START_BIT <= 3'd0;
		data_byte_pre[0] <= 3'd0;
		data_byte_pre[1] <= 3'd0;
		data_byte_pre[2] <= 3'd0;
		data_byte_pre[3] <= 3'd0;
		data_byte_pre[4] <= 3'd0;
		data_byte_pre[5] <= 3'd0;
		data_byte_pre[6] <= 3'd0;
		data_byte_pre[7] <= 3'd0;
		STOP_BIT <= 3'd0;
	end
	else if(bps_clk)begin
		case(bps_cnt)
			0:begin
        START_BIT <= 3'd0;
        data_byte_pre[0] <= 3'd0;
        data_byte_pre[1] <= 3'd0;
        data_byte_pre[2] <= 3'd0;
        data_byte_pre[3] <= 3'd0;
        data_byte_pre[4] <= 3'd0;
        data_byte_pre[5] <= 3'd0;
        data_byte_pre[6] <= 3'd0;
        data_byte_pre[7] <= 3'd0;
        STOP_BIT <= 3'd0;			
      end
				// 起始位窗口累计高电平样本；正常起始位应为低，累计过多则判为错误。
				6 ,7 ,8 ,9 ,10,11:START_BIT <= START_BIT + uart_rx_sync2;
				// 以下窗口分别对 data_byte[0] 到 data_byte[7] 进行 6 次采样。
			22,23,24,25,26,27:data_byte_pre[0] <= data_byte_pre[0] + uart_rx_sync2;
			38,39,40,41,42,43:data_byte_pre[1] <= data_byte_pre[1] + uart_rx_sync2;
			54,55,56,57,58,59:data_byte_pre[2] <= data_byte_pre[2] + uart_rx_sync2;
			70,71,72,73,74,75:data_byte_pre[3] <= data_byte_pre[3] + uart_rx_sync2;
			86,87,88,89,90,91:data_byte_pre[4] <= data_byte_pre[4] + uart_rx_sync2;
			102,103,104,105,106,107:data_byte_pre[5] <= data_byte_pre[5] + uart_rx_sync2;
			118,119,120,121,122,123:data_byte_pre[6] <= data_byte_pre[6] + uart_rx_sync2;
			134,135,136,137,138,139:data_byte_pre[7] <= data_byte_pre[7] + uart_rx_sync2;
				// 停止位采样窗口：UART 停止位应为高电平。
				150,151,152,153,154,155:STOP_BIT <= STOP_BIT + uart_rx_sync2;
			default:
      begin
        START_BIT <= START_BIT;
        data_byte_pre[0] <= data_byte_pre[0];
        data_byte_pre[1] <= data_byte_pre[1];
        data_byte_pre[2] <= data_byte_pre[2];
        data_byte_pre[3] <= data_byte_pre[3];
        data_byte_pre[4] <= data_byte_pre[4];
        data_byte_pre[5] <= data_byte_pre[5];
        data_byte_pre[6] <= data_byte_pre[6];
        data_byte_pre[7] <= data_byte_pre[7];
        STOP_BIT <= STOP_BIT;
      end
		endcase
	end

	// 帧计数结束时，将每个数据位的多数判决结果组合成输出字节。
	always@(posedge clk or posedge reset)
	if(reset)
		data_byte <= 8'd0;
	else if(bps_cnt == 8'd159)begin
		data_byte[0] <= data_byte_pre[0][2];
		data_byte[1] <= data_byte_pre[1][2];
		data_byte[2] <= data_byte_pre[2][2];
		data_byte[3] <= data_byte_pre[3][2];
		data_byte[4] <= data_byte_pre[4][2];
		data_byte[5] <= data_byte_pre[5][2];
		data_byte[6] <= data_byte_pre[6][2];
		data_byte[7] <= data_byte_pre[7][2];
	end	
	
	// 起始位下降沿开始接收；完成一帧、起始位判错或停止位判错时退出接收状态。
	always@(posedge clk or posedge reset)
	if(reset)
		uart_state <= 1'b0;
	else if(uart_rx_nedge)
		uart_state <= 1'b1;
	else if(rx_done || (bps_cnt == 8'd12 && (START_BIT > 2)) || (bps_cnt == 8'd155 && (STOP_BIT < 3)))
		uart_state <= 1'b0;
	else
		uart_state <= uart_state;		

endmodule
