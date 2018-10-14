module mux(I0, I1, S, Z);
  input [0:1] I0;
  input [0:1] I1;
  input S;
  output [0:1] Z;
  reg [0:1] Z;

  always @(I0, I1, S)
  begin
    case (S)
      0: Z = I0;
      1: Z = I1; 
    endcase
  end
endmodule
