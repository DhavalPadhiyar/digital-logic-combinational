module prir_dec(d, o, v);
  input [1:0] d;
  output reg [3:0] o;
  output reg v;

  always @(*) begin
    case (d)
      2'b00: begin o = 4'b0001; v = 1; end
      2'b01: begin o = 4'b0010; v = 1; end
      2'b10: begin o = 4'b0100; v = 1; end
      2'b11: begin o = 4'b1000; v = 1; end
      default: begin o = 4'b0000; v = 0; end
    endcase
  end
endmodule
