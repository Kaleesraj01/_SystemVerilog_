module dy_array;
  int dy_array[];
  int dy_array2[];
  initial begin
    dy_array = new[4];
    dy_array = '{22,33,44,55};
    foreach (dy_array[i])
      $display ("dynamic array [%0d] = %0d" , i , dy_array[i]); 
  
  
  //copy method 
  //method1 
  dy_array2 = dy_array ;
    $display (" elements of dynamic array2 = %0p " , dy_array2);
    
    dy_array[2]= 100;
    $display (" elements of dynamic array2 after change in dy_array  = %0p " , dy_array2);
    
  // modifying 
    
    dy_array = new[10];
    dy_array2 = new[9](dy_array2) ;
    
    $display (" dy_array after modifying = %0p ", dy_array);
    $display (" dy_array2 after modifying = %0p ", dy_array2);
   
    
    // size 
    $display (" size of dy_array 1 = %0d ", dy_array.size());
    $display (" size of dy_array 2 = %0d ", dy_array2.size());
    
  end
endmodule 

/* OUTPUT
# KERNEL: dynamic array [0] = 22
# KERNEL: dynamic array [1] = 33
# KERNEL: dynamic array [2] = 44
# KERNEL: dynamic array [3] = 55
# KERNEL:  elements of dynamic array2 = 22 33 44 55 
# KERNEL:  elements of dynamic array2 after change in dy_array  = 22 33 44 55 
# KERNEL:  dy_array after modifying = 0 0 0 0 0 0 0 0 0 0 
# KERNEL:  dy_array2 after modifying = 22 33 44 55 0 0 0 0 0 
# KERNEL:  size of dy_array 1 = 10 
# KERNEL:  size of dy_array 2 = 9 
