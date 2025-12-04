module half_sub_tb ();
reg a,b;
wire dif,bor;

half_subtractor DUT(.a(a),.b(b),.dif(dif),.bor(bor));

initial begin
a=0;b=0;
#10;
a=0;b=1;
#10;
a=1;b=0;
#10;
a=1;b=1;
#10
$finish;
end
endmodule