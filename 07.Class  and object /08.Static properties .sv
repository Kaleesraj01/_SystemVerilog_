// Code your testbench here
// or browse Examples
class packet ;
  byte packet_id;
  static byte noof_pkt_created ;
  
  function new();
    noof_pkt_created++; 
    packet_id = noof_pkt_created;  
  endfunction 
  
  function show();
    $display ("packet id = %0d", packet_id);
    endfunction
endclass 

module static_packet ;
  
  packet p[4] ;
  initial begin 
  foreach(p[i]) begin 
  
  p[i] = new();
  
    p[i].show();
  end  
  end 
endmodule 


OUTPUT 
# packet id = 1
# packet id = 2
# packet id = 3
# packet id = 4


  
  
