# 🚀 Shift Register – Serial-In Parallel-Out (SIPO)

## 📌 Overview

This project implements a 4-bit Serial-In Parallel-Out (SIPO) Shift Register using Verilog HDL as part of my RTL Design Challenge – Day 35. A shift register is a sequential logic circuit that is widely used in digital systems for data storage, transfer, and timing applications. The SIPO shift register takes a serial data input and produces a parallel output after a series of clock pulses.

## 🧠 What is a SIPO Shift Register?

A SIPO (Serial-In Parallel-Out) shift register allows serial data to be input bit-by-bit and then outputs the data all at once in parallel. It uses a series of D flip-flops where each flip-flop captures the input of the previous flip-flop on each rising edge of the clock.

### 🔄 On every clock cycle:

A new bit from the serial input (D) is shifted into the register.

Existing bits move one position toward the MSB.

The parallel output reflects the current contents of the shift register.

## 🏗️ Design Architecture

🔸 Module: SIPO_ShiftRegister

Inputs:

clk – Clock signal

reset – Active-high synchronous reset

serial_in – Serial data input

Outputs:

parallel_out [3:0] – 4-bit parallel output

## 🧩 Design Variants:

Behavioral model: Implements shifting using vector operations.

Structural model: Built using four connected D flip-flops.

📄 Verilog Code Snippets




✅ Simulation Tool Used: Vivado Simulator (2024.2)

📷 Waveform Output: Shows correct bit-shifting and parallel output.

## 📈 Applications

Serial communication interfaces (e.g., SPI, UART)

Data buffering and synchronization

LED matrix and display drivers

Digital signal delay elements

Finite state machines and control logic

📂 File Structure


├── shift_register_SIPO.v       # Top-level Verilog module

├── D_flip_flop.v               # D flip-flop used for structural model

├── simulation.v                # Testbench to verify functionality

├── waveform.png                # Simulation waveform screenshot

└── README.md                   # This documentation

🏁 How to Run

Open project in Vivado or any Verilog simulation tool.

Add all source and testbench files.

Run behavioral simulation.

Observe output waveform.

🔗 Connect With Me


📌 Tags
#Verilog #ShiftRegister #SIPO #RTLDesign #Vivado #DigitalDesign #100DaysOfRTL #VLSI


