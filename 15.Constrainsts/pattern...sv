class Pattern1234554321;

  rand int arr[10];   // fixed size array (10 elements)

  // Constraint for pattern
  constraint pattern_c {
    foreach(arr[i]) {
      if(i < 5)
        arr[i] == i + 1;
      else
        arr[i] == 10 - i;
    }
  }

endclass


module test;

  initial begin
    Pattern1234554321 p = new();

    if(p.randomize()) begin
      $display("Generated Pattern:");
      foreach(p.arr[i])
        $write("%0d ", p.arr[i]);
      $display();
    end
    else
      $display("Randomization Failed");
  end

endmodule
