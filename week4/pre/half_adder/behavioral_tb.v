module HalfAdderTB;
  reg A, B;

  wire S, C;

  HalfAdder ha(A, B, S, C);

  initial begin
    A = 0; B = 0;

    #100 A<= 1; B<= 0;
    #100 A<= 0; B<= 1;
    #100 A<= 1; B<= 1;
    #100;
  end


  initial begin
		$dumpfile("half_adder.vcd");
		$dumpvars(0, HalfAdderTB);
		$monitor($time,
             ": %b %b => %b %b",
             A, B, S, C);
	end

endmodule
