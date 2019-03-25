//
// tb_hello
// Lab1 test bench
// CSE140L Spring 2019
//
// Starter code
//   Bryan Chin
//   Lih-Feng Tsaur
//
// Author:
//

`timescale 1ns/100ps
   
//
// Lab1 testbench
// runs some basic tests on Lab1_hello
//
module tb_hello;

   wire c_a_and_b;
   reg 	tb_a;
   reg 	tb_b;
   
   initial begin
      tb_a <= 0;
      tb_b <= 0;
      #20;
      tb_a <= 1;
      tb_b <= 0;
      #20;
      $finish;
   end

   initial begin
      #20;
      $display("Hello There YOURNAME HERE");
   end

   initial begin
      $display("GoodBye!!!");
   end
   
   
   Lab1_hello Lab1_hello(.a(tb_a), .b(tb_b), .c_a_and_b(c_a_and_b));

endmodule
      
      
      
