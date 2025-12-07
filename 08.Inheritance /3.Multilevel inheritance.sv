class base1;
  int sum;
  function add(int a ,int b );
    sum = a+b ;
  endfunction 
endclass 

class base2 extends base1;
  int subr ;
  function sub(int z , int y );
    subr= z-y;
  endfunction 
endclass
  
class child extends base2;
    int mult;
    function mul(int a , int b );
      mult = a*b ;
    endfunction 
 endclass

module tb ;
  initial begin 
    
    child childs = new();
    
    childs.add(66,77);
    childs.sub(334,34);
    childs.mul(72,88);
    
    $display ("sum=%0d,subract=%od , multiple=%0d ", childs.sum , childs.subr,childs.mult);
  end 
endmodule 
   
    
    
0utput
sum=143,subract=34 , multiple=6336
