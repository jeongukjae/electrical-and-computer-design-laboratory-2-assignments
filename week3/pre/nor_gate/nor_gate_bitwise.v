module nor_gate_bitwise (A, X);

  input [2:0] A;
  output X;

  assign X = !(A[0] | A[1] | A[2]);

endmodule
