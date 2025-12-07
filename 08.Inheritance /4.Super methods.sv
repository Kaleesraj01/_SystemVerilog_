class base1;
  int sum;
  function op(int a ,int b );
    sum = a+b ;
  endfunction 
endclass 

class base2 extends base1;
  int subr ;
  function op(int z , int y );
    super.op(z,y);//arguments same as fn !
    subr= z-y;
  endfunction 
endclass
  
class child extends base2;
    int mult;
    function op(int a , int b );
      super.op(a,b);
      
      mult = a*b ;
    endfunction 
 endclass

module tb ;
  initial begin 
    
    child childs = new();
    
    childs.op(66,77);
    
    
    $display ("sum=%0d,subract=%0d , multiple=%0d ", childs.sum , childs.subr,childs.mult);
  end 
endmodule 
OUTPut 
sum=143,subtract=-11,multiple=5082
   
    
    
  
