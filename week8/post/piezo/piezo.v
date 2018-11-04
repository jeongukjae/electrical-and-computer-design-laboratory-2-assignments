module piezo(
  rst, clk, btn, piezo, sseg
);
  input rst;
  input clk;
  input [7:0] btn;

  output piezo;
  output [7:0] sseg;

  wire piezo;

  reg [7:0] sseg;
  reg buff;
  reg cnt;

  integer cnt_sound;
  integer times[7:0];

  assign piezo = buff;

  initial begin
    times[0] = 1915;
    times[1] = 2032;
    times[2] = 2272;
    times[3] = 2564;
    times[4] = 2873;
    times[5] = 3048;
    times[6] = 3424;
    times[7] = 3846;

    cnt_sound = 0;
  end

  always @(btn) begin
    if (btn[0]) cnt = 0;
    if (btn[1]) cnt = 1;
    if (btn[2]) cnt = 2;
    if (btn[3]) cnt = 3;
    if (btn[4]) cnt = 4;
    if (btn[5]) cnt = 5;
    if (btn[6]) cnt = 6;
    if (btn[7]) cnt = 7;
  end

  always @(cnt)
    case (cnt)
      0: sseg <= 8'b11111100;
      1: sseg <= 8'b01100000;
      2: sseg <= 8'b11011010;
      3: sseg <= 8'b11110010;
      4: sseg <= 8'b01100110;
      5: sseg <= 8'b10110110;
      6: sseg <= 8'b10111110;
      7: sseg <= 8'b11100000;
    endcase

  always @(posedge clk) begin
    if (~rst) begin
      cnt_sound = 0;
      buff = 0;
    end
    else begin
      if (cnt_sound >= times[cnt]) begin
        cnt_sound = 0;
        buff = ~buff;
      end
      else
        cnt_sound = cnt_sound + 1;
    end
  end
endmodule
