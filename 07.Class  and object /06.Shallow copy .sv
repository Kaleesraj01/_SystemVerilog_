// Code your testbench here
// or browse Examples
class school ;
  string name ;
  int id ;
  function new();
    name = "kalees";
    id = 013;
  endfunction 
  
endclass 

class college;
  string name ;
  int regno;
  school scl ;   // class handle 
  function new();
    name = "RAJ";
    regno = 005;
    scl=new(); // creation object 
  endfunction 
  
  function void show();
    $display (" BELONGS TO CLASS school ==> name=%s , id=%0d " , scl.name , scl.id );
    $display("college ==> name=%s , regno=%0d ", name, regno );
  endfunction 
endclass 

module education ;
  college clg1 , clg2; // handle creation 
  initial begin 
    clg1= new() ;
    
    clg1.show();
    
    clg2 = new clg1;
    
    clg2.show();
    
    clg2.name = "karo";
    clg2.regno = 2545;
    
    $display (" AFTER MODIFYING clg2 ");
    clg2.show();
    
    clg2.scl.name = "jaddu" ; // changing the internal object will reflect on the clg1 also 
    clg1.show();
    
  
  end 
endmodule 

OUTPUT 
 BELONGS TO CLASS school ==> name=kalees , id=13 
# college ==> name=RAJ , regno=5 
#  BELONGS TO CLASS school ==> name=kalees , id=13 
# college ==> name=RAJ , regno=5 
#  AFTER MODIFYING clg2 
#  BELONGS TO CLASS school ==> name=kalees , id=13 
# college ==> name=karo , regno=2545 
#  BELONGS TO CLASS school ==> name=jaddu , id=13   // changing the internal object in clg2 will reflect on the clg1 also 
# college ==> name=RAJ , regno=5 
# exit
 
