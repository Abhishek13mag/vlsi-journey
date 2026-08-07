# XOR Gate

## Description

This project implements a 2-input XOR gate using Verilog HDL and verifies its functionality using a testbench.

## Truth Table

| A | B | Y |
|---|---|---|
| 0 | 0 | 0 |
| 0 | 1 | 1 |
| 1 | 0 | 1 |
| 1 | 1 | 0 |

## Files

- `xor_gate.v` - RTL design
- `xor_gate_tb.v` - Testbench
- `waveform.png` - Simulation waveform

## Compile

```bash
iverilog -o xor.out xor_gate.v xor_gate_tb.v
```

## Run

```bash
vvp xor.out
```

## View Waveform

```bash
gtkwave wave.vcd
```

## Output

```
0   x=0 y=0 z=0
10  x=0 y=1 z=1
20  x=1 y=0 z=1
30  x=1 y=1 z=0
```

## Learning

- Learned the XOR operator (`^`)
- Wrote a Verilog testbench
- Simulated the design using Icarus Verilog
- Viewed the waveform in GTKWave
