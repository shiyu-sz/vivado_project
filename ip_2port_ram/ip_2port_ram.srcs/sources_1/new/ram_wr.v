//****************************************************************************************//

module ram_wr(
    input            clk         , //时钟信号
    input            rst_n       , //复位信号，低电平有效
                                    
    //RAM写端口操作                
    output           ram_wr_we   , //RAM写使能
    output reg       ram_wr_en   , //端口使能
    output reg       rd_flag     , //读启动信号
    output reg [5:0] ram_wr_addr , //RAM写地址        
    output     [7:0] ram_wr_data   //RAM写数据
);

//*****************************************************
//**                    main code
//*****************************************************

//ram_wr_we为高电平表示写数据
assign ram_wr_we = ram_wr_en ;

//写数据与写地址相同，因位宽不等，所以高位补0
assign ram_wr_data = {2'b0,ram_wr_addr} ;

//控制RAM使能信号
always @(posedge clk or negedge rst_n) begin
    if(!rst_n)
        ram_wr_en <= 1'b0;
    else 
        ram_wr_en <= 1'b1;
end

//写地址信号 范围:0~63        
always @(posedge clk or negedge rst_n) begin
    if(!rst_n)        
        ram_wr_addr <= 6'd0;
    else if(ram_wr_addr < 6'd63 && ram_wr_we)
        ram_wr_addr <= ram_wr_addr + 6'b1;
    else
        ram_wr_addr <= 6'd0;
end  

//当写入32个数据（0~31）后，拉高读启动信号
always @(posedge clk or negedge rst_n) begin
    if(!rst_n)
        rd_flag <= 1'b0;
    else if(ram_wr_addr == 6'd31)  
        rd_flag <= 1'b1;
    else
        rd_flag <= rd_flag;
end             

endmodule