//We've used Moore Machine to build this finite state machine
module three_bit_odd_parity_bit_generator_fsm(
    input clk,       //clock
    input reset,
    input [7:0] in,  //input byte
    output reg [7:0] out
);
parameter SIZE = 8;
parameter IDLE = 2'b00, a = 2'b01, b = 2'b10;
//---------------Internal Variables--------------------
reg [1:0] state     ;//seq part of the FSM
reg [1:0] next_state;//combo part of FSM
//---------------Code Starts Here----------------------
//---------------Seq Logic-----------------------------
initial
begin
    state <= IDLE;
    next_state <= IDLE;
end
always @(posedge clk)
begin : FSM_SEQ
if(reset == 1'b1) state <= IDLE;
else state <= next_state;
out = state == a ? "0" : "1"; //since it's a moore machine, it will give output in the state itself
end
always @(state or in)
begin : FSM_COMBO

    case (state)
        IDLE : if(in == 8'b00110001) next_state <= a;
               else if (in == 8'b00110000) next_state <= b;
               else next_state <= IDLE;

        a :    if(in == 8'b00110001) next_state <= b;
               else if (in == 8'b00110000) next_state <= a;
               else next_state <= IDLE;

        b :    if(in == 8'b00110001) next_state <= a;
               else if (in == 8'b00110000) next_state <= b;
               else next_state <= IDLE;

        default: next_state <= IDLE;
    endcase
end
endmodule