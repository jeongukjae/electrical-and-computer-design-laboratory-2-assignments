module decoder(A, B, C, O);
  input A, B, C;
  output [7:0] O;

  reg [7:0] O;

  always @(A, B, C)
  begin
    if ((A == 0) && (B == 0) && (C == 0)) O = 8'b00000001;
    else if ((A == 0) && (B == 0) && (C == 1)) O = 8'b00000010;
    else if ((A == 0) && (B == 1) && (C == 0)) O = 8'b00000100;
    else if ((A == 0) && (B == 1) && (C == 1)) O = 8'b00001000;
    else if ((A == 1) && (B == 0) && (C == 0)) O = 8'b00010000;
    else if ((A == 1) && (B == 0) && (C == 1)) O = 8'b00100000;
    else if ((A == 1) && (B == 1) && (C == 0)) O = 8'b01000000;
    else O = 8'b10000000;
  end
endmodule
