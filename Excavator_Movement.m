clear; clc;

%% Link Parameters
l1 = 4.4; 
l2 = 2.1;
x0 = 0; y0 = 0;
r = sqrt(l1^2+l2^2); 

%% First Inverse Kinematics Method
figure(1);
hold on;
axis([-8 8 -8 8]);
axis('square');
title('Arm Movement');
xlabel('X (m)');
ylabel('Y (m)');

% Circular Trajectory
theta_values = -pi/2:(pi/2)/5:pi/2; 

for i = theta_values
    % Trajectory
    xd = r * cos(i) + x0;
    yd = r * sin(i) + y0;

    % Inverse Kinematics
    C = (xd^2 + yd^2 - l1^2 - l2^2) / (2 * l1 * l2);
    D = -sqrt(1 - C^2);
    theta2 = atan2(D, C);

    theta1_part1 = atan2(yd, xd); 
    theta1_part2 = atan2(l2 * sin(theta2), l1 + l2 * cos(theta2)); 
    theta1 = theta1_part1 - theta1_part2;

    % Forward Kinematics
    rrx = l1 * cos(theta1);
    rry = l1 * sin(theta1);
    x = rrx + l2 * cos(theta1 + theta2);
    y = rry + l2 * sin(theta1 + theta2);

    % Excavator Arm Coordinates
    rx = [0, rrx, x];
    ry = [0, rry, y];

    % Plot the Excavator Arm
    plot(rx, ry, 'k-', 'LineWidth', 0.5);
    hold on; % Ensure all plots stay on the figure

    % Plot the desired trajectory
    plot(xd, yd, 'r*', 'LineWidth', 1.5); 
end

grid;
hold off;

%% Second Inverse Kinematics Method (Not in Evacavator)
figure(2);
hold on;
axis([-8 8 -8 8]);
axis('square');
title('Arm Movement');
xlabel('X (m)');
ylabel('Y (m)');

% Circular Trajectory
theta_values = -pi/2:pi/10:pi/2; 

for i = theta_values
    % Trajectory
    xd = r * cos(i) + x0;
    yd = r * sin(i) + y0;

    % Inverse Kinematics
    C = (xd^2 + yd^2 - l1^2 - l2^2) / (2 * l1 * l2);
    D = sqrt(1 - C^2);
    theta2 = atan2(D, C);

    theta1_partial1 = atan2(yd, xd);
    theta1_partial2 = atan2(l2 * sin(theta2), l1 + l2 * cos(theta2)); 
    theta1 = theta1_partial1 - theta1_partial2;

    % Forward Kinematics
    rrx = l1 * cos(theta1);
    rry = l1 * sin(theta1);
    x = rrx + l2 * cos(theta1 + theta2);
    y = rry + l2 * sin(theta1 + theta2);

    % Excavator Arm Coordinates
    rx = [0, rrx, x];
    ry = [0, rry, y];

    % Plot the Excavator Arm
    plot(rx, ry, 'k-', 'LineWidth', 0.5);
    hold on; % Ensure all plots stay on the figure

    % Plot the desired trajectory
    plot(xd, yd, 'r*', 'LineWidth', 1.5); 
end

grid;
hold off;
