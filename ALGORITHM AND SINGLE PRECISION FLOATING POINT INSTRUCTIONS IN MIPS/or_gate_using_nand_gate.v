
module OR(A,B,O);
input A,B;
output O;

wire nA,nB;

nand n(nA,A);
nand nn(nB,B);
nand nnn(O,nA,nB);

endmodule