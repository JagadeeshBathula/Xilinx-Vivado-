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
| 1  |	1   |	Parallel Load	Loads data directly from inputs |

S1 and S0 are control signals.

SinL and SinR are serial inputs for left and right shift operations.

D is the 4-bit parallel data input.

Q is the 4-bit register output.


