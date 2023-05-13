`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/09/2023 09:56:49 AM
// Design Name: 
// Module Name: ALU
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////
// Siyam Acet Ceren Alya??z

module ALU(input logic [3:0] a, b,
    input logic [1:0] control,
    output logic [3:0] alu_out,
    output logic carry_out,
    output logic overflow,
    output logic zero,
    output logic negative );

logic [3:0] sum;
logic [3:0] and_out, or_out, xor_out;
logic [3:0] not_b;
logic [3:0] mux2_out;

	MUX2 mux2_select_out(b, ~b, control[0], mux2_out);
	NbitFulladder NbitAdder_out(a, mux2_out, control[0], sum, cout );
	

	assign and_out = a & b;
	assign or_out = a | b;

	MUX4 mux4_out(sum, sum, and_out, or_out, control, alu_out );

	assign zero = ~alu_out[0] & ~alu_out[1] & ~alu_out[2] & ~alu_out[3];
	assign negative = alu_out[3];
	assign carry_out = cout & ~control[1];
	assign overflow = ~(control[0] ^ a[3] ^ b[3]) & (a[3] ^ sum[3]) & (~control[1]);

endmodule









