//// Pratica3.v
module Pratica3( 

	//////////// SEG7 //////////
	output		     [7:0]		HEX0,
	output		     [7:0]		HEX1,
	output		     [7:0]		HEX2,
	output		     [7:0]		HEX3,
	output		     [7:0]		HEX4,
	output		     [7:0]		HEX5,

	//////////// SW //////////
	input 		     [9:0]		SW
);

//=======================================================
//  REG/WIRE declarations
//=======================================================
	wire [3:0] bin;
//=======================================================
//  Structural coding
//=======================================================
	contaUns (.d(SW[9:0]), .q(bin));
	SEG7_LUT (.iDIG(bin/10), .oSEG(HEX1[6:0]));
	SEG7_LUT (.iDIG(bin % 10), .oSEG(HEX0[6:0]));
	
	assign {HEX0[7],HEX1[7],HEX2,HEX3,HEX4,HEX5} = 38'h3FFFFFFFF;

endmodule
