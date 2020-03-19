`timescale 1ns / 1ps
module testbench();
reg cllk = 0;
wire divided_cllk;
clock_divider UUT(.clk(cllk), .divided_clk(divided_cllk));
always #5  cllk = ~cllk;//repeats at every 5 ns
endmodule