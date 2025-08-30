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


