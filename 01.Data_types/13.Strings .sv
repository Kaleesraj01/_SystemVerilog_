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



module string_basic_methods;
  string s1="Hi Everyone";//11
  string s2="He Everyone";//11
  string s3;
  
  initial begin
    $display("s1=%0d",s1.len());
    s1.putc(2,"char");
    $display("s1=%0s",s1);
    // s1.putc(2,"char")     //s1=Hiceveryone  //oneletteronly

    $display("s1=%0s=%0d", s1.getc(2), s1.getc(2));
    
    s1="ENGINEERING";
    $display("s1=%0s",s1.tolower());
    $display("s1=%0s",s1.toupper());
    
   // s2="ENGINEERING";
    s2="Engineering";
    $display("s1=%0s s2=%0s difference=%0d",s1,s2,s1.compare(s2));
    //(s1-s2)case sensitive(0=equ,neg=s1<s2,pos=s1>s2)
    $display("s1=%0s s2=%0s difference=%0d",s1,s2,s1.icompare(s2)); //case insensitive
  end
endmodule 
OUTPUT 
s1=11
s1=HicEveryone
s1=c=99
s1=engineering
s1=ENGINEERING
s1=ENGINEERING s2=Engineering difference=-32
s1=ENGINEERING s2=Engineering difference=0
