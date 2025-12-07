`timescale 1ns / 1ps

module tb_alu;

    // Inputs
    reg [3:0] opr;
    reg [3:0] a;
    reg [3:0] b;

    // Output
    wire [3:0] o;

    // Instantiate the ALU module
    alu uut (
        .opr(opr),
        .a(a),
        .b(b),
        .o(o)
    );

    initial begin

        // Initialize inputs
        a = 4'd7; b = 4'd3;

        opr = 4'd0;  #10; 
        opr = 4'd1;  #10; 
        opr = 4'd2;  #10; 
        opr = 4'd3;  #10; 
        opr = 4'd4;  #10; 
        opr = 4'd5;  #10; 
        opr = 4'd6;  #10; 
        opr = 4'd7;  #10; 
        opr = 4'd8;  #10; 
        opr = 4'd9;  #10; 

        opr = 4'd12; #10; 
        opr = 4'd13; #10;

        a = 4'd5; b = 4'd5;
        opr = 4'd14; #10; 

        a = 4'd2; b = 4'd3;
        opr = 4'd15; #10;

    
        #10 $finish;
    end

endmodule
