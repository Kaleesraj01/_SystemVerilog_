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
    
    
  end
endmodule 


/* OUTPUT 
# KERNEL: dynamic array [0] = 22
# KERNEL: dynamic array [1] = 33
# KERNEL: dynamic array [2] = 44
# KERNEL: dynamic array [3] = 55
# KERNEL:  elements of dynamic array2 = 22 33 44 55 
# KERNEL:  elements of dynamic array2 after change in dy_array  = 22 33 44 55 
