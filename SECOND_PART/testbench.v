`timescale 1ns / 1ps
`include "my_macros.vh"


module vsdbabysoc_tb;
    reg clk;
    reg reset;
    wire [3:0] count;

    // Instantiate placeholder counter
    rvmyth uut (
        .clk(clk),
        .rst(reset),
        .count(count)
    );

    // Clock generation
    initial clk = 0;
    always #5 clk = ~clk;

    // Test sequence
    initial begin
        reset = 1;
        #10 reset = 0;
        #100 $finish;
    end

    // VCD waveform
    initial begin
        $dumpfile("/home/vinay/Manali/VSDBabySoC/output/pre_synth_sim/rvmyth.vcd");
        $dumpvars(0, vsdbabysoc_tb);
    end
endmodule


