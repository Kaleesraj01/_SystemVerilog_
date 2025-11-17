module student_ex;
   typedef struct {
    string name;
    int    marks;
    int    id;
  } student;

  
  function student create_student (string name , int marks , int id );
    student st;
    st.name = name ;
    st.marks= marks ;
    st.id = id ;
    return  st;
  endfunction 
  
  function void print_student (student st );
    $display("student = %0p ", st );
  endfunction 
  
  initial begin 
    student s1,s2;
    
    s1 = create_student("kalish" , 100 , 007 );
    s2 = create_student ("raj " , 99 , 010);
    
    
    print_student(s1);
    print_student(s2);
  end endmodule 
   
    OUTPUT
student = '{name:"kalish", marks:100, id:7} 
student = '{name:"raj ", marks:99, id:10} 
