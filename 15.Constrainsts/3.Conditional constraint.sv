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
==============================================================================================================

// Code your testbench here
// or browse Examples
class RAndom;
  rand bit sel ;
  rand logic [3:0] data ;
  constraint c1 {if(sel==0) data==5; 
    else data==10;}
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
     
  
# sel=0,data=5
# sel=1,data=10
# sel=0,data=5
# sel=1,data=10
=====================================================================================================

// Code your testbench here
// or browse Examples
class RAndom;
  rand logic[2:0] sel ;
  rand logic [3:0] data ;
  constraint c1 {if(sel==0) data==5; 
                 else if (sel==1) data==10;
                else data==7;}
endclass 

module tb ;
  RAndom r ;
  initial begin 
    r=new(); 
    repeat (7) begin
    r.randomize();
      $display ("sel=%0d,data=%0d",r.sel, r.data );
    end  end
    endmodule 
     
  
 sel=4,data=7
# sel=6,data=7
# sel=7,data=7
# sel=7,data=7
# sel=7,data=7
# sel=6,data=7
# sel=5,data=7
  
