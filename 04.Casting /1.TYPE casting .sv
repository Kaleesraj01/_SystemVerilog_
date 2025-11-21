module casting_ex;
  int z = 166;
  real f ;
  
  initial 
    begin 
      f = real'(z);
      $display ("int %0d to real %0f " , z , f );
      end
      
      endmodule 
OUTPUT 
 int 166 to real 166.000000 

module casting_ex;
  string k = " kalishraj M";
  int i = 55 ;
  
  initial begin 
    i = int'(k);
    $display ("string  %0d to int %0h " , k, i );
    
    k = string'(i);
    $display ("int  %0h to string %0s " , i, k );
    
  end 
endmodule 
    OUTPUT 
# string  kalishraj M to int 616a204d 
# int  616a204d to string aj M 
