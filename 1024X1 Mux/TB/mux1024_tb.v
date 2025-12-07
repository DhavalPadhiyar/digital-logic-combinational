module mux1024_tb();

  reg [1023:0] i;  
  reg [9:0] s;    
  wire o;          


  mux1024 DUT(
    .i(i),
    .s(s),
    .o(o)
  );

  initial begin

    i = 1024'b0;

   
    i[0]   = 1'b1; s = 0;
    #1 
    i[10]  = 1'b1;s = 10;
    #1 
    i[123] = 1'b1; s = 123;
    #1 
    i[512] = 1'b1; s = 512;
    #1 
    i[1023]= 1'b1; s = 1023;
    #1 
 
    $finish;
  end

endmodule
