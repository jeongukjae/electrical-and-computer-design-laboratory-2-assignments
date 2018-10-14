module mux_tb;
  reg [0:1] I0;
  reg [0:1] I1;
  reg S;
  wire [0:1] Z;

  mux M(I0, I1, S, Z);

  initial begin
    S = 0;
    #500;
    S = 1;
  end

  initial begin
    I0 = 2'b00; #50;
    I0 = 2'b01; #50;
    I0 = 2'b10; #50;
    I0 = 2'b11; #50;
    I0 = 2'b00; #50;
    I0 = 2'b01; #50;
    I0 = 2'b10; #50;
    I0 = 2'b11; #50;
    I0 = 2'b00; #50;
    I0 = 2'b01; #50;
    I0 = 2'b10; #50;
    I0 = 2'b11; #50;
    I0 = 2'b00; #50;
    I0 = 2'b01; #50;
    I0 = 2'b10; #50;
    I0 = 2'b11; #50;
  end

  initial begin
    I1 = 2'b01; #50;
    I1 = 2'b00; #50;
    I1 = 2'b11; #50;
    I1 = 2'b10; #50;
    I1 = 2'b01; #50;
    I1 = 2'b00; #50;
    I1 = 2'b11; #50;
    I1 = 2'b10; #50;
    I1 = 2'b01; #50;
    I1 = 2'b00; #50;
    I1 = 2'b11; #50;
    I1 = 2'b10; #50;
    I1 = 2'b01; #50;
    I1 = 2'b00; #50;
    I1 = 2'b11; #50;
    I1 = 2'b10; #50;
  end

  initial begin
		$dumpfile("mux_tb.vcd");
		$dumpvars(0, mux_tb);
		$monitor($time,
             ": %b %b & %b => %b",
             I0, I1, S, Z);
	end

endmodule
