# 🧠 Simple I²C Master Controller (Verilog)


This project implements a basic I²C Master in Verilog HDL, demonstrating the fundamental operations of the I²C protocol using an FSM-based design.
The master generates its own clock (SCL), drives the open-drain data line (SDA), and performs a single-byte write transaction to a slave device.

## ⚙️ Features

Implements core I²C master functionality:

START and STOP condition generation

7-bit slave addressing

8-bit data transmission

Finite State Machine (FSM) based design

Open-drain SDA behavior using tri-state logic

Internal SCL clock generation using clock divider

Transfer complete (done) flag after STOP condition

Fully synthesizable and testbench verified in Vivado

## Vivado Implementation

<img width="1920" height="1200" alt="Screenshot (1006)" src="https://github.com/user-attachments/assets/2188dfcc-e2bb-42cb-8d53-31ded2652425" />

<img width="1920" height="1200" alt="Screenshot (1007)" src="https://github.com/user-attachments/assets/a220e1aa-664e-460c-88f7-2ed6e880ed15" />

<img width="1920" height="1200" alt="Screenshot (1008)" src="https://github.com/user-attachments/assets/e23aa47c-5bac-45c1-91ea-e51e98cc7ae5" />

<img width="1920" height="1200" alt="Screenshot (1009)" src="https://github.com/user-attachments/assets/d6050024-980b-48ef-9f73-1d7dfa9f5b67" />

<img width="1920" height="1200" alt="Screenshot (1004)" src="https://github.com/user-attachments/assets/a72ed04a-1c2d-4248-a101-8bd5355230c0" />

<img width="1920" height="1200" alt="Screenshot (1005)" src="https://github.com/user-attachments/assets/32c47b21-3359-4cae-baea-ebe2c7a222f8" />

<img width="1920" height="1200" alt="Screenshot (1003)" src="https://github.com/user-attachments/assets/3805fafc-5285-4466-8ad0-b7c67c4ea8e6" />

## Contact Me : 
http://www.linkedin.com/in/


