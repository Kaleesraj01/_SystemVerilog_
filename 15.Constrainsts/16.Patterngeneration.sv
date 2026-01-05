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
   
