module top(); //TestBench code start
reg [15:0] a;
reg [15:0] b;
wire [16:0] c;

adder DUT(a,b,c); //DUT Instantiation

initial

repeat(4) begin
a = $random; //apply random stimulus
b = $random;
#10 $display(" a=%0d,b=%0d,c=%0d",a,b,c);
end
initial begin
    $dumpfile("dump.vcd"); 
    $dumpvars;
  end
endmodule //TestBench code end
