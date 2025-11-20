module do_while_example;
  int cnt = 5;

  initial begin
    do begin
      $display("cnt = %0d", cnt);
      cnt++;
    end
    while (cnt < 5);
  end
endmodule
OUTPUT
cnt = 5 .


module do_while_example;
  int cnt = 5;

  initial begin
    do begin
      $display("cnt = %0d", cnt);
      cnt++;
    end
    while (cnt < 12);
  end
endmodule
OUTPUT 
# cnt = 5
# cnt = 6
# cnt = 7
# cnt = 8
# cnt = 9
# cnt = 10
# cnt = 11
