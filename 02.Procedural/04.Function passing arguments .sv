module pass_by_value;
 
  function int sum(int x,y);
    x = x+y;//x=50
    y = x+y;//y=80
    return x+y; //((x+y)+y) =130
  endfunction

  initial begin
  int   x = 20;
   int  y = 30; int z ;
    $display("x = %0d\ny = %0d\n",x,y);
    z = sum(x,y);
    $display("x = %0d\ny = %0d\nz = %0d\n",x,y,z);
   
  end
endmodule

OUTPUT
x = 20
y = 30

x = 20
y = 30
z = 130


// PASS BY REFERENCE 

module pass_by_reference;
  int x,y,z;
  function int sum(ref int x,y);//const
    x = x+y;//x=50
    y = x+y;//y=80
    return x+y; //((x+y)+y) =130
  endfunction

  initial begin
    x = 20;
    y = 30;
    $display("x = %0d\ny = %0d\n",x,y);
    z = sum(x,y);
    $display("x = %0d\ny = %0d\nz = %0d\n",x,y,z);
   
  end
endmodule

OUTPUT 
X=20
Y=30

X=50
Y=80
Z=130
