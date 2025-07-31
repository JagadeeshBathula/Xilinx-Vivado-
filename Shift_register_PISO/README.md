# 🔄 Shift Register – PISO (Parallel-In Serial-Out)

## 🧠 What is a PISO Shift Register?

A PISO (Parallel-In Serial-Out) shift register is a sequential logic circuit that allows parallel data (multiple bits entered simultaneously) to be shifted out serially (one bit at a time) on each 

clock pulse.

This type of register is useful when we need to send multi-bit data over a single data line, which reduces wiring complexity in communication systems.

## ⚙️ Working Principle

Parallel Load: When the control/load signal is high (1), the register loads multiple bits (e.g., 4-bit input) into its internal flip-flops simultaneously.

Serial Shift: When the control/load signal is low (0), the data is shifted out one bit per clock pulse, starting from the most significant bit (or least, depending on design).

![Image](https://github.com/user-attachments/assets/7ff96998-b3a4-4f80-bf97-878e257ef52e)

![Image](https://github.com/user-attachments/assets/9b506f21-b305-403a-9c47-657c48d2fa6a)

<img width="1920" height="1200" alt="Image" src="https://github.com/user-attachments/assets/2cde662b-c5fd-4435-8cda-dc665332951c" />

<img width="1920" height="1200" alt="Image" src="https://github.com/user-attachments/assets/ba0a6ce7-8c12-4e0f-9f26-d3447458f158" />

<img width="1920" height="1200" alt="Image" src="https://github.com/user-attachments/assets/c4faff8e-2038-4d2a-a14e-facb0c7fa92b" />

<img width="1920" height="1200" alt="Image" src="https://github.com/user-attachments/assets/d4bcf8a5-f332-42b6-b4a3-862b0932f1c6" />

<img width="1920" height="1200" alt="Image" src="https://github.com/user-attachments/assets/f204f94e-fe20-4625-b56f-f41f2b7a0612" />

<img width="1920" height="1200" alt="Image" src="https://github.com/user-attachments/assets/5de8754f-d6c4-4e7c-a076-289206557336" />

<img width="1920" height="1200" alt="Image" src="https://github.com/user-attachments/assets/60daaf3d-515f-48a9-9057-b0c3628d5bf1" />

<img width="1920" height="1200" alt="Image" src="https://github.com/user-attachments/assets/f5acfe22-ec52-4506-af9c-6f700321a950" />
