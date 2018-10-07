module fa_1(A, B, C, S, Cout);
  input A, B, C;
  output S, Cout;

  reg S, Cout;

  always @(A or B or C)
  begin
    if ((A == B && B != C && A == 1'b1) || 
        (A == C && C != B && A == 1'b1) ||
        (B == C && A != B && B == 1'b1))
        begin
          S = 0;
          Cout = 1;
        end
    else if ((A == B && B != C && A == 1'b0) || 
        (A == C && C != B && A == 1'b0) ||
        (B == C && A != B && B == 1'b0))
      begin
        S = 1;
        Cout = 0;
      end
    else if (A == B && B == C && A == 1'b1)
      begin
        S = 1;
        Cout = 1;
      end
    else
      begin
        S = 0;
        Cout = 0;
      end 
  end
endmodule
