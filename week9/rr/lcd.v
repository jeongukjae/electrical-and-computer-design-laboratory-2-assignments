module lcd(reset, clk, e, rs, rw, data);
  `define increase_cnt(threshold) \
    if (cnt == threshold) cnt = 0;\
    else cnt = cnt + 1;
  `define set_lcd(rs_val, rw_val, data_val) \
    begin\
      rs = rs_val;\
      rw = rw_val;\
      data = data_val;\
    end

  input reset, clk;
  output e, rs, rw;
  output [7:0] data;

  wire e;
  reg rs, rw;
  reg [7:0] data;

  reg [2:0] state;
  parameter delay = 3'b000,
            function_set = 3'b001,
            entry_mode = 3'b010,
            disp_onoff = 3'b011,
            line1 = 3'b100,
            line2 = 3'b101,
            delay_t = 3'b110,
            clear_disp = 3'b111;

  integer cnt;
  integer cnt_100hz, cnt_2hz;

	reg[127:0] data0, data1;
  reg  clk_100hz, clk_2hz;

  always @(negedge reset or posedge clk) begin
    if (reset == 1'b0) begin
      cnt_100hz = 0;
      clk_100hz = 0;
      cnt_2hz = 0;
      clk_2hz = 0;
    end
    else if (cnt_100hz >= 4) begin
      cnt_100hz = 0;
      clk_100hz = ~clk_100hz;
      cnt_2hz = cnt_2hz + 1;

      if (cnt_2hz >= 50) begin
        cnt_2hz = 0;
        clk_2hz = ~clk_2hz;
      end
    end
    else
      cnt_100hz = cnt_100hz + 1;
  end

  always @(negedge reset or posedge clk_100hz) begin
    if (reset == 1'b0)
      state = delay;
    else begin
      case (state)
        delay: if (cnt == 70) state = function_set;
        function_set: if (cnt == 30) state = disp_onoff;
        disp_onoff: if (cnt == 30) state = entry_mode;
        entry_mode: if (cnt == 30) state = line1;
        line1: if (cnt == 20) state = line2;
        line2: if (cnt == 20) state = delay_t;
        delay_t: if (cnt == 400) state = clear_disp;
        clear_disp: if (cnt == 200) state = line1;
        default: state = delay;
      endcase
    end
  end

  always @(negedge reset or posedge clk_100hz) begin
    if (reset == 1'b0) cnt = 0;
    else
      case (state)
        delay: `increase_cnt(70)
        function_set: increase_cnt(30)
        disp_onoff: `increase_cnt(30)
        entry_mode: `increase_cnt(30)
        line1: `increase_cnt(20)
        line2: `increase_cnt(20)
        delay_t: `increase_cnt(400)
        clear_disp: `increase_cnt(200)
        default: cnt = 0;
      endcase
  end

  always @(negedge reset or posedge clk_2hz) begin
		if (~reset) begin
      data0 = {
        8'b00100000, 8'b00110010, 8'b00110000, 8'b00110001,
        8'b00110111, 8'b00110101, 8'b00110110, 8'b00110000,
        8'b00110000, 8'b00110011, 8'b00110010, 8'b00100000,
        8'b00100000, 8'b00100000, 8'b00100000, 8'b00100000
      };

      data1 = {
        8'b00100000, 8'b01001010, 8'b01100101, 8'b01101110,
        8'b01100111, 8'b00100000, 8'b01000101, 8'b01101011,
        8'b01101010, 8'b01100001, 8'b01100101, 8'b00100000,
        8'b00100000, 8'b00100000, 8'b00100000, 8'b00100000,
      };
    end
		else begin		
			data0 = {data0[119 : 0], data0[127 : 120]};
			data1 = {data1[119 : 0], data1[127 : 120]};
		end
	end

  always @(negedge reset or posedge clk_100hz) begin
    if (reset == 1'b0) begin
      rs = 1'b1;
      rw = 1'b1;
      data = 8'b00000000;
    end
    else
      case (state)
        function_set: `set_lcd(1'b0, 1'b0, 8'b00111100)
        disp_onoff: `set_lcd(1'b0, 1'b0, 8'b00001100)
        entry_mode: `set_lcd(1'b0, 1'b0, 8'b00000110)
        line1:
          case (cnt)
            0: `set_lcd(1'b0, 1'b0, 8'b10000000)
            1: `set_lcd(1'b1, 1'b0, data0[127:120])
            2: `set_lcd(1'b1, 1'b0, data0[119:112])
            3: `set_lcd(1'b1, 1'b0, data0[111:104])
            4: `set_lcd(1'b1, 1'b0, data0[103:96])
            5: `set_lcd(1'b1, 1'b0, data0[95:88])
            6: `set_lcd(1'b1, 1'b0, data0[87:80])
            7: `set_lcd(1'b1, 1'b0, data0[79:72])
            8: `set_lcd(1'b1, 1'b0, data0[71:64])
            9: `set_lcd(1'b1, 1'b0, data0[63:56])
            10: `set_lcd(1'b1, 1'b0, data0[55:48])
            11: `set_lcd(1'b1, 1'b0, data0[47:40])
            12: `set_lcd(1'b1, 1'b0, data0[39:32])
            13: `set_lcd(1'b1, 1'b0, data0[31:24])
            14: `set_lcd(1'b1, 1'b0, data0[23:16])
            15: `set_lcd(1'b1, 1'b0, data0[15:8])
            16: `set_lcd(1'b1, 1'b0, data0[7:0])
            default: `set_lcd(1'b1, 1'b0, 8'b00100000)
          endcase
        line2: 
          case (cnt)
            0: `set_lcd(1'b0, 1'b0, 8'b10000000)
            1: `set_lcd(1'b1, 1'b0, data1[127:120])
            2: `set_lcd(1'b1, 1'b0, data1[119:112])
            3: `set_lcd(1'b1, 1'b0, data1[111:104])
            4: `set_lcd(1'b1, 1'b0, data1[103:96])
            5: `set_lcd(1'b1, 1'b0, data1[95:88])
            6: `set_lcd(1'b1, 1'b0, data1[87:80])
            7: `set_lcd(1'b1, 1'b0, data1[79:72])
            8: `set_lcd(1'b1, 1'b0, data1[71:64])
            9: `set_lcd(1'b1, 1'b0, data1[63:56])
            10: `set_lcd(1'b1, 1'b0, data1[55:48])
            11: `set_lcd(1'b1, 1'b0, data1[47:40])
            12: `set_lcd(1'b1, 1'b0, data1[39:32])
            13: `set_lcd(1'b1, 1'b0, data1[31:24])
            14: `set_lcd(1'b1, 1'b0, data1[23:16])
            15: `set_lcd(1'b1, 1'b0, data1[15:8])
            16: `set_lcd(1'b1, 1'b0, data1[7:0])
            default: `set_lcd(1'b1, 1'b0, 8'b00100000)
          endcase
        delay_t: `set_lcd(1'b0, 1'b0, 8'b00000010)
        clear_disp: `set_lcd(1'b0, 1'b0, 8'b00000001)
        default: `set_lcd(1'b1, 1'b1, 8'b00000000)
      endcase
  end

  assign e = clk_100hz;

endmodule
