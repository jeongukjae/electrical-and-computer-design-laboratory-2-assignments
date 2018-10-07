module test_tb;
  reg A;
  wire X;

  test t(A, X);

  initial begin
    A = 0;

    forever
      #10; A = !A;
  end


  initial begin
		$dumpfile("test_tb.vcd");
		$dumpvars(0, test_tb);
		$monitor($time,
             ": %b => %b",
             A, X);
	end

endmodule
