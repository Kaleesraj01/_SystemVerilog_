// Code your testbench here
// or browse Examples
class parent ;
  int data;
  function call (int datas);
    data = datas;
  endfunction 
endclass

class child extends parent ;
  int addr ;
  int sum;
  function call (int v);
    sum = addr+ v ;
  endfunction
endclass

module tb ;
  initial 
    begin 
      parent p1 = new();
      
      child c2 = new();
      
      c2.addr = 51;
      
      p1.call (191);
      c2.call (300);
      
      $display ("child =%0d ", c2.sum);
      
      
    end endmodule 

OUTPUT
child =351
