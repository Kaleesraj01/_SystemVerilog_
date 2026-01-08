// Code your testbench here
// or browse Examples
// generic unbounded mailbox 

module mailm;
  
  mailbox mail = new ();
  byte value ;
  bit ctrl ;
  
  task trans();
    repeat(7)
      begin
        value = $random ;
        ctrl = $random;
        
        mail.put (value);
        mail.put(ctrl);
        
        $display ("value =%0d", value );
        $display ("ctrl =%0d", ctrl );
      end
  endtask
  
  task recev();
    repeat (7)
      begin 
        mail.get (value);
        mail.get (ctrl);
        
        $display ("recev value =%0d", value );
        $display ("recev ctrl =%0d", ctrl );
      end
  endtask 
  
  initial begin 
    fork 
      trans();
      recev();
    join 
  end 
endmodule 

//output
value =36
ctrl =1
value =9
ctrl =1
value =13
ctrl =1
value =101
ctrl =0
value =1
ctrl =1
value =118
ctrl =1
value =-19
ctrl =0
recev value =36
recev ctrl =1
recev value =9
recev ctrl =1
recev value =13
recev ctrl =1
recev value =101
recev ctrl =0
recev value =1
recev ctrl =1
recev value =118
recev ctrl =1
recev value =-19
recev ctrl =0
