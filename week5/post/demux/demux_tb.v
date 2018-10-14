module demux_tb;
  reg I;
  reg [0:1] S;
  wire [0:3] Z;

  demux M(I, S, Z);

  initial begin
    I = 0;
    S = 2'b00; #50;
    S = 2'b01; #50;
    S = 2'b10; #50;
    S = 2'b11; #50;
    I = 1;
    S = 2'b00; #50;
    S = 2'b01; #50;
    S = 2'b10; #50;
    S = 2'b11; #50;
  end

  initial begin
		$dumpfile("demux_tb.vcd");
		$dumpvars(0, demux_tb);
		$monitor($time,
             ": %b & %b => %b",
             I, S, Z);
	end

endmodule
