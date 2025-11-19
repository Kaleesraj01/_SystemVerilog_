module structure_memory ;
  typedef struct { 
    logic [3:0] id;
    logic [7:0] roll_No;
    logic [3:1] marks;
    
  } instr_t;
  
  
  instr_t mem [4:0] ;
  initial begin
    mem[0] = '{id: 4'd1, roll_No: 8'd101, marks: 3'b101};
    mem[1] = '{id: 4'd2, roll_No: 8'd102, marks: 3'b110};
    mem[2] = '{id: 4'd3, roll_No: 8'd103, marks: 3'b111};
    mem[3] = '{id: 4'd4, roll_No: 8'd104, marks: 3'b100};
    mem[4] = '{id: 4'd5, roll_No: 8'd105, marks: 3'b011};
       
    
    $display (mem);
   
  end 
endmodule


OUTPUT
'{'{id:5, roll_No:105, marks:3}, '{id:4, roll_No:104, marks:4}, '{id:3, roll_No:103, marks:7}, '{id:2, roll_No:102, marks:6}, '{id:1, roll_No:101, marks:5}}
  
