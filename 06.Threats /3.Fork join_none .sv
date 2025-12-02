module fork_join_none ;
  initial 
    begin 
      fork 
        begin : a 
          #5 $display (" thread 0 executed at %0t " , $time ); end
        
       begin : b  
         $display (" thread 1 executed at %0t " , $time ); end 
        
        begin :c 
        
          #2 $display (" thread 2 executed at %0t " , $time ); end 
        
       begin : Z  
        #4    $display (" thread 3 executed at %0t " , $time );
       end 
        
       begin : y 
         #3 disable Z ; end 
        
      join_none ;
      
      $display (" Main threat executed at %0t " , $time );
      wait fork;
$display("All threads finished at %0t", $time);
        
        end 
      
      endmodule  
        
OUTPUT   
#  Main threat executed at 0 
#  thread 1 executed at 0 
#  thread 2 executed at 2 
#  thread 0 executed at 5 
# All threads finished at 5
