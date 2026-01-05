class factorial ;
  rand int val[];
  
  constraint c1 { val.size()== 5;}
  constraint c2 { foreach (val[i] )
    
    val[i] == fact(2*i);} // generating even numbers 
  
  function int fact (int num );
    if (num==0)
      fact = 1 ;
    else 
      
      fact = num * fact(num-1);
   
  endfunction
endclass
  module tb;
    factorial f;
  initial begin
     f = new();

    f.randomize();
    foreach (f.val[i]) begin
        $display("val[%0d] = %0d", i, f.val[i]);
    end
  end
endmodule

  OUTPUT
# val[0] = 1
# val[1] = 2
# val[2] = 24
# val[3] = 720
# val[4] = 40320
  
  
  
  
  
   
  \
