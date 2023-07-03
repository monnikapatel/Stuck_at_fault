module Circuit_Testbench;

  // Inputs
  reg A, B, C, D;
  // Output
  wire Z;

  // circuit module
  Circuit dut (.A(A), .B(B), .C(C), .D(D), .Z(Z));

  initial begin
    $dumpfile("waveform.vcd"); 
    $dumpvars(0, Circuit_Testbench);   

    // Set the fault location and type
    reg [3:0] fault_location;
    reg fault_type;

    fault_location = 4'b0001; //  Set the fault location to input B
    fault_type = 1'b1; // Set the fault type to SA1

    // Generate test vector for the given fault
    generate_test_vector(fault_location, fault_type);

    $finish; // End the simulation
  end

  // Function to generate test vector for the given fault
  function generate_test_vector;
    input [3:0] location;
    input type;

    begin
      // Initialize inputs to 0
      A = 1'b0;
      B = 1'b0;
      C = 1'b0;
      D = 1'b0;

      // Set the fault location and type
      case (location)
        4'b0001: B = type; // Set the fault at input B
      
        default: $display("Invalid fault location");
      endcase

      #10; 

      // Print the generated test vector and expected output
      $display("Test Vector: A=%b, B=%b, C=%b, D=%b", A, B, C, D);
      $display("Expected Output: Z=%b", Z);
    end
  endfunction

endmodule
  
