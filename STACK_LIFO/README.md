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
