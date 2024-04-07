module FullAdder(sum,cout,a,b,cin);
	input a,b,cin;
	output sum,cout;
	HalfAdder ha1(s1,c1,a,b);
	HalfAdder ha2(sum,c2,s1,cin);
	or (cout,c1,c2);
endmodule
