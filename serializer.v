module serializa(CLK, load, data_in, data_out, send, rst, send);

    input wire [11:0] data_in; 
    input wire send, CLK, load, rst; 

    output reg data_out; 

   output reg [11:0] temp_data_out; 
    integer i, j; 

    always @ (posedge CLK)
    begin 
        if (rst)begin 
            data_out<=1'b0; 
            temp_data_out<=12'b0; 
        end 
        else if (load) begin 
            for (i=0; i<10; i=i+1) begin 
                temp_data_out[i]<=data_in[i];
            end       
        end else if (send )begin 
            for (j=0; j<12 ; j=j+1) begin 
                data_out <= temp_data_out[j];
            end 
        end 
    end 
endmodule

