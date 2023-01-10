`include "eight_bit_adder_subtractor.v"

module eight_bit_adder_subtractor_tb();

reg [7:0] A,B;
reg opcode;
wire [7:0] res;
wire cout, ov;

eight_bit_adder_subtractor tester(A,B,opcode,res,cout,ov);

initial begin
    opcode=0;
    A = 5; B = 27 ; opcode = 1; #5;
    A = 27; B = 10 ; opcode = 0; #5;  
    A = 9; B = 41; opcode = 1; #5;
    A = 12; B = 18; opcode = 0; #5;
    A = 5; B = 10; opcode = 1; #5;
    A = 59; B = 100; opcode = 0; #5;
    A = 44; B = 1; opcode = 1; #5;
    A = 44; B = 1; opcode = 0; #5;
    A = 84; B = 67; opcode = 0; #5;
    A = 23; B = 23; opcode = 1; #5;
    A = 23; B = 23; opcode = 0; #5;
    A = 13; B = 12; opcode = 1; #5;
    A = 7; B = 100; opcode = 1; #5;
    A = 7; B = 19; opcode = 0; #5;
    A = 28; B = 4; opcode = 1; #5;
    A = 28; B = 4; opcode = 0; #5;
    $finish;
end

initial begin
    $monitor("A = %b , B = %b , opcode = %b, answer = %b, overflow status = %b", A, B, opcode, res, ov);
end

endmodule