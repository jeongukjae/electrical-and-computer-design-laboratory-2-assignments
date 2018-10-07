module FATB;
  reg A, B, Cin;

  wire S, Cout;

  FA fa(A, B, Cin, S, Cout);

  initial begin
    A = 0; B = 0; Cin = 0;

    #100 A<= 1; B<= 0;
    #100 A<= 0; B<= 1;
    #100 A<= 1; B<= 1;
    #100 A<= 0; B<= 0; Cin<= 1;
    #100 A<= 1; B<= 0;
    #100 A<= 0; B<= 1;
    #100 A<= 1; B<= 1;
    #100;
  end


  initial begin
		$dumpfile("full_adder.vcd");
		$dumpvars(0, FATB);
		$monitor($time,
             ": %b %b %b => %b %b",
             A, B, Cin, S, Cout);
	end

endmodule
