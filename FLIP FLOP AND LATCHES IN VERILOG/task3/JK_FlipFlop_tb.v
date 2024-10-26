module testbench;

    // Parameters
    parameter CLK_PERIOD = 10; // Clock period in time units

    // Signals
    reg J, K, CLK;
    wire Q, Q_BAR;

    // Instantiate the JK flip-flop module
    JK_flipflop dut (
        .J(J),
        .K(K),
        .CLK(CLK),
        .Q(Q),
        .Q_BAR(Q_BAR)
    );

    // Clock generation
    always #((CLK_PERIOD / 2)) CLK = ~CLK;

    // Stimulus
    initial begin
        // Initialize inputs
        J = 0;
        K = 0;
        CLK = 0;

        // Apply stimulus
        #5 J = 1; K = 0; // Set J=1, K=0
        #10 J = 1; K = 1; // Set J=1, K=1
        #10 J = 0; K = 1; // Set J=0, K=1
        #10 J = 0; K = 0; // Set J=0, K=0
        #10 J = 1; K = 1; // Set J=1, K=1

        // Add more test cases as needed

        // Finish simulation
       
    end

    // Display simulation results
    always @(posedge CLK) begin
        $display("Time=%0t J=%b K=%b Q=%b Q_BAR=%b", $time, J, K, Q, Q_BAR);
    end

endmodule

