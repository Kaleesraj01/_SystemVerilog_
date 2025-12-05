class raj #(type m = string );
  m value ;
endclass 

module kalis ;
  
  initial 
    begin 
      raj r1 = new();
      
      raj #(bit) r2 = new();
      raj #(byte) r3 = new();
      
      r2.value = 10;
      r3.value = 22;
      r1.value = "hi raj ";
      
     $display("r1.value = %0s", r1.value);    // string
    $display("r2.value = %0b", r2.value);    
    $display("r3.value = %0d", r3.value);    
      
    end 
endmodule 
OUTPUT 
# r1.value = hi raj 
# r2.value = 0
# r3.value = 22
      
      
