module fa_1(A, B, C, S, Cout);
  input [3:0] A;input [3:0] B;input C;
  output [3:0] S, Cout;

  reg S;reg Cout;

  always @(A or B or C)
  begin
    {Cout, S} = A + B + C;
  end
endmodule
