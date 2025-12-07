

module parity_gen_even_tb;

  // Testbench signals
  reg [2:0] data;
  wire parity;

  // Instantiate the DUT (Device Under Test)
  parity_gen_even DUT (
    .data(data),
    .parity(parity)
  );

  // Apply test vectors
  initial begin
    $display("Time\tData\tParity");
    $monitor("%0t\t%b\t%b", $time, data, parity);

    data = 3'b000; #10;
    data = 3'b001; #10;
    data = 3'b010; #10;
    data = 3'b011; #10;
    data = 3'b100; #10;
    data = 3'b101; #10;
    data = 3'b110; #10;
    data = 3'b111; #10;

    $finish;
  end

endmodule
