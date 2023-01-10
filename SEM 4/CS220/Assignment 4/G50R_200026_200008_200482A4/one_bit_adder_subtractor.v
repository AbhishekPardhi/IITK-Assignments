module one_bit_adder_subtractor(
    input a,
    input b,
    input cin,
    input opcode,
    output sum,
    output cout
);

assign cout=(a&cin)|(a&(b^opcode))|((b^opcode)&cin); 
assign sum=a^(b^opcode)^cin;

endmodule

