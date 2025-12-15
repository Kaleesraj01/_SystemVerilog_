class data_frame ;
  rand logic [2:0] sel;
 randc int data ;
  constraint c1{sel==3;}
  constraint c2{data ==sel*6;}
endclass
module tb;
  data_frame D;
   initial begin 
     D = new();
     repeat (7) begin 
       D.randomize();
       
       $display ("data =%0d,sel=%0d", D.data,D.sel);
     end 
   end
endmodule 

OUTPUT
# data =18,sel=3
# data =18,sel=3
# data =18,sel=3
# data =18,sel=3
# data =18,sel=3
# data =18,sel=3
# data =18,sel=3
     
