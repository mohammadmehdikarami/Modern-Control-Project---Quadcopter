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

% Create state-space model
sys = ss(A, B, C, D);

% Convert to transfer function
G = tf(sys);

% Display transfer functions from input to output
disp('Transfer Functions:');
[num_outputs, num_inputs] = size(G);
for out = 1:num_outputs
    for in = 1:num_inputs
        fprintf('From Input %d to Output %d:\n', in, out);
        G(out, in)
    end
end

% Determine the number of outputs and inputs
[num_outputs, num_inputs] = size(G);

% Initialize cell arrays to store state-space models
sys_ss = cell(num_outputs, num_inputs);

% Create state-space realizations for each transfer function
for out = 1:num_outputs
    for in = 1:num_inputs
        % Extract transfer function Gij
        Gij = G(out, in);
        
        % Create state-space realization
        sys_ss{out, in} = ss(Gij);
    end
end

% Initialize an empty state-space model
sys_merged = ss([], [], [], []);

% Append all subsystems into a single state-space model
for out = 1:num_outputs
    for in = 1:num_inputs
        sys_merged = append(sys_merged, sys_ss{out, in});
    end
end

% Display the state-space matrices A, B, C, D of the model
disp('State-Space Model:');
sys_merged
