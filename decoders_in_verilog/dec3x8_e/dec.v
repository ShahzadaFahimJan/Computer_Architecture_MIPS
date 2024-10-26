module decoder3x8(A,B,C,e,F);
input A,B,C,e;
output [7:0]F;
wire nA,nB;

not n1(nA,A);
not n2(nB,B);
not n3(nC,C);

and a1(F[0],nA,nB,nC,e);
and a2(F[1],nA,nB,C,e);
and a3(F[2],nA,B,nC,e);
and a4(F[3],nA,B,C,e);
and a5(F[4],A,nB,nC,e);
and a6(F[5],A,nB,C,e);
and a7(F[6],A,B,nC,e);
and a8(F[7],A,B,C,e);
endmodule
