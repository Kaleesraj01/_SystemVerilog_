class parent ;
  int addr ;
  const int value;
  
  function new ();
    addr = 243;
    value = 44685;  // Instance constant are dynamic and created at runtime only 
    $display ("addr=%0d ,value =%0d  ", addr , value );
  endfunction 
  
endclass 

module tb ;
  parent p2 ;
  parent p1;
  initial begin 
    p2=new();
    p1=new();  // cant instance after the constructor
    p1.value = 234344;
    $display("p1val =%0d", p1.value );
    
    
  end 
endmodule 
    OUTPUT
Error-[IUCV] Invalid use of 'const'
testbench.sv, 19
  'const' variable is either driven or connected to a non-const variable.
  Variable 'value' declared as 'const' cannot be used in this context
  Source info: p1.value = 234344;

==============================================================================================================================================================

class parent ;
  int addr ;
  const int value;
  
  function void raj();  // illegal can be done by only constructor
    addr = 243;
    value = 44685;  // Instance constant are dynamic and created at runtime only 
    $display ("addr=%0d ,value =%0d  ", addr , value );
  endfunction 
  
endclass 

module tb ;
  parent p2 ;
  
  initial begin 
    p2=new();
    p2.raj;
   
  end 
endmodule 
    
