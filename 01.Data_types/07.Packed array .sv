module array_example;
  bit [2:0][3:0] array = '{4'hfa, 4'h4, 4'h6};
  initial begin
    foreach (array[i]) begin
      $display("array[%0h] = %0b", i, array[i]);
    end
  end
endmodule

/* output 
# KERNEL: array[2] = 1010
# KERNEL: array[1] = 100
# KERNEL: array[0] = 110
