module bidir(a,b,en);
inout a,b;
input en;

assign b=(en)?a:1'bz;
assign a=(!en)?b:1'bz;
endmodule