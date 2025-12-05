// Code your testbench here
// or browse Examples
class packet #(parameter WIDTH = 16) ;
  bit [WIDTH-1:0 ] data;
endclass 

module Class ;
  initial 
    begin 
    
     packet p1=new();
     packet #(8)p2=new();
     packet #(32)p3 = new();
      
      $display (" p1=%0d , p2=%0d , p3=%0d ", $bits(p1.data) , $bits(p2.data) , $bits(p3.data) );
          
    end 
endmodule

OUTPUT 
# run -all
#  p1=16 , p2=8 , p3=32 
# exit
  
      
    
