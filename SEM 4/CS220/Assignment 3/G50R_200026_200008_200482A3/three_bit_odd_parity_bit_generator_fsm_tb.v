`include "three_bit_odd_parity_bit_generator_fsm.v"
module three_bit_odd_parity_bit_generator_fsm_tb();
parameter SIZE = 16;
reg [SIZE*8-1:0] I,O;
reg clk,reset;
reg [7:0] i;
wire [7:0] o;
integer j,k;
//----------------Code Starts Here-----------------------
always #30 clk = ~clk;

three_bit_odd_parity_bit_generator_fsm FSM(clk,reset,i,o);

initial
begin
clk <=0;
reset <= 0;

#5;

//----------------INPUTS-------------------
I = "010 101 000 111 ";
k=3;
for ( j = SIZE*8-1 ;j >= 0 ;j = j-8 )
begin
    i <= I[j-:8];
    #60;
    if(k == 0)
    begin
    O[j-:8] <= o;
    k = 4;
    end
    else O[j-:8] <= I[j-:8];
    k = k-1;
end
#10;
$display(" Input: %s\nOutput: %s\n\n",I,O);
#5;
//-----------------------------------------
I = "000 100 010 101 ";
k=3;
for ( j = SIZE*8-1 ;j >= 0 ;j = j-8 )
begin
    i <= I[j-:8];
    #60;
    if(k == 0)
    begin
    O[j-:8] <= o;
    k = 4;
    end
    else O[j-:8] <= I[j-:8];
    k = k-1;
end
#10;
$display(" Input: %s\nOutput: %s\n\n",I,O);
#5;
//-----------------------------------------
I = "010 101 011 000 ";
k=3;
for ( j = SIZE*8-1 ;j >= 0 ;j = j-8 )
begin
    i <= I[j-:8];
    #60;
    if(k == 0)
    begin
    O[j-:8] <= o;
    k = 4;
    end
    else O[j-:8] <= I[j-:8];
    k = k-1;
end
#10;
$display(" Input: %s\nOutput: %s\n\n",I,O);
#5;
//-----------------------------------------
I = "100 001 010 111 ";
k=3;
for ( j = SIZE*8-1 ;j >= 0 ;j = j-8 )
begin
    i <= I[j-:8];
    #60;
    if(k == 0)
    begin
    O[j-:8] <= o;
    k = 4;
    end
    else O[j-:8] <= I[j-:8];
    k = k-1;
end
#10;
$display(" Input: %s\nOutput: %s\n\n",I,O);
#5;
//-----------------------------------------
I = "010 101 010 111 ";
k=3;
for ( j = SIZE*8-1 ;j >= 0 ;j = j-8 )
begin
    i <= I[j-:8];
    #60;
    if(k == 0)
    begin
    O[j-:8] <= o;
    k = 4;
    end
    else O[j-:8] <= I[j-:8];
    k = k-1;
end
#10;
$display(" Input: %s\nOutput: %s\n\n",I,O);
#5;
//-----------------------------------------
I = "010 001 000 111 ";
k=3;
for ( j = SIZE*8-1 ;j >= 0 ;j = j-8 )
begin
    i <= I[j-:8];
    #60;
    if(k == 0)
    begin
    O[j-:8] <= o;
    k = 4;
    end
    else O[j-:8] <= I[j-:8];
    k = k-1;
end
#10;
$display(" Input: %s\nOutput: %s\n\n",I,O);
#5;
//-----------------------------------------
I = "000 101 000 111 ";
k=3;
for ( j = SIZE*8-1 ;j >= 0 ;j = j-8 )
begin
    i <= I[j-:8];
    #60;
    if(k == 0)
    begin
    O[j-:8] <= o;
    k = 4;
    end
    else O[j-:8] <= I[j-:8];
    k = k-1;
end
#10;
$display(" Input: %s\nOutput: %s\n\n",I,O);
#5;
//-----------------------------------------
I = "000 101 000 011 ";
k=3;
for ( j = SIZE*8-1 ;j >= 0 ;j = j-8 )
begin
    i <= I[j-:8];
    #60;
    if(k == 0)
    begin
    O[j-:8] <= o;
    k = 4;
    end
    else O[j-:8] <= I[j-:8];
    k = k-1;
end
#10;
$display(" Input: %s\nOutput: %s\n\n",I,O);
#5;
//-----------------------------------------
I = "010 101 111 100 ";
k=3;
for ( j = SIZE*8-1 ;j >= 0 ;j = j-8 )
begin
    i <= I[j-:8];
    #60;
    if(k == 0)
    begin
    O[j-:8] <= o;
    k = 4;
    end
    else O[j-:8] <= I[j-:8];
    k = k-1;
end
#10;
$display(" Input: %s\nOutput: %s\n\n",I,O);
#5;
//-----------------------------------------
I = "010 000 000 111 ";
k=3;
for ( j = SIZE*8-1 ;j >= 0 ;j = j-8 )
begin
    i <= I[j-:8];
    #60;
    if(k == 0)
    begin
    O[j-:8] <= o;
    k = 4;
    end
    else O[j-:8] <= I[j-:8];
    k = k-1;
end
#10;
$display(" Input: %s\nOutput: %s\n\n",I,O);
#5;
//-----------------------------------------
I = "000 000 000 000 ";
k=3;
for ( j = SIZE*8-1 ;j >= 0 ;j = j-8 )
begin
    i <= I[j-:8];
    #60;
    if(k == 0)
    begin
    O[j-:8] <= o;
    k = 4;
    end
    else O[j-:8] <= I[j-:8];
    k = k-1;
end
#10;
$display(" Input: %s\nOutput: %s\n\n",I,O);
#5;
//-----------------------------------------
I = "110 101 001 001 ";
k=3;
for ( j = SIZE*8-1 ;j >= 0 ;j = j-8 )
begin
    i <= I[j-:8];
    #60;
    if(k == 0)
    begin
    O[j-:8] <= o;
    k = 4;
    end
    else O[j-:8] <= I[j-:8];
    k = k-1;
end
#10;
$display(" Input: %s\nOutput: %s\n\n",I,O);
#5;
//-----------------------------------------
I = "111 111 111 111 ";
k=3;
for ( j = SIZE*8-1 ;j >= 0 ;j = j-8 )
begin
    i <= I[j-:8];
    #60;
    if(k == 0)
    begin
    O[j-:8] <= o;
    k = 4;
    end
    else O[j-:8] <= I[j-:8];
    k = k-1;
end
#10;
$display(" Input: %s\nOutput: %s\n\n",I,O);
#5;
//-----------------------------------------
I = "000 000 000 000 ";
k=3;
for ( j = SIZE*8-1 ;j >= 0 ;j = j-8 )
begin
    i <= I[j-:8];
    #60;
    if(k == 0)
    begin
    O[j-:8] <= o;
    k = 4;
    end
    else O[j-:8] <= I[j-:8];
    k = k-1;
end
#10;
$display(" Input: %s\nOutput: %s\n\n",I,O);
#5;
//-----------------------------------------
I = "101 100 001 010 ";
k=3;
for ( j = SIZE*8-1 ;j >= 0 ;j = j-8 )
begin
    i <= I[j-:8];
    #60;
    if(k == 0)
    begin
    O[j-:8] <= o;
    k = 4;
    end
    else O[j-:8] <= I[j-:8];
    k = k-1;
end
#10;
$display(" Input: %s\nOutput: %s\n\n",I,O);
#5;
//-----------------------------------------
#60 $finish;
end
endmodule