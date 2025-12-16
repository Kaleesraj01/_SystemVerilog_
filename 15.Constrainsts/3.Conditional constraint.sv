// Code your testbench here
// or browse Examples
class RAndom;
  rand bit sel ;
  rand logic [3:0] data ;
  constraint c1 {data==(sel?10:5);}
endclass 
module tb ;
  RAndom r ;
  initial begin 
    r=new(); 
    repeat (4) begin
    r.randomize();
      $display ("sel=%0d,data=%0d",r.sel, r.data );
    end  end
    endmodule 

OUTPUT 
# sel=0,data=5
# sel=0,data=5
# sel=0,data=5
# exit

  
