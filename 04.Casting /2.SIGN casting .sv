// Sign Casting Example
module sign_casting;
  int a;
  bit [31:0] b;

  initial begin
    //  Positive integer to unsigned cast
    a = 255;
    b = unsigned'(a);
    $display("  a = %0d,  b (unsigned) = %0d", a, b);

    // Negative integer to unsigned cast (2's complement)
    a = -255;
    b = unsigned'(a);
    $display("  a = %0d,  b (unsigned) = %0d", a, b);

    //  32-bit unsigned to signed 
    b = 32'hFFFFFFFF;  
    a = signed'(b);
    $display("  a (signed) = %0d,  b = %0d", a, b);
    //  unsigned to signed cast
    b = 47;
    a = signed'(b);
    $display("  a (signed) = %0d,  b = %0d", a, b);
  end
endmodule
OUTPUT 

# run -all
#   a = 255,  b (unsigned) = 255
#   a = -255,  b (unsigned) = 4294967041
#   a (signed) = -1,  b = 4294967295
#   a (signed) = 47,  b = 47
# exit
