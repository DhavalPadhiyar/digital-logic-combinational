module bs_tb();
reg [7:0]d_in;
reg [3:0]shift;
reg dir;
wire [7:0]d_out;

bs DUT (.d_in(d_in),.shift(shift),.dir(dir),.d_out(d_out));

initial begin
  dir=0;
  d_in=8'b1;shift=3'b010;
  #10;

  dir=1;
  d_in=8'b1;shift=2'b010;
  #10;

end

