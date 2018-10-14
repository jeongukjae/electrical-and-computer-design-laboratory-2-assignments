module demux(I, S, Z);
  input I;
  input [0:1] S;
  output [0:3] Z;
  reg Z;

  always @(I, S)
  begin
    Z = 4'b0000;
    if (S == 2'b00) Z = {3'b000, I};
    else if (S == 2'b01) Z = {2'b00, I, 1'b0};
    else if (S == 2'b10) Z = {1'b0, I, 2'b00};
    else Z = {I, 3'b000};
  end
endmodule
