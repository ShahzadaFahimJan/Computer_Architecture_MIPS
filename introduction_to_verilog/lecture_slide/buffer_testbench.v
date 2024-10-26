
module stim_buffer();
reg A;
wire O;
buffer buff(A,O);
initial 
begin
$display("A Out");
A=0;
#10
$display("%b %b",A,O);
A=1;
#20
$display("%b %b",A,O);
end 
endmodule
