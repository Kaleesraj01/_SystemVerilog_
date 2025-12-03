// Code your testbench here
// or browse Examples
class bank_acc;
  string name;
  int balance ;
  
  function new(string n,int b); //constructor 
    name = n;
    balance = b ;
    endfunction 
  
  function void deposit (int amount) ;
    balance += amount ;
  endfunction 
  
  function void withdraw (int amount ) ;
    if (amount > balance )
      $display ("insufficient balance ");
    else 
      balance -= amount ;
  endfunction 
  
   function void show();
    $display("Name = %s, Balance = %0d", name, balance);
  endfunction

endclass

module tb ;
  initial begin 
    
    bank_acc customer1 = new("kalish ", 5700000); // object creation 
    bank_acc customer2;
    
    //accessing methods 
    
    customer1.show();
    customer1.deposit(500);
    customer1.show();
    customer1.withdraw(200);
    customer1.show();
    
    // HANDLE Assignment 
   
    customer2= customer1 ;
    
   // accessing 
    $display ("customerrr2");
    customer2.show() 
    
    customer2.deposit (7000);
    customer2.withdraw(10);
    
    customer2.show ();
    customer1.show ();
    
  end endmodule 


OUTPUT 
Name = kalish , Balance = 5700000
Name = kalish , Balance = 5700500
Name = kalish , Balance = 5700300
customerrr2
Name = kalish , Balance = 5700300
Name = kalish , Balance = 5707290
Name = kalish , Balance = 5707290
