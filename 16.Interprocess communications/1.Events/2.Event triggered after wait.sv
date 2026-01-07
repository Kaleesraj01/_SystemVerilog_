
module event_example();
  event e1;
  
  task process_A();
    #10;
    $display("@%0t: Before triggering event e1", $time);
    ->e1;
    $display("@%0t: After triggering event e1", $time);
  endtask
  
  task process_B();
    $display("@%0t: waiting for the event e1", $time);
    @e1;
   // wait(e1.triggered);
    $display("@%0t: event e1 is triggered", $time);
  endtask

  initial begin
    $display ("__________");
    #5 $display ("%0t", $time);
    fork
      process_A();
      process_B();
     
    join
     $display("_________");
  end
endmodule


OUTPUT
# __________
# 5
# @5: waiting for the event e1
# @15: Before triggering event e1
# @15: After triggering event e1
# @15: event e1 is triggered
# _________
