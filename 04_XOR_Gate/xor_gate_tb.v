`timescale 1ns/1ps
module xor_gate_tb;
reg x,y;
wire z;
xor_gate dut(.a(x), .b(y), .c(z));
initial begin
$dumpfile("wave.vcd");
$dumpvars(0,xor_gate_tb);
x=0;y=0;
#10 x=0;y=1;
#10 x=1;y=0;
#10 x=1;y=1;
#20 $finish;
end
initial begin
$monitor($time,"x=%b,y=%b,z=%b",x,y,z);
end
endmodule