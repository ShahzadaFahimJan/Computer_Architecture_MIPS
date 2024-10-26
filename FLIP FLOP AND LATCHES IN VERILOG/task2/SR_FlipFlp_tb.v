
module testbench_SR_flipflop_4nand;

    reg S, R, clk;       // Inputs: Set (S), Reset (R), Clock
    wire Q, Q_BAR;       // Outputs: Q, Q_BAR

    // Instantiate SR flip-flop using four NAND gates
    SR_flipflop_4nand sr_flipflop_inst(
        .S(S),
        .R(R),
        .clk(clk),
        .Q(Q),
        .Q_BAR(Q_BAR)
    );


    // Stimulus
    initial begin
 

        // Test 1: Set S to 1, R to 0
	clk=1;
        S = 1;
        R = 0;
        #50; 
	clk=1;
	S = 0;
        R = 0;
	clk=1;
	S = 0;
        R = 1;
        #50; 
	clk=1;
	S = 0;
        R = 0;
        #50; 
	clk=1;
	S = 1;
        R = 1;
        
   end
initial 
        $display("S=%b, R=%b, Q=%b, Q_BAR=%b", S, R, Q, Q_BAR);
  

endmodule
