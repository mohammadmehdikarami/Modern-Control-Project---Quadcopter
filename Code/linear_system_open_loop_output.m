% Constants
g = 9.81;
i_x = 4.85e-3;

% Define the state-space matrices A, B, C, D
A = [0 0 0 0 0 -g;
     0 0 0 0 0 0;
     0 0 0 0 0 0;
     1 0 0 0 0 0;
     0 1 0 0 0 0;
     0 0 1 0 0 0];

B = [0 0;
     1 0;
     0 1/i_x;
     0 0;
     0 0;
     0 0];

C = [0 0 0 0 1 0;
     0 0 0 1 0 0];

D = [0 0;
     0 0];

% Create the state-space system
sys = ss(A, B, C, D);

% Time vector
t = 0:0.02:10; % Simulation time from 0 to 10 seconds

% Define input signals
u1_in = [ones(size(t)); % Step input for u1
         zeros(size(t))]; % Zero input for u2

u2_in = [zeros(size(t)); % Zero input for u1
         ones(size(t))]; % Step input for u2

% Simulate the system's response to each input
[y_out_1, ~, ~] = lsim(sys, u1_in, t); % Output response to input u1_in
[y_out_2, ~, ~] = lsim(sys, u2_in, t); % Output response to input u2_in

% Plotting
figure;

% Plot for input signals
subplot(2, 2, 1);
plot(t, u1_in(1,:), 'b', 'LineWidth', 1.5); % Plot u1
hold on;
plot(t, u1_in(2,:), 'r', 'LineWidth', 1.5); % Plot u2
title('Input 1 Signals');
xlabel('Time (seconds)');
ylabel('Input');
legend('u1', 'u2');
grid on;

subplot(2, 2, 2);
plot(t, u2_in(1,:), 'b', 'LineWidth', 1.5); % Plot u1
hold on;
plot(t, u2_in(2,:), 'r', 'LineWidth', 1.5); % Plot u2
title('Input 2 Signals');
xlabel('Time (seconds)');
ylabel('Input');
legend('u1', 'u2');
grid on;

% Plot for output signals
subplot(2, 2, 3);
plot(t, y_out_1(:,1), 'b', 'LineWidth', 1.5); % Output y to u1
hold on;
plot(t, y_out_1(:,2), 'r', 'LineWidth', 1.5); % Output z to u1
title('Output Signals for Input 1');
xlabel('Time (seconds)');
ylabel('Output');
legend('y', 'z');
grid on;

subplot(2, 2, 4);
plot(t, y_out_2(:,1), 'b', 'LineWidth', 1.5); % Output y to u2
hold on;
plot(t, y_out_2(:,2), 'r', 'LineWidth', 1.5); % Output z to u2
title('Output Signals for Input 2');
xlabel('Time (seconds)');
ylabel('Output');
legend('y', 'z');
grid on;

% Adjust figure
sgtitle('System Response to Inputs');
