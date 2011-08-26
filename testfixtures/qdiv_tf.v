`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   19:41:28 08/24/2011
// Design Name:   divider
// Module Name:   C:/Documents and Settings/samskalicky/Desktop/PLE/divider_tf.v
// Project Name:  PLE
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: divider
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module qdiv_tf;

	// Inputs
	reg [31:0] dividend;
	reg [31:0] divisor;
	reg start;
	reg clk;

	// Outputs
	wire [31:0] quotient;

	// Instantiate the Unit Under Test (UUT)
	//module  Params  Name  Signals
	qdiv #(15,32)	uut (dividend, divisor, start, clk, quotient);

	initial begin
		// Initialize Inputs
		dividend[31] = 0;
		dividend[30:15] = 64;
		dividend[14:0] = 4096;//1048576;//4096;
		
		divisor[31] = 0;
		divisor[30:15] = 2;
		divisor[14:0] = 0;
		start = 1;
		clk = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		start = 0;
	end

	always
	begin
		#5 clk = ~clk;
	end
      
endmodule

