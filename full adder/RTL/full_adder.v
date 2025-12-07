module full_adder(a, b, cin, sum, cout);
    input a, b, cin;
    output sum, cout;

    xor (sum, a, b, cin);
    and (g1, a, b);
    and (g2, a, cin);
    and (g3, b, cin);
    or (cout, g1, g2, g3);
endmodule