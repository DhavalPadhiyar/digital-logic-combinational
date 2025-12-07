module pri_dec_tb();
reg [1:0]d;
wire [3:0]o;

prir_dec DUT(.d(d),.o(o));
initial begin
 d=2'b00;
 #10;
 d=2'b01;
 #10;
 d=2'b10;
 #10;
 d=2'b11;
 #10;
 end
 endmodule