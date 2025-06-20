# Excavator Boom & Arm Analysis Project

This project simplifies the boom and arm of the Doosan DX140W-5 excavator into a 2-link manipulator, performing integrated engineering simulations including **dynamic analysis**, **controller design**, and **structural safety evaluation** using MATLAB, Simulink, and COMSOL Multiphysics.

---

## Project Overview

- **Reference Model:** Doosan DX140W-5 Excavator  
  - Boom: 4.4m, 1500kg  
  - Arm: 2.2m, 700kg

- **Key Objectives:**  
  1. Kinematic/dynamic analysis of simplified 2-link robotic arm  
  2. Path tracking and PD control performance evaluation using MATLAB/Simulink  
  3. Structural safety analysis in COMSOL based on joint torque/angle data

---

## Simulation and Analysis Workflow

1. **MATLAB/Simulink**  
   - Designed forward/inverse kinematics and Lagrangian dynamics equations  
   - Implemented PD controller for vibration suppression and path tracking  
   - Real-time visualization of joint angles/torques and bucket trajectory  

2. **COMSOL Multiphysics**  
   - Imported CATIA-assembled 3D model of boom/arm structure  
   - Applied time-varying joint torques/angles from MATLAB/Simulink  
   - Conducted FEM analysis for Von Mises stress distribution  

---

## Results: Acute/Right/Obtuse Angle Comparisons

### MATLAB/Simulink Animation (Joint Angle Variations)
| Joint Angle State | Description          | GIF File (main branch)     |
|-------------------|----------------------|----------------------------|
| Acute (3m)        | Short moment arm     | ![Acute](3m.gif)           |
| Right (90°)       | Medium moment arm    | ![Right](90degrees.gif)    |
| Obtuse (5.5m)     | Longest moment arm   | ![Obtuse](5.5m.gif)        |

---

### Simulink Torque Analysis
![Torque Characteristics](Torque.png)

---

### COMSOL Stress Distribution
![Von Mises Stress](Von_Mises_Stress_Graphs.png)

---

## Key Findings

- **Torque-Stress Correlation:** 24.5% higher stress at obtuse angles vs right angles  
- **Structural Weakness:** Maximum stress concentration at joint connections (53.15 MPa)  
- **Integrated Workflow:** Demonstrated cross-platform simulation from dynamics to structural analysis  

---

## References

- [Doosan DX140W-5 Specifications](https://blog.naver.com/PostView.nhn?blogId=cetec16&logNo=221088986488)  
- [Reference GitHub: Two-Link-Robot-Control](https://github.com/AminPmi/Two-Link-Robot-Control)

---

## 👥 Team

- Gyeonngmin Jang, Jonguk Baek(같이 한 사람)
