// IMPLICATION OPERATOR

class dataframe ; 
  rand logic[2:0]selection;
  rand logic[3:0] out ;
  constraint k { (selection == 0) -> (out == 15);}  
endclass
module tb ;
  dataframe d ;
 initial begin
    d =  new();  
    repeat (8) begin 
      d.randomize();   
      $display ("selection=%0d, data=%0d ", d.selection ,  d.out ); 
  end
  end 
endmodule 
OUTPUT
# selection=6, data=14 
# selection=5, data=6 
# selection=2, data=10 
# selection=4, data=0 
# selection=5, data=15   // here 15  also occurs for sel 5 to overcome use (sel == 0) <-> (data == 15);

# selection=1, data=4 
# selection=5, data=2 
# selection=1, data=0
 
  
-=-=--=-======---------------===========----------------------========================-------------------===


//IMPLICATION <->
// IMPLICATION OPERATOR

class dataframe ;
  
  rand logic[2:0]selection;
  rand logic[3:0] out ;
  constraint k { (selection == 0) <-> (out == 15);}
  
endclass

module tb ;
  dataframe d ;
  
  initial begin
    d =  new();
    
    repeat (8) begin 
      d.randomize();
      
      $display ("selection=%0d, data=%0d ", d.selection ,  d.out );
      
    end
  end 
endmodule 
 
  OUTPUT
# selection=2, data=4 
# selection=7, data=13 
# selection=3, data=13 
# selection=4, data=9 
# selection=4, data=13 
# selection=0, data=15 //15 for sel 0
# selection=3, data=9 
# selection=0, data=15     // 15 occurs only for sel 0 onlyyyyyyy/////
