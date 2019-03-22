// --------------------------------------------------------------------
// >>>>>>>>>>>>>>>>>>>>>>>>> COPYRIGHT NOTICE <<<<<<<<<<<<<<<<<<<<<<<<<
// --------------------------------------------------------------------
// Copyright (c) 2019 by UCSD CSE 140L
// --------------------------------------------------------------------
//
// Permission:
//
//   This code for use in UCSD CSE 140L.
//   It is synthesisable for Lattice iCEstick 40HX.  
//
// Disclaimer:
//
//   This Verilog source code is intended as a design reference
//   which illustrates how these types of functions can be implemented.
//   It is the user's responsibility to verify their design for
//   consistency and functionality through the use of formal
//   verification methods.  
//
// --------------------------------------------------------------------
//           
//                     Lih-Feng Tsaur
//                     UCSD CSE Department
//                     9500 Gilman Dr, La Jolla, CA 92093
//                     U.S.A
//
// --------------------------------------------------------------------
//
// Revision History : 0.0
`timescale 1ns/1ns

module tb_hello ;


reg a;
reg b;

initial begin
   #10
   $display ( "Hello World by YOUR OWN NAME" );
   #500;	
	
   $finish;
end

initial begin
   $display ( "Goodbye Now" );
	$monitor($time, "  a=%d  b=%d", a, b);
end


initial begin
   a<=0;
   b<=0;
   #10;
   a<=1;
   b<=1;
   end

wire c_a_and_b;

Lab1_hello Lab1_hello(a, b, c_a_and_b);

endmodule // End of Module hello_world

