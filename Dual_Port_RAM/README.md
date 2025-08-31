# 📝 Dual Port RAM – Verilog Design

## 📌 Overview

This project implements a Dual Port RAM using Verilog HDL.
Unlike single-port RAM, a dual-port memory provides two independent access ports, allowing simultaneous read and write operations.

Each port has its own:

Address lines

Data input and output lines

Read/Write control signal

This makes Dual Port RAM useful in parallel and high-speed digital systems, such as video processing, communication buffers, and processor interconnects.

## ⚙️ Features

Two independent ports (A & B)

Parallel read/write access

Supports following operation cases:

Read/Read → Both ports can read simultaneously without conflict

Read/Write → One port writes while the other reads

Write/Write (different locations) → Both ports can write independently

Write/Write (same location) → Conflict may occur (depends on design priority)

## Vivado Implementation :
