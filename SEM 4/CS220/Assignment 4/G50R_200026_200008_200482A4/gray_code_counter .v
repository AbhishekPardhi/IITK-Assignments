module gray_code_counter(
    input clk,    //clock
    input reset,
    input in,    //input bit 
    output reg out
);
parameter S0 = 3'b000, S1 = 3'b001, S2 = 3'b011, S3= 3'b010, S4= 3'b110, S5= 3'b111, S6 = 3'b101, S7 = 3'b100;

reg [2:0] state;
reg [2:0] next_state;

initial
begin
    state <= S0;
    next_state <= S0;
end

always @(posedge clk)
begin : FSM_SEQ
if(reset == 1'b1) state <= S0;
else state <= next_state;
end

always @(state or in)
begin : FSM_COMBO

    case (state)
        S0 : if(in == 1'b1) {next_state,out} <= {S1,1'b0};
               else {next_state,out} <= {S0,1'b0};
        S1 : if(in == 1'b1) {next_state,out} <= {S2,1'b0};
               else {next_state,out} <= {S1,1'b0};
        S2 : if(in == 1'b1) {next_state,out} <= {S3,1'b0};
               else {next_state,out} <= {S2,1'b0};
        S3 : if(in == 1'b1) {next_state,out} <= {S4,1'b0};
               else {next_state,out} <= {S3,1'b0};
        S4 : if(in == 1'b1) {next_state,out} <= {S5,1'b0};
               else {next_state,out} <= {S4,1'b0};
        S5 : if(in == 1'b1) {next_state,out} <= {S6,1'b0};
               else {next_state,out} <= {S5,1'b0};
        S6 : if(in == 1'b1) {next_state,out} <= {S7,1'b0};
               else {next_state,out} <= {S6,1'b0};
        S7 : if(in == 1'b1) {next_state,out} <= {S0,1'b1};
               else {next_state,out} <= {S7,1'b0};
        default: {next_state,out} <= {S0,1'b0};
    endcase
end

endmodule

