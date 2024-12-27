module And_gate(input [3:0] B0 , input [3:0] B1 , output [3:0] out);

and(out[0] , B0[0] , B1[0]);
and(out[1] , B0[1] , B1[1]);
and(out[2] , B0[2] , B1[2]);
and(out[3] , B0[3] , B1[3]);

endmodule 