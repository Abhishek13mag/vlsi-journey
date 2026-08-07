# NOT Gate

## Description

This project implements a 1-input NOT gate (Inverter) using Verilog HDL and verifies its functionality using a testbench.

## Truth Table

| A | Y |
|---|---|
| 0 | 1 |
| 1 | 0 |

## Files

- `not_gate.v` - RTL design
- `not_gate_tb.v` - Testbench
- `waveform.png` - Simulation waveform

## Compile

```bash
iverilog -o not.out not_gate.v not_gate_tb.v
```

## Run

```bash
vvp not.out
```

## View Waveform

```bash
gtkwave wave.vcd
```

## Output

```
0   x=0 y=1
10  x=1 y=0
```

## Learning

- Learned the NOT operator (`~`)
- Wrote a Verilog testbench
- Simulated the design using Icarus Verilog
- Viewed the waveform in GTKWave
