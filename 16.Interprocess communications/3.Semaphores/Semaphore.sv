module tb;

  semaphore sem;
  int counter = 0;

  initial begin
    sem = new(1);   // 1 key available

    fork
      begin
        process("P1");
      end
      begin
        process("P2");
      end
    join
  end


  task automatic process;
    input string name;

    $display("%s waiting for key at time %0t", name, $time);

    sem.get();   // take key 

    $display("%s entered critical section at %0t", name, $time);

    #5;  // simulate work
    counter = counter + 3;

    $display("%s leaving, counter=%0d", name, counter);

    sem.put();   // return key 

  endtask

endmodule


Output 
P1 waiting for key at time 0
P1 entered critical section at 0
P2 waiting for key at time 0
P1 leaving, counter=3
P2 entered critical section at 5
P2 leaving, counter=6
