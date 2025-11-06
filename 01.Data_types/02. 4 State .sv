module four_state_example;

  logic l;
  reg   r;
  reg [7:0] r8;
  wire  w;
  tri   t;
  logic [3:0] a;

  assign w = l;
  assign t = a[0];

  initial begin
    l  = 1'b0;
    r  = 1'b1;
    r8 = 8'b10101010;
    a  = 4'b10xz;

    #5;
    $display("l=%b r=%b r8=%b w=%b t=%b a=%b", l, r, r8, w, t, a);

    l = 1'bx;
    r = 1'bz;

    #5;
    $display("After X/Z assignment -> l=%b r=%b", l, r);
  end

endmodule


/*OUTPUT 
# KERNEL: l=0 r=1 r8=10101010 w=0 t=z a=10xz
# KERNEL: After X/Z assignment => l=x r=z */
