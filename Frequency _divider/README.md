# 📘 Design: Frequency Divider (Divide-by-2 & Divide-by-4)



Today’s RTL milestone focuses on one of the most fundamental building blocks in digital systems — the frequency divider.



🛠️ What I built:



 I designed a frequency divider circuit in Verilog that generates:



A divide-by-2 output using a single T flip-flop



A divide-by-4 output by cascading two T flip-flops



Both outputs were verified using behavioral simulation in Vivado, and the waveform confirmed the frequency was correctly scaled down with respect to the input clock.



## ⚙️ How it works:



 Each T flip-flop toggles its output on every rising edge of the clock. By cascading two of them:



First stage → clk/2



Second stage → clk/4

![Image](https://github.com/user-attachments/assets/4866b6c8-4275-480c-8747-ff90e8bd52fa)

![Image](https://github.com/user-attachments/assets/bb21765a-eec5-4e81-8931-9d3838b51f85)

<img width="1920" height="1200" alt="Image" src="https://github.com/user-attachments/assets/d1aa09c3-a51f-4c4a-b1ec-7baa60e96854" />

<img width="1920" height="1200" alt="Image" src="https://github.com/user-attachments/assets/e84efc03-f4cd-47a1-aae8-3be613ba7ff7" />

<img width="1920" height="1200" alt="Image" src="https://github.com/user-attachments/assets/ccd50ea5-cb76-4e6e-a2ea-cea1c68945ed" />

<img width="1920" height="1200" alt="Image" src="https://github.com/user-attachments/assets/f93b10f2-8c3c-4081-8a87-270184b461a0" />

<img width="1920" height="1200" alt="Image" src="https://github.com/user-attachments/assets/de3414b4-9f6d-4f68-8954-1e4883571140" />

<img width="1920" height="1200" alt="Image" src="https://github.com/user-attachments/assets/874fbd0b-d10c-49a1-9c33-b7e33ffa69eb" />


## 📌 Applications of Frequency Dividers:



Clock division in synchronous digital systems



Generating slower timing signals for sequential logic



Baud rate generation in UART communication



Watch and timer circuits



Phase-locked loops (PLLs) for clock synchronization



Pulse width modulation (PWM) timing control



💡 This task reinforced the importance of clock control and sequential behavior in digital design—especially in low-frequency timing-critical applications.



📷 [Include waveform screenshot here if desired]


