// Code your testbench here
// or browse Examples
module mod;
 integer data ;
  bit[3:0]bitt;
  initial begin 
    repeat (7) begin
    data = $random ;
    bitt = $urandom;//unsigned 
     
      $display ("data=%0d,bitt=%0d",data,bitt);
    end  
  end
endmodule
OUTPUT
# data=303379748,bitt=3
# data=-1064739199,bitt=2
# data=-2071669239,bitt=10
# data=-1309649309,bitt=13
# data=112818957,bitt=8
# data=1189058957,bitt=10
# data=-1295874971,bitt=0
==============================================================================================================================================
//$urandom_range
module mod;
 integer data ;
  bit[3:0]bitt;
  
  initial begin 
    repeat (7) begin
    data = $random ;
     bitt = $urandom_range(5,8);
      
      $display ("data=%0d,bitt=%0d",data,bitt);
    end
    
    
  end
endmodule


OUTPUT  
# data=303379748,bitt=8
# data=-1064739199,bitt=7
# data=-2071669239,bitt=7
# data=-1309649309,bitt=6
# data=112818957,bitt=5
# data=1189058957,bitt=7
# data=-1295874971,bitt=5

