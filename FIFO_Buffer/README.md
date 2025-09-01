# FIFO BUFFER 

## 🔎 Explanation

A FIFO (First-In First-Out) buffer is a memory element that stores data in the order it arrives and outputs it in the same order. It behaves like a queue – the first data written is always the first to be read.

## The design uses:

Write Pointer (w_ptr): Points to the memory location where the next data will be written.

Read Pointer (r_ptr): Points to the memory location from which the next data will be read.

Full Flag: Goes high when the buffer is completely filled and no further write is possible.

Empty Flag: Goes high when the buffer has no data left to read.

Counter (optional): Keeps track of the number of elements currently in the buffer.

## Working principle:

On every clock cycle, if wr_en = 1, new data is stored at the position indicated by w_ptr, and then w_ptr is incremented.

If rd_en = 1, data is read out from the position indicated by r_ptr, and then r_ptr is incremented.

The circular nature of the buffer is maintained by wrapping the pointers back to 0 when they reach the maximum depth.

full and empty signals ensure safe operation, avoiding overflow (writing when full) or underflow (reading when empty).

This structure makes FIFOs ideal for data buffering between fast and slow modules, or in asynchronous systems where producer and consumer operate at different rates.

## Viavado Implementation :

<img width="1920" height="1200" alt="Image" src="https://github.com/user-attachments/assets/94f204c2-3b40-48b3-bdd5-f016ff933840" />

<img width="1920" height="1200" alt="Image" src="https://github.com/user-attachments/assets/62a000d6-ca5f-44f3-9c78-f76751a9c097" />

<img width="1920" height="1200" alt="Image" src="https://github.com/user-attachments/assets/9e8b3f30-e175-44e4-8241-a27059d6f982" />

<img width="1920" height="1200" alt="Image" src="https://github.com/user-attachments/assets/a78dca00-b5d7-48df-b690-bec54615f4e6" />

<img width="1920" height="1200" alt="Image" src="https://github.com/user-attachments/assets/21918a63-5f2d-463e-b86e-d779b5c89a23" />

## Contact me :
www.linkedin.com/in/
jagadeesh-bathula-246aba300
Vanity URL name
