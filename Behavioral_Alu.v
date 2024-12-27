module Behavioral_Alu(input [3:0] A , input [3:0] B , input cin , input [2:0] op ,  
output reg [3:0] res , output reg cout );

wire [3:0] add , subtract , or_gate , and_gate ;
wire cout_sub , cout_add;

Riblle1_Full_Adder(A , B , cin , cout_add , add);
Rebble_Subtractor(A , B , subtract , cout_sub);
And_gate(A , B , and_gate);
OR_Gate(A , B , or_gate);

always @(*) begin 

if(op == 3'b000) begin 
res = subtract;
cout = cout_sub;
end 
else if (op == 3'b001) begin
res = add ;
cout = cout_add;
end 
else if(op == 3'b010) begin 
res = or_gate;
cout = 3'bz;
end
else if(op == 3'b011)begin
res = and_gate;
cout = 3'bz;
end
end
endmodule 