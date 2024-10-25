
module SR_flipflop_4nand(input S, input R, input clk, output reg Q, output reg Q_BAR);

    reg nand1_out, nand2_out;

   
    assign nand1_out = ~(S & clk); 

    
    assign nand2_out = ~(R & clk); 

    
    assign Q = ~(nand1_out & Q_BAR); 

    
    assign Q_BAR = ~(nand2_out & Q ); 

endmodule
