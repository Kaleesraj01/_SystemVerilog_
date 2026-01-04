// Code your testbench here
// or browse Examples
class cons;
  rand int data;

  constraint c1 {
    data inside {[0:100]};
  }
endclass

module tb;
  cons i;

  initial begin
    i = new();

    // Normal randomization
    i.randomize();
    $display("Normal data = %0d", i.data);

    // Inline constraint 
    i.randomize() with { data inside {[50:60]}; };
    $display("Inline constrained data = %0d", i.data);
  end
endmodule

OUTPUT 
# Normal data = 94
# Inline constrained data = 56
