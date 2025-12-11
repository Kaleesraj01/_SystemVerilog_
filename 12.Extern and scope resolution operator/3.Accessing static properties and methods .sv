// Code your testbench here
// or browse Examples

class Bike ;
  static string brand = "YAMAHA";
  static string model ;
  static function show( string modelname);
    model = modelname ;
    $display ("model=> %0s", modelname);
endfunction   
endclass
module tb ;
//   Bike b ;  
  initial begin 
    $display ("brand =%0s",Bike::brand );
    Bike::show ("R15 version 7");
    end 
endmodule
  OUTPUT
brand =YAMAHA
model=> R15 version 7
