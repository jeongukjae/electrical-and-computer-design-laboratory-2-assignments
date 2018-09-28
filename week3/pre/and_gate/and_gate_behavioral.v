module and_gate_behavioral (A, B, X);

  input A, B;
  output X;
  reg X;

  always @(A, B)
  begin
    if (A == 1 && B == 1)
      X = 1;
    else
      X = 0;
  end

endmodule
