# 🔐 Moore FSM Safe Lock


This project implements a Moore Finite State Machine (FSM) Safe Lock in Verilog.
The design checks a 4-bit serial input password:

Correct password: 1011 → Unlock = 1 ✅

Incorrect password: Error = 1 ❌

The FSM resets automatically after every 4-bit entry, ready for a new attempt.

## ⚙️ Design Features

FSM Type: Moore Machine (outputs depend only on state).

States:

S0 → Idle / waiting for input

S1 → After 1st bit

S2 → After 2nd bit

S3 → After 3rd bit

S4 → After 4th bit (check sequence)

Inputs:

clk → Clock

reset → Active-high reset

serial_in → Serial input bit

Outputs:

unlock → High if password = 1011

error → High otherwise

## 🖥️ Simulation

The included testbench demonstrates:

Entering the correct code 1011 → Unlock = 1

Entering a wrong code (e.g., 1100) → Error = 1

Multiple attempts can be tested in sequence.

📂 File Structure

moore_fsm_safe_lock.v → RTL Design

simulation.v → Testbench

## Vivado Implementation 

![Image](https://github.com/user-attachments/assets/f1897026-02da-41c8-8ae2-3fa7749d6dfa)

![Image](https://github.com/user-attachments/assets/f2739048-f0a4-46a4-bb78-d1776285ac8e)

<img width="1920" height="1200" alt="Image" src="https://github.com/user-attachments/assets/95cf1cc2-012f-47dd-a0c7-58d709679e85" />

<img width="1920" height="1200" alt="Image" src="https://github.com/user-attachments/assets/f2073ca9-dbbb-40d1-b203-5416ee7d495c" />

<img width="1920" height="1200" alt="Image" src="https://github.com/user-attachments/assets/b46fb141-2fd4-4b74-aff9-44749d348077" />

<img width="1920" height="1200" alt="Image" src="https://github.com/user-attachments/assets/4a77a615-79d0-4b32-bfe7-c62e71997cb4" />

<img width="1920" height="1200" alt="Image" src="https://github.com/user-attachments/assets/f545690c-3054-49a6-a2d8-2298e037393c" />

## 📌 Applications

Digital password locks

Authentication systems

Security modules in VLSI/FPGA

Extendable for longer passcodes

## Contact Me : http://www.linkedin.com/in/
