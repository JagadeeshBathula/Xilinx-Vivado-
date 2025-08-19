# 🔹 Design: Pattern Detector (Sequence Detector for 1011)

Today’s challenge was about building a Pattern Detector, a digital system that continuously monitors a serial input stream and asserts an output when a specific bit sequence appears.

👉 In this design, I implemented a Finite State Machine (FSM) to detect the sequence “1011”:

Used multiple states (S0–S4) to track partial matches.

Implemented overlapping detection, so the sequence can be recognized even if bits overlap.

The detector asserts a “detected” signal for one clock cycle whenever the pattern is found.

## 🔧 Key Highlights:

Implemented using Verilog HDL.

Designed as a Mealy FSM for faster detection (output depends on state + input).

Verified with a testbench by applying serial bit streams and observing the detection pulse in simulation.

## Vivado Implementation 

![Image](https://github.com/user-attachments/assets/b01eed8f-3460-4abd-b07a-7bb53b5a6991)

![Image](https://github.com/user-attachments/assets/94388f59-1b34-44c2-a9e5-a9474b173e74)

![Image](https://github.com/user-attachments/assets/0e812ad3-80ae-487b-a112-f9aa51747833)

<img width="1920" height="1200" alt="Image" src="https://github.com/user-attachments/assets/7c66660e-bfb7-43a7-8fd1-bdf9a779c494" />

<img width="1920" height="1200" alt="Image" src="https://github.com/user-attachments/assets/941d0107-9b20-4c8a-b39d-10aea74d5ae2" />

<img width="1920" height="1200" alt="Image" src="https://github.com/user-attachments/assets/028e7130-9816-40cf-82cc-76c028039013" />

<img width="1920" height="1200" alt="Image" src="https://github.com/user-attachments/assets/f0d3fa0f-dac0-411a-bb0f-e9dcc89c01b0" />


## 💡 Applications:

Digital communication systems (synchronization & decoding)

Data stream monitoring

Protocol detection and error checking

## Contact me  :  http://www.linkedin.com/in/
