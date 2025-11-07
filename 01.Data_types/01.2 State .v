module two_state_ex;

  bit a;
  bit [3:0] vec;
  byte b_val;
  shortint s_val;
  int i_val;
  longint l_val;
 

  initial begin
    a     = 1;
    vec   = 4'b101x;
    b_val = 100;
    s_val = -2000;
    i_val = 123456;
    l_val = 1234567890123;
   

    $display("Single bit a = %b", a);
    $display("4-bit vector vec = %b", vec);
    $display("byte b_val = %0d", b_val);
    $display("shortint s_val = %0d", s_val);
    $display("int i_val = %0d", i_val);
    $display("longint l_val = %0d", l_val);
    
  end endmodule 

/*OUTPUT
# KERNEL: Single bit a = 1
# KERNEL: 4-bit vector vec = 1010
# KERNEL: byte b_val = 100
# KERNEL: shortint s_val = -2000
# KERNEL: int i_val = 12456
# KERNEL: longint l_val = 1234890123
