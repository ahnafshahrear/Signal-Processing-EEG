module AdderSubtactor(ans,cout,a,b,k);
	input [3:0]a,b;
	input k;
	output [3:0]ans;
	output cout;
	wire [3:0]xb;
	xor xr0(xb[0],b[0],k);
	xor xr1(xb[1],b[1],k);
	xor xr2(xb[2],b[2],k);
	xor xr3(xb[3],b[3],k);
	RippleAdder ra1(ans,cout,a,xb,k);
endmodule
