module fixed_arr;
  int fixed_arr[7] = '{70,80,90,10,203,500,1000};
  initial begin 
    foreach (fixed_arr[i] ) begin 
      $display( " fixed_arr[%0d] = %0d ", i,fixed_arr[i]);
  end 
    end 
      endmodule 

/*output 
# KERNEL:  fixed_arr[0] = 70 
# KERNEL:  fixed_arr[1] = 80 
# KERNEL:  fixed_arr[2] = 90 
# KERNEL:  fixed_arr[3] = 10 
# KERNEL:  fixed_arr[4] = 203 
# KERNEL:  fixed_arr[5] = 500 
# KERNEL:  fixed_arr[6] = 1000 
