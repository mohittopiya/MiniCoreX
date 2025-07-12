# MiniCoreX Processor Design and Verification

This repository contains the complete RTL design and verification setup for the **MiniCoreX** processor core. The project implements and validates key components such as the ALU, barrel shifter, universal shift register (USR), and memory unit using parameterized Verilog modules.

> ✅ The RTL is written in a highly flexible and reusable way — signal widths for data and address are parameterized, making it easy to scale or modify the design in the future without changing the core logic.

## Project Structure

- `RTL/` – Contains the Verilog source files for the MiniCoreX processor design
- `TB/` – Contains the verification code used to validate different modules
- `Makefile` – Automates compilation, simulation, and code coverage generation
- `SIM/` – Stores simulation outputs, logs, and result files
- `SIM/MiniCoreX_code_coverage/` – Contains code coverage reports
- `SIM/terminal_output.txt` - Contains output of testbench 

## Tools Used

- **Mentor Graphics QuestaSim** – Used for compiling, simulating, and generating functional coverage reports

## Quick Start

To compile and simulate the project:

```bash
make
