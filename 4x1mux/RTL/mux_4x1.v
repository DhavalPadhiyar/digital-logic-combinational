module mux_4x1(i0,i1,i2,i3,s0,s1,out);
input i0,i1,i2,i3,s0,s1;
output out;
not(s00,s0);
not(s10,s1);
and(b0,s00,s10,i0);
and(b1,s00,s1,i1);
and(b2,s0,s10,i2);
and(b3,s0,s1,i3);
or (out,b0,b1,b2,b3);
endmodule
