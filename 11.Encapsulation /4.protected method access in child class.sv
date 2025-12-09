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



------------------------------------------------------------------------------------------------------------------------------------------------------------------------

class parent ;
 protected int i =45;
   protected string name = "raj";

function child () ;
  $display ("name=%0s , i=%0d ", name  , i );
endfunction
  endclass


module tb;
  initial begin 
    parent c;
    c= new();
    c.child();
  end 
    endmodule 

# name=raj , i=45 

------------------------------------------------------------------------------------------------------------------------------------------------------------------



class parent ;
 protected int i =45;
   protected string name = "raj";
endclass

module tb;
  initial begin 
    parent c;
    c= new();
   $display ("name=%0s , i=%0d ", c.name  , c.i );
  end 
    endmodule 


======
 Error (suppressible): (vlog-8688) testbench.sv(19): Illegal access to protected member name.
        Full name of member: design_sv_unit::parent::name
        Full name of calling scope: outside a class context
** Error (suppressible): (vlog-8688) testbench.sv(19): Illegal access to protected member i.
        Full name of member: design_sv_unit::parent::i
        Full name of calling scope: outside a class context
End time: 07:45:19 on Dec 09,2025, Elapsed time: 0:00:00
Errors: 2, Warnings: 0
End time: 07:45:19 on Dec 09,2025, Elapsed time: 0:00:00
*** Summary *********************************************





  

  


  

  

  
