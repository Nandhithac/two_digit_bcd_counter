
module two_digit_bcd_counter(
input clk,
input rst,
output reg [3:0] min,
output reg [3:0] max);
always @(posedge clk or negedge rst) 
begin
if (rst==0) begin
min=0;
max=0;    
end
else 
begin
if (min==9) 
begin
min=0;
if (max==9)
max=0;
else
max=max+1;      
end 
else
min=min+1;
end
end
endmodule
