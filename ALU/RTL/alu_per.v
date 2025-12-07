module alu (opr,a,b,o);
input [3:0]opr;
input  [3:0]a,b;
output reg [3:0]o;

parameter add=4'd0,
          sub=4'd1,
mul=4'd2,
div=4'd3,
aand=4'd4,
oor=4'd5,
eor=4'd6,
rshift=4'd7,
lshift=4'd8,
enor=4'd9,
// add=4'd10;
// add=4'd11;
nota=4'd12,
notb=4'd13,
comp=4'd14,
diff=4'd15;


always@(*)
case(opr)
add: o= a + b;
sub: o= a - b;
mul: o= a * b;
div: o= a / b;
aand: o= a & b;
oor: o= a | b;
eor: o= a ^ b;
rshift: o= a << b;
lshift: o= a >> b;
enor: o= a ~^ b;
//4'd10: o= a ~& b;
//4'd11: o= a ~| b;
nota: o= ~a;
notb: o= ~b;
comp: o= a==b;
diff: o= a!=b;
default: o=1'b0;
endcase 
endmodule 


