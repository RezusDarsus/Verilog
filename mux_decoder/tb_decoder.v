module tb_decoder;


    reg [1:0] in_data;       
    wire [3:0] out_data;     

    decoder uut (
        .in(in_data),
        .out(out_data)
    );

    initial begin
        in_data = 2'b00;

        #10 in_data = 2'b00;
        #10;

        in_data = 2'b01;
        #10;

        in_data = 2'b10;
        #10;
        in_data = 2'b11;
        #10;

        $finish;
    end

endmodule
