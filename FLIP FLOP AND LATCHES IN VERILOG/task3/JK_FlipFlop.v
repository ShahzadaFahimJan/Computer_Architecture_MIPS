module JK_flipflop(
    input wire J, 
    input wire K, 
    input wire CLK,
    output reg Q, 
    output reg Q_BAR
);

    reg Q_next;

    always @(posedge CLK) begin
        if (J & ~K)
            Q_next <= 1'b1;
        else if (~J & K)
            Q_next <= 1'b0;
        else if (J & K)
            Q_next <= ~Q;
        else
            Q_next <= Q;
    end

    always @(posedge CLK) begin
        Q <= Q_next;
        Q_BAR <= ~Q_next;
    end

endmodule
