`timescale 1ns/1ps
module half_adder_tb;
reg x,y;
wire z,f;
half_adder dut(.a(x), .b(y), .sum(z), .carry(f));
initial begin
$dumpfile("wave.vcd");
$dumpvars(0,half_adder_tb);
x=0;y=0;
#10 x=0;y=1;
#10 x=1;y=0;
#10 x=1;y=1;
#20 $finish;
end
initial begin
$monitor($time, "x=%b, y=%b, z=%b, f=%b",x,y,z,f);
end
endmodule