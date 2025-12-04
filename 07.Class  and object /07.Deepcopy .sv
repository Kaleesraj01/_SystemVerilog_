// Code your testbench here
// or browse Examples
class kalish;
  int dob;
  int id ;
  
  function new();
    dob=2512004;
    id = 2920;
  endfunction  
  
endclass 

class raj ;
  int age ;
  int salary;
  kalish m;
  
  function new();
    age =21; salary = 89689;
    m = new();
    
  endfunction 
  
  function void copy  (raj ra);
    
    this.age = ra.age;
    this.salary = ra.salary ;
    this. m.dob = ra.m.dob;
    this.m.id = ra.m.id ;
    
  endfunction
  
  function show();
    $display ("dob =%0d ", m.dob );
     $display("id     = %0d", m.id);
    $display("age    = %0d", age);
    $display("salary = %0d", salary);
    
   
  endfunction
  
endclass



// Testbench module
module tb;
  raj r1, r2;

  initial begin
    r1 = new();
    r2 = new();
    
    r1.show;
    r2.show;

    // Change r2 values
    r2.age = 50;
    r2.salary = 99999;
    r2.m.id  = 7777;
     r2.m.dob = 1012000;

    // Before copy
    $display("Before copy: r1 values");
    r1.show();

    // Copy r2 into r1
    r1.copy(r2);

    // After copy
    $display("After copy: r1 values");
    r1.show();
    
    $display ("AFTER CHANGING NESTED OBJECT IN r1");
    r1.m.dob = 122007;
    r1.m.id = 7;
    r1.show();
    
    r2.show;
    
    
  end

endmodule

OUTPUT 
 dob =2512004 
# id     = 2920
# age    = 21
# salary = 89689
# dob =2512004 
# id     = 2920
# age    = 21
# salary = 89689
# Before copy: r1 values
# dob =2512004 
# id     = 2920
# age    = 21
# salary = 89689
# After copy: r1 values
# dob =1012000 
# id     = 7777
# age    = 50
# salary = 99999
# AFTER CHANGING NESTED OBJECT IN r1
# dob =122007 
# id     = 7
# age    = 50
# salary = 99999
# dob =1012000 
# id     = 7777
# age    = 50
# salary = 99999
    
    
  
