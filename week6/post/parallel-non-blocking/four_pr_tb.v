module four_pr_tb;
  reg [3:0] data_in;
  reg clk;

  wire [3:0] a;
  wire [3:0] b;

  four_pr fp(data_in, clk, a, b);

  initial begin
    data_in = 0;
    clk = 0;

    #100 data_in = 4'b1101;
    #50 clk = 1;
    #50 clk = 0;
    #100 data_in = 4'b0010;
    #50 clk = 1;
    #50 clk = 0; #50;
  end


  initial begin
		$dumpfile("four_pr_tb.vcd");
		$dumpvars(0, four_pr_tb);
		$monitor($time,
             ": %b & %b => %b %b",
             data_in, clk, a, b);
	end

endmodule
