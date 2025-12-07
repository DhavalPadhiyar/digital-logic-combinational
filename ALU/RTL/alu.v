module alu (opr,a,b,o);
input [3:0]opr;
input  [3:0]a,b;
output reg [3:0]o;

always@(*)
case(opr)
4'd0: o= a + b;
4'd1: o= a - b;
4'd2: o= a * b;
4'd3: o= a / b;
4'd4: o= a & b;
4'd5: o= a | b;
4'd6: o= a ^ b;
4'd7: o= a << b;
4'd8: o= a >> b;
4'd9: o= a ~^ b;
//4'd10: o= a ~& b;
//4'd11: o= a ~| b;
4'd12: o= ~a;
4'd13: o= ~b;
4'd14: o= a==b;
4'd15: o= a!=b;
default: o=1'b0;
endcase 
endmodule 


