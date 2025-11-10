module queue_ex;
  int q1[$];
  int q2[$];
  initial begin 
    q1= '{20,30,60,80,90};
    $display ("Elements in the q1 = %p ", q1);
    
  //Insert
    
    q1.insert (5,100);
    $display ("Elements in the q1 after inserting  = %p ", q1);
    
    q1.insert (3,300);
    $display ("Elements in the q1 after inserting  = %p ", q1);
    
    //insert front 
    q1.push_front (1000);
    $display ("Elements in the q1 after Push Front  = %p ", q1);
    
    // insert Back 
    q1.push_back (1000);
    $display ("Elements in the q1 after Push Back  = %p ", q1);
    
    //size 
    $display ("Elements in the q1   = %p ", q1.size());
    
    // Delete 
    
    q1.delete(5);
    $display ("Elements in the q1 after deleting 4 = %p ", q1);
    
    
    //pop back 
    q1.pop_back();
    $display ("Elements in the q1   after pop back   = %p ", q1);
    
    /*OUTPUT 
    # KERNEL: Elements in the q1 = '{20, 30, 60, 80, 90} 
# KERNEL: Elements in the q1 after inserting  = '{20, 30, 60, 80, 90, 100} 
# KERNEL: Elements in the q1 after inserting  = '{20, 30, 60, 300, 80, 90, 100} 
# KERNEL: Elements in the q1 after Push Front  = '{1000, 20, 30, 60, 300, 80, 90, 100} 
# KERNEL: Elements in the q1 after Push Back  = '{1000, 20, 30, 60, 300, 80, 90, 100, 1000} 
# KERNEL: Elements in the q1   = 9 
# KERNEL: Elements in the q1 after deleting 4 = '{1000, 20, 30, 60, 300, 90, 100, 1000} 
# KERNEL: Elements in the q1   after pop back   = '{1000, 20, 30, 60, 300, 90, 100} 
# KERNEL: Simulation has finished. There are no more test vectors to simulate.
    
    
  end endmodule
