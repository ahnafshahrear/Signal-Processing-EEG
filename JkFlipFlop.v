module JkFlipFlop (q,qbar,j,k,clear,clk);
	input j,k,clear,clk;
	output q,qbar;

	not notcbar(cbar,clk);
	
	nand na(a,qbar,j,clk,clear);
	nand nb(b,clk,k,q);
	nand ny(y,a,ybar);
	nand nybar(ybar,clear,y,b);
	nand nc(c,cbar,y);
	nand nd(d,cbar,ybar);
	nand nq(q,c,qbar);
	nand nqbar(qbar,q,clear,d);

endmodule
