module func (out, A, B, C, D);

output out;
input A, B, C, D;

assign out = (!A && !B && !C && !D) || (A && !C && !D) || (!B && C && !D) || (!A && B && C && D) || (B && !C && D);

endmodule