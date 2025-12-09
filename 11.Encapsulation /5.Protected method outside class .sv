class parent ;
 int i =45;
    string name = "raj";
  protected function display();
    $display   ("name=%0s , i=%0d ", name  , i );
  endfunction 
endclass 

// class child extends parent ;
//   function show();
//     $display ("name=%0s , i=%0d ", name  , i );
//   endfunction 
// endclass 
module tb;
  initial begin 
    parent  c;
    c= new();
    
    c.display ();
  end 
    endmodule 
  

  
