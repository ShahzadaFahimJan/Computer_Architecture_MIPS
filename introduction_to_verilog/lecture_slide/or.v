
module OR(A,B,O);
input A,B;
wire nA,nB;
output O;
nand n(nA,A);
nand nn(nB,B);
nand nnn(O,nA,nB);

endmodule
