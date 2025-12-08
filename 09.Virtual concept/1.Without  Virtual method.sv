// Code your testbench here
// or browse Examples
class packet ;
  int
  m= 264;
  
  function int show();
    show = m;
  endfunction 
endclass

class child extends packet;
  int i = 87;
  function int show(); // to override returntype must be same 
    show = i ;
  endfunction 
endclass 

module tb;
  initial begin 
    child c1 = new;
    packet a1 = c1 ;// parent handles only the packet variable and methods in the child 
    
    $display ("m=%0d ",a1.m);
    $display ("show =%0d",a1.show); // even though fn overrides it takes only baseclass 
    
  end
endmodule
     
  
  
    OUTPUT 
# m=264
# show =264
  
  
