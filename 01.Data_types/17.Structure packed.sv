module packed_example;
  
  // Packed struct stored as contiguous bits
  struct packed {
    bit [7:0] intr;      // 8 bits
    logic [23:0] addr;   // 24 bits
  } STRU;

  initial begin
    // Assign individual fields
    STRU.intr = 8'hFF;
    STRU.addr = 24'h123456;
    
    $display("STRU.intr = %h, STRU.addr = %h", STRU.intr, STRU.addr);
    
    // Assign entire struct 
    STRU = 32'h00FFFFFF;
    $display("Packed Struct - Whole variable: STRU = %h", STRU);

    // Aggregate assignment
    STRU = '{8'h12, 24'hABCDEF};
    $display("Packed Struct - Aggregate assignment: STRU = %h", STRU);
  end
endmodule


OUTPUT 
# STRU.intr = ff, STRU.addr = 123456
# Packed Struct - Whole variable: STRU = 00ffffff
# STRU.intr = 00, STRU.addr = ffffff
# Packed Struct - Aggregate assignment: STRU = 12abcdef
