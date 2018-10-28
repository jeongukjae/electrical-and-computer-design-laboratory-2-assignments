module counter(
  clk, rst, cnt, clk_out
);
  input clk, rst;
  output [3:0] cnt;
  output clk_out;

  reg [3:0] cnt;
  reg clk_out;

  initial begin
    clk_out = 0;
  end

  always @(posedge clk or negedge rst)
  begin
    if (!rst) cnt <= 0;
    else
    begin
      cnt = cnt + 1;
      if (cnt == 9)
      begin
        cnt = 0;
        clk_out = ~clk_out;
      end
    end
  end
endmodule
