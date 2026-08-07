# OR Gate

## Description

This project implements a 2-input OR gate using Verilog HDL and verifies its functionality using a testbench.

## Truth Table

| A | B | Y |
|---|---|---|
| 0 | 0 | 0 |
| 0 | 1 | 1 |
| 1 | 0 | 1 |
| 1 | 1 | 1 |

## Files

- `or_gate.v` - RTL design
- `or_gate_tb.v` - Testbench
- `waveform.png` - Simulation waveform

## Compile

```bash
iverilog -o or.out or_gate.v or_gate_tb.v
```

## Run

```bash
vvp or.out
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
30  x=1 y=1 z=1
```

## Learning

- Learned the OR operator (`|`)
- Wrote a Verilog testbench
- Simulated the design using Icarus Verilog
- Viewed the waveform in GTKWave
