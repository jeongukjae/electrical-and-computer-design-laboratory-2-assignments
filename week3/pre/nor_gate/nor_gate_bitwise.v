module nor_gate_bitwise (A, X);

  input [2:0] A;
  output X;
  reg X;

  always @(A)
  begin
    X = !(A[0] | A[1] | A[2]);
  end

endmodule
