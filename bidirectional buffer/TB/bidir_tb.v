module bidir_tb();

wire a,b;
reg en;
reg t_a,t_b;



bidir dut(.a(a),.b(b),.en(en));
assign a = en?t_a:1'bz;
assign b = !en?t_b:1'bz;

initial begin

en=1'b1;t_a=1'b1;
//t_b=1'bz;
#10;
en=1'b0;t_b=1'b0;
//t_a=1'bz;
#10;
en=1'b1;t_a=1'b0;
#10;
en=1'b0;t_b=1'b1;
#10;
end
endmodule

