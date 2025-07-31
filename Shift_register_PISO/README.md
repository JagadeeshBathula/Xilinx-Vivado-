# 🔄 Shift Register – PISO (Parallel-In Serial-Out)

## 🧠 What is a PISO Shift Register?

A PISO (Parallel-In Serial-Out) shift register is a sequential logic circuit that allows parallel data (multiple bits entered simultaneously) to be shifted out serially (one bit at a time) on each 

clock pulse.

This type of register is useful when we need to send multi-bit data over a single data line, which reduces wiring complexity in communication systems.

## ⚙️ Working Principle

Parallel Load: When the control/load signal is high (1), the register loads multiple bits (e.g., 4-bit input) into its internal flip-flops simultaneously.

Serial Shift: When the control/load signal is low (0), the data is shifted out one bit per clock pulse, starting from the most significant bit (or least, depending on design).


