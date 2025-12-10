package my_pkg;

  class Driver;
    extern task drive(int data);
    extern function void print_id();
  endclass

task my_pkg::Driver::drive(int data);
  $display("Driving data = %0d", data);
endtask

function void my_pkg::Driver::print_id();
  $display("Object handle = %0p", this );
endfunction
      endpackage 
      
      
module tb;
  import my_pkg::*;

  initial begin
    Driver d = new();
    d.drive(399);
    d.print_id();
  end

endmodule
OUTPUT 
      Driving data =399
      Object handle ='{}
