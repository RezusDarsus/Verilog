module tb_half_adder;

reg A;
reg B;

wire carry;
wire sum;

half_adder uut(
    .A(A),
    .B(B),
    .sum(sum),
    .carry(carry)
);

initial begin

    integer i;
    for (i = 0; i < 4; i = i + 1) begin
        {A, B} = i[1:0];
        #100;
        $display("%b %b | %b , %b | expected sum , expected carry ", A, B, sum, carry);
    end
end
endmodule
