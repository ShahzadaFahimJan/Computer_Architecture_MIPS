module test_mux41 ();
	reg [3:0] I;
	reg [1:0] Sel;
	wire OUT;
	
	
	mux41 mux(OUT, I, Sel);
	initial begin
		I = 4'b0001;
		Sel = 2'b00;
		
		#10
		I = 4'b0100;
		Sel = 2'b01;
		
		#50
		I = 4'b0100;
		Sel = 2'b10;
		
		#10
		I = 4'b1100;
		Sel = 2'b11;
	end
	
	initial
		$monitor ("%d, I3=%b, I2=%b, I1=%b, I0=%b, Sel=%b, OUT=%b", $time, I[3], I[2], I[1], I[0], Sel, OUT);

endmodule

