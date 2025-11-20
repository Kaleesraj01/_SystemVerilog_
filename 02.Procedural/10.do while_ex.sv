module DO_ex;
  int i = 2 ;
  
  initial begin 
    do begin 
      $display ("i=%0d ", i );
      i=i*3;
    end 
    while (i++ < 24) ;
  end 
endmodule 
OUTpUT :
i=2.
i=7.
i=22.


module do_while2;
  int cnt = 10;

  initial begin
    do begin
      $display("cnt = %0d", cnt);
      cnt--;
      if (cnt == 5)
        break;
    end
    while (cnt > 0);
  end
endmodule
OUTPUT 
cnt = 10
cnt = 9
cnt = 8
cnt = 7
cnt = 6
cnt = 5

