// Code your testbench here
// or browse Examples
class parent ;
  int a,b ;
  function void display ();
    $display ("a=%0d , b=%0d ", a,b );
  endfunction 
endclass

class child extends parent  ;
//   int a , b ;
   function void display ();
     $display ("ca=%0d , cb=%0d ", a,b );
  endfunction 
endclass

module tb ;
  initial begin 
    child c = new();
    parent p ;
    p = c ;
    
    
    p.a=23;;
    p.b=43;
    c.a=213;
    c.b=902;
     p.display();
//    
    
  end
endmodule
  OUTPUT 
a=213,b=902;
