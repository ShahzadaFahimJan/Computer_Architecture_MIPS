
module stim_decoder4x16();
reg [3:0]A;
wire [15:0]Y;
decoder4x16 dec(A,Y);
initial
begin
$display("A Y");
A=4'b0000;
#10 $display("%b %b",A,Y);
A=4'b0001;
#10 $display("%b %b",A,Y);
A=4'b0010;
#10 $display("%b %b",A,Y);
A=4'b0011;
#10 $display("%b %b",A,Y);
A=4'b0100;
#10 $display("%b %b",A,Y);
A=4'b0101;
#10 $display("%b %b",A,Y);
A=4'b0110;
#10 $display("%b %b",A,Y);
A=4'b0111;
#10 $display("%b %b",A,Y);
A=4'b1000;
#10 $display("%b %b",A,Y);
A=4'b1001;
#10 $display("%b %b",A,Y);
A=4'b1010;
#10 $display("%b %b",A,Y);
A=4'b1011;
#10 $display("%b %b",A,Y);
A=4'b1100;
#10 $display("%b %b",A,Y);
A=4'b1101;
#10 $display("%b %b",A,Y);
A=4'b1110;
#10 $display("%b %b",A,Y);
A=4'b1111;
#10 $display("%b %b",A,Y);
end
endmodule