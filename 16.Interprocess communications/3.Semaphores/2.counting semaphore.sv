module tb;

  semaphore sem;

  initial begin
    sem = new(3);   // 3 keys

    fork
      worker("A",1);
      worker("B",2);
      worker("C",1);
      worker("D",1);
    join
  end

  task automatic worker(string name, int keys);
    $display("%s requesting %0d keys at %0t", name, keys, $time);

    sem.get(keys);

    $display("%s entered with %0d keys at %0t", name, keys, $time);

    #10;

    sem.put(keys);

    $display("%s released %0d keys at %0t", name, keys, $time);
  endtask

endmodule   


output 
A requesting 1 keys at 0
A entered with 1 keys at 0
B requesting 2 keys at 0
B entered with 2 keys at 0
C requesting 1 keys at 0
D requesting 1 keys at 0
A released 1 keys at 10
B released 2 keys at 10
C entered with 1 keys at 10
D entered with 1 keys at 10
C released 1 keys at 20
D released 1 keys at 20
