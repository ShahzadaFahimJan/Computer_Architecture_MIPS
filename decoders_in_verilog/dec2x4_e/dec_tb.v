
module stim_decoder2x4();
reg A,B,e;
wire [3:0]F;
decoder2x4 dec(A,B,e,F);
initial
begin
$display("A B e F0 F1 F2 F3");
A=0; B=0; e=0;
#10 $display("%b %b %b %b %b %b %b  ",A,B,e,F[0],F[1],F[2],F[3]);
A=0; B=0; e=1;
#10 $display("%b %b %b %b %b %b %b  ",A,B,e,F[0],F[1],F[2],F[3]);
A=0; B=1; e=1;
#10 $display("%b %b %b %b %b %b %b  ",A,B,e,F[0],F[1],F[2],F[3]);
A=1; B=0; e=1;
#10 $display("%b %b %b %b %b %b %b  ",A,B,e,F[0],F[1],F[2],F[3]);
A=1; B=1; e=1;
#10 $display("%b %b %b %b %b %b %b",A,B,e,F[0],F[1],F[2],F[3]);
end
endmodule