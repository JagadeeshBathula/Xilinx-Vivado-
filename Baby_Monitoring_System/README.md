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

## 🔧 Key Features

✅ Modular design: separate blocks for sensors, SRAM, and alert logic.

✅ Priority-based arbitration for simultaneous sensor data.

✅ Configurable thresholds via Verilog parameters.

✅ Circular buffer implementation for data logging.

✅ Alert signals for real-time monitoring.
