module SeqCounter(q,clk,clear);

	input clk,clear;
	output [3:0]q;
	wire [3:0]qbar,t;
	
	or t3(t[3], q[2],q[1],q[0]);
	and andx1(x1,qbar[3],q[0]);
	and andx2(x2,qbar[3],q[1]);
	and andx3(x3,q[2],q[1]);
	or t2(t[2],x1,x2,x3);

	and andy1(y1,q[3],qbar[2]);
	and andy2(y2,qbar[2],q[0]);
	and andy3(y3,q[3],qbar[1],qbar[0]);
	or t1(t[1],y1,y2,y3);

	and andz(z,qbar[2],qbar[1],qbar[0]);
	or t0(t[0],z,q[3]);

	JkFlipFlop jk0(q[0],qbar[0],t[0],t[0],clear,clk);
	JkFlipFlop jk1(q[1],qbar[1],t[1],t[1],clear,clk);
	JkFlipFlop jk2(q[2],qbar[2],t[2],t[2],clear,clk);
	JkFlipFlop jk3(q[3],qbar[3],t[3],t[3],clear,clk);

endmodule
