`timescale 1ns / 1ps
module sine_tb();
    reg clk;
    wire [8:0] sine_out;
    top UUT (.clk_100Mhz(clk),.sin_50Hz(sine_out));
    initial clk = 0;
    always #5 clk = ~clk; //Only for simulation purpose
endmodule