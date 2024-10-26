///////////////////////////////////////////////////////////////////////////////////////////////////
// Company: <Name>
//
// File: half_adder.v
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

module HA (A, B, Su, Ca);
	input A,B;
	output Su,Ca;
	// Gate level code
	xor x1 (Su, A, B);
	and a1 (Ca, A, B);
	
endmodule


