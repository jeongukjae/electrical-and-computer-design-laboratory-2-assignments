module encoder_tb;
  reg [0:3] A;
  wire [0:1] Y;

  encoder E(A, Y);

  initial begin
    A <= 4'b0001; #100;
    A <= 4'b0010; #100;
    A <= 4'b0100; #100;
    A <= 4'b1000;
  end


  initial begin
		$dumpfile("encoder_tb.vcd");
		$dumpvars(0, encoder_tb);
		$monitor($time,
             ": %b => %b",
             A, Y);
	end

endmodule
