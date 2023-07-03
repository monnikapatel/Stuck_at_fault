# Stuck_at_fault
Detection of faults i.e. Stuck at fault(0)  or Stuck at falut (1)

// Setup
Install a Verilog compiler or simulator, such as Icarus Verilog or ModelSim, on your system.
Ensure that you have a text editor or an Integrated Development Environment (IDE) to write and edit the Verilog code.

Open a text editor or IDE and create a new file.
Save the file with a ".v" extension, for example, "circuit.v".

//Environment Setup
Create a test environment by creating a testbench module or a separate Verilog file to instantiate the circuit module and provide input stimuli.
In the testbench, you can define test vectors to simulate different input combinations and check the outputs against expected values.

Then compile and silmulate the given Verilog code.

//Result
Open the output.txt file to view the test vectors and expected outputs generated during the simulation.
Analyze the results to determine if the fault at the specified node was correctly identified and if the expected outputs match the observed outputs.


For Circuit :
This Verilog code defines a module named "Circuit" that takes four inputs A, B, C, and D, and has one output Z. The internal signals net_e, net_f, net_g, and net_h are used to represent the intermediate nodes in the circuit. The assign statements define the Boolean equations for each of the internal signals, and the final assign statement determines the value of the output Z based on the intermediate signals.

For the testbench : The code sets the fault location and type, generates a test vector to target the fault, waits for some time, and then displays the generated test vector and the expected output.
