# 🔁 Shift Register – SISO (Serial-In Serial-Out)

### 📘 Overview

A Serial-In Serial-Out (SISO) shift register is a basic sequential logic circuit that shifts data serially through a chain of flip-flops. It takes one input bit at a time and moves it through the register with each clock pulse, finally producing a serial output.

This project implements a simple SISO shift register in Verilog HDL, complete with a testbench for simulation and verification.

### 🧠 Key Features

Designed using D-type flip-flops

Serial input (SI) and serial output (SO)

Positive edge-triggered operation

Asynchronous active-high reset

Clean and modular Verilog code

Easily extendable to larger bit-widths

### 🛠️ Module I/O Description

Signal	Direction	Description

clk	Input	Clock signal

rst	Input	Asynchronous reset (active high)

SI	Input	Serial input

SO	Output	Serial output

### 🔧 Working Principle

On the rising edge of the clock, the serial input (SI) is loaded into the first flip-flop.

Each subsequent flip-flop stores the value of the previous one.

After n clock cycles (for an n-bit register), the first input bit appears at the output (SO).

When reset is high, all flip-flops are cleared to 0.

### Explanation 

![Image](https://github.com/user-attachments/assets/be7a8f7f-4eae-4aca-add0-c890a10aad0d)


![Image](https://github.com/user-attachments/assets/c6617e9f-d7bd-42ad-8419-4bc15f308704)

### Vivado Impolementation 

<img width="1920" height="1200" alt="Image" src="https://github.com/user-attachments/assets/f1d666d6-d04f-42a3-aa18-f0d3727633a4" />

<img width="1920" height="1200" alt="Image" src="https://github.com/user-attachments/assets/7db2cb98-8521-4631-b8ef-96b70a0bc54e" />

<img width="1920" height="1200" alt="Image" src="https://github.com/user-attachments/assets/29c9a91c-908d-482a-a035-9fab5a148559" />

<img width="1920" height="1200" alt="Image" src="https://github.com/user-attachments/assets/b287f10a-ce28-4870-9ca0-367ec88dec0b" />

<img width="1920" height="1200" alt="Image" src="https://github.com/user-attachments/assets/31c3332a-48e2-4c09-a3fb-4eb6d4636d5d" />

<img width="1920" height="1200" alt="Image" src="https://github.com/user-attachments/assets/37aebd44-d923-4aa7-a3b5-32db24998284" />

<img width="1920" height="1200" alt="Image" src="https://github.com/user-attachments/assets/6a299f1d-c1c0-4454-acce-362b4674f908" />

### 📦 File Structure

├── shift_register_SISO.v       // RTL design

├── simulation.v    // Testbench for simulation

├── waveform.png                // (Optional) simulation waveform

└── README.md                   // Project documentation

### 🧪 Simulation

The testbench provides:

Clock signal generation

Reset control

A sequence of serial input bits

Monitoring of output (SO) over time

### ✅ Expected Behavior

On reset, output remains low.

After reset deassertion, each bit from SI propagates through the register and appears on SO after sufficient clock cycles.

Waveform image (if available) can be inserted here for visual verification.

### 📊 Applications

Serial communication systems (UART, SPI, I²C)

Data buffering and synchronization

Time-delay implementations

Digital signal processing chains

State machines and control logic

### 🚀 Future Improvements

Make the number of stages (bit-width) configurable using parameters

Add enable input to control when shifting occurs

Extend to other types like SIPO, PISO, and PIPO

Implement using behavioral and structural modeling for comparison



