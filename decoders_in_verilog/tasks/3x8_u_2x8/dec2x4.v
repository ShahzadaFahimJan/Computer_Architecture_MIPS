module decoder2x4(A,B,e,F);
input A,B,e;
output [3:0]F;
wire nA,nB;

not n1(nA,A);
not n2(nB,B);

and a1(F[0],nA,nB,e);
and a2(F[1],nA,B,e);
and a3(F[2],A,nB,e);
and a4(F[3],A,B,e);
endmodule
