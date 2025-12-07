module pri_en_tb();
reg [3:0]d;
wire [1:0]o;

prir_enc DUT(.d(d),.o(o));
initial begin
 d=4'b0000;
 #10;
 d=4'b0001;
 #10;
 d=4'b0010;
 #10;
 d=4'b0100;
 #10;
 d=4'b1000;
 #10;
 end
 endmodule