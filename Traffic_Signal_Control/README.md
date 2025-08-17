
# 💡 Design Project: Traffic Signal Control with Pedestrian Integration

 This project simulates a 4-way intersection that not only manages vehicle traffic but also includes pedestrian crossings for safe road usage.

## 🔹 ✨ Project Highlights

✅ 12-State FSM – Each direction (North, East, South, West) cycles through 3 phases:

Straight Green (10s) – Vehicles move forward.

Right Turn Green (5s) – Dedicated safe right-turn phase.

Yellow (3s) – Warning before red.

✅ Pedestrian Signals (P_N, P_S, P_E, P_W) – Coordinated green/red lights for safe pedestrian crossing.

✅ All outputs default to RED → avoids conflicts at reset.

✅ FSM sequencing ensures fair traffic distribution across all roads.

## 🔹 🛠 Technical Approach

Input signals: clk, reset

Output signals:

Vehicle signals for each road: N, S, E, W

Pedestrian signals: P_N, P_S, P_E, P_W

## Light encoding:

3’b001 = Straight Green

3’b100 = Right-Turn Green

3’b010 = Yellow

3’b011 = Red

Counter-based timing ensures exact duration for green, right, and yellow phases.

## Transition flow:

North → East → South → West → repeat

(Each with: Straight → Right → Yellow)


## 🔹 🌍 Real-World Applications

🚗 Smart City Traffic Management Systems

👣 Pedestrian Safety Integration

🏙️ VLSI/FPGA-based controllers for real-time traffic lights

🤖 Adaptive Traffic Systems – extendable with IoT sensors & AI for vehicle density control

🚑 Emergency Vehicle Priority – future extension for ambulances/fire-trucks

## 🔹 💡 Learning Outcome

This project gave me hands-on practice in:

Designing FSM-based sequential logic

Implementing multi-phase traffic light cycles

Handling parallel vehicle + pedestrian signals without conflicts

Thinking about real-world constraints in digital design

✨ This design shows how digital design principles can directly model urban traffic control problems. Another step ahead in my journey of mastering RTL design.

# Vivado Implementation  

<img width="1920" height="1200" alt="Image" src="https://github.com/user-attachments/assets/574b38fc-1b62-486c-a64f-4f59db2168f9" />

<img width="1920" height="1200" alt="Image" src="https://github.com/user-attachments/assets/aaa6a9e9-c2ec-4956-be12-8ae4ca9a8858" />

<img width="1920" height="1200" alt="Image" src="https://github.com/user-attachments/assets/ab7d579d-a8a6-4fa5-a6d6-17469f31d7e9" />

<img width="1920" height="1200" alt="Image" src="https://github.com/user-attachments/assets/6b76f738-8830-4c95-8fcd-825f392e511a" />

<img width="1920" height="1200" alt="Image" src="https://github.com/user-attachments/assets/7b9eeb7c-4b4e-4c38-a66b-4f77567f69a1" />

<img width="1920" height="1200" alt="Image" src="https://github.com/user-attachments/assets/16c95e67-848e-418b-9fb5-202f0adce5ad" />
