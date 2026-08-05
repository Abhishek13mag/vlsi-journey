`timescale 1ns/1ps
module not_gate_tb;
reg x;
wire y;
not_gate dut(.a(x), .b(y));
initial begin
$dumpfile("wave.vcd");
$dumpvars(0, not_gate_tb);
x=0;
#10 x=0;
#10 x=1;
#20 $finish;
end
initial begin
    $monitor($time," x=%b y=%b",x,y);
end
endmodule
