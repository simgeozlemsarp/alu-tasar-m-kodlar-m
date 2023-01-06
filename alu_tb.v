`timescale 1ns / 1ps
module alu_tb();
    reg [31:0] Operand1;
    reg [31:0] Operand2;
    reg [3:0] Opcode;
    wire [31:0] Result;

    
    alu ins1  ( 
        .Operand1(Operand1), 
        .Operand2(Operand2), 
        .Opcode(Opcode), 
        .Result(Result)
    );
    
    initial
     begin
   
        Operand1 = 32'b00000000000000000000000001101010;
        Operand2 = 32'b00000000000000000000000000111011;
        Opcode = 1; #100;
        Opcode = 2; #100;
        Opcode = 3; #100;
        Opcode = 4; #100;
        Opcode = 5; #100;
        Opcode = 6; #100;
        Opcode = 7; #100;
        Opcode = 8; #100;
        Opcode = 9; #100;

    end
endmodule