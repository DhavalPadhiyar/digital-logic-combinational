module mux1024(i,s,o);
input[1023:0]i;
output o;
input [0:9]s;

assign o=i[s];
endmodule