module moore(rst, in, out, state);
	input [1:0] in;
	input rst;
	
	output out;
	output [1:0] state;
	
	reg out;
	reg [1:0] state;
	
	parameter s0 = 2'b00, s1 = 2'b01, s2 = 2'b10, s3 = 2'b11;
	
	always @(negedge rst or posedge in[0] or posedge in[1])
	begin
		if (~rst) state = 0;
		else
			case (state)
				s0: state = (in[0] ? s0 : s1);
				s1: state = (in[0] ? s2 : s3);
				s2: state = (in[0] ? s0 : s1);
				s3: state = (in[0] ? s2 : s3);
				default: state = s0;
			endcase
	end
	
	always @(state)
		case (state)
			s0: out = 1;
			s1: out = 0;
			s3: out = 1;
			s2: out = 0;
			default: out = 0;
		endcase
endmodule
