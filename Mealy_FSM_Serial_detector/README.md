# Mealy FSM Serial Detector

## 📌 Overview

This project implements a Mealy Finite State Machine (FSM) for detecting a specific bit sequence (1011) in a serial input stream. Unlike a Moore machine, the Mealy FSM produces output based on the current state and input, allowing faster detection of the sequence.

## 🔹 Key Features

Detects sequence 1011 in a serial bit stream

Supports overlapping sequences

Immediate output when the last bit is received (Mealy advantage)

Designed in Verilog HDL

Includes testbench for simulation

## 🏗 FSM Design

States

S0: No match yet

S1: Last bit was 1

S2: Last two bits were 10

S3: Last three bits were 101

Detection

When in S3 and next input is 1, the sequence 1011 is detected.

Output (detected) is asserted immediately.

FSM supports overlapping (e.g., 1011011 → detects twice).

## 🔹 Verilog Implementation

![Image](https://github.com/user-attachments/assets/2ef0df62-4c3b-4dc5-b19e-e22e57bcd0eb)

![Image](https://github.com/user-attachments/assets/70906021-727e-4ee2-8201-787662ae7328)

![Image](https://github.com/user-attachments/assets/33a0e791-8f4f-43bb-9b34-c821cb7322b1)

<img width="1920" height="1200" alt="Image" src="https://github.com/user-attachments/assets/3d296d72-c553-4bf5-8a9f-94bc76eeacdb" />

<img width="1920" height="1200" alt="Image" src="https://github.com/user-attachments/assets/4fc2a38d-b58e-4c2e-bd5d-7b470a69e6a6" />

<img width="1920" height="1200" alt="Image" src="https://github.com/user-attachments/assets/75325346-0a84-49a1-b619-5fdc686dc75c" />

<img width="1920" height="1200" alt="Image" src="https://github.com/user-attachments/assets/f184a1f9-ebf2-4fdb-bf89-3fdbdb1666b6" />

## Contact me : http://www.linkedin.com/in/
