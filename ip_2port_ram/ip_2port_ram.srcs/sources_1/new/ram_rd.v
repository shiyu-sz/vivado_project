//****************************************************************************************//

module ram_rd(
    input            clk        ,   //时钟信号
    input            rst_n      ,   //复位信号，低电平有效
                                    
    //RAM读端口操作                 
    input            rd_flag    ,   //读启动标志
    input      [7:0] ram_rd_data,   //RAM读数据
    output           ram_rd_en  ,   //端口使能
    output reg [5:0] ram_rd_addr    //RAM读地址       
);
//*****************************************************
//**                    main code
//*****************************************************

//控制RAM使能信号
assign ram_rd_en = rd_flag;      

//读地址信号 范围:0~63        
always @(posedge clk or negedge rst_n) begin
    if(!rst_n)        
        ram_rd_addr <= 6'd0;
    else if(ram_rd_addr < 6'd63 && ram_rd_en)
        ram_rd_addr <= ram_rd_addr + 6'b1;
    else
        ram_rd_addr <= 6'd0;
end

endmodule