module string_datatype;
  reg [0:15*8-1]s;
  string s0;
  bit[31:0]b;
  
  initial begin
    s = "how are you doing";//17chars
    $display("String s = %0s",s);
    
    s = "Hello World";//11chars
    $display("String s = %0s",s);
    
  //s0-> empty string
    $display("String s0 = %0s",s0);

    s0 = "Hello World ssssss";//11chars 
    $display("String s0 = %0s",s0);
  
    s0 = {"Hi,"," ",s};
    $display("String s0 = %0s",s0);
  
    b = 128;
    s0 = b; // sets 128 to s0
    $display("s0 = %0d\n bit b = %0d",s0,b);
    
  
  end
endmodule

OUTPUT
String s = w are you doing
String s = Hello World
String s0 = 
String s0 = Hello World ssssss
String s0 = Hi, Hello World
s0 = 128
 bit b = 128



// STRING OPERATORS 
module string_operator;
  string s1="Hi Everyone";//11
  string s2="He Everyone";//11
  string s3;
  
  initial begin
    if(s1==s2)
         $display("s1=%0s equals to s2=%0s",s1,s2);
    else $display("s1 is not equals to s2");

    if(s1<s2)//<=,>,>=
         $display("s1=%0s is less than s2=%0s",s1,s2);
    else 
         $display("s1 is not less than s2");

    s3={s1," welcome ",s2}; 
    $display("s3=%0s",s3);
    
    s3={3{s1}};            
    $display("s3=%0s",s3);
    s3="Hello guys";
    $display("s3=%0d s3=%0s",s3[7],s3[7]);
    end
endmodule

//OUTPUT 
s1 is not equals to s2
s1 is not less than s2
s3=Hi Everyone welcome He Everyone
s3=Hi EveryoneHi EveryoneHi Everyone
s3=117 s3=u



