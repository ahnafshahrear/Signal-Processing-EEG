module Mod10(num,clk);
	input clk;
	output [3:0]num;
	wire clear;
	nand ndclr(clear,num[1],num[3]);
	BinaryRippleCounter rc(num,clk,clear);

endmodule
