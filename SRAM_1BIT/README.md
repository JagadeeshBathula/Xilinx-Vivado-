# 1-Bit SRAM (Static Random Access Memory)

##📌 Overview

This project implements a 1-bit SRAM cell in Verilog.
SRAM (Static RAM) is a type of volatile memory that stores data as long as power is supplied. Unlike DRAM, it doesn’t require periodic refreshing, making it faster and simpler for small-scale designs.

## ⚡ Features

Read/Write operations controlled by a signal

Single-bit storage capability

Address-controlled access

Clocked write operation and combinational read logic

## ▶️ Working Principle

Write Operation

When read_write = 1 and address = 1, the input data (data_in) is stored into the SRAM cell on the rising edge of the clock.

Read Operation

When read_write = 0 and address = 1, the stored data is sent to the output (data_out).

Idle/Unselected


If address = 0, the cell is not selected, and the output remains in high-impedance (Z).

## Vivado Implementation 

![Image](https://github.com/user-attachments/assets/88d3b111-8b07-4af6-9f7e-0e571a22c54c)

![Image](https://github.com/user-attachments/assets/3f54ea2d-2575-47e5-8cfb-fbe5fe1a8082)

<img width="1920" height="1200" alt="Image" src="https://github.com/user-attachments/assets/862e77c3-2a6c-46b2-b281-f4245eee1f89" />

<img width="1920" height="1200" alt="Image" src="https://github.com/user-attachments/assets/1689dd2c-2659-49a0-88ba-76a402147125" />

<img width="1920" height="1200" alt="Image" src="https://github.com/user-attachments/assets/03abcd94-d793-48b5-985d-20baa34aecd3" />

<img width="1920" height="1200" alt="Image" src="https://github.com/user-attachments/assets/b5f76fda-47fa-4574-ac6f-310c7589b196" />

## 📚 Applications

Building block for larger SRAM arrays (e.g., 4x4, 8x8 memory)

Cache memory design in processors

Register file implementation

FPGA/ASIC memory modules

## Contact Me : 

www.linkedin.com/in/
jagadeesh-bathula-246aba300
Vanity URL name
