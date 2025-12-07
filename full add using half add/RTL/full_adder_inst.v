module half_adder(a,b,sum,carry);
input a,b;
output sum,carry;
xor SM (sum,a,b);
and CR (carry,a,b);
endmodule

module full_adder(a,b,cin,sum,cout);
 input a,b,cin;
 output sum,cout;
wire w0,w1,w2;
half_adder HA0(.a(a),.b(b),.sum(w0),.carry(w1));
half_adder HA1(.a(w0),.b(cin),.sum(sum),.carry(w2));
or CR(cout,w1,w2);
endmodule