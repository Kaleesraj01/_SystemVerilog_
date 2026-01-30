//pattern  1234554321

class patterngen ;
  rand int arr[10];
  constraint c_pattern { foreach (arr[i]) 
    if (i<5)   
      arr[i] == i+1;
                        else 
                          arr[i] == 10-i; 
                       }
endclass



  
module tb;
  initial begin
    pattern_gen p = new();
    p.randomize();
    
    foreach (p.arr[i]) begin 
      $write("%0d", p.arr[i]);
    end
  end 
endmodule
output 
1234554321 


//5,-10,15,20...

// or browse Examples
class alter ;
  rand int arr[10];
  
  constraint c1{ foreach (arr[i]) { 
  arr[i] inside { (i+1)*5 , -(i+1)*5 };
    
    if(i%2==0)
      arr[i]==(i+1)*5;
   else 
     arr[i]== (-(i+1)*5) ;  }} 
 
  
    
    endclass
   
    module tb;
      alter a ;
      initial begin 
        a=new();
        
        a.randomize();
        
        
        foreach (a.arr[i]) begin 
          $write ("%0d ,", a.arr[i]);
        end 
      end
    endmodule 
          

                OUTPUT 
                5 ,-10 ,15 ,-20 ,25 ,-30 ,35 ,-40 ,45 ,-50 
