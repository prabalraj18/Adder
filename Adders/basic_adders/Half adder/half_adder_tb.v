module half_adder_tb;

    reg a, b;              // Inputs to the DUT
    wire sum, carry;       // Outputs from the DUT

    // Instantiate the Device Under Test (DUT)
    half_adder dut (
        .a(a),
        .b(b),
        .sum(sum),
        .carry(carry)
    );

    // Test sequence
    initial begin
        // Generate waveform dump
        $dumpfile("half_adder_waveform.vcd"); // Specify the dump file name
        $dumpvars(0, half_adder_tb);          // Dump all signals in this module

        $monitor("Time=%0d: a=%b, b=%b, sum=%b, carry=%b", $time, a, b, sum, carry);
        
        // Initialize inputs
        a = 0; b = 0; #5;
        a = 0; b = 1; #5;
        a = 1; b = 0; #5;
        a = 1; b = 1; #5;

        $finish; // Stop the simulation
    end

endmodule

