module state_2_ex ;
  bit a;
  byte b;
  shortint c;
  int d ;
  longint e ;
  integer f;
  time g ;


  initial begin 
    a=1'bz;
    b=8'bxz;
    c = 16'd30000;
    d = 32'd100000;
    e = 64'h9xxx9999;
    f = 32'd50000;
    g = 100ns;
    
    $display("bit       a = %0b", a);
    $display("byte      b = %0d", b);
    $display("shortint  c = %0d", c);
    $display("int       d = %0d", d);
    $display("longint   e = %0d", e);
    $display("integer   f = %0d", f);
    $display("time      g = %0t", g);
  end
  
endmodule

/*OUTPUT

# KERNEL: bit       a = 0
# KERNEL: byte      b = 0
# KERNEL: shortint  c = 30000
# KERNEL: int       d = 100000
# KERNEL: longint   e = 2415958425
# KERNEL: integer   f = 50000
# KERNEL: time      g = 100*/
    



  
