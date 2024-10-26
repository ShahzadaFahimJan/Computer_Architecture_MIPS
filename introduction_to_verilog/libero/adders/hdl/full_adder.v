///////////////////////////////////////////////////////////////////////////////////////////////////
// Company: <Name>
//
// File: full_adder.v
// File history:
//      <Revision number>: <Date>: <Comments>
//      <Revision number>: <Date>: <Comments>
//      <Revision number>: <Date>: <Comments>
//
// Description: 
//
// <Description here>
//
// Targeted device: <Family::SmartFusion2> <Die::M2S005> <Package::484 FBGA>
// Author: <Name>
//
/////////////////////////////////////////////////////////////////////////////////////////////////// 

//`timescale <time_units> / <precision>
module FA (Sum, Cout, A, B, Cin);
 
	output Sum, Cout;
	input A, B, Cin;
		
	// Structural code
	HA ha1 (.Su(s1), .Ca(c1), .A(A), .B(B));
	HA ha2 (.Su(Sum), .Ca(c2), .A(s1), .B(Cin));		
	or o1 (Cout, c1, c2);
	
endmodule