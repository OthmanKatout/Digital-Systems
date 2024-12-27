module OR_Gate(input [3:0] A , input [3:0] B ,
output [3:0] C);

or(C[0] , A[0] , B[0]);
or(C[1] , A[1] , B[1]);
or(C[2] , A[2] , B[2]);
or(C[3] , A[3] , B[3]);

endmodule 