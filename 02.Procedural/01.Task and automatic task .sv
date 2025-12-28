// Code your testbench her
// or browse Examples
module static_task_ex ;
  int i ; // STATIC IN NATURE 
  task increment ( );
   i=i+1;
  endtask
  initial begin 
    increment ();
    $display ("the value of i after increment %0d", i);
    increment();
    $display ("the value of i after 2nd  increment %0d", i);
  end 
endmodule
OUTPUT 
the value of i after increment 1
the value of i after 2nd  increment 2

// AUTOMATIC TASK 
// Code your testbench here
// or browse Examples
module AUTOMATIC_task_ex ;
  
  task automatic increment ( );
    int i ; // DYNAMIC IN  NATURE 
   i=i+1;
      $display ("value of i after increment = %0d ", i );
   
  endtask 
  initial begin 
    
    increment ();
    increment();
    increment();
  end 
endmodule

OUTPUT 
# value of i after increment = 1 
# value of i after increment = 1 
# value of i after increment = 1 
# exit
