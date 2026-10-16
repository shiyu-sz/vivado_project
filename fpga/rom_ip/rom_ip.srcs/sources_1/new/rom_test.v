
//////////////////////////////////////////////////////////////////////////////////

//`define DIST_MEM
`define BLK_MEM

module rom_test(
	clk,
	reset_n
);
	wire reset=~reset_n;
	input clk;       //系统时钟输入，50M
	input reset_n;      //复位信号输入，低有效
	
	wire [7:0]dout;     //rom输出数据
	wire [7:0]dout_reg; //rom输出数据
	
	reg [7:0]addr;

`ifdef DIST_MEM
/*使用逻辑资源生成的的rom*/

	dist_mem_rom_ip rom (
		.a(addr),  // input wire [7 : 0] a
		.clk(clk),  // input wire clk
		.spo(dout),  // output wire [7 : 0] spo
		.qspo(dout_reg)   // output wire [7 : 0] qspo
	);
  
	ila_0 ila_0 (
		.clk(clk), // input wire clk

		.probe0(addr), // input wire [7:0]  probe0
		.probe1(dout), // input wire [7:0]  probe1  
		.probe2(dout_reg)  // input wire [7:0]  probe2
	);

`elsif BLK_MEM
/*使用块存储器资源（硬件资源）生成的的rom*/

	blk_mem_rom_ip rom (
		.clka(clk), // input wire clka
		.addra(addr), // input wire [7 : 0] addra
		.douta(dout)  // output wire [7 : 0] douta
	);

	ila_0 ila_0 (
		.clk(clk), // input wire clk

		.probe0(addr), // input wire [7:0]  probe0
		.probe1(dout), // input wire [7:0]  probe1  
		.probe2(8'd0)  // input wire [7:0]  probe2
	);

`endif

	always@(posedge clk or posedge reset)
		if(reset)
			addr <= 8'd0;
		else 
			addr <= addr + 1'b1;

endmodule
