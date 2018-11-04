module counter(
  clk, rst, cnt, load,
  enable, mode, activeLoad,
  sseg
);
  input clk, rst;
  input enable, mode, activeLoad;
  input [3:0] load;

  output [3:0] cnt;
  output [7:0] sseg;

  reg [3:0] cnt;
  reg [7:0] sseg;

  always @(posedge clk or negedge rst or posedge activeLoad)
  begin
    if (!rst) cnt <= 0;
    if (enable)
    begin
      if (activeLoad) cnt <= load;
      else cnt <= cnt + (mode ? 1 : -1);
    end
  end

  always @(cnt)
    case (cnt)
      0: sseg = 8'b11111100;
      1: sseg = 8'b01100000;
      2: sseg = 8'b11011010;
      3: sseg = 8'b11110010;
      4: sseg = 8'b01100110;
      5: sseg = 8'b10110110;
      6: sseg = 8'b10111110;
      7: sseg = 8'b11100000;
      8: sseg = 8'b11111110;
      9: sseg = 8'b11110110;
      10: sseg = 8'b11101110;
      11: sseg = 8'b00111110;
      12: sseg = 8'b00011010;
      13: sseg = 8'b01111010;
      14: sseg = 8'b10011110;
      15: sseg = 8'b10001110;
    endcase
endmodule
