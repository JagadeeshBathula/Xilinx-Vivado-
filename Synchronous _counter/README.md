# 🔁 4-Bit Synchronous Up Counter (Structural Design using T Flip-Flops)

## 🧠 Overview

This project demonstrates the design and simulation of a 4-bit synchronous up counter using T Flip-Flops in Verilog HDL at the structural level. In a synchronous counter, all flip-flops are triggered by the same clock signal, enabling simultaneous state transitions and eliminating ripple delays.

## 🏗️ Design Details

Language: Verilog HDL

Design Style: Structural modeling

Flip-Flop Used: T Flip-Flop

Counter Width: 4-bit

Count Sequence: 0000 → 0001 → ... → 1111 → 0000 (Wraps around)

## 🔧 Working Principle

FF0 toggles every clock pulse (T=1)

FF1 toggles when Q0=1

FF2 toggles when Q1 & Q0 = 1

FF3 toggles when Q2 & Q1 & Q0 = 1

All flip-flops are connected to the same clock input, making the entire counter synchronous.



![Image](https://github.com/user-attachments/assets/64b1194e-1641-4cde-a53f-3930456679ae)

![Image](https://github.com/user-attachments/assets/1b5fae40-f12b-4aca-b66f-195351c1a337)

## Vivado Simulation

<img width="1920" height="1200" alt="Image" src="https://github.com/user-attachments/assets/a3393ece-a92f-47cc-a983-312f0764bcac" />

<img width="1920" height="1200" alt="Image" src="https://github.com/user-attachments/assets/0023ee13-108f-442a-a6a7-dd2d7593cab6" />

<img width="1920" height="1200" alt="Image" src="https://github.com/user-attachments/assets/a486934d-fa41-412d-81f3-8e71d385e7ab" />

<img width="1920" height="1200" alt="Image" src="https://github.com/user-attachments/assets/b5ea70b7-d78a-44ae-bb93-a4eb8593bed5" />

<img width="1920" height="1200" alt="Image" src="https://github.com/user-attachments/assets/5aaf18b6-af7c-49cf-a48c-6919a6a8ca23" />

## ▶️ Simulation Results

The counter starts from 0000 after reset.

Increments on every positive clock edge.

Wraps around after 1111 back to 0000.

No glitches or propagation delays due to synchronous design.

Can be simulated using any Verilog simulator such as ModelSim, Vivado, or Icarus Verilog.

## 📌 Applications

Digital clocks and timers

Frequency counters

Event monitoring systems

Control units in digital circuits



