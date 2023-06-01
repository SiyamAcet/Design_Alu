`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/09/2023 10:05:25 AM
// Design Name: 
// Module Name: ALU_Test
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

module ALU_Test;

    // Inputs
    logic [3:0] a, b;
    logic [1:0] control;
    
    // Outputs
    logic [3:0] alu_out;
    logic carry_out, overflow, zero, negative;
    
    // Instantiate the ALU module
    ALU alu_inst(.a(a), .b(b), .control(control), .alu_out(alu_out), .carry_out(carry_out), .overflow(overflow), .zero(zero), .negative(negative));
    
     initial begin
  a = 4'b1111; b = 4'b1111; control = 2'b00; #10;
  a = 4'b0000; b = 4'b1101; control = 2'b01; #10;
  a = 4'b0100; b = 4'b0110; control = 2'b10; #10;
  a = 4'b0111; b = 4'b0110; control = 2'b11; #10;
  a = 4'b0000; b = 4'b1101; control = 2'b00; #10;
  a = 4'b0100; b = 4'b1111; control = 2'b01; #10;
  a = 4'b0101; b = 4'b1001; control = 2'b10; #10;
  a = 4'b1110; b = 4'b0111; control = 2'b11; #10;
  a = 4'b1010; b = 4'b1111; control = 2'b00; #10;
  a = 4'b1010; b = 4'b1101; control = 2'b01; #10;
  a = 4'b0100; b = 4'b1011; control = 2'b10; #10;
  a = 4'b0101; b = 4'b1010; control = 2'b11; #10;
  a = 4'b0000; b = 4'b1110; control = 2'b00; #10;
  a = 4'b0110; b = 4'b1011; control = 2'b01; #10;
  a = 4'b0101; b = 4'b1010; control = 2'b10; #10;
  a = 4'b0000; b = 4'b0010; control = 2'b11; #10;
  
  
 end

    
    
endmodule


