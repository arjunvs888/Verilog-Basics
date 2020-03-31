/*---------------------------Clock Divider------------------------------*/
// counter based
module clock_divider(
    input wire clk,// 100MHz
    output reg divided_clk =0// 1Hz => 0.5s ON and 0.5s OFF
    );
    integer counter_value = 0; //32 bit Register Bus
    //localparam value = 999; //Counter value for 50KHz Clock
    parameter f = 0; //Required Clock Frequency in Hz
    localparam value = (100000000/(2*f))-1;//Calculates The Counter value for required Frequency
    initial begin
     $display("The required Frequency is %d\n",f); 
    end
    always@(posedge clk)
    begin
        if(counter_value == value-1)begin
            counter_value <= 0; //reset counter
            divided_clk <= ~divided_clk;// flip the signal
        end
        else 
        counter_value <= counter_value+1; //count up
    end
endmodule
