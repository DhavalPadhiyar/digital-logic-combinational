module dec(
    input  [9:0] i,
    output [1023:0] o
);
    assign o = 1024'b1 << i;
endmodule
