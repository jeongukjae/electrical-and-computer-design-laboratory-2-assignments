module counter(
  clk, rst, cnt, load,
  enable, mode, activeLoad
);
  input clk, rst;
  input enable, mode, activeLoad;
  input [3:0] load;

  output [3:0] cnt;

  reg [3:0] cnt;

  always @(posedge clk or negedge rst or posedge activeLoad)
  begin
    if (!rst) cnt <= 0;
    if (enable)
    begin
      if (activeLoad) cnt <= load;
      else cnt <= cnt + (mode ? 1 : -1);
    end
  end
endmodule
