`timescale 10ns / 1ps
module sine_generator( input wire clk,output reg signed [8:0] sine_out=0);
integer i=0;
localparam size = 1000;
//parameter clk_f = 50;
reg [0:1] x;
reg signed [8:0] RAM [size-1:0];
initial begin
    $readmemh("sin_lut.mem",RAM);
    x=2'b00;
end
always@(posedge clk)begin
        if(x==2'b00)begin
            sine_out <= RAM[i]-255;
//            $display ("QUAD1 %d:-->%h",i,sine_out);
            i=i+1;
           end
          if(i==size-1)i<=0;
end   

endmodule
