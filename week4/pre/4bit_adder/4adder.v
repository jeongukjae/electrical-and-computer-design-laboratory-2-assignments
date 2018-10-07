module Fadder(A, B, S, CO);
  input [3:0] A, B;
  output [3:0] S;
  output CO;

  reg [3:0] S;
  reg CO;

  always @(A or B)
  begin
    S = A + B;

    if ((A + B) > 5'b01111)
      CO = 1'b1;
    else
      CO = 1'b0;
  end

endmodule
