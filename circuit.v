// Circuit Module 
module Circuit (A, B, C, D, Z);
  input A, B, C, D;
  output Z;
  
  wire net_e, net_f, net_g, net_h;
  
  // Circuit L
  assign net_e = A ^ B;
  assign net_f = C & D;
  assign net_g = ~net_e;
  assign net_h = ~net_f;
  assign Z = net_h | net_g;
  
  // ATPG Fault Detection
  reg [3:0] test_vector;
  wire expected_output;
  
  initial begin
    {A, B, C, D} = 4'b000;
    
    // Detect Fault using ATPG
    always @(posedge Z) begin
      test_vector <= {A, B, C, D};
      expected_output <= (fault_node == Z) ? fault_type : ~fault_type;
      $display("Test Vector: %b, Expected Output: %b", test_vector, expected_output);
    end
    
    // Print results to output file
    $fdisplay("output.txt", "Test Vector: %b, Expected Output: %b", test_vector, expected_output);
  end
  
endmodule
