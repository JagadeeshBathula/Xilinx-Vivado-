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


## 📌 Applications of Frequency Dividers:



Clock division in synchronous digital systems



Generating slower timing signals for sequential logic



Baud rate generation in UART communication



Watch and timer circuits



Phase-locked loops (PLLs) for clock synchronization



Pulse width modulation (PWM) timing control



💡 This task reinforced the importance of clock control and sequential behavior in digital design—especially in low-frequency timing-critical applications.



📷 [Include waveform screenshot here if desired]


