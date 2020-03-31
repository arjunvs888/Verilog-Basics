`timescale 1ns / 1ps
module top(
    input wire clk_100Mhz,
    output wire [8:0] sin_50Hz
    );
    wire clk_sin;
    clock_divider #(50000)clk_50khz (.clk(clk_100Mhz),.divided_clk(clk_sin));//Generates 5KHz Clock Signal
    sine_generator sine_50hz( .clk(clk_sin),.sine_out(sin_50Hz));//Generates 50Hz Sine wave. 20ms for one full cycle 
endmodule
