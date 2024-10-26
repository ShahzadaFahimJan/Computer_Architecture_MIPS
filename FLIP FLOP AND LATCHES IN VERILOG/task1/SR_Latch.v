
module SR_latch(S,R,Q,Q_BAR);
input S;
input R;
output Q;
output Q_BAR;
reg Q;
reg Q_BAR;
assign Q = ~(S & Q_BAR);
assign Q_BAR = ~(R & Q);
endmodule