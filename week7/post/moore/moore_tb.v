module moore_tb;
  reg rst;
  reg [1:0] in;

  wire out;
  wire [1:0] state;

  moore m(rst, in, out, state);

  initial begin
    rst = 0; #5;
    rst = 1; #5;

    in = 2'b00; #5;
    in = 2'b10; #5;
    in = 2'b01; #5;
    in = 2'b10; #5;
    in = 2'b00; #5;
    in = 2'b10; #5;
    in = 2'b01; #5;
    in = 2'b00; #5;
    in = 2'b01; #5;
  end

  initial begin
		$dumpfile("moore_tb.vcd");
		$dumpvars(0, moore_tb);
    $display($time, ": rst, in => out, state");
		$monitor($time,
             ": %b, %b => %b, %b",
             rst, in, out, state);

    #200;
    $finish;
  end
endmodule
