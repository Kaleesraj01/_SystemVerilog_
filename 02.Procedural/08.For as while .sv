module while_for ;
   int cnt= 0;
  int row= 25;
  
  initial begin 
    for (;;) begin
      cnt++  ;
      row ++ ;
      $display (" count =%0d , row =%0d  ", cnt , row );
    
    if (cnt == 15 ) break ;
      
      if (row == 54) break ;
    end 
    
  end 
endmodule 

OUTPUT 
#  count =1 , row =26  
#  count =2 , row =27  
#  count =3 , row =28  
#  count =4 , row =29  
#  count =5 , row =30  
#  count =6 , row =31  
#  count =7 , row =32  
#  count =8 , row =33  
#  count =9 , row =34  
#  count =10 , row =35  
#  count =11 , row =36  
#  count =12 , row =37  
#  count =13 , row =38  
#  count =14 , row =39  
#  count =15 , row =40  
