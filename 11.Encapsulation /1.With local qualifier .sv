//with local qualifier 

class datahide;
  local int i;
endclass 
module class_ex ;
  initial begin 
    datahide dh = new();
        dh.i=10120;   
    $display ("i=%0d ", dh.i );  
  end 
endmodule 

OUTPUT
-- Compiling module class_ex
** Error (suppressible): (vlog-8688) testbench.sv(13): Illegal access to local member i.
        Full name of member: design_sv_unit::datahide::i
        Full name of calling scope: outside a class context
** Error (suppressible): (vlog-8688) testbench.sv(15): Illegal access to local member i.
        Full name of member: design_sv_unit::datahide::i
        Full name of calling scope: outside a class context
End time: 05:53:48 on Dec 09,2025, Elapsed time: 0:00:00
Errors: 2, Warnings: 0
End time: 05:53:48 on Dec 09,2025, Elapsed time: 0:00:00


    // WITHOUT LOCAL QUAIFIER 
  class datahide;
   int i;
endclass 
module class_ex ;
  initial begin 
    datahide dh = new();
        dh.i=10120;   
    $display ("i=%0d ", dh.i );  
  end 
endmodule 


           i=10120 
    
  
  
