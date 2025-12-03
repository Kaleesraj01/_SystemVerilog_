class Package  ;
  int a,b ;
  int sum ;
  
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
       Package pk; 
       pk_p = new(50 , 70);
       pk = pk_p ;
       $display("After assignment: pk.a=%0d, pk.b=%0d, pk.sum=%0d", pk.a, pk.b, pk.sum);

       //Handle assignment (pk = pk_p) both handles point to same object
       pk.a=55 ;
       pk.b = 100;
       $display (" pk_p.a =%0d , pk_p.b=%0d , pk_p.sum=%0d " ,pk_p.a,pk_p.b, pk_p.sum );
             
    end 
   endmodule 

OUTPUT 
# a=50 , b=70 , sum = 120 
# After assignment: pk.a=50, pk.b=70, pk.sum=120
# pk_p.a =55 , pk_p.b=100 , pk_p.sum=120 
      
