module somador
	#(
		parameter N = 32
	)
	(
		input wire cin,
		input wire [N-1:0] A, B,
		output reg [N-1:0] S,
		output reg cout,
		output reg overflow
	);
	
	always@*
	begin
		{cout,S} = A + B + cin;
		overflow = (A[N-1] & B[N-1] & ~S[N-1]) | (~A[N-1] & ~B[N-1] & S[N-1]);
	end
	
	
endmodule
