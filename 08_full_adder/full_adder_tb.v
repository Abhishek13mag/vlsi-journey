`timescale 1ns/1ps
module full_adder_tb;
reg x,y,z;
wire sum1 , carry1;
full_adder dut(.a(x), .b(y), .c(z), .sum(sum1), .carry(carry1));
initial begin
$dumpfile("wave.vcd");
$dumpvars(0, full_adder_tb);
x=0; y=0; z=0;
#10 x=0; y=0; z=1;
#10 x=0; y=1; z=0;
#10 x=0; y=1; z=1;
#10 x=1; y=0; z=0;
#10 x=1; y=0; z=1;
#10 x=1; y=1; z=0;
#10 x=1; y=1; z=1;
#20 $finish;
end
initial begin
$monitor($time, "x=%b, y=%b, z=%b, sum1=%b, carry1=%b",x,y,z,sum1,carry1);
end
endmodule