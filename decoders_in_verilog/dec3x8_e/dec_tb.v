module stim_decoder3x8();
reg A,B,C,e;
wire [7:0]F;
decoder3x8 dec(A,B,C,e,F);
initial
begin
$display("A B C e F");
A=0; B=0; C=0; e=0;
#10 $display("%b %b %b %b %b  ",A,B,C,e,F);
A=0; B=0; C=0; e=1;
#10 $display("%b %b %b %b %b",A,B,C,e,F);
A=0; B=0; C=1; e=1;
#10 $display("%b %b %b %b %b",A,B,C,e,F);
A=0; B=1; C=0; e=1;
#10 $display("%b %b %b %b %b",A,B,C,e,F);
A=0; B=1; C=1; e=1;
#10 $display("%b %b %b %b %b",A,B,C,e,F);
A=1; B=0; C=0; e=1;
#10 $display("%b %b %b %b %b",A,B,C,e,F);
A=1; B=0; C=1; e=1;
#10 $display("%b %b %b %b %b",A,B,C,e,F);
A=1; B=1; C=0; e=1;
#10 $display("%b %b %b %b %b",A,B,C,e,F);
A=1; B=1; C=1; e=1;
#10 $display("%b %b %b %b %b",A,B,C,e,F);
end
endmodule
