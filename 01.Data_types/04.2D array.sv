module two_D_ex;
  int arr[4][3] = '{ '{100,20,30} , '{200,30,40} , '{300,40,50} , '{400,70,80}};
  
   initial begin 
     foreach (arr[i,j]) begin 
       $display ( "arr[%0d][%0d] = %0d ", i , j , arr[i][j]);
     end end
endmodule 

/* OUTPUT
# KERNEL: arr[0][0] = 100 
# KERNEL: arr[0][1] = 20 
# KERNEL: arr[0][2] = 30 
# KERNEL: arr[1][0] = 200 
# KERNEL: arr[1][1] = 30 
# KERNEL: arr[1][2] = 40 
# KERNEL: arr[2][0] = 300 
# KERNEL: arr[2][1] = 40 
# KERNEL: arr[2][2] = 50 
# KERNEL: arr[3][0] = 400 
# KERNEL: arr[3][1] = 70 
# KERNEL: arr[3][2] = 80 
