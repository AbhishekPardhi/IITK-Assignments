module eight_bit_johnson_counter(output[7:0] q,input reset,input clk);
reg [7:0] q;
always @(posedge clk or posedge reset)
begin
if(reset)
begin
q <= 8'b00000000;
end
else
begin
q <= {{~q[0]},{q[7:1]}};
end
end
endmodule