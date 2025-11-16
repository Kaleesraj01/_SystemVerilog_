// Code your testbench here
// or browse Examples
module string_ex ;
  string s1 = "hello world ";
  string s2 =  " HI RAJ HOW ARE YOU ! "  ;
  initial begin 
     // LENGTH 
    $display("len = %0d", s1.len());
    
    // UPPER , LOWER 
     
    $display ("upper = %0s " , s1.toupper());
    $display ("lower = %0s " , s2.tolower());
    
    //subtr (start , end )
    
    $display ( " substr = %0s " , s2.substr(3,9));
    
    //getc , putc 
    
    $display ("Get index = %0s " , s1.getc (7));
    s1.putc (8,"a");
    $display ("Put value = %0s " , s1);
    
  end endmodule

//OUTPUT
# KERNEL: len = 12
# KERNEL: upper = HELLO WORLD  
# KERNEL: lower = hi raj how are you !  
# KERNEL:  substr = RAJ  
# KERNEL: Get index = o 
# KERNEL: Put value = hello woald  
