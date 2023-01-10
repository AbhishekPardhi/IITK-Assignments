//We've used Mealy Machine to build this finite state machine
module sequence_detector_fsm(
    input clk,    //clock
    input reset,
    input in,    //input bit 
    output reg out
);
parameter SIZE = 2;
parameter IDLE = 2'b00, b = 2'b10, c = 2'b01, d = 2'b11;
//---------------Internal Variables--------------------
reg [SIZE-1:0] state     ;//seq part of the FSM
reg [SIZE-1:0] next_state;//combo part of FSM
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
end
always @(state or in)
begin : FSM_COMBO

    case (state)
        IDLE : if(in == 1'b1) {next_state,out} <= {b,1'b0};
               else {next_state,out} <= {IDLE,1'b0};

        b :    if(in == 1'b1) {next_state,out} <= {b,1'b0};
               else {next_state,out} <= {c,1'b0};

        c :    if(in == 1'b1) {next_state,out} <= {d,1'b0};
               else {next_state,out} <= {IDLE,1'b0};
            
        d :    if(in == 1'b1) {next_state,out} <= {b,1'b0}; 
               else {next_state,out} <= {c,1'b1};

        default: {next_state,out} <= {IDLE,1'b0};
    endcase
end
endmodule