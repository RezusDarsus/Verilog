module tb_half_subtractor;

    reg A;
    reg B;

    wire Diff;
    wire Bor;

    half_subtractor uut (
        .A(A), 
        .B(B), 
        .Diff(Diff), 
        .Bor(Bor)
    );

    initial begin
        A = 0;
        B = 0;

        #100;
        
        A = 0; B = 0; #10; 
        A = 0; B = 1; #10; 
        A = 1; B = 0; #10; 
        A = 1; B = 1; #10; 

        $finish;
    end
      
    initial begin
        $monitor("At time %t, A = %b, B = %b, Diff = %b, Bor = %b",
                  $time, A, B, Diff, Bor);
    end

endmodule
