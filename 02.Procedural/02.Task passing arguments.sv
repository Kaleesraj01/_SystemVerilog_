module task_pass_by_value ;
  int x,y,z;
  task ex (int x,y);
    x=x+y;
    y=y+1;
    $display("the values of x,y inside task are %0d ,  %0d ",x , y );
  endtask 
  
  initial begin 
    x=0;
    y=1;
    
    ex(x,y);
    $display("the values of x,y outside task are %0d ,  %0d ",x , y );
    
  end endmodule

OUTPUT 
the values of x,y inside task are 1 ,  2   
the values of x,y outside task are 0 ,  1  // X AND Y DOESNT MODIFIED OUTSIDE.
