//unique0 means: zero or one condition may be true — but more than one true condition is an error
module unique0_if_ex;
  int x = 50;
  initial begin
    unique0 if (x < 10)
      $display("Less than 10");
    else if (x < 20)
      $display("10 to 19");
    else if (x == 30)
      $display("Equal to 30");
    else
      $display("No condition matched");
  end
endmodule

OUTPUT 
No condition matched

