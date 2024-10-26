
module test_HALF; //test bench to test HA (Half Adder)

	// Inputs are regs here
	reg A, B;
		
	// Outputs are wires here
	wire Sum, Carry;
	
	// Instantiate the Unit/Design Under Test (U/DUT)
	// HA dut (A, B, Sum, Carry);  // Positional association
	HA dut (.A(A), .B(B), .Su(Sum), .Ca(Carry));  // Explicit association

	initial 
             begin
		// Initialize Inputs	
		$display("A B S C");	
		A = 0;
		B = 0;
		#10 $display("%b %b %b %b",A,B,Sum,Carry);
			
		B = 1;
		 #10 $display("%b %b %b %b",A,B,Sum,Carry);
		
		A = 1;
		 #10 $display("%b %b %b %b",A,B,Sum,Carry);
		B = 0;		
	 #10	$display("%b %b %b %b",A,B,Sum,Carry);
	     end
	      
endmodule