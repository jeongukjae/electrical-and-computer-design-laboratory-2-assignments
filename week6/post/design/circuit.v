module circuit(clk, reset, q);
  input clk, reset;

  output [4:0] q;
  reg [4:0] q;

  wire [4:0] q0;
  wire [4:0] q1;
  wire [4:0] q2;
  wire [4:0] q3;
  wire [4:0] tmp;

  xor x1(tmp, q1, q);
  dff d0(clk, tmp, q0);
  dff d1(clk, q0, q1);
  dff d2(clk, q1, q2);
  dff d3(clk, q2, q3);
  dff d4(clk, q3, q);

  always @(negedge reset or posedge clk) begin
    if(~reset)
      q = 5'b10111;
  end
endmodule
