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


