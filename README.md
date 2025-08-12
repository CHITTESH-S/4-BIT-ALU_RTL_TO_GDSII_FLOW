## 4BIT_ALU_RTL_TO_GDSII_FLOW
This project demonstrates a complete RTL-to-GDSII ASIC design flow using open-source tools and the SkyWater SKY130 PDK on Ubuntu 22.04. The design is a 4-bit Arithmetic Logic Unit (ALU), implemented and verified by end-to-end flow. Design authored around a structural **4‑bit ALU** and verified through simulation, synthesis, placement/routing, and physical verification checks including DRC and LVS—to produce an ASIC‑ready layout.

---

## 🚀 Overview & Goals

- Write and verify a synthesizable 4-bit ALU (supported ops: AND, OR, XOR, ADD, SUB, shifts, pass-through).
- Use `iverilog` or `verilator` + GTKWave to simulate and create waveform logs.
- Synthesize with **Yosys**, drive **OpenLane / OpenROAD** for placement, routing, CTS, and GDS generation.
- Run **Magic** for DRC and **Netgen** for LVS checks.
- Document every step via scripts and explanation in documentation, offering a reproducible baseline for your own modifications.

---

## ⚙️ Tools Used for this project
| Tool                       | Purpose                |
| -------------------------- | ---------------------- |
| Yosys                      | RTL synthesis          |
| OpenLane                   | Digital design flow    |
| Magic                      | DRC & Layout view      |
| Netgen                     | LVS check              |
| KLayout                    | GDS Viewer             |
| Icarus Verilog / Verilator | RTL simulation         |
| GTKWave                    | Waveform visualization |

---

## 🧠 ALU Functional Specification

Operation is selected via a 3-bit signal `ALU_Sel`:

| ALU\_Sel | Operation      | Description | 
| -------- | -------------- | ----------- | 
| 000      | AND            | A & B       |  
| 001      | OR             | A ^ B        | 
| 010      | ADD            | A + B       |  
| 011      | SUBTRACT       | A - B       |  
| 100      | XOR            | A ^ B       |   
| 101      | SHIFT LEFT     | A << 1      |   
| 110      | SHIFT RIGHT    | A >> 1      |   
| 111      | Pass-through A | A           | 

- **Inputs:** `A[3:0]`, `B[3:0]`, and `ALU_Sel[2:0]`  
- **Outputs:** `Result[3:0]`, `CarryOut`

---

## 📁 Project Structure

```
alu_project/
├── outputs/
├── src/               # Verilog source
│   ├── alu.v
│   └── alu_tb.v
├── synth/             # Synthesis outputs
├── openlane/          # OpenLane (OpenROAD) scripts
├── gds/               # Final GDS output
├── netlist/

```
---
