# 📝 4x4 ROM (Read Only Memory) – RTL Design

## 📌 Introduction

A Read Only Memory (ROM) is a combinational circuit that stores fixed data which can only be read and not modified during normal operation. It is widely used for storing firmware, lookup tables, and constants in digital systems.

This project demonstrates the design of a 4x4 ROM using Verilog.

4x4 ROM means:

4 words (locations) of memory

Each word stores 4 bits of data

Address lines = 2 (since 2ⁿ = 4 locations)

Data output = 4 bits

## ⚙️ Working Principle

The ROM is pre-initialized with data at the time of design (hard-coded).

When an address is provided:

The corresponding 4-bit data is fetched from memory.

No write operation is possible, only read.

## 🔑 Key Points

ROM contents are fixed at design time using case statements or an initial block.

It’s a combinational circuit (no clock required).

Useful for implementing small lookup tables, truth tables, or fixed data storage in digital designs.

## Vivado implementation  

![Image](https://github.com/user-attachments/assets/041b2cd6-1966-4498-917b-5fe84705075c)

<img width="1920" height="1200" alt="Image" src="https://github.com/user-attachments/assets/5427fc78-ea9a-4b96-a85f-eb666f40d672" />

<img width="1920" height="1200" alt="Image" src="https://github.com/user-attachments/assets/734ab845-947f-4aff-8c1a-2397254aefcc" />

<img width="1920" height="1200" alt="Image" src="https://github.com/user-attachments/assets/cf3cbac5-967d-4bc6-988d-a180ad9e6878" />

<img width="1920" height="1200" alt="Image" src="https://github.com/user-attachments/assets/fe03d09f-e5fb-43e5-af7f-c6f9ee17cb2d" />

<img width="1920" height="1200" alt="Image" src="https://github.com/user-attachments/assets/e4689abd-2cbe-4677-880d-cde51c3a0fea" />

## Contact Me :

www.linkedin.com/in/
jagadeesh-bathula-246aba300
Vanity URL name

