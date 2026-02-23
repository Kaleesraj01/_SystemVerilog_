module immediate_assert_example;

  logic clk;
  logic a, b;
  logic y;

  
  assign y = a & b;

  // Clock generation
  initial begin
    clk = 0;
    forever #5 clk = ~clk;
  end

  
  initial begin
    a = 0; b = 0;
    #10 a = 1;
    #10 b = 1;
    #10 a = 0;
    #10 b = 0;
    #10 $finish;
  end

  // Immediate Assertion
  always @(posedge clk) begin
    assert (y == (a & b))
      else $error("Assertion Failed at time %0t: y != a & b", $time);
  end

endmodule


output 
$finish called from file "testbench.sv", line 25.
$finish at simulation time                   50/// assertion passed without fail
