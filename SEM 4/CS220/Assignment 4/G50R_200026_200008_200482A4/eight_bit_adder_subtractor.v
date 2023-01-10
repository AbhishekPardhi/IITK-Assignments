`include "one_bit_adder_subtractor.v"

module eight_bit_adder_subtractor(a,b,opcode,ans,cout,ov); 
//port declaration
input [7:0] a,b;
input opcode;
output [7:0] ans;
output cout, ov;

//Internal Variables:
wire [7:0] carry;
wire cin;
assign cin = opcode;

one_bit_adder_subtractor S0(a[0],b[0],cin,opcode,ans[0],carry[0]);
one_bit_adder_subtractor S1(a[1],b[1],carry[0],opcode,ans[1],carry[1]);
one_bit_adder_subtractor S2(a[2],b[2],carry[1],opcode,ans[2],carry[2]);
one_bit_adder_subtractor S3(a[3],b[3],carry[2],opcode,ans[3],carry[3]);
one_bit_adder_subtractor S4(a[4],b[4],carry[3],opcode,ans[4],carry[4]);
one_bit_adder_subtractor S5(a[5],b[5],carry[4],opcode,ans[5],carry[5]);
one_bit_adder_subtractor S6(a[6],b[6],carry[5],opcode,ans[6],carry[6]);
one_bit_adder_subtractor S7(a[7],b[7],carry[6],opcode,ans[7],carry[7]);

assign ov = carry[6]^carry[7];
assign cout = carry[7];
endmodule