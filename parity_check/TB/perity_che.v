module perity_check_tb();
reg [3:0]in;
wire flag;

perity_che DUT(.in(in),.flag(flag));
initial begin
in=4'b0000;
#10;
in=4'b0001;
#10;
in=4'b0011;
#10;
in=4'b0111;
#10;
in=4'b1111;
#10;
end
endmodule
