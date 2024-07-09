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

% Check BIBO stability
isBIBOStable = isstable(ss(A, B, C, D));
fprintf('BIBO Stability: %d\n', isBIBOStable);

% Compute eigenvalues of matrix A
eigenvalues = eig(A);

% Check internal stability
isInternalStable = all(real(eigenvalues) < 0);
fprintf('Internal Stability: %d\n', isInternalStable);
