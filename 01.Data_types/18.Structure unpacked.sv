
  module struct_ex;
  // Unpacked struct
  struct {
    bit [7:0] intr;     
    logic [23:0] addr;   
  }STRU;
  initial begin
    // Assign individual fields
    STRU.intr = 8'hFF;
    STRU.addr = 24'h123456;
    
    $display("STRU.intr = %h, STRU.addr = %h", STRU.intr, STRU.addr);
    
    // Cannot assign entire struct at once
    // STRU = 32'h00FFFFFF;  // Error in unpacked struct

    // Aggregate assignment
    STRU = '{8'h12, 24'hABCDEF};
    $display(" STRU.intr = %h, STRU.addr = %h", STRU.intr, STRU.addr);
  end
endmodule

OUTPUT 
# KERNEL: STRU.intr = ff, STRU.addr = 123456
# KERNEL:  STRU.intr = 12, STRU.addr = abcdef

   
