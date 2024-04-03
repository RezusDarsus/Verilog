
module tb_full_subtractor;

   
    reg A;
    reg B;
    reg Bin;

    wire D;
    wire Bout;

    full_subtractor uut (
        .A(A), 
        .B(B), 
        .Bin(Bin), 
        .D(D), 
        .Bout(Bout)
    );

    initial begin
        A = 0; B = 0; Bin = 0;

        #100;

        A = 0; B = 0; Bin = 0; #10;
        A = 0; B = 0; Bin = 1; #10;
        A = 0; B = 1; Bin = 0; #10;
        A = 0; B = 1; Bin = 1; #10;
        A = 1; B = 0; Bin = 0; #10;
        A = 1; B = 0; Bin = 1; #10;
        A = 1; B = 1; Bin = 0; #10;
        A = 1; B = 1; Bin = 1; #10;

        $finish;
    end

    initial begin
        $monitor("At time %t, A = %b, B = %b, Bin = %b, D = %b, Bout = %b",
                  $time, A, B, Bin, D, Bout);
    end

endmodule
