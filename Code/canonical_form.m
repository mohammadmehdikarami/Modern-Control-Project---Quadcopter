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

% Calculate the Jordan form of matrix A
[T,J] = jordan(A);

% Display the Jordan form and the similarity transformation matrix
disp('Jordan form of matrix A (J):');
disp(J);

disp('Similarity transformation matrix (T):');
disp(T);
