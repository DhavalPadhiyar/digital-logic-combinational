module bs(d_in,shift,dir,d_out);
input[7:0]d_in;
input[2:0]shift;
input dir;
output [7:0]d_out;

always@(*)
if(dir=0)
     d_out= d_in << shift;
else
  d_out= d_in >> shift;
 
 endmodule
