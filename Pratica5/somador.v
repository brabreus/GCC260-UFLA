module somador
	#(
		parameter N = 32
	)
	(
		input wire cin,
		input wire [N-1:0] A, B,
		output reg [N-1:0] S,
		output reg cout
	);
	
	always@*
	begin
		{cout,S} = A + B + cin;
	end
	
	
endmodule
