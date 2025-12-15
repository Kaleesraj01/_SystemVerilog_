module test;

  initial begin
  
    fork
      begin : T1
        $display("[%0t] T1 started", $time);
        #5  $display("[%0t] T1: A", $time);
        #5  $display("[%0t] T1: B", $time);
        $display("[%0t] T1 finished", $time);
      end
      begin : T2
        $display("[%0t] T2 started", $time);
        #3  $display("[%0t] T2: X", $time);
        #7  $display("[%0t] T2: Y", $time);
        $display("[%0t] T2 finished", $time);
      end
      begin : T3
        $display("[%0t] T3 started", $time);
        #1  $display("[%0t] T3: P", $time);
        #10 $display("[%0t] T3: Q", $time);
        $display("[%0t] T3 finished", $time);
      end
    join
    $display("[%0t] All forked threads completed", $time);    
  end
endmodule


output 
[0] T1 started
[0] T2 started
[0] T3 started
[1] T3: P
[3] T2: X
[5] T1: A
[10] T1: B
[10] T1 finished
[10] T2: Y
[10] T2 finished
[11] T3: Q
[11] T3 finished
[11] All forked threads completed
xmsim: *W,RNQUIE: Simulation is complete
