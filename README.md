# Excavator 2-Link Manipulator Simulation

This project simplifies the boom and arm of a real Doosan DX140W-5 excavator into a 2-link manipulator, and performs dynamic analysis, control, and structural evaluation using MATLAB and Simulink.

---

## 📁 File Structure & Roles

| Filename                   | Description                                                                                  |
|----------------------------|---------------------------------------------------------------------------------------------|
| **Excavator_Settings.m**   | Sets up simulation environment and variables (link length, mass, etc.), configures graphs   |
| **Plot_Excavator.m**       | Real-time plotting of boom and arm positions during simulation                              |
| **Excavator_Simulation.m** | Simulates boom and arm movement paths, outputs PD control performance graphs                |
| **Excavator_Control.slx**  | Simulink model: includes inverse kinematics, dynamics, PD control, forward kinematics; calculates joint torques/angles |

---

## 🛠️ Implementation Details

- **Excavator Modeling:** Simplified as a 2-link manipulator based on actual excavator specifications
- **Kinematics/Dynamics Analysis:** Forward/inverse kinematics, Lagrangian-based dynamic modeling
- **Controller Design:** PD controller for accurate trajectory tracking
- **Simulation:** Path graphs in MATLAB, time-series output of joint position/velocity/acceleration/torque in Simulink
- **Real-Time Visualization:** Real-time movement of boom and arm via Plot_Excavator.m
- **Performance Analysis:** Comparison graphs of vibration and trajectory tracking before and after PD control
- **Structural Analysis Integration:** Joint torque/angle data from Simulink can be used for further structural analysis (COMSOL)

---

## ▶️ How to Run

1. Run `Excavator_Settings.m` in MATLAB to set up environment and variables
2. Open and run `Excavator_Control.slx` in Simulink (or use `open('Excavator_Control.slx')` in MATLAB)
3. Run `Excavator_Simulation.m` to perform the full simulation and view performance analysis graphs
4. During simulation, `Plot_Excavator.m` is automatically called to display real-time plots

---

## 💡 Key Features

- 2-link robot arm simulation reflecting actual excavator specifications
- Dynamic and controller design based on MATLAB/Simulink
- Real-time visualization and performance analysis
- Extendable to structural analysis (COMSOL) using Simulink output data

---

## References

- [Doosan DX140W-5 Specifications](https://blog.naver.com/PostView.nhn?blogId=cetec16&logNo=221088986488)
- [Reference GitHub: Two-Link-Robot-Control](https://github.com/AminPmi/Two-Link-Robot-Control)
