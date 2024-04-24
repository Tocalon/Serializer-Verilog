`include "serializer.v"

module tb_serializer;

    wire [11:0] data_in; 
    wire send, CLK, load, rst,  data_out; 
    wire [11:0] temp_data_out; 
    integer i, j; 

    initial begin
        $dumpfile("comunicacionSerializar.vcd");
        $dumpvars(-1, dut_gen);
		//$dumpvars(-1, dut_recp);
        //$dumpvars(-1, dut_p);
    end

    serializa dut_gen(.CLK(CLK),  .rst.(rst), load(load), .send(send), .data_in(data_in),
    .data_out(data_out), .temp_data_out(temp_data_out))

endmodule 
