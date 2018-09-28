module nand_gate_bitwise (A, B, X);

  input A, B;
  output X;
  reg X;

  always @(A, B)
  begin
    X = !(A & B);
  end

endmodule
