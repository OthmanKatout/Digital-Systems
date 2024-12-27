module Full_Adder(input A , input B , input Carry ,
output Sum , output Carry2);

wire Wire1 , Wire2 , Wire3;

xor(Wire1 , A , B);
xor(Sum , Wire1 , Carry);

and(Wire2 , A , B);
and(Wire3 , Wire1 , Carry);

or(Carry2 , Wire2 , Wire3);


endmodule  