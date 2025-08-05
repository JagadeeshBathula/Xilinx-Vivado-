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



