class parent ;
 protected int i =45;
   protected string name = "raj";
endclass 

class child extends parent ;
  function show();
    $display ("name=%0s , i=%0d ", name  , i );
  endfunction 
endclass 

module tb;
  initial begin 
    child c;
    c= new();
    c.show();
  end 
    endmodule 

OUTPUT 
# name=raj , i=45 





  

  
