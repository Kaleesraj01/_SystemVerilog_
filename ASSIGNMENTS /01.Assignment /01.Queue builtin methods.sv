// Code your testbench here
// or browse Examples
module queue;
  int  q1[$];
   int n;
 
  initial begin
    
    q1 ='{22,33,44,55,66,77,88,99,101};
    
   
    n= q1.size(); 
    $display("n=%0d",n);
    
    q1.insert(n/2,500);
    $display("n/2 position =%0p " , q1);
    
    
    q1.delete(n-1);
    $display("n-1 =%0p " , q1);
    
    q1.pop_front();
    $display("after popfront  =%0p " , q1);
    
    q1.pop_back();
    $display("after popback  =%0p " , q1);
    
    q1.push_front(1001);
    $display("after pushfront  =%0p " , q1);
    
    $display("n=%0d",n);
    
            
             
             end 
endmodule

OUTPUT
n=9
n/2 position ='{22, 33, 44, 55, 500, 66, 77, 88, 99, 101}  
n-1 ='{22, 33, 44, 55, 500, 66, 77, 88, 101}  
after popfront  ='{33, 44, 55, 500, 66, 77, 88, 101}  
after popback  ='{33, 44, 55, 500, 66, 77, 88}  
after pushfront  ='{1001, 33, 44, 55, 500, 66, 77, 88}  
n=9
    
