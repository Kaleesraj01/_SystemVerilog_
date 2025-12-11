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
  initial begin 
    p2=new();
    
  end 
endmodule 
OUTPUT
addr=243
value =44685
