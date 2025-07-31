# Traffic-Light-Controller
This project implements a Verilog-based traffic light controller using an FSM. It cycles through RED, YELLOW, and GREEN states based on a clock-driven timer. A testbench is included to simulate and verify the behavior.

# 🚦 Traffic Light Controller in Verilog

This project implements a **Finite State Machine (FSM)** based Traffic Light Controller using Verilog. The system has three states: **Green**, **Yellow**, and **Red**, each active for a fixed period, simulating real-world traffic signal behavior.

---

## 📌 Description

The traffic light controller transitions through the following sequence:

**Green → Yellow → Red → Green**

- Each light stays active for a set duration controlled by a counter.
- Transitions occur on the positive edge of the clock.
- The system resets to RED on the reset signal.

---

## 🧠 Features

- Designed using FSM principles
- Clock and reset based state transition
- Simulates real-time traffic light cycles
- Includes testbench for verification

---

## 🗂️ File Structure

Traffic-Light-Controller-Verilog/
│
├── traffic_light_controller.v         # Main Verilog module
├── traffic_light_controller_tb.v      # Testbench for simulation
├── README.md                          # Project documentation
├── Images/                            # Visual outputs
│   ├── Schematics.png                   # RTL or Technology schematic screenshots
│   └── Simulation.png                    # Simulation waveform screenshots


