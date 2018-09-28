module nand_gate_gate_primitive (A, B, X);

  input A, B;
  output X;

  nand U0(X, A, B);

endmodule
