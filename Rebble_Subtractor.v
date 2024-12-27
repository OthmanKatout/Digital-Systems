module Rebble_Subtractor(input [3:0] A , input [3:0] B , output [3:0]sum , output carryout);
wire b0 , b1 , b2 , b3;
not(b0 , B[0]);
not(b1 ,B[1]);
not(b2 ,B[2]);
not(b3 ,B[3]);

wire c0 , c1 , c2 ;
Full_Adder(A[0] , b0 , 1'b1 , sum[0] , c0);
Full_Adder(A[1] , b1 , c0 , sum[1] , c1);
Full_Adder(A[2] , b2 , c1 , sum[2] , c2);
Full_Adder(A[3] , b3 , c2 , sum[3] , carryout);

endmodule 