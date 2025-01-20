clear; clc;

%% Excavator Configurtion
Excavator_Settings;

%% Run Simulation
SimOut = sim('Excavator_Control'); %Run Simulink 

figure(1);
Setting Video File
video = VideoWriter('5.5m.mp4', 'MPEG-4'); 
video.FrameRate = 30; 
open(video);

% Simulation Loop
for S = 1 : 1 : size(SimOut,1)  
    % Joint 1 Values
    Excavator.X1 = X1_out.signals.values(S);
    Excavator.Y1 = Y1_out.signals.values(S);

    % Joint 2 Values
    Excavator.X2 = X2_out.signals.values(S);
    Excavator.Y2 = Y2_out.signals.values(S);

    % Excavator Plot    
    Plot_Excavator

    % Plot path
    plot(X2_out.signals.values(S),Y2_out.signals.values(S),'r.');
    plot(X_input.signals.values,Y_input.signals.values,'--b');
    pause(.001)

    % Save Frame
    frame = getframe(gcf);
    writeVideo(video, frame); 
end

close(video); 

%% Plot Data (Comparison Input & Output Signal Value)
figure(2)
subplot(2,2,1);
plot(q_input1.time,rad2deg(q_out1.signals.values),'k',q_input1.time,rad2deg(q_input1.signals.values),'--b','linewidth',1.2)
title('q1 Input & Output');
xlabel('Time(s)');
ylabel(' \theta (Deg)');
axis([0 10 -100 150]);
legend('q1 Output','q1 Input');
grid on

subplot(2,2,2);
plot(q_input2.time,rad2deg(q_out2.signals.values),'k',q_input2.time,rad2deg(q_input2.signals.values),'--b','linewidth',1.2)
title('q2 Input & Output');
xlabel('Time(s)');
ylabel(' \theta (Deg)');
axis([0 10 -150 150]);
legend('q2 Output','q2 Input');
grid on

subplot(2,2,3);
plot(X2_out.time,X2_out.signals.values,'k',X2_out.time,X_input.signals.values,'--b','linewidth',1.2)
title(' X(end point) Input & Output');
xlabel('Time(s)');
ylabel(' X (m)');
axis([0 10 -7 7]);
legend('X output','X input');
grid on

subplot(2,2,4);
plot(Y2_out.time,Y2_out.signals.values,'k',X2_out.time,Y_input.signals.values,'--b','linewidth',1.2)
title(' Y(end point) Input & Output');
xlabel('Time(s)');
ylabel(' Y (m)');
axis([0 10 -7 7]);
legend('Y output','Y input');
grid on