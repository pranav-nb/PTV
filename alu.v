module ALU(result,a,b,opcode,en,ack);
  output [32:0]result;
  input [31:0]a,b;
  input [2:0]opcode;
  input en;
  reg[32:0] result;
  output ack;
  reg ack;
  always@(en,opcode,a,b, result)
 begin
    
  if(en==0)
    result=32'bzzzz;
else
    case(opcode)
      3'b000:result=a+b;
3'b001:result=a-b;
3'b010:result=a%b;
3'b011:result=a*b;
3'b100:result=a&&b;
3'b101:result=a||b;
3'b110:result=!a;
3'b111:result=a==b;
endcase
   begin
     if(en==1)
       ack=1'b1;
     else
       ack=1'b0;
   end
end
endmodule
