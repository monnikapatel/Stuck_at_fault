// Circuit Module 

module Circuit (
  input A, B, C, D,
  output Z
);

  wire net_e, net_f, net_g, net_h;
// a circuit consisting of 4 inputs
  assign net_e = A ^ B;
  assign net_f = C & D;
  assign net_g = ~net_e;
  assign net_h = ~net_f;
  assign Z = net_h | net_g;

endmodule

