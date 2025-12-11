// Code your testbench here
// or browse Examples

class packet ;
  int addr ;
  const int data =92;
  function void  display ();
    $display("addr =%0d , data=%0d", addr , data );
  endfunction   
endclass

module tb ;
  packet p1;
//   p1=new();
  initial begin    p1=new();
  p1.addr = 39833;
  p1.display();
  end  
endmodule 

OUTPUT 
addr =39833
data=92

  
  
  
  
