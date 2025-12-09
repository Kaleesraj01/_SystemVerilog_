class Device;

  virtual function void brand();
    $display("Generic Device");
  endfunction
  virtual task specs();
    $display("Specs: No specific details");
  endtask
endclass


class Laptop extends Device;

  function void brand();
    $display("Brand : Dell Laptop");
  endfunction
  task specs();
    $display("CPU : i5"); 
  endtask
endclass


class Mobile extends Device;

  function void brand();
    $display("Brand : Samsung Mobile");
  endfunction
  task specs();
    $display("Camera : 48MP");
    $display("network = 6G");
  endtask
endclass


class Tablet extends Device;

  function void brand();
    $display("Brand : Apple ");
  endfunction
  task specs();
    $display("Display : 6.2 inch");
    $display("Storage : 128GB");
  endtask
endclass


module test_tb;

  Device d;
  Laptop L;
  Mobile M;
  Tablet T;

  initial begin
    L = new();
    M = new();
    T = new();

    d = L;    // base handles multiple child object 
    d.brand();
    d.specs();

    d = T;
    d.brand();
    d.specs();
    
    d = M;
    d.brand();
    d.specs();
  end

endmodule

OUTPUT
Brand : Dell Laptop
CPU : i5
Brand : Apple 
Display : 6.2 inch
Storage : 128GB
Brand : Samsung Mobile
Camera : 48MP
network = 6G
