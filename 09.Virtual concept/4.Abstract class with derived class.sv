virtual class parent;
  bit [31:0] data;
  int id;
  
  function void display();
    $display("Base: Value of data = %0h and id = %0h", data, id);
  endfunction
endclass

class child extends parent ;  // parent class derived 
endclass ;

module class_example;
  initial begin
    child c1 = new();
    
    c1.data = 5;
    c1.id = 1;
   c1.display();
  end
endmodule

OUTPUT 
Base: Value of data = 5 and id = 1
