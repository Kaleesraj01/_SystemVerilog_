typedef class child;  // Forward class declaration 
  class parent ;
    logic[7:0]  num;
    child c5=new();
    function void show();
      $display ("num=%0d , data =%0d" , num , c5.data) ;
    endfunction
  endclass 
  class child ;
    int data;
  endclass
  module tb ;
    parent p1 ;
    initial begin 
    p1=new();
    p1.num = 240;
    p1.c5.data = 73389;
      p1.show();
    end 
  endmodule 
   OUTPUT
  num=240 , data =73389
      
