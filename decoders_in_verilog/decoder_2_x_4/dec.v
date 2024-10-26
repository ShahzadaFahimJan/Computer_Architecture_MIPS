
module decoder3x8(A,B,C,F);
input A,B,C;
output [7:0]F;
wire nA,nB;

not n1(nA,A);
not n2(nB,B);
not n3(nC,C);

and a1(F[0],nA,nB,nC);
and a2(F[1],nA,nB,C);
and a3(F[2],nA,B,nC);
and a4(F[3],nA,B,C);
and a5(F[4],A,nB,nC);
and a6(F[5],A,nB,C);
and a7(F[6],A,B,nC);
and a8(F[7],A,B,C);
endmodule