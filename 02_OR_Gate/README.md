# 01 - AND Gate

## 📌 Objective

Design and simulate a 2-input AND gate using Verilog HDL.

---

## 📖 Theory

An AND gate produces a HIGH (1) output only when **both inputs are HIGH (1)**.

Boolean Equation:

Y = A & B

---

## 🔢 Truth Table

| A | B | Y |
|---|---|---|
| 0 | 0 | 0 |
| 0 | 1 | 0 |
| 1 | 0 | 0 |
| 1 | 1 | 1 |

---

## 🛠️ Tools Used

- Verilog HDL
- Icarus Verilog
- GTKWave
- VS Code
- Ubuntu (WSL)

---

## 📂 Project Files

```
01_AND_Gate
│── and_gate.v
│── and_gate_tb.v
│── waveform.png
└── README.md
```

---

## ▶️ Compilation

```bash
iverilog -o and.out and_gate.v and_gate_tb.v
```

---

## ▶️ Simulation

```bash
vvp and.out
```

---

## 📈 Waveform

```bash
gtkwave wave.vcd
```



---

## 💻 RTL Code

### and_gate.v

```verilog
module and_gate(a,b,c);
    input a,b;
    output c;

    assign c = a & b;

endmodule
```

---

### and_gate_tb.v

```verilog
`timescale 1ns/1ps

module and_gate_tb;

reg x,y;
wire z;

and_gate dut(.a(x), .b(y), .c(z));

initial begin
    $dumpfile("wave.vcd");
    $dumpvars(0,and_gate_tb);

    x = 0; y = 0;
    #10 x = 0; y = 1;
    #10 x = 1; y = 0;
    #10 x = 1; y = 1;
    #20 $finish;
end

initial begin
    $monitor($time," x=%b y=%b z=%b",x,y,z);
end

endmodule
```

---

## 📊 Expected Simulation Output

```
0   x=0 y=0 z=0
10  x=0 y=1 z=0
20  x=1 y=0 z=0
30  x=1 y=1 z=1
```

---

## 📚 Learning Outcome

- Understanding Verilog module declaration
- Using continuous assignment (`assign`)
- Writing a Verilog testbench
- Running simulations using Icarus Verilog
- Viewing waveforms using GTKWave

---

**Author:** Abhishek A Nair
