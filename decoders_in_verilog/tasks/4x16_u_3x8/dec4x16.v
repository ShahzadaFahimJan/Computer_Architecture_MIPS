module decoder4x16(A,Y);
input [3:0]A;
output [15:0]Y;
wire nA;
not n(nA,A[3]);
decoder3x8 dec1(A[2],A[1],A[0],A[3],Y[15:8]);
decoder3x8 dec2(A[2],A[1],A[0],nA,Y[7:0]);
endmodule
