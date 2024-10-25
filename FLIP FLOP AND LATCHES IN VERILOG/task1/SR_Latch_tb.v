
module testbench_SR_latch;


    reg S, R;  // Inputs: Set (S), Reset (R), Clock
    wire Q, Q_BAR;  // Outputs: Q, Q_BAR

    // Instantiate SR latch
    SR_latch sr_latch_inst(S,R,Q,Q_BAR);

  

    // Stimulus
    initial begin
     

        // Test 1: Set S to 1, R to 0
	

        S = 1'b1;
        R = 1'b0;
	#10;
        // Test 2: Hold S, assert R
        S = 1'b1;
        R = 1'b1;
        #30;

        // Test 3: Set R to 1, S to 0
        S = 1'b0;
        R = 1'b1;
        #60;

        // Test 4: Hold R, assert S
        S = 1'b1;
        R = 1'b1;
        #90;

        // Test 5: Set R and S to 0
        S = 1'b0;
        R = 1'b0;
       
    end
initial
		$monitor($time, ", s = %b, r = %b, q=%b, qbar=%b", S,R,Q,Q_BAR);


endmodule
