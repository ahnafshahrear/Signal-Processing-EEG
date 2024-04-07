module UpDownCounter(num,mode,clk,clear);

	input mode,clk,clear;
	output [2:0]num;
	wire t0,t1,t2;
	assign t0=1;
	not notm(mbar,mode);
	xor xrt1(t1,mode,num[0]);
	and and1(x1,mbar,num[1],num[0]);
	and and2(x2,mode,q1bar,q0bar);
	or ort2(t2,x1,x2);
	JkFlipFlop jk0(num[0],q0bar,t0,t0,clear,clk);
	JkFlipFlop jk1(num[1],q1bar,t1,t1,clear,clk);
	JkFlipFlop jk2(num[2],q2bar,t2,t2,clear,clk);

endmodule
