`timescale 1ns / 1ps
module sine_tb();
reg clk;
wire [8:0] sine_out = 0;
sine_generator UUT (.clk(clk),.sine_out(sine_out));
initial clk = 0;
always #5 clk = ~clk;
endmodule
