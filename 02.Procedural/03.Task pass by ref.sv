module task_pass_by_value;
  task automatic ex(ref int x, int y);
    x = x + y;
    y = y + 1;
    $display("Inside task: x=%0d, y=%0d", x, y);
  endtask

  initial begin
    int a = 0, b = 1;
    ex(a, b);
    $display("Outside task: a=%0d, b=%0d", a, b);
  end
endmodule

OUTPUT 

the values of x,y inside task are 1 ,  2 
the values of a,b outside task are 1 ,  2 
