module half_adder(a,b,sum,carry);
input a,b;
output sum,carry;
xor SM (sum,a,b);
and CR (carry,a,b);
endmodule