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

% Display the state-space matrices
disp('State-Space Matrices:');
disp('A:');
disp(A);
disp('B:');
disp(B);
disp('C:');
disp(C);
disp('D:');
disp(D);

% Create the state-space system
sys = ss(A, B, C, D);

% Display the state-space system
disp('State-Space System:');
disp(sys);

% Define the time variable t
t = sym('t');

% Calculate the state transition matrix for a general time t
Phi_t = expm(A * t);

% Display the state transition matrix
disp('State Transition Matrix for general time t:');
disp(Phi_t);
