module full_sub_tb();
reg a,b,bin;
wire dif,bout;

full_sub DUT (.a(a),.b(b),.dif(dif),.bin(bin),.bout(bout));

initial begin
  a=0;b=0;bin=0;
  #10;
  a=0;b=0;bin=1;
  #10;
  a=0;b=1;bin=0;
  #10;
  a=0;b=1;bin=1;
  #10
  a=1;b=0;bin=0;
  #10;
  a=1;b=0;bin=1;
  #10;
  a=1;b=1;bin=0;
  #10;
  a=1;b=1;bin=1;
  #10;
  $finish;
  end
  endmodule