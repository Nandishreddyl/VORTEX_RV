# 🚀 VORTEX_RV

## RTL to GDSII Implementation of a 5-Stage Pipelined RISC-V Processor

VORTEX_RV is a custom-designed **32-bit 5-stage pipelined RISC-V processor** developed completely from **RTL to GDSII** using an open-source ASIC design flow. The processor is implemented in **Verilog HDL**, verified through simulation and FPGA emulation, synthesized using **Yosys**, and physically implemented using **OpenLane** with the **Sky130A Process Design Kit (PDK)**.

The project demonstrates the complete front-end and back-end VLSI design flow, starting from RTL design and ending with the generation of a manufacturable GDSII layout.

---

# 📌 Project Highlights

- Designed a custom 32-bit RISC-V processor in Verilog HDL.
- Implemented a **5-stage pipelined architecture** (IF, ID, EX, MEM, WB).
- Integrated **Hazard Detection Unit** for load-use hazard handling.
- Implemented **Forwarding Unit** to minimize pipeline stalls.
- Developed a modular RTL architecture for easy scalability.
- Verified processor functionality using simulation and waveform analysis.
- Successfully emulated the processor on the **Basys 3 FPGA**.
- Performed RTL synthesis using **Yosys**.
- Generated the gate-level netlist.
- Completed the complete ASIC flow using **OpenLane**.
- Generated Floorplan, Placement, CTS, Routing and Signoff reports.
- Successfully produced the final **GDSII layout** using the Sky130A PDK.

---

# 🏗 Processor Architecture

The processor follows a classic **5-stage pipelined RISC-V architecture**.

- Instruction Fetch (IF)
- Instruction Decode (ID)
- Execute (EX)
- Memory Access (MEM)
- Write Back (WB)

Additional hardware blocks include:

- Program Counter
- Register File
- ALU
- Control Unit
- Immediate Generator
- Data Memory
- Instruction Memory
- Hazard Detection Unit
- Forwarding Unit
- Pipeline Registers

---

# ⚙ Supported Instruction Types

The processor currently supports:

- R-Type Instructions
- I-Type Instructions
- Load Instructions
- Store Instructions
- Branch Instructions
- Jump Instructions

---

# 🛠 Tools Used

| Tool | Purpose |
|------|---------|
| Verilog HDL | RTL Design |
| Icarus Verilog | Functional Simulation |
| GTKWave | Waveform Analysis |
| Yosys | RTL Synthesis |
| OpenLane | RTL-to-GDSII Flow |
| OpenROAD | Physical Design |
| Sky130A PDK | Standard Cell Library |
| Magic | Layout Verification |
| KLayout | GDSII Visualization |
| Xilinx Vivado | FPGA Implementation |
| Basys 3 FPGA | Hardware Validation |

---

# 🔄 RTL to GDSII Flow

1. RTL Design
2. Functional Simulation
3. RTL Verification
4. FPGA Emulation
5. RTL Synthesis
6. Gate-Level Netlist Generation
7. Floorplanning
8. Placement
9. Clock Tree Synthesis (CTS)
10. Global & Detailed Routing
11. Static Timing Analysis
12. Power Analysis
13. DRC & LVS Verification
14. Final GDSII Generation

---

# 📊 Physical Design Results

| Parameter | Value |
|-----------|---------|
| Technology | Sky130A |
| Clock Period | 10 ns |
| Clock Frequency | 100 MHz |
| Critical Path | 3.34 ns |
| WNS | 0.00 ns |
| TNS | 0.00 ns |
| Core Area | 3971.31 µm² |
| Die Area | 6382.48 µm² |
| Internal Power | 2.32 × 10⁻⁴ W |
| Switching Power | 7.01 × 10⁻⁵ W |
| Leakage Power | 1.43 × 10⁻⁹ W |

---

# 💻 FPGA Validation

The processor was successfully implemented and validated on the **Basys 3 FPGA** using **Xilinx Vivado**.

The FPGA implementation verified:

- Instruction execution
- Pipeline operation
- Register write-back
- ALU functionality
- Memory operations
- Seven-segment display output
- LED-based debugging

---

# 📁 Project Structure

```
VORTEX_RV
│
├── RTL
│   ├── IF
│   ├── ID
│   ├── EX
│   ├── MEM
│   ├── WB
│   ├── Pipeline_Registers
│   ├── Hazard_Unit
│   └── Top
│
├── Programs
├── Final_Reports
├── Documentation
├── Images
└── README.md
```

---

# 📷 Project Outputs

This repository contains:

- RTL Source Code
- Simulation Waveforms
- Gate-Level Netlist
- Yosys Synthesis Reports
- Timing Reports
- Power Reports
- Area Reports
- DEF File
- Final GDSII Layout
- FPGA Demonstration Images

---

# 🚀 Future Improvements

- Branch Prediction Unit
- Cache Memory
- RV32M Extension
- CSR Support
- Interrupt Controller
- AXI4 Interface
- UART Peripheral
- GPIO Controller

---

# 👨‍💻 Author

**Nandish Reddy L**

Electronics and Communication Engineering

Specialization:
- RTL Design
- Digital VLSI
- ASIC Design
- FPGA Design
- RISC-V Processor Design

---

# 📜 License

This project is released for educational and research purposes.
