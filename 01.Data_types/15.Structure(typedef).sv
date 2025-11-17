// Code your testbench here
// or browse Examples
module struct_ex;
  typedef struct {
    string name ;
    int id ;
    int marks;
  } studentbio;
  
  initial begin
    studentbio s1, s2 ;
    
    s1.name = "kalish";
    s1.id = 005;
    s1.marks = 100;
    $display ("studentbio s1 : %0p " , s1);
    
    s2.name = " raj ";
    s2.id=007;
    s2.marks = 101;
    $display ("studentbio s2 : %0p " , s2);
    
  end endmodule 
    OUTPUT 
studentbio s1 : '{name:"kalish", id:5, marks:100} 
studentbio s2 : '{name:" raj ", id:7, marks:101} 


// packed struct  
module struct_example;               /'/FIXEDSIZE
  typedef struct packed {
    
    bit[31:0] salary;
    integer id;
  } employee;
    
  initial begin
    employee emp1, emp2;
    emp1.salary = 'h100056;
    emp1.id     = 1234;
    $display("EMP 1: %p", emp1);
    
    emp2.salary = 'h312000;
    emp2.id     = 321;
    $display("EMP 2: %p", emp2);
  end
endmodule

OUTPUT
EMP 1: '{salary:'h100056, id:1234}
EMP 2: '{salary:'h312000, id:321}
    
    
   
