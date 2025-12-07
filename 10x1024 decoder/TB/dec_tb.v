module dec_tb();
reg [9:0]i;
wire [1023:0]o;
dec DUT(.i(i),.o(o));
initial begin
   i=10'b0;
   
  i[0]=1'b0;
   #50;
  i[0]=1'b1;
  #50;
  i[1]=1'b1;
  #50;
  i[2]=1'b1;
  #50;
  i[4:0]=5'b10101;
  #50;
end
endmodule