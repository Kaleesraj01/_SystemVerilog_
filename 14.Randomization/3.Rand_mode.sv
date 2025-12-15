// Code your testbench here
// or browse Examples
class Packet ;
  rand int data;
  randc byte value;
  bit parity ;
  
  function void pre_randomize ();
    $display  ("data=%0d,value=%0d,parity=%0d" , data ,value ,parity);
  endfunction 
  
  function void post_randomize();
    parity =^data ;
    $display ("data=%0d,value=%0d,parity=%0d" , data ,value ,parity);
    endfunction 
endclass

module tb;
  Packet p ;
  initial begin 
    
    p=new();
    
    
    repeat (7) begin
      p.randomize(); end 

    $display("After randmode0"
            );
            
    
    p.data = 11010700;
    p.data.rand_mode(0);
    p.randomize ();
    
    $display("After randommode1");
    
    p.data.rand_mode(1); p.data=28393873;
    p.randomize();
  
    
  end 
endmodule

# data=0,value=0,parity=0
# data=-703950114,value=90,parity=0
# data=-703950114,value=90,parity=0
# data=-1752409002,value=-82,parity=0
# data=-1752409002,value=-82,parity=0
# data=1518089567,value=97,parity=1
# data=1518089567,value=97,parity=1
# data=-4315301,value=-25,parity=1
# data=-4315301,value=-25,parity=1
# data=1296376467,value=113,parity=1
# data=1296376467,value=113,parity=1
# data=1779763087,value=-21,parity=1
# data=1779763087,value=-21,parity=1
# data=1360007918,value=-43,parity=0
# After randmode0
# data=11010700,value=-43,parity=0
# data=11010700,value=-7,parity=1
# After randommode1
# data=28393873,value=-7,parity=1
# data=1194735419,value=-35,parity=0
    
    
  
