module unique_if_ex;

  int num = 20;

  initial begin

    unique if (num < 40)
      $display("num is positive");
    else if (num < 30)
      $display("num is lessthan 30");
    else if (num < 20)
      $display("num is between 10 and 19");
    else
      $display("num is 20 or above");

  end

endmodule
//If zero or more than one condition becomes true Simulation gives a warning/error.

OUTPUT 
# num is positive
# ** Warning: (vsim-8360) The if/case statement is not unique.
#    Time: 0 ns  Iteration: 0  Process: /unique_if_ex/#implicit#unique__7 File: testbench.sv Line: 7
# exit
