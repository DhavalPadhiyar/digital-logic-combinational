module prir_enc(d,o);
input [3:0]d;
output reg [1:0]o;

always@(*)begin
casex (d)
4'b0001: o=2'b00; 
4'b001x:o=2'b01;  
4'b01xx: o=2'b10; 
4'b1xxx: o=2'b11;  
default: o=2'b00;  
endcase
end
endmodule


