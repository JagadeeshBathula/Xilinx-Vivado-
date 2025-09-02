# 📌 Stack (LIFO) – Verilog Implementation

## 🔹 Introduction

A Stack is a fundamental data structure that operates on the LIFO (Last In, First Out) principle.

This means that the last element pushed into the stack is the first one to be popped out.
It is widely used in compilers, operating systems, function call management, undo/redo operations, and expression evaluation.

## 🔹 Features of This Design

Parameterized Design → Data width and depth are configurable.

Push Operation → Inserts an element at the top of the stack.

Pop Operation → Removes the most recent element from the stack.

Stack Pointer (SP) → Tracks the current top position.

Full/Empty Flags → Prevent overflow and underflow conditions.

Synthesizable RTL → Suitable for FPGA/ASIC implementation.

## 🔹 Working Principle

Push:

Store input data at the current stack pointer location.

Increment stack pointer.

Pop:

Decrement stack pointer.

Output data from the updated top location.

Full Condition:

When sp == DEPTH.

Empty Condition:

When sp == 0.

## Vivado Implementation:

<img width="1920" height="1200" alt="Image" src="https://github.com/user-attachments/assets/516e3e03-fcb5-4065-b535-7ed9d57c569f" />

<img width="1920" height="1200" alt="Image" src="https://github.com/user-attachments/assets/c465a311-344f-425a-99e5-e55cbaeb1c1f" />

<img width="1920" height="1200" alt="Image" src="https://github.com/user-attachments/assets/75a6c8d3-ba6c-41b3-8807-fe5a46332f82" />

<img width="1920" height="1200" alt="Image" src="https://github.com/user-attachments/assets/6569c35d-7f78-40c6-bb07-642e6a04bb7f" />

## 🔹 Applications

Function call management (Call Stack in CPUs)

Undo/Redo in text editors

Expression evaluation (infix → postfix → prefix)

Backtracking algorithms (DFS, maze solving)

## Contact me  : 
http://www.linkedin.com/in/

