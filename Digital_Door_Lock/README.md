# Digital Door Lock 🔐

This project implements a Digital Door Lock system in Verilog using a Finite State Machine (FSM). The lock opens only when the correct password is entered.

## 📌 Features

Password length: 4 bits (predefined as 1010)

Serial password entry (bit-by-bit input)

Unlock signal when the correct password is entered

Error alert when an incorrect sequence is entered

FSM-based design with 5 states (S0–S4)

Reset logic to reinitialize the system

## 🖥️ Design Details

FSM States:

S0 → Idle / Wait for input

S1–S3 → Capture each bit

S4 → Validate password

Register: A 4-bit shift register stores the entered password serially.

## Validation:

If input = 1010 → unlock_door = 1

Else → Error = 1

## Vivado Implementation  : 


![Image](https://github.com/user-attachments/assets/f33c40a1-bc27-434c-908e-bf0ab15ef435)

![Image](https://github.com/user-attachments/assets/32d5ae59-8598-4edd-b4cd-6fdcda2d4f1b)

<img width="1920" height="1200" alt="Image" src="https://github.com/user-attachments/assets/e06f53d4-db32-474e-b18e-2e6ba784527b" />

<img width="1920" height="1200" alt="Image" src="https://github.com/user-attachments/assets/e514134d-33aa-435b-b980-ffed56f851c0" />

<img width="1920" height="1200" alt="Image" src="https://github.com/user-attachments/assets/7e73d2dd-d330-4336-9148-698af8358f0e" />

<img width="1920" height="1200" alt="Image" src="https://github.com/user-attachments/assets/995286be-8574-45cc-96ad-c6ba202261ff" />

<img width="1920" height="1200" alt="Image" src="https://github.com/user-attachments/assets/02c88b60-fbd1-4db7-a1c5-c1a1bf5d8069" />


## Contact Me :  www.linkedin.com/in/
jagadeesh-bathula-246aba300
Vanity URL name
