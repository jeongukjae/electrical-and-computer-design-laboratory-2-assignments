module nor_gate_gate_primitive (A, X);

  input [2:0] A;
  output X;

  nor U0(X, A[0], A[1], A[2]);

endmodule
