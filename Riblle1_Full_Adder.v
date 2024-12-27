module Riblle1_Full_Adder(input [3:0] A , input [3:0] B , input C , output Carry , output [3:0]res);

wire w1 , w2 , w3;

Full_Adder(A[0] , B[0] , C , res[0] , w1);
Full_Adder(A[1] , B[1] , w1 , res[1] , w2);
Full_Adder(A[2] , B[2] , w2 , res[2] , w3);
Full_Adder(A[3] , B[3] , w3 , res[3] , Carry);
endmodule 