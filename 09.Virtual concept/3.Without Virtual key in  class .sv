class parent_trans;
  int data;
  int id;
  
  function void display();
    $display("Base Value of data = %0h and id = %0h", data, id);
  endfunction
endclass

module class_example;
  initial begin
    parent_trans p1;
    p1= new();
    
    p1.data = 5;
    p1.id = 1;
    p1.display();
  end
endmodule
OUTPUT 
Base Value of data = 5 and id = 1


virtual class parent_trans;   // virtual class cant be instaintiated can only be derived !!!! 
  bit [31:0] data;
  int id;
  
  function void display();
    $display("Base: Value of data = %0h and id = %0h", data, id);
  endfunction
endclass

module class_example;
  initial begin
    parent_trans p_tr;
    p_tr = new();
    
    p_tr.data = 5;
    p_tr.id = 1;
    p_tr.display();
  end
endmodule
output :
class_example, "p_tr = new();"
  Instantiation of the object 'p_tr' can not be done because its type 
  'parent_trans' is an abstract base class.
  Perhaps there is a derived class that should be used.

