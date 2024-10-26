module FA (Sum, Cout, A, B, Cin);
 
	output Sum, Cout;
	input A, B, Cin;
		
	// Structural code
	HA ha1 (.Su(s1), .Ca(c1), .A(A), .B(B));
	HA ha2 (.Su(Sum), .Ca(c2), .A(s1), .B(Cin));		
	or o1 (Cout, c1, c2);
	
endmodule

