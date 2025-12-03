class transaction;
  bit [31:0] data;
  int id;
  
  task update(bit [31:0] m_data, int m_id);
    data = m_data;
    id = m_id;
  endtask
  
  function void show();
    $display("Value of data = %0h and id = %0h",data, id);
  endfunction
endclass

module class_example;
  initial begin
    transaction tr = new();
    tr.update(5, 9);
    tr.show ();
  end
endmodule

OUTPUT 
Value of data = 5 and id = 9 
