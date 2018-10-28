module counter_tb;
  reg clk, rst, enable, mode, activeLoad;
  reg [3:0] load;

  wire [3:0] cnt;

  counter c(clk, rst, cnt, load, enable, mode, activeLoad);

  initial begin
    rst = 0; #5
    rst = 1;
    mode = 1;
    enable = 1;
    activeLoad = 0;

    #50
    mode = 0;

    #50
    load = 4'b1011;
    activeLoad = 1;
    mode = 1;
    #5
    activeLoad = 0;

    #50
    rst = 0;
    #5
    rst = 1;
  end

  always begin
    clk = 0; #5;
    clk = 1; #5;
  end

  initial begin
		$dumpfile("counter_tb.vcd");
		$dumpvars(0, counter_tb);
    $display($time, ": clk, rst, lo, en, mo, al => cnt");
		$monitor($time,
             ": %b, %b, %b, %b, %b, %b => %b",
             clk, rst, load, enable, mode, activeLoad, cnt);

    #200;
    $finish;
  end
endmodule
