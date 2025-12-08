virtual class Animal ;
  pure virtual function void sound();
    endclass 
    
    class lion extends Animal ;
      function void sound();
        $display("lion roars ");
      endfunction 
        endclass 
        
        class dog extends Animal;
          function void sound ();
            $display ("DOG BARKS ");
          endfunction 
        endclass 
        
        module tb ;
          initial begin 
            Animal A ;
            dog D;
            lion L = new();
            
            A = L ;
            A.sound() ;
            
            D = new();
            
            A = D;
            A.sound();
            
          end 
        endmodule 

    OUTPUT 
lion roars 
DOG BARKS 
