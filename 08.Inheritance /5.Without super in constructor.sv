// All constructors have no arguments, so SV automatically calls base1 base2 child
class base1;
  int x;

  function new();
    x = 10;
    $display("base1 constructor: x = %0d", x);
  endfunction
endclass

class base2 extends base1;
  int y;

  function new();
    y = 20;
    $display("base2 constructor: y = %0d", y);
  endfunction
endclass

class child extends base2;
  int z;
  function new();
    z = 30;
    $display("child constructor: z = %0d", z);
  endfunction
endclass

module tb;
  initial begin
    child c = new();  
  end
endmodule


# run -all
# base1 constructor: x = 10
# base2 constructor: y = 20
# child constructor: z = 30
# exit


