//PROTECTED QUALIFIER ACCESSED IN SUBCLASS  
class bank ;
  protected int balance ;
  protected string name ;
  
  function new(int a , string n);
    balance= a ;
    name = n;   
    $display ("balance =%0d , name =%s ", a,n );
  endfunction   
endclass

module tb;
  initial begin 
    bank b = new(1001230, kaleesraj);
  end 
endmodule 

OUTPUT 
balance =1001230, name =kaleesraj
 
  
  
