// Code your testbench here
// or browse Examples
// Code your testbench here
// or browse Examplesclals

class mailbox_ex;
  mailbox mail ;
 
  int value = 344444441;
  string name = "raj KALEES";
  bit mon = 1 ;
  byte data = 2'b10;
  
  function new ();
    mail= new(4);
  endfunction 
  
  task putting ();
    mail.put(value);
    mail.put(mon);
    mail.put (name);
    mail.put (data);
    
    $display ("val =%0d , mon=%0d , name =%0s , data =%0d", value , mon , name , data );
  endtask
  
  
  task fetching ();
   
    int value_1 ;
    string name_1;
    bit mon_2;
//     byte data ;
    
    
    
    mail.get(value_1);
    mail.get(mon_2);
    mail.get(name_1);
    mail.get(data);
    
    $display (" FETCHED    val1 =%0d , mon2=%0d , name1=%0s , data =%0d", value_1 , mon_2 , name_1 , data );
    
  endtask 
endclass

  
  module tasks ;
    initial begin 
    
    mailbox_ex ex = new();
    
    ex.putting();
    ex.fetching();
  end 
  endmodule 
//output:
# val =344444441 , mon=1 , name =raj KALEES , data =2
#  FETCHED    val1 =344444441 , mon2=1 , name1=raj KALEES , data =2



// FORK JOIN
class mailbox_ex;
  mailbox mail ;
 
  int value = 344444441;
  string name = "raj KALEES";
  bit mon = 1 ;
  byte data = 2'b10;
  
  function new ();
    mail= new(4);
  endfunction 
  
  task putting ();
    mail.put(value);
    mail.put(mon);
    mail.put (name);
    mail.put (data);
    
    $display ("val =%0d , mon=%0d , name =%0s , data =%0d", value , mon , name , data );
  endtask
  
  
  task fetching ();
   
    int value_1 ;
    string name_1;
    bit mon_2;
//     byte data ;
    
    
    
    mail.get(value_1);
    mail.get(mon_2);
    mail.get(name_1);
    mail.get(data);
    
    $display (" FETCHED    val1 =%0d , mon2=%0d , name1=%0s , data =%0d", value_1 , mon_2 , name_1 , data );
    
  endtask 
endclass

  
  module tasks ;
    initial begin 
    
    mailbox_ex ex = new();
      fork 
    
    ex.putting();
    ex.fetching();
      join
  end 
  endmodule 
# val =344444441 , mon=1 , name =raj KALEES , data =2
#  FETCHED    val1 =344444441 , mon2=1 , name1=raj KALEES , data =2
