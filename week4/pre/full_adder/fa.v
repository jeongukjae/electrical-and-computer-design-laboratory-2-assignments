module FA(A, B, Cin, S, Cout);
  input A, B, Cin;
  output S, Cout;

  wire S, Cout;

  wire reg_c1, reg_c2;
  wire reg_sum;

  HalfAdder ha1(A, B, reg_sum, reg_c1);
  HalfAdder ha2(Cin, reg_sum, S, reg_c2);

  assign Cout = reg_c1 | reg_c2;

endmodule
