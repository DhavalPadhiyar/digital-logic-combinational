module alu_tb();
reg [3:0]a,b;
reg [3:0]opr;
wire[3:0]o;

alu DUT (.opr(opr),.a(a),.b(b),.o(o));
initial begin
  opr=4'd0; a=4'd3; b=4'd2;
  #10;
  opr=4'd1; a=4'd3; b=4'd2;
  #10;
  opr=4'd2; a=4'd3; b=4'd2;
  #10;
  opr=4'd3; a=4'd3; b=4'd2;
  #10;
  opr=4'd4; a=4'd3; b=4'd2;
  #10;
  opr=4'd5; a=4'd3; b=4'd2;
  #10;
  opr=4'd6; a=4'd3; b=4'd2;
  #10;
  opr=4'd7; a=4'd3; b=4'd2;
  #10;
  opr=4'd8; a=4'd3; b=4'd2;
  #10;
  opr=4'd9; a=4'd3; b=4'd2;
  #10;
//   opr=4'd10; a=4'd3; b=4'd2;
//   #10;
//   opr=4'd11; a=4'd3; b=4'd2;
//   #10;
  opr=4'd12; a=4'd3; b=4'd2;
  #10;
  opr=4'd13; a=4'd3; b=4'd2;
  #10;
  opr=4'd14; a=4'd3; b=4'd2;
  #10;
  opr=4'd15; a=4'd3; b=4'd2;
  #10;
  
end
endmodule