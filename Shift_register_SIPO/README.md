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

![Image](https://github.com/user-attachments/assets/b9958d0b-bce8-407b-81ac-e9b678a9872f)

![Image](https://github.com/user-attachments/assets/8b372a64-a0cf-48a8-9fdc-90f0ad5d3863)



![Image](https://github.com/user-attachments/assets/38cc3b4a-5262-4fc6-b30d-f263acb12f09)

![Image](https://github.com/user-attachments/assets/4ca865ed-2d98-4a06-a132-db590cc827dd)

## 🧩 Design Variants:

Behavioral model: Implements shifting using vector operations.

Structural model: Built using four connected D flip-flops.

📄 Verilog Code Snippets

<img width="1920" height="1200" alt="Image" src="https://github.com/user-attachments/assets/1883b3be-9a3a-4bc5-8bb3-53fbb8367061" />

<img width="1920" height="1200" alt="Image" src="https://github.com/user-attachments/assets/9ef578e7-6653-4ec9-b710-354331efd5db" />

<img width="1920" height="1200" alt="Image" src="https://github.com/user-attachments/assets/d022f1d9-632f-479c-8855-b381ffd11f9b" />

<img width="1920" height="1200" alt="Image" src="https://github.com/user-attachments/assets/85588ea5-f498-4fcc-aacd-e979fee7e6dd" />

<img width="1920" height="1200" alt="Image" src="https://github.com/user-attachments/assets/3f3c6b14-c48c-47df-b3f1-5f2dbb06a0a3" />

<img width="1920" height="1200" alt="Image" src="https://github.com/user-attachments/assets/8c290da6-7503-4b5c-af2d-00a21f691cbb" />

<img width="1920" height="1200" alt="Image" src="https://github.com/user-attachments/assets/c91afda0-0a0a-4683-9c5b-ccd6db1a81c5" />


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

### 🔗 Connect With Me

www.linkedin.com/in/
jagadeesh-bathula-246aba300


### 📌 Tags

#Verilog #ShiftRegister #SIPO #RTLDesign #Vivado #DigitalDesign #100DaysOfRTL #VLSI


