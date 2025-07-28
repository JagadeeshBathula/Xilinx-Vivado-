#v🔄 Master-Slave D Flip-Flop


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

## ⛓️ Truth Table:

| Clock Edge |	D |	Q (Next) |
| Rising	| 0  |	0 |
| Rising	| 1 | 	1 |

## 🛠️ Applications:

✅ Data Storage: Used as 1-bit memory element in registers.

🧠 Synchronous Circuits: Ensures changes only occur on clock edges, preventing timing issues.

⏱️ Counters & Shift Registers: Forms the building block of flip-flop based counters and serial data processing.

🛡️ Debouncing Circuits: Used in digital filters to eliminate mechanical switch bouncing.

🔐 Control Systems: For controlling states in finite state machines (FSMs).

🕰️ Pipelining: In processors and DSPs, master-slave flip-flops are used in pipeline stages.


