%% Excavator 2D planar
figure(1)
axis equal
axis([-2 8 -8 8]);
grid on
hold on
xlabel('X (m)')
ylabel('Y (m)')
title('Excavator Movement');

% Initial Position Of Joints
Joint_1=[0 0];
Joint_2=[4.4 0];
Joint_3=[4.4 -2.1];

% Excavator Arm Settings
Excavator_arm_1=patch('XData',[Joint_1(1) Joint_2(1)],'YData',[Joint_1(2) Joint_2(2)],'LineWidth',4);
Excavator_arm_2=patch('XData',[Joint_2(1) Joint_3(1)],'YData',[Joint_2(2) Joint_3(2)],'LineWidth',4);
    