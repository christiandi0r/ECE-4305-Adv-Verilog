# ECE 4305 — Advanced Digital Design Using Verilog HDL

This repository contains my coursework, practice modules, and FPGA designs for **ECE 4305/L: Advanced Digital Design Using Verilog HDL**.

The course focuses on designing, implementing, testing, and verifying digital systems using **SystemVerilog** and the **Nexys A7 FPGA**.

## Hardware

* **FPGA Board:** Digilent Nexys A7
* **FPGA:** AMD/Xilinx Artix-7

## Tools

* SystemVerilog
* AMD/Xilinx Vivado
* Git/GitHub

## Repository Structure

```text
ECE_4305_Adv_Verilog/
│
├── modules/
│   ├── mux/
│   │   ├── mux_2x1/
│   │   └── mux_4x1/
│   │
│   └── decoder/
│       ├── decoder_2x4/
│       └── decoder_3x8/
│
├── labs/
│   ├── lab1/
│   ├── lab2/
│   └── ...
│
└── README.md
```

### `modules/`

Contains individual digital building blocks implemented while learning and practicing SystemVerilog.

Examples include:

* Multiplexers
* Decoders
* Counters
* Registers
* Finite State Machines

Where applicable, modules include a corresponding testbench for simulation and verification.

### `labs/`

Contains larger laboratory assignments that combine multiple modules and target the Nexys A7 FPGA.

## Topics

Throughout the course, this repository will include work involving:

* Combinational and sequential logic
* SystemVerilog RTL design
* Testbenches and simulation
* Finite State Machines
* Counters and timers
* FPGA synthesis and implementation
* UART
* VGA
* Keyboard interfaces
* LCD interfaces

## Goal

The goal of this repository is to document my progression in **digital design, SystemVerilog, FPGA development, and hardware verification** throughout ECE 4305/L.
