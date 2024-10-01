`default_nettype none

module tb;
  reg a,b;
  wire led1,led2,led3,led4,led5;
  demo dut(led1,led2,led3,led4,led5,a,b);
 
   
initial 
begin
    
  $dumpfile("dump.vcd");
  $dumpvars(0,dut);
  
  a=1'b0;
  b=1'b0;
  
  #2
  
  a=1'b1;
  
  #4
  
  b=1'b1;
  
  #4
  
  a=1'b0;
  
  #4
  
  b=1'b0;
  
  #4
  $finish;
    
end


endmodule