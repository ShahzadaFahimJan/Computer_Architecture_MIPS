//////////////////////////////////////////////////////////////////////
// Created by Microsemi SmartDesign Sat Nov  4 04:46:32 2023
// Testbench Template
// This is a basic testbench that instantiates your design with basic 
// clock and reset pins connected.  If your design has special
// clock/reset or testbench driver requirements then you should 
// copy this file and modify it. 
//////////////////////////////////////////////////////////////////////

///////////////////////////////////////////////////////////////////////////////////////////////////
// Company: <Name>
//
// File: full_adder_testbench.v
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


module test_FA; //test bench to test FA (Full Adder)

	// Inputs are regs here
	reg A, B, Cin;
		
	// Outputs are wires here
	wire S, Cout;
	
	// Instantiate the Unit/Design Under Test (U/DUT)
	// FA dut (Sum, Cout, A, B, Cin);  // Positional association
	FA dut (.A(A), .B(B), .Cin(Cin), .Sum(S), .Cout(Cout));  // Explicit association

	initial begin
		// Initialize Inputs		
		A = 0; B = 0; Cin = 0;
		#10	
		Cin = 1;
		#10
		B = 1; 
		#10
		A = 1;
		#10
		A = 0;
		#10
		Cin = 0;		
	end
	
	initial begin
		$monitor("A=%b,B=%b,Cin=%b--->Sum=%b,Cout=%b  \n",A,B,Cin,S,Cout);		
	end
	      
endmodule