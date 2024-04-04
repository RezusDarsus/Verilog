module mux(
  input wire A,
  input wire B,
  input wire C,
  output reg Y0
);

always @(A or B or C) begin
  if (A) begin
    Y0 = C;  
  end else begin
    Y0 = B; 
  end
end

endmodule
