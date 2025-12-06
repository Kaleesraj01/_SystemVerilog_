// Code your testbench here
// or browse Examples
class parent;
  int value ;
  function display(int a );
    value = a;
    $display ("value=%0d",value );
  endfunction 
endclass
  
  class child  extends parent ;
    int data ;
    
    function show (int z);
      data=z;
      $display("data=%0d",data);
    endfunction 
  endclass 

module ex;
  initial begin 
    child c1;
    c1 =new();
    
    c1.display(55);
  
    c1.show(837);  
    end
endmodule 

    OUTPUT
# value=55
# data=837
