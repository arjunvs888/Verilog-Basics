//Quarter Sine wave Generator
`timescale 10ns / 1ps
module sine_generator( input clk, output reg [8:0] sine_out);
integer i = 0;
reg[0:2] quad = 2'b00;
parameter size = 1000;
//parameter clk_f = 50;
reg [8:0] RAM [size-1:0];
initial begin
    $readmemh("sin_lut.mem",RAM);
end
always@(posedge clk)begin
        sine_out <= RAM[i];
        $display ("Value1 %d:-->%h",i,sine_out);
        i=i+1;
        if(i==size-1)i<=0;
        end
endmodule
