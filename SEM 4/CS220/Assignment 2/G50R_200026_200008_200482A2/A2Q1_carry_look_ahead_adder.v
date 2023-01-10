module carry_look_ahead_adder(output [7:0] S,output [8:0] C,input [7:0] A,input [7:0] B);
wire [7:0] P,G;
assign
C[0]=1'b0,
P=A^B,
G=A&B,
C[1]=G[0]|(P[0]&C[0]),
C[2]=G[1]|(P[1]&G[0])|(P[1]&P[0]&C[0]),
C[3]=G[2]|(P[2]&G[1])|(P[2]&P[1]&G[0])|(P[2]&P[1]&P[0]&C[0]),
C[4]=G[3]|(P[3]&G[2])|(P[3]&P[2]&G[1])|(P[3]&P[2]&P[1]&G[0])|(P[3]&P[2]&P[1]&P[0]&C[0]),
C[5]=G[4]|(P[4]&G[3])|(P[4]&P[3]&G[2])|(P[4]&P[3]&P[2]&G[1])|(P[4]&P[3]&P[2]&P[1]&G[0])|(P[4]&P[3]&P[2]&P[1]&P[0]&C[0]),
C[6]=G[5]|(P[5]&G[4])|(P[5]&P[4]&G[3])|(P[5]&P[4]&P[3]&G[2])|(P[5]&P[4]&P[3]&P[2]&G[1])|(P[5]&P[4]&P[3]&P[2]&P[1]&G[0])|(P[5]&P[4]&P[3]&P[2]&P[1]&P[0]&C[0]),
C[7]=G[6]|(P[6]&G[5])|(P[6]&P[5]&G[4])|(P[6]&P[5]&P[4]&G[3])|(P[6]&P[5]&P[4]&P[3]&G[2])|(P[6]&P[5]&P[4]&P[3]&P[2]&G[1])|(P[6]&P[5]&P[4]&P[3]&P[2]&P[1]&G[0])|(P[6]&P[5]&P[4]&P[3]&P[2]&P[1]&P[0]&C[0]),
C[8]=G[7]|(P[7]&G[6])|(P[7]&P[6]&G[5])|(P[7]&P[6]&P[3]&G[4])|(P[7]&P[6]&P[5]&P[4]&G[3])|(P[7]&P[6]&P[5]&P[4]&P[3]&G[2])|(P[7]&P[6]&P[5]&P[4]&P[3]&P[2]&G[1])|(P[7]&P[6]&P[5]&P[4]&P[3]&P[2]&P[1]&G[0])|(P[7]&P[6]&P[5]&P[4]&P[3]&P[2]&P[1]&P[0]&C[0]),
S=P^C;
endmodule