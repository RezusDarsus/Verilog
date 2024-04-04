module tb_encoder;


    reg [7:0] in_data;     
    wire [2:0] out_data;    

    encoder uut (
        .in(in_data),
        .out(out_data)
    );

    initial begin
        in_data = 8'b00000000;

        #10 in_data = 8'b00000001;
        #10;

        in_data = 8'b00000100;
        #10;

        in_data = 8'b00001111;
        #10;
        $finish;
    end

endmodule
