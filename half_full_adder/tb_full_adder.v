module tb_full_adder;
    reg A;
    reg B;
    reg carry_in;

    wire sum;
    wire carry_out;

full_adder uut(
        .A(A),
        .B(B),
        .carry_in(carry_in),
        .carry_out(carry_out),
        .sum(sum)
    );

initial begin
      
        integer i;
        for (i = 0; i < 4; i = i + 1) begin
            {A, B, carry_in} = i[2:0];
            #100; 
            $display("%b %b %b | %b %b | Expected S, Expected Co", A, B, carry_in, sum, carry_out);
        end
    end
endmodule
