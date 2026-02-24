module and_assertion_example;

  logic clk;
  logic a, b, y;

  // AND logic
  assign y = a & b;

  // Clock generation
  always #5 clk = ~clk;

  // Concurrent Assertion
  property and_check;
    @(posedge clk)
      (a && b) |-> (y == 1);
  endproperty

  assert property (and_check)
    else $error("Assertion Failed: y is not 1 when a and b are 1");

  // Test stimulus
  initial begin
    clk = 0;
    a = 0; b = 0;

    #10 a = 1;
    #10 b = 1;   // At this point y should be 1
    #10 a = 0;
    #10 b = 0;

    #20 $finish;
  end

endmodule   


    output 
    # RUNTIME: Info: RUNTIME_0068 testbench.sv (33): $finish called.
# KERNEL: Time: 60 ns,  Iteration: 0,  Instance: /and_assertion_example,  Process: @INITIAL#24_2@.
# KERNEL: stopped at time: 60 ns
# VSIM: Simulation has finished. There are no more test vectors to simulate.
# VSIM: Simulation has finished.
