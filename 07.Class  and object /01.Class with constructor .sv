class Package  ;
  int a,b ;
  int sum ;
   // constructor 
  function new( int  g,int  h );
    a=g;
    b=h;
     sum = a+b ; 
    $display ( "a=%0d , b=%0d , sum = %0d ", a,b,sum );
  endfunction  
    endclass
    
   module  add;    
initial begin    
     Package  pk_p;
       pk_p = new(50 , 70);  // constructor called automatically       
    end 
   endmodule 

OUTPUT 
a=50 , b=70 , sum = 120 
      
      
