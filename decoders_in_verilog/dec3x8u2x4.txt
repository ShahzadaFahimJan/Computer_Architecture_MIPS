module decoder3x8(A,Y);
input [2:0]A;
output [7:0]Y;
wire nA;
not n(nA,A[2]);
decoder2x4 dec1(A[0],A[1],A[2],Y[7:4]);
decoder2x4 dec2(A[1],A[0],nA,Y[3:0]);
endmodule