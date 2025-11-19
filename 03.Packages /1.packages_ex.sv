// Code your testbench here
// or browse Examples
package can;

int apple = 7 ;
class get;
  int data=202;
  
  function void display();
    $display("inside can_fn");
             $display("data =%0d", data);
    $display("apple =%0d  " , apple );
             endfunction
             endclass 


function void dis();
  $display("apple =%0d  " , apple );
endfunction 
endpackage 
       
                               
          module package_ex;   
           import can::*;
             
            initial begin 
              
              get i = new();
              
              i.display();
              
              dis();
            end 
          endmodule 

OUTPUT 
inside can_fn
data =202
apple =7  
apple =7  
             
