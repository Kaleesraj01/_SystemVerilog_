class ODD ;
  rand int unsigned  num ;
  
  function bit ODDfn(int n);
    return (n%2 !=0);
            endfunction 
             constraint cons { num inside {[35:287]} ;
                             ODDfn(num) ;}  

            endclass
            
            
  module oddfn;
     ODD n1;
  initial begin
   
    n1 = new();

    repeat (6) begin
      n1.randomize();
        $display("odd num = %0d", n1.num);
     
      #20;
    end

    $finish;
  end
endmodule
OUTPUT 
# KERNEL: odd num = 243
# KERNEL: odd num = 269
# KERNEL: odd num = 165
# KERNEL: odd num = 247
# KERNEL: odd num = 253
# KERNEL: odd num = 267
