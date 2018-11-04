module mealy(rst, in, out, state);
	input [1:0] in;
	input rst;
	
	output out;
	output state;
	
	reg out;
	reg state;
	
	parameter s0 = 1'b0, s1 = 1'b1;
	
	always @(negedge rst, in[0], in[1])
	begin
		if (~rst) state = 0;
		else begin
			out = ((state == s0 && in[0] == 1'b1) || (state == s1 && in[1] == 1'b1));
			state = (in[0] ? 0 : (in[1] ? 1 : state));
		end
	end
endmodule
