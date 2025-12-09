//ACCESSED WITHIN SCOPE 

class packer;
  local int i ;
  function  new(int e );   
   i = e ;
    $display (" i=%0d " , i );
  endfunction 
endclass    
  module tb ;
    initial begin 
      packer p = new(33);    
    end
  endmodule 

OUTPUT 
#  i=33 
      
      
  
    
    
    
