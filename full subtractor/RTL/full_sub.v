module full_sub(a,b,bin,dif,bout);
input a,b,bin;
wire a0,w1,w2,w3;
output dif,bout;
xor(dif,a,b,bin);
not(a0,a);
and(w1,a0,b);
and(w2,a0,bin);
and(w3,b,bin);
or (bout,w1,w2,w3);
endmodule

