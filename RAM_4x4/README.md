# 4x4 RAM – Verilog Implementation

This project implements a 4x4 Random Access Memory (RAM) in Verilog. The design supports both read and write operations controlled by an enable and a read/write signal.

## Design Details

Memory Array: reg [3:0] mem [3:0];

4 memory locations (address size = 2 bits).

Each location stores 4-bit data.

## Inputs:

clk : Clock signal (synchronous write).

data_in [3:0] : 4-bit input data.

address [1:0] : 2-bit address to select memory location.

R_W : Control signal (1 → Write, 0 → Read).

en : Enable signal.

## Output:

data_out [3:0] : Data read from the memory location.

Operation

Write:

On the positive clock edge, if en=1 and R_W=1, the data_in value is written to mem[address].

Read:

If en=1 and R_W=0, data_out reflects the content of mem[address].

Idle / Disabled:

If en=0, data_out is set to 0.

Prevents invalid or undefined outputs.



![Image](https://github.com/user-attachments/assets/12011efc-ee96-404f-8768-93548472576f)

<img width="1920" height="1200" alt="Image" src="https://github.com/user-attachments/assets/0ee7b538-00f6-440f-b21b-e8f18ab99834" />

<img width="1920" height="1200" alt="Image" src="https://github.com/user-attachments/assets/b1be1319-9b2b-4d39-ba0b-bb9cb59fdefb" />

<img width="1920" height="1200" alt="Image" src="https://github.com/user-attachments/assets/38714999-cbd0-4e8c-a7eb-e5f4452d1cd6" />

<img width="1920" height="1200" alt="Image" src="https://github.com/user-attachments/assets/b1b30a60-b75d-4ffc-9c65-39f9856a7b96" />

<img width="1920" height="1200" alt="Image" src="https://github.com/user-attachments/assets/f7e3d224-a9d7-4e5d-b879-1b49abb1e2e1" /> 

## Applications

Serves as a basic memory block for larger designs.

Can be scaled up to build SRAM modules.

Useful for testbench practice in RTL design and verification.

## Contact me  : 

http://www.linkedin.com/in/
