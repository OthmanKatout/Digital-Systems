module dataflow221_ALU (input [3:0] A , input [3:0] B , input [2:0]op , input cin ,
output [3:0] res , output cout );

wire [3:0] sum , sub , and_gate , or_gate;
wire add_cout , sub_cout;

//-----------------------------------------
Riblle1_Full_Adder(A , B , cin , add_cout , sum);
And_gate( A , B , and_gate);
OR_Gate( A , B , or_gate);
Rebble_Subtractor(A , B , sub , sub_cout);
//-----------------------------------------
assign cout = (op == 3'b000) ? sub_cout:
(op == 3'b001) ? add_cout:
1'b0;
//-----------------------------------------

assign res = (op == 3'b000) ? sub : 
(op == 3'b001) ? sum : 
(op == 3'b010) ? or_gate:
(op == 3'b011) ? and_gate:
3'bz;

//------------------------------------------

endmodule 