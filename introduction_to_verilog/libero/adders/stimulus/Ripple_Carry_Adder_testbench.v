//////////////////////////////////////////////////////////////////////
// Created by Microsemi SmartDesign Sat Nov  4 04:49:35 2023
// Testbench Template
// This is a basic testbench that instantiates your design with basic 
// clock and reset pins connected.  If your design has special
// clock/reset or testbench driver requirements then you should 
// copy this file and modify it. 
//////////////////////////////////////////////////////////////////////

///////////////////////////////////////////////////////////////////////////////////////////////////
// Company: <Name>
//
// File: Ripple_Carry_Adder_testbench.v
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

`timescale 1ns/100ps



module test_RCA (Co, Su, A, B);

	input Co;
	input [3:0] Su;

	output [3:0] A, B;
	reg [3:0] A, B;
	

	initial begin
		A = 4'b0000;
		B = 4'b1111;
		#15
		A = 4'b1111;
		B = 4'b1111;
		#15
		A = 4'b1010;
		B = 4'b1111;		
	end
	
	initial
		$monitor ("%d, A=%b, B=%b, S=%b, Cout=%b", $time, A, B, Su, Co);

endmodule