# 🔄 T Flip-Flop (Toggle Flip-Flop):

## ✅ 1. What is a T Flip-Flop?

A T (Toggle) Flip-Flop is a type of flip-flop that toggles its output when the input T is 1, and retains its previous state when T is 0.

It is edge-triggered, meaning the change in output happens only on the triggering edge of the clock (usually the rising edge).

## 🔧 2. Working Principle:

 | T |	Clock Edge |	Output (Q_next) |
 |---|-------------|------------------|
 | 0 |	↑          |	No change       |
 | 1 |	↑          |	Toggle Q        |

If T = 0 → No change in output (Q holds previous value)

If T = 1 → Output toggles (Q becomes ~Q)

Internally, a T Flip-Flop can be built using a JK flip-flop with both J and K inputs tied together, or using a D Flip-Flop by connecting:

D = T ⊕ Q

## 🧪 3. Truth Table:

| T |	Q (previous) |	Q (next) |
|---|--------------|-----------|
| 0 | 	0          | 	0        |
| 0 | 	1          |	1        |
| 1 |  	  0        |	1        |
| 1 |	1            |	0        | 

## ⏱️ 4. Timing Diagram:

In a timing diagram:

When T = 1 at clock rising edge → Q toggles.

When T = 0 → Q remains unchanged.

![Image](https://github.com/user-attachments/assets/40b298d6-d6ad-45d7-a608-70ccd8e9c79c)

![Image](https://github.com/user-attachments/assets/b6fd92ac-8d33-4b30-ae5d-c7eb49c887a3)

![Image](https://github.com/user-attachments/assets/6ede872d-5482-493d-bc7d-75bb35cf4998)



![Image](https://github.com/user-attachments/assets/b6147c70-e144-429b-b540-2c7502865c95)

![Image](https://github.com/user-attachments/assets/d5bd0093-cfac-4c22-892b-5618b1440e6d)

![Image](https://github.com/user-attachments/assets/3311a889-6226-4e5f-8e5e-0037846950d1)

![Image](https://github.com/user-attachments/assets/008aff54-415f-4339-a202-593bea3eb7a6)




## 🛠️ 5. Applications of T Flip-Flop:

🧮 Counters (Binary / Ripple Counters)

T Flip-Flops are the foundation for binary counters, especially in asynchronous and synchronous counter designs.

⏲️ Frequency Division

A single T flip-flop acts as a divide-by-2 frequency divider.

Two T flip-flops connected in series divide by 4, and so on.

🔁 Toggle Operations

Used in toggle switches or toggle control signals in digital systems.

🎛️ State Machines

Useful in simple FSMs where toggling between two states is required.

🔋 Debouncing & Control Circuits

Helps clean noisy signals and stabilize digital toggles.

🎚️ Digital Oscillators

Used in pulse generation and timing applications.

