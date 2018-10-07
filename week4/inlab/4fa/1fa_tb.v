module fa_tb;
  reg [3:0]A; reg [3:0]B;reg Cin;
  wire [3:0]S; wire C;
  integer index;

  fa_1 f(A, B, Cin, S, C);

  initial begin
    Cin = 0;
    for(index = 0; index < 16 * 16; index += 1)
    begin
      A = index / 16;
      B = index % 16; #10;
    end

    Cin = 1;
    for(index = 0; index < 16 * 16; index += 1)
    begin
      A = index / 16;
      B = index % 16; #10;
    end
  end


  initial begin
		$dumpfile("fa_tb.vcd");
		$dumpvars(0, fa_tb);
		$monitor($time,
             ": %b %b %b => %b %b",
             A, B, Cin, S, C);
	end

endmodule
