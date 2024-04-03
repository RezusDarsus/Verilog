module half_subtractor(
 input A , B ,
 output Diff, Bor
);

 assign Diff = (~A & B)| (A & ~B);
 assign Bor  =  ~A & B ;


endmodule 
