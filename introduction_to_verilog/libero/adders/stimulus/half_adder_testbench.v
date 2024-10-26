//////////////////////////////////////////////////////////////////////
// Created by Microsemi SmartDesign Sat Nov  4 04:43:33 2023
// Testbench Template
// This is a basic testbench that instantiates your design with basic 
// clock and reset pins connected.  If your design has special
// clock/reset or testbench driver requirements then you should 
// copy this file and modify it. 
//////////////////////////////////////////////////////////////////////

///////////////////////////////////////////////////////////////////////////////////////////////////
// Company: <Name>
//
// File: half_adder_testbench.v
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

module test_HALF; //test bench to test HA (Half Adder)

	// Inputs are regs here
	reg A, B;
		
	// Outputs are wires here
	wire Sum, Carry;
	
	// Instantiate the Unit/Design Under Test (U/DUT)
	// HA dut (A, B, Sum, Carry);  // Positional association
	HA dut (.A(A), .B(B), .Su(Sum), .Ca(Carry));  // Explicit association

	initial begin
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