// Code your testbench here
// or browse Examples
class Calculator;

  // Only declaration here 
  extern function int add(int a, int b);

  extern function void show();

endclass
//outside class fn defnition
    
//  function add()
function int Calculator::add(int a, int b);
  return a + b;
endfunction

// function show()
function void Calculator::show();
  $display("Calculator is working!");
endfunction

module tb;
  initial begin
    Calculator c = new();

    int result = c.add(10, 20);
    $display("Addition result = %0d", result);

    c.show();
  end
endmodule

    OUTPUT
    # Addition result = 30
# Calculator is working!
