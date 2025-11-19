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
           import can::get;  // only importing a  class
             
            initial begin 
              
              get i = new();   // calling  the class
              
              i.display();
             
              
//               dis();
            end 
          endmodule 
             
