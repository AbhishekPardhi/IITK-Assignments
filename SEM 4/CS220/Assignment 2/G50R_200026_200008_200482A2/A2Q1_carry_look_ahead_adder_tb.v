`include "A2Q1_carry_look_ahead_adder.v"
module carry_look_ahead_adder_tb();
reg [7:0] A,B;
wire [7:0] S;
wire [8:0] C;
integer i,j;
carry_look_ahead_adder Add(S,C,A,B);
initial
begin
    #1;
    for ( i=0 ;i<15 ;i++ )
    begin
        for ( j=0 ;j<8 ;j=j+1 )
        begin
            A[j]=$urandom_range(0,1);
        end
        for ( j=0 ;j<8 ;j=j+1 )
        begin
            B[j]=$urandom_range(0,1);
        end
        #10;
        $display("A=%d B=%d\nSum=%d Carry=%d\n\n",A,B,S,C[8]);
        #5;
    end
end
endmodule