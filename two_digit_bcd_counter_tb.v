
module two_digit_bcd_counter_tb();
reg clk;
reg rst;
wire [3:0] min;
wire [3:0] max;
two_digit_bcd_counter uut (.clk(clk),.rst(rst),.min(min),.max(max));
always 
begin
#15 clk = ~clk;    
end
initial 
begin
clk = 0;
rst = 0;
#10 rst = 1;
#500;
$stop;
end
initial 
begin
$monitor("min = %b, max = %b", min, max);
end
endmodule
