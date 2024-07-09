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

% Check observability
O = obsv(sys);
rank_O = rank(O);

% Display results
disp('Observability Matrix:');
disp(O);
fprintf('Rank of Observability Matrix: %d\n', rank_O);
if rank_O == size(A, 1)
    disp('System is observable.');
else
    disp('System is not observable.');
end

% Check controllability
Co = ctrb(sys);
rank_Co = rank(Co);

% Display results
disp('Controllability Matrix:');
disp(Co);
fprintf('Rank of Controllability Matrix: %d\n', rank_Co);
if rank_Co == size(A, 1)
    disp('System is controllable.');
else
    disp('System is not controllable.');
end
