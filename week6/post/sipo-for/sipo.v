module sipo(clk, reset, data_in, q);
  input clk, reset;
  input data_in;

  output [3:0] q;

  reg [3:0] q;

  integer i;

  always @(negedge reset or posedge clk) begin
    if (~reset)
      q = 4'b000;
    else
      begin
        for (i = 0;i < 3;i++) 
          q[i] = q[i + 1];
        q[3] = data_in;
      end
  end
endmodule
