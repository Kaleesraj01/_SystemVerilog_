module for_example;
  int arr[5];

  initial begin
    for (int i = 0, cnt = 0; i < 5; i++, cnt++) begin
      arr[i] = i * 2;
      $display("cnt = %0d   arr[%0d] = %0d", cnt, i, arr[i]);
    end 
    foreach(arr[i])begin
        $display("Final array[%0d] = %0d", i, arr[i]);
    end    
  end 
endmodule


OUTPUT 
# cnt = 0   arr[0] = 0
# cnt = 1   arr[1] = 2
# cnt = 2   arr[2] = 4
# cnt = 3   arr[3] = 6
# cnt = 4   arr[4] = 8
# Final array[0] = 0
# Final array[1] = 2
# Final array[2] = 4
# Final array[3] = 6
# Final array[4] = 8

