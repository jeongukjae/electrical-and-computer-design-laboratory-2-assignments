module and_gate_tb;
  reg A, B;
  wire [2:0] X;

  and_gate_bitwise and_gate0(A, B, X[0]);
  and_gate_behavioral and_gate1(A, B, X[1]);
  and_gate_gate_primitive and_gate2(A, B, X[2]);

  initial begin
    A = 0; B = 0; #10;
    A = 0; B = 1; #10;
    A = 1; B = 0; #10;
    A = 1; B = 1; #10;
  end

  initial begin
		$dumpfile("and_gate.vcd");
		$dumpvars(0, and_gate_tb);
		$monitor($time,
             ": %b & %b => %b (bitwise), %b (behavioral), %b (gate primitive)",
             A, B, X[0], X[1], X[2]);
	end

endmodule
