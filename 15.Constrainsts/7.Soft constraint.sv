class item;
  rand int data;

  soft constraint c1 {
    data inside {[10:20]};
  }
endclass


module tb;
  item i;

  initial begin
    i = new();   // create object ONCE

    repeat (4) begin
      // Uses soft constraint
      assert(i.randomize());
      $display("Default (soft) data = %0d", i.data);

      // Overrides soft constraint
      assert(i.randomize() with { data inside {[50:60]}; });
      $display("Overridden data = %0d", i.data);

     
    end

    $finish;  
  end
endmodule
