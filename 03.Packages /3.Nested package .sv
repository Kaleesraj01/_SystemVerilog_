package base_pkg;
  typedef logic [7:0] byte_t;
  function int add(int a, int b);
    return a + b;
  endfunction
endpackage


package extended_pkg;
  import base_pkg::*;
  
  typedef struct {
    byte_t id;
    byte_t value;
  } data_t;

function void data (data_t x);
  $display("d.id=%0d , d.value=%0d ",x.id , x.value);  //for data(d)
endfunction

  function int double_add(int x, int y);
    return add(x,y)*2;      // uses function from base_pkg
  endfunction
endpackage


module test;
  import extended_pkg::*;
  data_t d;
  initial begin
   
    d.id = 8'd100;
     d.value = 8'd1;
    
    data(d);
    $display("Result = %0d", double_add(3,4)); // uses nested import
  end   
endmodule
OUTPUT 

# KERNEL: d.id=100 , d.value=1 
# KERNEL: Result = 14
