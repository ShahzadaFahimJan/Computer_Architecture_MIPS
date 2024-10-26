
module HA (A, B, Su, Ca);
	input A,B;
	output Su,Ca;
	// Gate level code
	xor x1 (Su, A, B);
	and a1 (Ca, A, B);
	
endmodule