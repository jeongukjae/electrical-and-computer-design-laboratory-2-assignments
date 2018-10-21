module dff(clk, d, q);
  input clk;
  input [4:0] d;

  output [4:0] q;
  reg [4:0] q;

  always @(posedge clk, d) begin
    if (clk) 
      q = d;
  end
endmodule
