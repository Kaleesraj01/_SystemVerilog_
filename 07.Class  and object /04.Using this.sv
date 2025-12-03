class person ;
  
  int age ;
  string name ;
  
  function new ( string name , int age ) ;
    
   this.name = name ; // this.age represent object variable
    this.age = age ; // a represent local variable 
     
    endfunction 
      
      function void show ();
        $display (" name =%s ,,,, age =%0d " , this.name , age ) ;
        
      endfunction 
      endclass
      
      module tb ;
        initial begin 
          
          person p1 = new ("RAJ" , 21);
          
          p1.show();
          
        end 
      endmodule 
OUTPUT 

name =RAJ ,,,, age =21 
            
    
    
  
