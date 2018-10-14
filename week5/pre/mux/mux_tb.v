module mux_tb;
  reg I0, I1, S;
  wire Z;

  mux M(I0, I1, S, Z);

  initial begin
    S = 0;
    #500;
    S = 1;
  end

  initial begin
    I0 = 0; #50;
    I0 = 1; #50;
    I0 = 0; #50;
    I0 = 1; #50;
    I0 = 0; #50;
    I0 = 1; #50;
    I0 = 0; #50;
    I0 = 1; #50;
    I0 = 0; #50;
    I0 = 1; #50;
    I0 = 0; #50;
    I0 = 1; #50;
    I0 = 0; #50;
    I0 = 1; #50;
  end

  initial begin
    I1 = 1; #50;
    I1 = 0; #50;
    I1 = 1; #50;
    I1 = 0; #50;
    I1 = 1; #50;
    I1 = 0; #50;
    I1 = 1; #50;
    I1 = 0; #50;
    I1 = 1; #50;
    I1 = 0; #50;
    I1 = 1; #50;
    I1 = 0; #50;
    I1 = 1; #50;
    I1 = 0; #50;
    I1 = 1; #50;
    I1 = 0; #50;
    I1 = 1; #50;
    I1 = 0; #50;
  end

  initial begin
		$dumpfile("mux_tb.vcd");
		$dumpvars(0, mux_tb);
		$monitor($time,
             ": %b %b & %b => %b",
             I0, I1, S, Z);
	end

endmodule
