module dynamic_array ;
  int dy1[];
  int i;
  initial begin 
    dy1=new[11];
    dy1='{11,22,33,44,55,66,77,88,99,00,25};
    
    foreach (dy1[i]) begin
    
    $display ("dy1[%0d]= %0d" , i , dy1[i]);
    end 
    
    $display("size=%0d", dy1.size());
    
    
    dy1.shuffle(); //Shuffle modifies so return nothing 
    $display ("suffle =%0P ", dy1);


    OUTPUT 
    dy1[0]= 11
dy1[1]= 22
dy1[2]= 33
dy1[3]= 44
dy1[4]= 55
dy1[5]= 66
dy1[6]= 77
dy1[7]= 88
dy1[8]= 99
dy1[9]= 0
dy1[10]= 25
size=11
suffle ='{77, 22, 55, 66, 11, 99, 0, 25, 44, 88, 33}  
           V C S   S i m u l a t i o n   R e p o r t
    
  end 
endmodule
