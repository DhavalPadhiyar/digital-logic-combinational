 module mux_2x1 (i0, i1, s, o);
 input i0,i1,s;
 output o;
 wire s0;
 and(b2,s,i1);
 not(s0,s);
 and (b1,s0,i0);
 or(o,b1,b2);
 endmodule   

module mux_8x1(i0,i1,i2,i3,i4,i5,i6,i7,s0,s1,s2,out);
input i0,i1,i2,i3,i4,i5,i6,i7,s0,s1,s2;
output out;
wire w0,w1,w2,w3;
mux_2x1 m0(.i0(i0),.i1(i1),.s(s0),.o(w0));
mux_2x1 m1(.i0(i2),.i1(i3),.s(s0),.o(w1));
mux_2x1 m2(.i0(i4),.i1(i5),.s(s0),.o(w2));
mux_2x1 m3(.i0(i6),.i1(i7),.s(s0),.o(w3));
mux_2x1 m4(.i0(w0),.i1(w1),.s(s1),.o(w4));
mux_2x1 m5(.i0(w2),.i1(w3),.s(s1),.o(w5));
mux_2x1 m6(.i0(w4),.i1(w5),.s(s2),.o(out));
endmodule