class parent_class;
  bit [31:0] addr;
  function display();
    $display("Addr = %0d",addr);
  endfunction
endclass

class child_class extends parent_class;
  bit [31:0] data;
  function display();
    super.display();
    $display("Data = %0d",data);
  endfunction
endclass

module inheritence;
  initial begin
    parent_class p;
    child_class  c=new();
    c.addr = 10;
    c.data = 20;
    c=p ;        //assigning parent class handle to child  class handle
    c.display();
    p.display();
  end
endmodule
OUTPUT
"c = p;"
  Expression 'p' on rhs is not a class or a compatible class and hence cannot 
  be assigned to a class handle on lhs.
  Source type: class $unit::parent_class
  Target type: class $unit::child_class
  Please make sure that the lhs and rhs expressions are compatible.
