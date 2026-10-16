
//////////////////////////////////////////////////////////////////////////////////

`timescale 1ns/1ns
`define CLK_PERIOD 20

//`define DIST_MEM
`define BLK_MEM 1

module rom_tb;

	reg clk;
	reg [7:0]addr;
  
	integer i = 0;
  
	initial clk = 1;
	always #(`CLK_PERIOD/2) clk = ~clk;

`ifdef DIST_MEM
/*仿真使用逻辑资源生成的的rom*/

	wire [7:0]dout;
	wire [7:0]dout_reg;

	dist_mem_rom_ip rom (
		.a(addr),  // input wire [7 : 0] a
		.clk(clk),  // input wire clk
		.spo(dout),  // output wire [7 : 0] spo
		.qspo(dout_reg)   // output wire [7 : 0] qspo
	);  
  
	initial begin
		addr = 0;
		#21;
		for(i=0;i<2560;i=i+1)begin
			#`CLK_PERIOD;
		addr = addr + 1'b1;
		end
		#(`CLK_PERIOD * 50);
		$stop;	
	end

`elsif BLK_MEM
/*仿真使用块存储器资源（硬件资源）生成的的rom*/

	reg  regce;
	wire [7:0]dout;

	blk_mem_rom_ip rom (
		.clka(clk), // input wire clka
//		.regcea (regce), // input wire regcea
		.addra(addr), // input wire [7 : 0] addra
		.douta(dout)  // output wire [7 : 0] douta
	);
	
	initial begin
		addr = 0;
		regce = 0;

		#(`CLK_PERIOD * 100 + 1);
		for(i=0;i<20;i=i+1)begin
			#`CLK_PERIOD;
			addr = addr + 1'b1;
		end
    
		regce = 1;
		addr = 0;
		for(i=0;i<1024;i=i+1)begin
			#`CLK_PERIOD;
			addr = addr + 1'b1;
		end
		#(`CLK_PERIOD * 50);
		$stop;	
	end

`endif

endmodule