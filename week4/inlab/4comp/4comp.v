module comp(A, B, EG, ALB, AGB);
  input [3:0] A;input [3:0] B;
  output EG, ALB, AGB;

  reg EG, ALB, AGB;

  always @(A or B)
  begin
      if (A < B) begin
        EG = 0;
        ALB = 1;
        AGB = 0;
      end
      else if (A == B) begin
        EG = 1;
        ALB = 0;
        AGB = 0;
      end
      else begin
        EG = 0;
        ALB = 0;
        AGB = 1;
      end
  end
endmodule
