# Content Addressable Memory (CAM) – Verilog RTL Design

## 📌 Overview

This project implements a Content Addressable Memory (CAM) in Verilog.
Unlike conventional RAM, which retrieves data using an address, CAM retrieves the address by searching the data content.

### In other words:

RAM: Input = Address → Output = Data

CAM: Input = Data → Output = Address (if match found)

This makes CAM highly suitable for applications requiring fast parallel searching.

## ⚙️ Features of the Design

4x4 CAM array (4 words of 4-bit data each)

Write operation to store data at a given address

Search operation for a given word

### Outputs:

match → indicates if search word is present

match_addr → returns the address of the matched word

## 🧩 Applications

High-speed IP routing tables in networking

Cache memory lookups

Pattern recognition and matching

Associative memory in AI accelerators
