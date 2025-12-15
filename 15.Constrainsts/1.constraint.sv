class data_frame ;
 randc int data ;
  constraint limit {data <=23;
                   data >= 18 ;}
endclass

module tb;
  data_frame D;
   initial begin 
     D = new();
     repeat (7) begin 
       D.randomize();
       
       $display ("data =%0d", D.data);
     end 
   end
endmodule 
     
     # data =21
# data =23
# data =22
# data =20
# data =19
# data =18
# data =20
