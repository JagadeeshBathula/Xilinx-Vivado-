# Baby Monitor System 


This project implements a Baby Monitoring System in RTL (Verilog).
The design continuously monitors heartbeat, temperature, and motion sensor values, stores them in a shared SRAM buffer, and raises alerts if values cross safe thresholds.

It demonstrates modular RTL design, priority-based arbitration, threshold-based alerts, and memory buffering — all critical in real-world IoT and health-monitoring devices.

## 🏗️ Design Architecture

The top module is baby_monitor_top.v. It connects three main components:

1. Sensor Interfaces

Each sensor (heartbeat, temperature, motion) is connected to a sensor_interface.

When a new sensor value is valid, it triggers a write enable signal and forwards the data for storage.

## 2. Shared SRAM Buffer

A small 8x9 SRAM is used as a circular buffer to store sensor readings.

Arbitration is done with a priority scheme:

Heartbeat > Temperature > Motion.

The most recent data is always available on the output.

## 3. Threshold Alert Logic

Thresholds are defined as parameters:

Heartbeat > 120 bpm → alert

Temperature > 100 units → alert

Motion ≥ 1 → alert

Each alert is asserted high when the threshold is crossed.

## Vivado Implementation  :

<img width="1920" height="1200" alt="Screenshot (981)" src="https://github.com/user-attachments/assets/aab3970e-459a-47b8-8c1b-08b06f90ca56" />

<img width="1920" height="1200" alt="Screenshot (982)" src="https://github.com/user-attachments/assets/cd053223-0671-4aab-b58c-83a0396aca4f" />

<img width="1920" height="1200" alt="Screenshot (985)" src="https://github.com/user-attachments/assets/626e7514-4909-4d8d-9d04-b580eaaf114a" />

<img width="1920" height="1200" alt="Screenshot (986)" src="https://github.com/user-attachments/assets/ce64d9d6-f95e-433a-aa80-e462f7713fd0" />

<img width="1920" height="1200" alt="Screenshot (987)" src="https://github.com/user-attachments/assets/d0eba466-7c37-42d7-9e6e-cad0350dc107" />

<img width="1920" height="1200" alt="Screenshot (978)" src="https://github.com/user-attachments/assets/2c98d129-c82c-4e01-a58b-37f7c261b010" />

<img width="1920" height="1200" alt="Screenshot (979)" src="https://github.com/user-attachments/assets/5f7f58e0-2d6c-4d18-ab17-d5e5316bc68a" />

<img width="1920" height="1200" alt="Screenshot (980)" src="https://github.com/user-attachments/assets/d6c2300e-41a9-4048-9a52-47dd95886f9e" />

<img width="1920" height="1200" alt="Screenshot (988)" src="https://github.com/user-attachments/assets/abaf6865-5eee-4c6d-bae2-4eb9be0b42bb" />

<img width="1920" height="1200" alt="Screenshot (990)" src="https://github.com/user-attachments/assets/8ce33083-7b43-4ce3-8d90-3843b75242cc" />

<img width="1920" height="1200" alt="Screenshot (989)" src="https://github.com/user-attachments/assets/6e9f4326-13d3-43c1-88f6-3e59d53ca570" />

<img width="1920" height="1200" alt="Screenshot (977)" src="https://github.com/user-attachments/assets/b904a31a-e643-41a0-a096-9508969880c9" />


## 🔧 Key Features

✅ Modular design: separate blocks for sensors, SRAM, and alert logic.

✅ Priority-based arbitration for simultaneous sensor data.

✅ Configurable thresholds via Verilog parameters.

✅ Circular buffer implementation for data logging.

✅ Alert signals for real-time monitoring.

## Contact Me : 
www.linkedin.com/in/
jagadeesh-bathula-246aba300
Vanity URL name
