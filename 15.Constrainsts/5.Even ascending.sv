// Code your testbench here
// or browse Examples
class even_assending;
  rand int unsigned arr[5];

  constraint c {    foreach (arr[i]) {
      arr[i] inside {[20:89]};
    }

    foreach (arr[i]) {
      arr[i] % 2 == 0;     // even only
    }

    foreach (arr[i]) {
      if (i > 0)
        arr[i] > arr[i-1]; // ascending
    }
  }
endclass
module tb;

 even_assending a;

  initial begin
    a = new();

    repeat (5) begin
      if (a.randomize()) begin
        $display("Even Ascending Array:");

        foreach (a.arr[i]) begin
          $display("arr[%0d] = %0d", i, a.arr[i]);
        end

        $display("------------------------");
      end
      else begin
        $display("Randomization Failed!");
      end
    end

    $finish;
  end


  OUTPUT
  
endmodule
