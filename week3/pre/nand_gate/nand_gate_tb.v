module nand_gate_tb;
  reg A, B;
  wire [2:0] X;

  nand_gate_bitwise nand_gate0(A, B, X[0]);
  nand_gate_behavioral nand_gate1(A, B, X[1]);
  nand_gate_gate_primitive nand_gate2(A, B, X[2]);

  initial begin
    A = 0; B = 0; #10;
    A = 0; B = 1; #10;
    A = 1; B = 0; #10;
    A = 1; B = 1; #10;
  end

  initial begin
		$dumpfile("nand_gate.vcd");
		$dumpvars(0, nand_gate_tb);
		$monitor($time,
             ": %b & %b => %b (bitwise), %b (behavioral), %b (gate primitive)",
             A, B, X[0], X[1], X[2]);
	end

endmodule
