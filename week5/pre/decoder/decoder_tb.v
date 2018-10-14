module decoder_tb;
  reg A, B, C;
  wire [0:7] O;

  decoder D(A, B, C, O);

  initial begin
    {A, B, C} <= 3'b000; #100;
    {A, B, C} <= 3'b001; #100;
    {A, B, C} <= 3'b010; #100;
    {A, B, C} <= 3'b011; #100;
    {A, B, C} <= 3'b100; #100;
    {A, B, C} <= 3'b101; #100;
    {A, B, C} <= 3'b110; #100;
    {A, B, C} <= 3'b111; 
  end


  initial begin
		$dumpfile("decoder_tb.vcd");
		$dumpvars(0, decoder_tb);
		$monitor($time,
             ": %b %b %b => %b",
             A, B, C, O);
	end

endmodule
