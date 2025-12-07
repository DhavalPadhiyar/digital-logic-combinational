module perity_che(in,flag);

input[3:0]in;
output reg flag;

always@(*)
if(in[0]^in[1]^in[2]^in[3]==1)
flag=0;
else
flag=1;
endmodule