`include "A2Q2_eight_bit_johnson_counter.v"
module eight_bit_johnson_counter_tb();
reg reset,clk;
wire [7:0] q;
eight_bit_johnson_counter Count(q,reset,clk);

initial
begin
clk=1'b0;
reset = 1'b1;

$monitor($time ," clk=%b ",clk,"reset=%b ",reset,"q=%b\n",q);
#1 reset =1'b0;
end

always #1
begin
clk = ~clk;
end

initial #32 $finish;

endmodule