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

## 📁 Project Structure

Traffic-Light-Controller-Verilog/
├── traffic_light_controller.v       # Main Verilog module
├── traffic_light_controller_tb.v    # Testbench for simulation
├── Images/
│   ├── Schematics.png       # RTL schematic of the controller
│   └── Simulation.png    # Simulation waveform output
├── README.md                        # Project documentation
└── LICENSE                          # MIT License


---

## 📦 Module Overview

### 🔧 `traffic_light_controller.v`

- **Inputs**: `clk`, `reset`
- **Outputs**: `red`, `yellow`, `green` (active-high signals)
- **Parameters**: Defines state values (GREEN = 00, YELLOW = 01, RED = 10)

### 📐 `traffic_light_controller_tb.v`

- Initializes clock and reset
- Instantiates the controller
- Runs simulation for a specific duration

---

## ▶️ Simulation

### 📷 RTL Schematic
<img width="1495" height="641" alt="Schematics" src="https://github.com/user-attachments/assets/b178b1a6-0b6c-4df0-90d6-01a3cb8d4dc2" />

### 📷 Simulation Waveform
<img width="1487" height="633" alt="Simulation" src="https://github.com/user-attachments/assets/993f3694-8b35-47dd-81f8-4df449a525fe" />

---

## 💻 Requirements

- Verilog Simulation Tool (Vivado / ModelSim / etc.)
- Basic understanding of FSMs and digital design

---

## 🚀 How to Run

1. Clone this repository:
   ```bash
   git clone https://github.com/isha-girdhar/Traffic-Light-Controller-Verilog.git
2.Open in your preferred Verilog simulator (e.g., Vivado).

3.Add both traffic_light_controller.v and traffic_light_controller_tb.v.

4.Run the behavioral simulation.

5.Observe waveform transitions for red, yellow, and green.

## 📝 License

This project is licensed under the [MIT License](./LICENSE).

## 👩‍💻 Author

**Isha Rani**




