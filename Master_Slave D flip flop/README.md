# 🔄 Master-Slave D Flip-Flop


A Master-Slave D Flip-Flop is a sequential circuit built using two D latches connected in series:

Master latch: Controlled by the clock (clk) signal directly.

Slave latch: Controlled by the inverted clock (~clk).

This configuration ensures edge-triggered behavior (typically positive edge-triggered) — the output changes only on a specific clock edge (rising or falling).

## 🔧 Working:

Clock = 0 →

Master latch is enabled.

Slave latch is disabled.

Master captures the input D.

Clock transitions from 0 to 1 (rising edge) →

Master is disabled.

Slave is enabled.

Slave outputs the value held by Master.

🔁 Thus, the output Q only updates on the clock edge, making it immune to input glitches during the rest of the clock cycle.

![Image](https://github.com/user-attachments/assets/886a22c8-bea1-4c97-83aa-1acf3654ffe7)

![Image](https://github.com/user-attachments/assets/0ad5d463-dbb5-4c9f-83a5-ab5c01a82342)

![Image](https://github.com/user-attachments/assets/936f7e04-0e6a-4fc2-b594-937a672388d2)

![Image](https://github.com/user-attachments/assets/be5d1d66-291b-4def-bf15-7f46a30cfd55)

![Image](https://github.com/user-attachments/assets/27b5ee29-a6ab-40ff-9645-d801dee4bb5e)

![Image](https://github.com/user-attachments/assets/6d9bb13e-89e1-4714-8696-692fc2797ad8)

![Image](https://github.com/user-attachments/assets/129b5e9c-6e2b-4e58-a66f-9faadafaad22)

![Image](https://github.com/user-attachments/assets/dedd6e2a-22e2-44b6-896e-962dc821644c)

![Image](https://github.com/user-attachments/assets/5ffe219e-7253-4e22-8e33-ccc57d403ac2)

## ⛓️ Truth Table:

| Clock Edge  |	D  |	Q (Next) |
|-------------|----|-----------|
| Rising    	| 0  |	0        |
| Rising	    | 1  | 	1        |

## 🛠️ Applications:

✅ Data Storage: Used as 1-bit memory element in registers.

🧠 Synchronous Circuits: Ensures changes only occur on clock edges, preventing timing issues.

⏱️ Counters & Shift Registers: Forms the building block of flip-flop based counters and serial data processing.

🛡️ Debouncing Circuits: Used in digital filters to eliminate mechanical switch bouncing.

🔐 Control Systems: For controlling states in finite state machines (FSMs).

🕰️ Pipelining: In processors and DSPs, master-slave flip-flops are used in pipeline stages.


