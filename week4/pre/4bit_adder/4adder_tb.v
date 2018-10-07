module FadderTB;
  reg [3:0] A;
  reg [3:0] B;

  wire [3:0] S;
  wire CO;

  Fadder fa(A, B, S, CO);

  initial begin
    A = 0; B = 0;

    #100;

    A <= 4'b0110;
    B <= 4'b0011;

    #200

    A <= 4'b1011;
    B <= 4'b0110;

    #100;
  end


  initial begin
		$dumpfile("fadder.vcd");
		$dumpvars(0, FadderTB);
		$monitor($time,
             ": %b %b => %b %b",
             A, B, S, CO);
	end

endmodule
