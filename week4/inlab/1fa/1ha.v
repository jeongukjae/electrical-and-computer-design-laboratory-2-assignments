module Oha(A, B, S, C);
  input A, B;
  output S, C;

  reg S, C;

  always @(A or B)
  begin
    if (A == 1 && B == 1)
      begin
        S = 1'b0;
        C = 1'b1;
      end
    else if (A == 0 && B == 0)
      begin
        S = 1'b0; C = 1'b0;
      end
    else
      begin
        S = 1'b1; C = 1'b0;
      end
    
  end

endmodule
