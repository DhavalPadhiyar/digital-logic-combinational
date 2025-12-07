module mux_2x1(i, s, out);
  input [1:0] i;
  input s;
  output out;

  wire s0, a0, a1;

  not (s0, s);
  and (a0, s0, i[0]);
  and (a1, s, i[1]);
  or (out, a0, a1);
endmodule


module mux4x1_mux2x1(i0,i1,i2,i3,s0,s1,out);
  input i0,i1,i2,i3,s0,s1;
  output out;
  wire w0,w1;

  mux_2x1 m0(.i({i1, i0}), .s(s0), .out(w0)); 
  mux_2x1 m1(.i({i3, i2}), .s(s0), .out(w1)); 
  mux_2x1 m2(.i({w1, w0}), .s(s1), .out(out));
endmodule
