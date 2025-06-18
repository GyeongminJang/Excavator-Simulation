# COMSOL Structural Analysis README

This section documents the structural safety evaluation process for the Doosan DX140W-5 excavator's boom and arm using CATIA and COMSOL Multiphysics.

---

## 📁 File Structure

| Filename               | Description                                                  |
|------------------------|-------------------------------------------------------------|
| **Part3.CATPart**      | Boom single part modeled in CATIA                           |
| **Part4.CATPart**      | Arm single part modeled in CATIA                            |
| **Parts.CATProduct**   | Full excavator assembly model (Boom + Arm + Joints)         |
| **Excavator.mph**      | COMSOL Multiphysics project file (Contains Von Mises Stress results) |

---

## 🛠️ Analysis Procedure

### 1. CATIA Modeling
- Created boom (4.4m length) and arm (2.2m length) models based on actual excavator specifications
- Assembled components into complete structure (Parts.CATProduct)

### 2. COMSOL Import & Preprocessing
- Imported CATIA assembly model into COMSOL
- Applied time-dependent boundary conditions using MATLAB/Simulink simulation data (joint angles/torques)

### 3. Boundary Conditions & Loading
- Fixed constraint applied at bucket end
- Time-varying joint torque/angle data mapped as rotational loads
- Maximum operational load conditions considered

### 4. Finite Element (FEM) Analysis
- 2nd order tetrahedral elements with AutoMesh (Level 6)
- Time-dependent study (3.5s-5.8s with 0.1s intervals)
- Von Mises Stress calculation at joint areas for each time step

### 5. Results Visualization
- Tabulated maximum stress values at Joint 1 & 2 over time
- 3D visualization of stress distribution and critical locations

---

## 🔎 Key Findings & Conclusions

- **Stress Concentration at Joints:** Maximum Von Mises Stress observed at boom-arm connection points
- **Torque-Stress Correlation:** Stress patterns closely follow torque variations from MATLAB/Simulink
- **Moment Arm Effect:** 24.5% higher stress at obtuse angles (150°) vs right angles (90°)
- **Safety Factor Evaluation:** Maximum stress of 53.15 MPa at joints meets 1.98 safety factor requirement

---

## 📝 Notes & References

- [Doosan DX140W-5 Specifications](https://blog.naver.com/PostView.nhn?blogId=cetec16&logNo=221088986488)
- **Disclaimer:** This analysis contains simplifications and should be interpreted as engineering simulation results rather than exact real-world measurements. Primary focus is on identifying structural behavior patterns and stress distribution trends.
