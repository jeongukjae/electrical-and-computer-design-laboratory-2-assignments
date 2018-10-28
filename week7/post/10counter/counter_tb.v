module counter_tb;
  reg clk, rst;
  reg [3:0] load;

  wire [3:0] cnt;
  wire clk_out;

  counter c(clk, rst, cnt, clk_out);

  initial begin
    rst = 0; #5;
    rst = 1; #5;
  end

  always begin
    clk = 0; #5;
    clk = 1; #5;
  end

  initial begin
		$dumpfile("counter_tb.vcd");
		$dumpvars(0, counter_tb);
    $display($time, ": clk, rst => cnt, clk_out");
		$monitor($time,
             ": %b, %b => %b, %b",
             clk, rst, cnt, clk_out);

    #200;
    $finish;
  end
endmodule
