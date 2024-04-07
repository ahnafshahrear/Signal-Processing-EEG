module RippleAdder(sum,cout,a,b,cin);
	input [3:0]a,b;
	input cin;
	output [3:0]sum;
	output cout;
	FullAdder fa1(sum[0],c1,a[0],b[0],cin);
	FullAdder fa2(sum[1],c2,a[1],b[1],c1);
	FullAdder fa3(sum[2],c3,a[2],b[2],c2);
	FullAdder fa4(sum[3],cout,a[3],b[3],c3);
endmodule
