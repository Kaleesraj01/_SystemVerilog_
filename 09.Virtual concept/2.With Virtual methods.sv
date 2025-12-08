// Code your testbench here
// or browse Examples
class packet ;
  int
  m= 264;
  
  virtual function int show();
    show = m;
  endfunction 
endclass

class child extends packet;
  int i = 87;
  function int show();
    show = i ;
  endfunction 
endclass 

module tb;
  initial begin 
    child c1 = new;
    packet a1 = c1 ; //upcasting
  // parent handles only the packet variable and methods in the child   but if we use virtual  base methods willbe overrided. 
    $display ("m=%0d ",a1.m);
    $display ("show =%0d",a1.show); // virtual so child overrides; 
  end
endmodule
     
  OUTPUT 
# m=264 
# show =87
  
