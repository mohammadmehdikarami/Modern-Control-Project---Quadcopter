# Code Folder: Quadcopter Dynamics and Control

This folder contains MATLAB scripts and Simulink models used for modeling, simulation, and analysis of the quadcopter's dynamics and control systems. Each file in this folder has a specific purpose related to the project's objectives.

## Table of Contents
- [Canonical Form](#canonical-form)
- [Linear System Model](#linear-system-model)
- [Linear System Open Loop Output](#linear-system-open-loop-output)
- [Nonlinear System Model](#nonlinear-system-model)
- [Observability and Controllability](#observability-and-controllability)
- [Realization](#realization)
- [Stability](#stability)
- [Transition Matrix](#transition-matrix)

## Canonical Form
**File:** `canonical_form.m`  
**Description:** This script converts the state-space representation of the system into its canonical form. It also calculates and displays the transformation matrix used in the process.

## Linear System Model
**File:** `linear_system_model.slx`  
**Description:** This Simulink file contains the linear model of the quadcopter. It is used to simulate the linear dynamics of the system and analyze its behavior under various conditions.

## Linear System Open Loop Output
**File:** `linear_system_open_loop_output.m`  
**Description:** This script calculates the output of the open-loop linear system using its state-space representation. It helps in understanding the system's response without any feedback control.

## Nonlinear System Model
**File:** `nonlinear_system_model.slx`  
**Description:** This Simulink file contains the nonlinear model of the quadcopter. It is used to simulate the nonlinear dynamics of the system, providing a more accurate representation of real-world behavior.

## Observability and Controllability
**File:** `observability_and_controllability.m`  
**Description:** This script checks the observability and controllability of the system using its state-space representation. It determines if the system's internal states can be fully observed and controlled from the inputs and outputs.

## Realization
**File:** `realization.m`  
**Description:** This script finds the transfer function of the model from its state-space representation and then realizes that transfer function back into state-space form. This is useful for understanding different representations of the system.

## Stability
**File:** `stability.m`  
**Description:** This script checks the stability of the system using its state-space representation. It evaluates whether the system will remain stable under various conditions.

## Transition Matrix
**File:** `transition_matrix.m`  
**Description:** This script calculates the transition matrix from the state-space representation. The transition matrix is used to understand how the state of the system evolves over time.

## How to Use
1. Ensure you have MATLAB installed on your system.
2. Clone the repository:
    ```sh
    git clone https://github.com/mohammadmehdikarami/modern-control-project-quadcopter.git
    cd modern-control-project-quadcopter/code
    ```
3. Open MATLAB and navigate to the `code` folder.
4. Run the scripts or open the Simulink files as needed for your analysis.

For more detailed information about the overall project, please refer to the main README file in the root directory of this repository.

## Contributing
Contributions are welcome! If you would like to contribute to this project, please follow the steps outlined in the main README file.

## License
This project is licensed under the MIT License. See the [LICENSE](../LICENSE) file for details.

![MIT License](https://img.shields.io/badge/License-MIT-blue.svg)
![MATLAB](https://img.shields.io/badge/MATLAB-Supported-orange)
