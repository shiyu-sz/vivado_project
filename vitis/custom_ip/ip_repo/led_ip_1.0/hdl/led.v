module breath_led(
    input        sys_clk,
    input        sys_rst_n,
    
    input        sw_ctrl,       //呼吸灯开关控制 1:打开呼吸灯  0:关闭呼吸灯
    input        set_freq_en,   //呼吸灯频率使能信号
    input  [9:0] set_freq_step, //呼吸灯频率步进档位 1~1000
    
    output       led            //PWM输出
    );

parameter START_FREQ_STEP = 10'd100; 
parameter CNT_2MS_MAX = 10'd1000;  
parameter CNT_2S_MAX  = 10'd1000; 
    
reg   [9:0]    cnt_2us;    
reg   [9:0]    cnt_2ms;         
reg   [9:0]    cnt_2s;
reg            inc_dec_flag;  //亮度递增/递减的标志 0:递增 1:递减
reg            led_t;
reg   [9:0]    freq_step;

assign led = led_t & sw_ctrl;

//寄存set_freq_step的值，并将范围限定在1~1000
always @(posedge sys_clk or negedge sys_rst_n) begin
    if(!sys_rst_n)
        freq_step <= START_FREQ_STEP;
    else if(set_freq_en) begin
        if(set_freq_step == 10'd0)
            freq_step <= 10'd1;
        else if(set_freq_step > 10'd1000)   
            freq_step <= 10'd1000;
        else
            freq_step <= set_freq_step;
    end
end
  
//计数器计时2us
always @(posedge sys_clk or negedge sys_rst_n) begin
    if(!sys_rst_n)
        cnt_2us <= 7'b0;
    else if(cnt_2us == (freq_step - 7'b1))
        cnt_2us <= 7'b0;
    else
        cnt_2us <= cnt_2us + 7'b1;
end
    
//计数器计时2ms    
always @(posedge sys_clk or negedge sys_rst_n) begin
    if(!sys_rst_n)
        cnt_2ms <= 10'b0;
    else if(cnt_2us == (freq_step - 7'b1) 
    && cnt_2ms == (CNT_2MS_MAX - 10'b1))    
        cnt_2ms <= 10'b0;
    else if(cnt_2us == (freq_step - 7'b1))
        cnt_2ms <= cnt_2ms + 10'b1;
    else
        cnt_2ms <= cnt_2ms;
end        
    
//计数器计时2s 
always @(posedge sys_clk or negedge sys_rst_n) begin
    if(!sys_rst_n)
        cnt_2s <= 10'b0;
    else if(cnt_2us == (freq_step - 7'b1) &&
     cnt_2ms == (CNT_2MS_MAX - 10'b1)
    && cnt_2s == (CNT_2S_MAX - 10'b1))   
        cnt_2s <= 10'b0;
    else if(cnt_2us == (freq_step - 7'b1) 
    && cnt_2ms == (CNT_2MS_MAX - 10'b1))
        cnt_2s <= cnt_2s + 10'b1;
    else    
        cnt_2s <= cnt_2s;
end        

//亮度递增/递减的标志
always @(posedge sys_clk or negedge sys_rst_n) begin
    if(!sys_rst_n)
        inc_dec_flag <= 1'b0;
    else if(cnt_2us == (freq_step - 7'b1) 
    && cnt_2ms == (CNT_2MS_MAX - 10'b1)
    && cnt_2s == (CNT_2S_MAX - 10'b1))   
        inc_dec_flag <= ~inc_dec_flag;
    else
        inc_dec_flag <= inc_dec_flag;
end

//控制LED灯PWM输出 
always @(posedge sys_clk or negedge sys_rst_n) begin
    if(!sys_rst_n)
        led_t <= 1'b0;
    else if((inc_dec_flag == 1'b0 && cnt_2ms <= cnt_2s) 
    || (inc_dec_flag == 1'b1 && cnt_2ms >= cnt_2s))     
        led_t <= 1'b1;
    else
        led_t <= 1'b0;
end
  
endmodule
