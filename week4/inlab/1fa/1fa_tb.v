module fa_tb;
  reg A, B, Cin;
  wire S, C;

  fa_1 f(A, B, Cin, S, C);

  initial begin
    A = 0; B = 0; Cin = 0; #10;
    A = 0; B = 1; #10;
    A = 1; B = 0; #10;
    A = 1; B = 1; #10;
    A = 0; B = 0; Cin = 1; #10;
    A = 0; B = 1; #10;
    A = 1; B = 0; #10;
    A = 1; B = 1; #10;
  end


  initial begin
		$dumpfile("fa_tb.vcd");
		$dumpvars(0, fa_tb);
		$monitor($time,
             ": %b %b %b => %b %b",
             A, B, Cin, S, C);
	end

endmodule
