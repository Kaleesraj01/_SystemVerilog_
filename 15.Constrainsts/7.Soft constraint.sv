class item;
  rand int data;

  constraint c1 {
    soft data inside {[10:20]};
  }
endclass


module tb;
  item i;

  initial begin
    i = new();

    repeat (4) begin
      assert(i.randomize());
      $display("Default (soft) data = %0d", i.data);

      assert(i.randomize() with { data inside {[50:60]}; });
      $display("Overridden data = %0d", i.data);

      $display("--------------------");
    end

    $finish;
  end
endmodule
