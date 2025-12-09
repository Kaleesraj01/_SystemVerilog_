class base;
  int a;
endclass

class Child extends base;
  int b;
endclass

class another;
  int x;
endclass

module tb;
  initial begin
    Child c = new();
    base b ;
    
    b=c;  // upcasting which is legal 
    c=b ;  // down casting without $cast leads to compilation error 
   
  end
endmodule

OUTPUT 
"c = b;"
  Expression 'b' on rhs is not a class or a compatible class and hence cannot 
  be assigned to a class handle on lhs.
  Source type: class $unit::base
  Target type: class $unit::Child
  Please make sure that the lhs and rhs expressions are compatible.
