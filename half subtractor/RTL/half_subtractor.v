module half_subtractor(a,b,dif,bor);
input a,b;
wire a0;
output dif,bor;
xor (dif,a,b);
not(a0,a);
and(bor,a0,b);
endmodule