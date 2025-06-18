# Excavator 2-Link Manipulator Simulation

본 프로젝트는 실제 두산 DX140W-5 굴삭기의 붐(Boom)과 암(Arm)을 2링크 매니퓰레이터로 단순화하여, MATLAB 및 Simulink를 활용해 동역학, 제어, 구조 해석까지 수행한 시뮬레이션입니다.

---

## 📁 파일 구조 및 역할

| 파일명                  | 설명                                                                                  |
|------------------------|--------------------------------------------------------------------------------------|
| **Excavator_Settings.m**    | 시뮬레이션을 위한 환경 및 변수(링크 길이, 질량 등) 설정, 그래프 환경 구축              |
| **Plot_Excavator.m**        | 시뮬레이션 중 붐과 암의 위치를 실시간으로 그래프로 표시                                |
| **Excavator_Simulation.m**  | 굴삭기의 붐과 암 이동 경로 시뮬레이션, PD 제어 성능 그래프 출력                        |
| **Excavator_Control.slx**   | Simulink 모델: 역기구학, 동역학, PD 제어, 순기구학을 모두 포함, 각 관절의 토크/각도 계산 |

---

## 🛠️ 구현 내용

- **굴삭기 모델링:** 실제 굴삭기 제원을 바탕으로 2링크 매니퓰레이터로 단순화
- **기구학/동역학 해석:** 순기구학, 역기구학, 라그랑주 방정식 기반 동역학 모델링
- **제어기 설계:** PD 제어기를 적용하여 목표 경로를 정확히 추종
- **시뮬레이션:** MATLAB에서 경로 그래프, Simulink에서 각 관절의 위치/속도/가속도/토크 시계열 출력
- **실시간 시각화:** Plot_Excavator.m을 통해 붐과 암의 움직임을 실시간으로 확인
- **성능 분석:** PD 제어 전후의 진동 및 경로 추종 성능 비교 그래프 제공
- **구조 해석 연계:** Simulink에서 산출한 토크/각도 데이터를 기반으로 구조 해석(COMSOL)까지 확장 가능

---

## ▶️ 실행 방법

1. MATLAB에서 `Excavator_Settings.m` 실행하여 환경 및 변수 세팅
2. Simulink에서 `Excavator_Control.slx` 실행 (또는 MATLAB에서 `open('Excavator_Control.slx')`)
3. `Excavator_Simulation.m` 실행하여 전체 시뮬레이션 및 성능 분석 그래프 확인
4. 시뮬레이션 중 `Plot_Excavator.m`이 자동 호출되어 실시간 그래프 표시

---

## 💡 주요 특징

- 실제 굴삭기 제원을 반영한 2링크 로봇팔 시뮬레이션
- MATLAB/Simulink 기반 동역학 및 제어기 설계
- 실시간 시각화 및 성능 분석
- 구조 해석(COMSOL)과의 연계 가능성

---

## 참고

- 두산 DX140W-5 제원 (https://blog.naver.com/PostView.nhn?blogId=cetec16&logNo=221088986488)
- [참고한 GitHub: Two-Link-Robot-Control] (https://github.com/AminPmi/Two-Link-Robot-Control)

