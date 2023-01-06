`timescale 1ns / 1ps
module alu(
    Operand1,
    Operand2,
    Opcode,
    Result   );
    
    input [31:0] Operand1,Operand2;
    input [3:0] Opcode;
    output [31:0] Result;
    wire [31:0] Reg1,Reg2;
    reg [31:0] Reg3;
    
    assign Reg1 = Operand1;
    assign Reg2 = Operand2;
    assign Result = Reg3;

   
    always @(Opcode or Operand1 or Operand2)
    begin
        case (Opcode)
        4'b0000: Reg3 = Reg1 + Reg2;  
        4'b0001 : Reg3 = Reg1 - Reg2; 
        4'b0010 : Reg3 = Reg1 * Reg2;
        4'b0011: Reg3 = Reg1 & Reg2; 
        4'b0100 : Reg3 = Reg1 | Reg2; 
        4'b0110 : Reg3 = Reg1 ^ Reg2; 
        4'b0111 : Reg3 = ~Reg1;   
        4'b1000: Reg3 = Reg1>>1;
        4'b1001 : Reg3 = Reg1<<1;
        endcase 
    end
    endmodule