 module break_continue_exe;
  int array[15];
  int i ;
  initial begin 
    for (i=0; i<$size(array);i++)
    begin 
      array [i] = i+7;
    end 
    
    // break 
    for (i=0;i<$size(array);i++) 
      begin 
        if(i==7) break ;
        $display("array[%0d] = %0d ",i , array[i]);
      end  
         
    
    $display ("**********");
  
  
  // continue 
    for (i=0;i<$size(array);i++) 
      begin 
        if(i==3) continue  ;
        $display("array[%0d] = %0d ",i , array[i]);
      end  
         end  
  
             endmodule 

OUTPUT
# array[0] = 7 
# array[1] = 8 
# array[2] = 9 
# array[3] = 10 
# array[4] = 11 
# array[5] = 12 
# array[6] = 13 
# **********
# array[0] = 7 
# array[1] = 8 
# array[2] = 9 
# array[4] = 11 
# array[5] = 12 
# array[6] = 13 
# array[7] = 14 
# array[8] = 15 
# array[9] = 16 
# array[10] = 17 
# array[11] = 18 
# array[12] = 19 
# array[13] = 20 
# array[14] = 21 
# exit
