
module test_mux21 ();
	reg [1:0] I;
	reg Sel;
	wire OUT;
	
	mux21 mux(OUT, I, Sel);

	
	initial begin
	
		I[0]=0;
		I[1]=1;
		Sel=1;
		
		#20
		I[0]=0;
		I[1]=1;
		Sel=0;
		
		#30
		I[0]=1;
		I[1]=0;
		Sel=0;
		
	end
	
	initial
		$monitor("%d, I1=%b, I0=%b, Sel=%b, OUT=%b", $time, I[1], I[0], Sel, OUT);

endmodule
