# NAND Gate

## Description

This project implements a 2-input NAND gate using Verilog HDL and verifies its functionality using a testbench.

## Truth Table

| A | B | Y |
|---|---|---|
| 0 | 0 | 1 |
| 0 | 1 | 1 |
| 1 | 0 | 1 |
| 1 | 1 | 0 |

## Files

- `nand_gate.v` - RTL design
- `nand_gate_tb.v` - Testbench
- `waveform.png` - Simulation waveform

## Compile

```bash
iverilog -o nand.out nand_gate.v nand_gate_tb.v
```

## Run

```bash
vvp nand.out
```

## View Waveform

```bash
gtkwave wave.vcd
```

## Output

```
0   x=0 y=0 z=1
10  x=0 y=1 z=1
20  x=1 y=0 z=1
30  x=1 y=1 z=0
```

## Learning

- Learned the NAND operator (`~&`)
- Wrote a Verilog testbench
- Simulated the design using Icarus Verilog
- Viewed the waveform in GTKWave
