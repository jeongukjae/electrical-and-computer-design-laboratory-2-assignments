module sipo_tb;
  reg clk, reset, data_in;

  wire [3:0] q;

  sipo fp(clk, reset, data_in, q);

  initial begin
    clk = 0;
    reset = 0;
    data_in = 0;

    #10 reset = 1'b1;
    #10 data_in = 1'b1;
    #10 data_in = 1'b0;
    #10 data_in = 1'b1;
    #10 data_in = 1'b0; #10;
  end


  always begin
    clk = 0;
    #5;
    clk = 1;
    #5;
  end


  initial begin
		$dumpfile("sipo_tb.vcd");
		$dumpvars(0, sipo_tb);
		$monitor($time,
             ": %b & %b & %b => %b",
             clk, reset, data_in, q);
	end

  initial begin
    #60; // Wait a long time in simulation units (adjust as needed).
    $display("Caught by trap");
    $finish;
  end

endmodule
