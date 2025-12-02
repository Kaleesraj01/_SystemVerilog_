module process_ctrl;

initial begin
 

 fork
    // THREAD 1
    begin : T1
      $display("[%0t] T1: Started", $time);
      #10 $display("[%0t] T1: Working", $time);
      #10 $display("[%0t] T1: Finished", $time);
    end

    // THREAD 2
    begin : T2
      $display("[%0t] T2: Started", $time);
      #5  $display("[%0t] T2: kill T1", $time);
      disable T1;      //  KILL T1 using process control
      $display("[%0t] T2: Done", $time);
    end

    // THREAD 3
    begin : T3
      $display("[%0t] T3: Started", $time);
      #15 $display("[%0t] T3: Finished", $time);
    end
  join_none    // Do not wait for threads here

  $display("[%0t]  Continuing without waiting", $time);

  wait fork;   // wait untill all active fork threads finish

    $display("[%0t]All threads completed", $time);
end

endmodule


    [0]  Continuing without waiting
[0] T1: Started
[0] T2: Started
[0] T3: Started
[5] T2: kill T1
[5] T2: Done
[15] T3: Finished
[15]All threads completed
