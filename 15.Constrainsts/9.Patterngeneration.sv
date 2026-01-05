module patterngen ;   //0102030405
  
  class  gen;
    rand int a[];
    
    constraint c1 { a.size()==9 ;
                   foreach (a[i] )
                     if 
                       (i%2==0 )
                       a[i] == 0 ;
                   else 
                     
                     a[i] == ((i+1)/2);
              
                  }
  endclass
  
  gen g = new();
 
  initial begin
    
    g.randomize();
    
    $write ("the required pattern is :=  ");
    
    foreach (g.a[i])
      $write ("%0d ", g.a[i]);
  end
    endmodule

  OP //  
   the required pattern is :=  0 1 0 2 0 3 0 4 0 



pattern 010101010101....
module patterngen ;
  class  gen;
    rand int a[]; 
    constraint c1 { a.size()==14;
                   foreach (a[i] )
                     if 
                       (i%2==0 )
                       a[i] == 0 ;
                   else 
                     a[i] == 1;
                  }
  endclass
  
  
  gen g = new();
 
  initial begin
    
    g.randomize();
    
    $write ("the required pattern is :=  ");
    
    foreach (g.a[i])
      $write ("%0d ", g.a[i]);
  end 
       
endmodule
    
   KERNEL: the required pattern is :=  0 1 0 1 0 1 0 1 0 1 0 1 0 1   



// Code your testbench here
// or browse Examples
//----------------------
// Power-of-2 generator
//----------------------
class power2;
  randc int unsigned value;

  // Constraint: value must be power of 2
  constraint power2 {
    value > 0;                       
    (value & (value - 1)) == 0;      // power-of-2 
    value inside {[1:1024]};       
  }
endclass



module tb_pow2;
  initial begin
    power2 p;
    p = new();

    repeat (8) begin
      if (p.randomize())
        $display("Power of 2 value = %0d (binary = %b)", p.value, p.value);
      else
        $display("Randomization FAILED");
      #1;
    end

    $finish;
  end
endmodule
OUTPUT 
 Power of 2 value = 256 (binary = 00000000000000000000000100000000)
# Power of 2 value = 128 (binary = 00000000000000000000000010000000)
# Power of 2 value = 1 (binary = 00000000000000000000000000000001)
# Power of 2 value = 16 (binary = 00000000000000000000000000010000)
# Power of 2 value = 4 (binary = 00000000000000000000000000000100)
# Power of 2 value = 64 (binary = 00000000000000000000000001000000)
# Power of 2 value = 32 (binary = 00000000000000000000000000100000)
# Power of 2 value = 2 (binary = 00000000000000000000000000000010)
   
