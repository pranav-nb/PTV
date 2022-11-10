module test;
  reg [31:0] a,b;
  reg[2:0] opcode;
  reg en;
  wire [32:0]result;
  wire ack;
  ALU m(result,a,b,opcode,en,ack);
  initial
    begin
      $dumpfile("test.vcd");
      $dumpvars;
   a=32'b1101;b=32'b0101; en=1'b0;
   opcode=3'b000;
      $monitor($time,"|opcode=%b|result=%b|ack=%b",opcode,result,ack);
   

  #10 en=1'b1;opcode=3'b001;
  #10 opcode=3'b010;
  #10 opcode=3'b011;
 #10 opcode=3'b100;
 #10 opcode=3'b101;
#10 opcode=3'b110;
#10 opcode=3'b111;
end
endmodule

