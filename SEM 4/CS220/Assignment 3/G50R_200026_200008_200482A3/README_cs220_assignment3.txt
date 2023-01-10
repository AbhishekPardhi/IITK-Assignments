Team members: Aayush Kumar[200008]/ Jahnavi Kairamkonda[200482]/ Abhishek Pardhi[200026]
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
Q1:

Definition of the states and how the transitions takes place is explained briefly in the documentaion.pdf.

We've used a clock having time period of 20 time quanta.
At each positive edge of clock we change the state to next state(if reset is high then active state will be the IDLE state).
We designed our combinational logic inside an always block whose sensitive list comprise of input 'in' and state 'state'.
=> To make an overlapping sequence detetor we made the transition of state from 'd' to 'c' when input is '0'.

In the test bench, we ran a for loop for each test cases and in each iteration we give our fsm a bit as an input(in), which returns a bit as an output(out) which we store in our final output 'reg [SIZE-1:0] O'.

The cool thing about our code is that you can change the value(which is by default 15) of parameter 'SIZE' in the test bench and then change the inputs accordingly to get the desired output :)

-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
Q2:

Definition of the states and how the transitions takes place is explained briefly in the documentaion.pdf.

We've used a clock having time period of 60 time quanta.
At each positive edge of clock we change the state to next state(if reset is high then active state will be the IDLE state).
We designed our combinational logic inside an always block whose sensitive list comprise of input 'in' and state 'state'.

=> If input is a white space then active state returns to the 'IDLE' state.
=> IF input is '1' then we change the active state from 'a' to 'b' or vice versa.
=> If input is '0' then active state remains at same set(if its not at 'IDLE' state).

We stored the input in a reg.
NOTE: A character takes 1 byte of space in reg.
We ran a for loop to access each character of the given input and then changed the inout for the state machine to that character. Once the state machine returns a character we stor eit in our final output 'reg [SIZE-1:0] O'.

The cool thing about our code is that you can change the value(which is by default 16) of parameter 'SIZE' in the test bench and then change the inputs accordingly to get the desired output :)