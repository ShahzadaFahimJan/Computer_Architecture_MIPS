
module stim_decoder3x8();
reg A,B,C;
wire [7:0]F;
decoder3x8 dec(A,B,C,F);
initial
begin
$display("A B F0 F1 F2 F3 F4 F5 F6 F7");

A=0; B=0; C=0;
#10 $display("%b %b %b %b %b %b  ",A,B,C,F[0],F[1],F[2],F[3],F[4],F[5],F[6],F[7]);
A=0; B=0; C=1;
#10 $display("%b %b %b %b %b %b  ",A,B,C,F[0],F[1],F[2],F[3],F[4],F[5],F[6],F[7]);
A=0; B=1; C=0;
#10 $display("%b %b %b %b %b %b  ",A,B,C,F[0],F[1],F[2],F[3],F[4],F[5],F[6],F[7]);
A=0; B=1; C=1;
#10 $display("%b %b %b %b %b %b",A,B,C,F[0],F[1],F[2],F[3],F[4],F[5],F[6],F[7]);
A=1; B=0; C=0;
#10 $display("%b %b %b %b %b %b",A,B,C,F[0],F[1],F[2],F[3],F[4],F[5],F[6],F[7]);
A=1; B=0; C=1;
#10 $display("%b %b %b %b %b %b",A,B,C,F[0],F[1],F[2],F[3],F[4],F[5],F[6],F[7]);
A=1; B=1; C=0;
#10 $display("%b %b %b %b %b %b",A,B,C,F[0],F[1],F[2],F[3],F[4],F[5],F[6],F[7]);
A=1; B=1; C=1;
#10 $display("%b %b %b %b %b %b",A,B,C,F[0],F[1],F[2],F[3],F[4],F[5],F[6],F[7]);
end
endmodule