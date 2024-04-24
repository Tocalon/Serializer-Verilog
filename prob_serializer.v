module Tester(CLK, load, data_in, data_out, send, rst, send); 

output reg CLK, load, send, rst; 
output reg [11:0] data_in; 
input wire data_out; 
input wire [11:0] temp_data_out;

initial begin          
  CLK = 1;       // initial value of clock
  rst = 1;       // initial value of reset
  load = 0;
  send = 0;
  data_in = 12'b110110110110;
  #15 rst = 0;   // De-assert the reset
  #13 load = 1;
  #15 load = 0;
  #5 send = 1;
  #125 send = 0;
  #10 data_in = 12'b100100010001;
  #10 load = 1;
  #15 load = 0;
  #5 send = 1;
  #125 send = 0;
end
// Clock generator
always begin
  #5 CLK = ~CLK; // Toggle clock every 5 ns - 100 MHz
end
endmodule 