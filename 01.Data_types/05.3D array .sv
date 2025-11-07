module Three_D_ex;
  int arr[5][3][2] = '{
  '{ '{1, 2}, '{3, 4}, '{5, 6} },   
  '{ '{7, 8}, '{9, 10}, '{11, 12} },
  '{ '{13, 14}, '{15, 16}, '{17, 18} },
  '{ '{19, 20}, '{21, 22}, '{23, 24} },
  '{ '{25, 26}, '{27, 28}, '{29, 30} }
};

   initial begin 
     foreach (arr[i,j,k]) begin 
       $display ( "arr[%0d][%0d][%0d]= %0d ", i , j ,k, arr[i] [j] [k]);
     end end
endmodule 

/* 0utput 
 # KERNEL: arr[0][0][0]= 1 
# KERNEL: arr[0][0][1]= 2 
# KERNEL: arr[0][1][0]= 3 
# KERNEL: arr[0][1][1]= 4 
# KERNEL: arr[0][2][0]= 5 
# KERNEL: arr[0][2][1]= 6 
# KERNEL: arr[1][0][0]= 7 
# KERNEL: arr[1][0][1]= 8 
# KERNEL: arr[1][1][0]= 9 
# KERNEL: arr[1][1][1]= 10 
# KERNEL: arr[1][2][0]= 11 
# KERNEL: arr[1][2][1]= 12 
# KERNEL: arr[2][0][0]= 13 
# KERNEL: arr[2][0][1]= 14 
# KERNEL: arr[2][1][0]= 15 
# KERNEL: arr[2][1][1]= 16 
# KERNEL: arr[2][2][0]= 17 
# KERNEL: arr[2][2][1]= 18 
# KERNEL: arr[3][0][0]= 19 
# KERNEL: arr[3][0][1]= 20 
# KERNEL: arr[3][1][0]= 21 
# KERNEL: arr[3][1][1]= 22 
# KERNEL: arr[3][2][0]= 23 
# KERNEL: arr[3][2][1]= 24 
# KERNEL: arr[4][0][0]= 25 
# KERNEL: arr[4][0][1]= 26 
# KERNEL: arr[4][1][0]= 27 
# KERNEL: arr[4][1][1]= 28 
# KERNEL: arr[4][2][0]= 29 
# KERNEL: arr[4][2][1]= 30 
