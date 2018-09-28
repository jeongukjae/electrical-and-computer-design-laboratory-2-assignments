module nor_gate_behavioral (A, X);

  input [2:0] A;
  output X;
  reg X;

  always @(A)
  begin
    if (A == 3'b000)
      X = 1;
    else
      X = 0;
  end

endmodule
