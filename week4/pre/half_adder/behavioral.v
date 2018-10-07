module HalfAdder(A, B, S, C);
  input A, B;
  output S, C;

  reg S, C;

  always @(A or B)
  begin
    if (A == B) S = 0;
    else S = 1;

    if (A == 1 && B == 1) C = 1;
    else C = 0;
  end

endmodule
