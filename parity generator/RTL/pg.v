module parity_gen_even (
    input [2:0] data,        // 3-bit input data
    output parity            // Even parity bit output
);
    // Even parity: parity = 1 if number of 1's in data is odd
    assign parity = ~(^data); // XOR all bits and invert for even parity
endmodule
