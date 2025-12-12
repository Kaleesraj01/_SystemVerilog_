class Randomize;
  randc byte unsigned data ;
  rand int addr ;
endclass
module R;
  Randomize r;
  initial begin 
    r = new();
    repeat (9) begin
      r.randomize();
      $display("data=%0d, addr=%0d ",r.data,r.addr);
    end
  end
endmodule 

OUTPUT 
# data=148, addr=-554541660 
# data=96, addr=-1925058473 
# data=188, addr=1451451332 
# data=170, addr=-661323898 
# data=6, addr=-628027847 
# data=190, addr=810861914 
# data=165, addr=-1723371903 
# data=129, addr=1146280807 
# data=136, addr=-352170198 
