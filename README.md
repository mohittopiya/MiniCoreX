# MiniCoreX Processor Design and Verification

This repository contains the complete RTL design and verification setup for the **MiniCoreX** processor core. The project implements and validates key components such as the ALU, barrel shifter, universal shift register (USR), and memory unit using parameterized Verilog modules.

> ✅ The RTL is written in a highly flexible and reusable way — signal widths for data and address are parameterized, making it easy to scale or modify the design in the future without changing the core logic.

## Project Structure

- `RTL/` – Contains the Verilog source file for the MiniCoreX processor design
- `TB/` – Contains the verification Testbench code used to validate design
- `SIM/` – Stores simulation outputs, logs, and result files
- `SIM/Makefile` – Contains commands for automated compilation, simulation, and code coverage
- `SIM/MiniCoreX_code_coverage/` – Contains code coverage report
- `SIM/terminal_output.txt` - Contains output of verification
- `SIM/wave.do` - waveform file
- `SIM/MiniCoreX_schematic.sch` - Conatins schematic of design

## Tools Used

- **Mentor Graphics QuestaSim** – Used for compiling, simulating, and generating functional coverage reports


