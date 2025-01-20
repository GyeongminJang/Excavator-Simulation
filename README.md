# Excavator-Simulation

m file: MATLAB file, slx:Simulink file

1. Excavator_Simulation.m: 굴삭기 제원을 통해 굴삭기의 이동 반경을 하나의 그래프로 보여주는 파일이다.
2. Excavator_Settings.m: 굴삭기의 붐과 암이 이동하는 과정을 시뮬레이션으로 보여주기 위해 필요한 준비물들을 모은 파일이다.
3. Plot_Excavator.m: 
4. Excavator_Simulation.m: 굴삭기의 붐과 암이 이동하는 과정을 시뮬레이션으로 보여주는 과정이다. 이 파일을 실행하면, 실시간으로 붐과 암이 이동하는 모습을 볼 수 있다. 이동이 끝나면 PD제어가 얼마나 잘 이루어졌는지 자세하게 볼 수 있는 그래프가 제공된다.
5. Excavator_Control.slx: 시뮬레이션을 진행할 때, 거치는 Simulink 파일로 붐과 암의 위치를 실시간으로 구해줄 뿐만 아니라, 시간에 따른 각각의 가속도, 속도, 위치, 그리고 토크를 구해줄 수 있다.
