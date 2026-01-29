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
