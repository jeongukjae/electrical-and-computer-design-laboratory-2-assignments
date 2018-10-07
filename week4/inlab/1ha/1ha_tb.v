module OhaTB;
  reg A, B;
  wire S, C;

  Oha ha(A, B, S, C);

  initial begin
    A = 0; B = 0; #10;
    A = 0; B = 1; #10;
    A = 1; B = 0; #10;
    A = 1; B = 1; #10;
  end


  initial begin
		$dumpfile("OhaTB.vcd");
		$dumpvars(0, OhaTB);
		$monitor($time,
             ": %b %b => %b %b",
             A, B, S, C);
	end

endmodule
