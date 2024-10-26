
module stim_decoder2x4();
reg A,B;
wire [3:0]F;
decoder2x4 t(A,B,F);
initial
begin
$display("A B F0 F1 F2 F3");

A=0; B=0;
#10 $display("%b %b %b %b %b %b  ",A,B,F[0],F[1],F[2],F[3]);
A=0; B=1;
#10 $display("%b %b %b %b %b %b  ",A,B,F[0],F[1],F[2],F[3]);
A=1; B=0;
#10 $display("%b %b %b %b %b %b  ",A,B,F[0],F[1],F[2],F[3]);
A=1; B=1;
#10 $display("%b %b %b %b %b %b",A,B,F[0],F[1],F[2],F[3]);
end
endmodule
