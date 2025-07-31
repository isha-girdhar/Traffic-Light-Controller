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
<img width="1499" height="652" alt="schematics" src="https://github.com/user-attachments/assets/690d032a-e076-46d9-ba9f-67ce0212b635" />

### 📷 Simulation Waveform
<img width="1489" height="578" alt="simulation" src="https://github.com/user-attachments/assets/87c82da9-e7d3-4db5-b389-94311fb02a39" />

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



