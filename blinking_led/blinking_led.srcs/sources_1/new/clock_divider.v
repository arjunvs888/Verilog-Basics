`timescale 1ns / 1ps
// counter based
module clock_divider(
input wire clk,// 100MHz
output reg divided_clk =0// 1Hz => 0.5s ON and 0.5s OFF
);
integer counter_value = 0; //32 bit Register Bus
//localparam value = 49999999; //1Hz
//parameter f = 0;
localparam value = (100000000/(2*f))-1;
always@(posedge clk)
/*Executes at every positive edge
 of the generated clock*/
begin
    if(counter_value == value-1)begin
    counter_value <= 0; //reset counter
    divided_clk <= ~divided_clk;// flip the signal
    end
    else begin
    counter_value <= counter_value+1; //count up
    end
   
end
endmodule
