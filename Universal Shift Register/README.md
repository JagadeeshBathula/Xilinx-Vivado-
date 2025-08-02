# 🔁 Universal Shift Register (USR)

### 📌 Overview

A Universal Shift Register is a versatile digital circuit that can load data in parallel, shift left, shift right, and hold the current state. It's called "universal" because it supports multiple modes of data handling, making it widely useful in data storage, data transfer, and arithmetic operations.

### ⚙️ Features

4-bit Register (can be extended)

Supports 4 operations:

No change (Hold)

Shift Left

Shift Right

Parallel Load

##🔧 Modes of Operation

| S1 |	S0	| Operation |	Description |
|----|------|-----------|-------------|
| 0  |	0   |	Hold	    |Retains previous data |
| 0  |	1   |	Shift Right	| Shifts all bits right, MSB gets serial input |
| 1  |	0   |	Shift Left |	Shifts all bits left, LSB gets serial input |
| 1  |	1   |	Parallel Load |	Loads data directly from inputs |

S1 and S0 are control signals.

SinL and SinR are serial inputs for left and right shift operations.

D is the 4-bit parallel data input.

Q is the 4-bit register output.

### 🧱 Structural Design (Gate-Level)

The design is implemented at structural level using multiplexers and D flip-flops:

Each bit has a 4:1 multiplexer to select the source of data.

Data from MUX is stored using D flip-flops on every clock edge.

### 🕹️ Inputs and Outputs

Inputs:

clk – Clock signal

reset – Synchronous reset

S1, S0 – Mode select lines

SinL, SinR – Serial inputs for shift operations

D[3:0] – 4-bit parallel input data

Outputs:

Q[3:0] – 4-bit register output

## On Paper explanation 

![Image](https://github.com/user-attachments/assets/19e81f77-7e3b-4ee6-9ac0-3b9a6f2dd3db)

![Image](https://github.com/user-attachments/assets/701e51a1-d5c4-498f-b870-a776d30b3fea)

![Image](https://github.com/user-attachments/assets/f29a0ead-38a8-4175-8943-e44340daa518)

## Verilog  code and ssimulation 

<img width="1920" height="1200" alt="Image" src="https://github.com/user-attachments/assets/9e6151d7-fdf1-4761-a766-614354ff2e47" />

<img width="1920" height="1200" alt="Image" src="https://github.com/user-attachments/assets/3bae6627-8a15-430c-82e0-92111936c84e" />

<img width="1920" height="1200" alt="Image" src="https://github.com/user-attachments/assets/f536d165-522c-4e37-96a7-097b8afe6d5e" />

<img width="1920" height="1200" alt="Image" src="https://github.com/user-attachments/assets/07cb9937-c896-4b16-936e-9ad560a73efd" />

<img width="1920" height="1200" alt="Image" src="https://github.com/user-attachments/assets/8a8d84e6-d676-468c-adf2-4a5519587ee6" />

<img width="1920" height="1200" alt="Image" src="https://github.com/user-attachments/assets/1aa72bbd-f623-4071-b154-cc3d297c66b9" />
