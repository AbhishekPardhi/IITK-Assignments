`include "sequence_detector_fsm.v"
module sequence_detector_fsm_tb();
parameter SIZE = 15;
reg [SIZE-1:0] I,O;
reg clk,reset,i;
wire o;
integer j;
//----------------Code Starts Here-----------------------
always #10  clk = ~clk;

sequence_detector_fsm FSM(clk,reset,i,o);

initial
begin
clk <=0;
reset <= 0;

#10;

//----------------INPUTS-------------------
I = 15'b101010101010101;
for ( j = SIZE-1 ;j >= 0 ;j = j-1 )
begin
    i <= I[j];
    #1;
    reset=1'b0;
    #9;
    O[j] <= o;
    #10;
end
reset=1'b1;
#15;
$display(" Input: %b\nOutput: %b\n\n",I,O);
#5;
//-----------------------------------------
I = 15'b101010101010001;
for ( j = SIZE-1 ;j >= 0 ;j = j-1 )
begin
    i <= I[j];
    #1;
    reset=1'b0;
    #9;
    O[j] <= o;
    #10;
end
reset=1'b1;
#15;
$display(" Input: %b\nOutput: %b\n\n",I,O);
#5;
//-----------------------------------------
I = 15'b100000101010101;
for ( j = SIZE-1 ;j >= 0 ;j = j-1 )
begin
    i <= I[j];
    #1;
    reset=1'b0;
    #9;
    O[j] <= o;
    #10;
end
reset=1'b1;
#15;
$display(" Input: %b\nOutput: %b\n\n",I,O);
#5;
//-----------------------------------------
I = 15'b101000101000000;
for ( j = SIZE-1 ;j >= 0 ;j = j-1 )
begin
    i <= I[j];
    #1;
    reset=1'b0;
    #9;
    O[j] <= o;
    #10;
end
reset=1'b1;
#15;
$display(" Input: %b\nOutput: %b\n\n",I,O);
#5;
//-----------------------------------------
I = 15'b000000000000000;
for ( j = SIZE-1 ;j >= 0 ;j = j-1 )
begin
    i <= I[j];
    #1;
    reset=1'b0;
    #9;
    O[j] <= o;
    #10;
end
reset=1'b1;
#15;
$display(" Input: %b\nOutput: %b\n\n",I,O);
#5;
//-----------------------------------------
I = 15'b11111111111111;
for ( j = SIZE-1 ;j >= 0 ;j = j-1 )
begin
    i <= I[j];
    #1;
    reset=1'b0;
    #9;
    O[j] <= o;
    #10;
end
reset=1'b1;
#15;
$display(" Input: %b\nOutput: %b\n\n",I,O);
#5;
//-----------------------------------------
I = 15'b01010011010000;
for ( j = SIZE-1 ;j >= 0 ;j = j-1 )
begin
    i <= I[j];
    #1;
    reset=1'b0;
    #9;
    O[j] <= o;
    #10;
end
reset=1'b1;
#15;
$display(" Input: %b\nOutput: %b\n\n",I,O);
#5;
//-----------------------------------------
I = 15'b01010011010000;
for ( j = SIZE-1 ;j >= 0 ;j = j-1 )
begin
    i <= I[j];
    #1;
    reset=1'b0;
    #9;
    O[j] <= o;
    #10;
end
reset=1'b1;
#15;
$display(" Input: %b\nOutput: %b\n\n",I,O);
#5;
//-----------------------------------------
I = 15'b00000011010000;
for ( j = SIZE-1 ;j >= 0 ;j = j-1 )
begin
    i <= I[j];
    #1;
    reset=1'b0;
    #9;
    O[j] <= o;
    #10;
end
reset=1'b1;
#15;
$display(" Input: %b\nOutput: %b\n\n",I,O);
#5;
//-----------------------------------------
I = 15'b01001011010000;
for ( j = SIZE-1 ;j >= 0 ;j = j-1 )
begin
    i <= I[j];
    #1;
    reset=1'b0;
    #9;
    O[j] <= o;
    #10;
end
reset=1'b1;
#15;
$display(" Input: %b\nOutput: %b\n\n",I,O);
#5;
//-----------------------------------------
I = 15'b01010010000101;
for ( j = SIZE-1 ;j >= 0 ;j = j-1 )
begin
    i <= I[j];
    #1;
    reset=1'b0;
    #9;
    O[j] <= o;
    #10;
end
reset=1'b1;
#15;
$display(" Input: %b\nOutput: %b\n\n",I,O);
#5;
//-----------------------------------------
I = 15'b01010001010111;
for ( j = SIZE-1 ;j >= 0 ;j = j-1 )
begin
    i <= I[j];
    #1;
    reset=1'b0;
    #9;
    O[j] <= o;
    #10;
end
reset=1'b1;
#15;
$display(" Input: %b\nOutput: %b\n\n",I,O);
#5;
//-----------------------------------------
I = 15'b010001010101000;
for ( j = SIZE-1 ;j >= 0 ;j = j-1 )
begin
    i <= I[j];
    #1;
    reset=1'b0;
    #9;
    O[j] <= o;
    #10;
end
reset=1'b1;
#15;
$display(" Input: %b\nOutput: %b\n\n",I,O);
#5;
//-----------------------------------------
I = 15'b110011010101001;
for ( j = SIZE-1 ;j >= 0 ;j = j-1 )
begin
    i <= I[j];
    #1;
    reset=1'b0;
    #9;
    O[j] <= o;
    #10;
end
reset=1'b1;
#15;
$display(" Input: %b\nOutput: %b\n\n",I,O);
#5;
//-----------------------------------------
I = 15'b001100011010101;
for ( j = SIZE-1 ;j >= 0 ;j = j-1 )
begin
    i <= I[j];
    #1;
    reset=1'b0;
    #9;
    O[j] <= o;
    #10;
end
reset=1'b1;
#15;
$display(" Input: %b\nOutput: %b\n\n",I,O);
#5;
//-----------------------------------------

#1 $finish;
end
endmodule