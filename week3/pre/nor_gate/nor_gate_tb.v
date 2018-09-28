module nor_gate_tb;
  reg [2:0] A;
  wire [2:0] X;

  nor_gate_bitwise nor_gate0(A, X[0]);
  nor_gate_behavioral nor_gate1(A, X[1]);
  nor_gate_gate_primitive nor_gate2(A, X[2]);

  initial begin
    A = 3'b000; #10;
    A = 3'b001; #10;
    A = 3'b010; #10;
    A = 3'b011; #10;
    A = 3'b100; #10;
    A = 3'b101; #10;
    A = 3'b110; #10;
    A = 3'b111; #10;
  end

  initial begin
		$dumpfile("nor_gate.vcd");
		$dumpvars(0, nor_gate_tb);
		$monitor($time,
             ": nor %b => %b (bitwise), %b (behavioral), %b (gate primitive)",
             A, X[0], X[1], X[2]);
	end

endmodule
