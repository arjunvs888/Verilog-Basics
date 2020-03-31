module sinea_tb();
reg cllk;
wire [8:0] sinea_out;
sine_generator UUUT (.clk(cllk),.sine_out(sinea_out));
initial cllk = 0;
always #10 cllk = ~cllk;
endmodule