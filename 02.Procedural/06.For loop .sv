module loop_ex;
  int arr[8];
  initial begin 
  for (int i =0 , j= 15 ; i<$size(arr) ; i++ , j--)
   
    $display( "i=%0d , j=%0d " , i , j ); 
  
  end 
endmodule   


OUTPUT
# i=0 , j=15 
# i=1 , j=14 
# i=2 , j=13 
# i=3 , j=12 
# i=4 , j=11 
# i=5 , j=10 
# i=6 , j=9 
# i=7 , j=8 
