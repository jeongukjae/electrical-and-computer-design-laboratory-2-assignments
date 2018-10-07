module comp_tb;
  reg [3:0]A; reg [3:0]B;reg Cin;
  wire E; wire G; wire L;
  integer index;

  comp f(A, B, E, L, G);

  initial begin
    for(index = 0; index < 16 * 16; index += 1)
    begin
      A = index / 16;
      B = index % 16; #10;
    end
  end


  initial begin
		$dumpfile("comp_tb.vcd");
		$dumpvars(0, comp_tb);
		$monitor($time,
             ": %b %b => %b %b %b",
             A, B, E, G, L);
	end

endmodule
