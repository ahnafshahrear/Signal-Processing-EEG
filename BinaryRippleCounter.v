module BinaryRippleCounter(num,clk,clear);
	
	input clk,clear;
	output [3:0]num;
	wire j,k;
	assign j=1;
	assign k=1;
	JkFlipFlop Jk1(num[0],qb1,j,k,clear,clk);
	JkFlipFlop Jk2(num[1],qb2,j,k,clear,num[0]);
	JkFlipFlop Jk3(num[2],qb3,j,k,clear,num[1]);
	JkFlipFlop Jk4(num[3],qb4,j,k,clear,num[2]);
	
endmodule
