class parent ;
 int i =45;
    string name = "raj";
  protected function display();
    $display   ("name=%0s , i=%0d ", name  , i );
  endfunction 
endclass 

// class child extends parent ;
//   function show();
//     $display ("name=%0s , i=%0d ", name  , i );
//   endfunction 
// endclass 
module tb;
  initial begin 
    parent  c;
    c= new();
    
    c.display ();
  end 
    endmodule 
  
//output
* Error (suppressible): (vlog-8688) testbench.sv(24): Illegal access to protected member display.
        Full name of member: design_sv_unit::parent::display
        Full name of calling scope: outside a class context
** Warning: testbench.sv(24): (vlog-2240) Treating stand-alone use of function 'display' as an implicit VOID cast.
End time: 07:27:52 on Dec 09,2025, Elapsed time: 0:00:00
Errors: 1, Warnings: 1
 
