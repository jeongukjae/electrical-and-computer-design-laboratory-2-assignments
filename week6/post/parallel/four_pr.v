module four_pr (data_in, clk, a, b);
  input [3:0] data_in;
  input clk;

  output [3:0] a, b;
  reg [3:0] a, b;

  always @(posedge clk) begin
    a = data_in;
    b = a;
  end
endmodule
