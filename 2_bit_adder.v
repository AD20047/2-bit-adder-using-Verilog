`default_nettype none //to reduce errors

module demo(
  output LED1,
  output LED2,
  output LED3,
  output LED4,
  output LED5,
  input PMOD1,
  input PMOD2
);
  
  wire carry;
  
  wire in1, in2;
  
  assign in1 = PMOD1;
  assign in2 = PMOD2;
  
  wire [1:0] fullsum;
  assign fullsum = {1'b0, in1} + {1'b0, in2};
  
  assign LED1 = fullsum[0];
  assign LED2 = fullsum[1];
  
endmodule