class packet;
  byte packet_id;
  static byte noof_pkt_created;
  function new();
    noof_pkt_created++; 
    packet_id = noof_pkt_created;  
  endfunction  
  function void show();
    $display("packet id = %0d", packet_id);
  endfunction
  // static function  inside the class
 static  function int totalpackets();
    return noof_pkt_created;
  endfunction 
  // normal function calling static method
  function void print_total();
    $display("TOTAL pkts = %0d", packet::totalpackets());
  endfunction  
endclass
module static_packet;
  packet p[4];
 initial begin 
    foreach(p[i]) begin 
      p[i] = new();
      p[i].print_total();
    end  
  end 
endmodule


OUTPUT 
# TOTAL pkts = 1
# TOTAL pkts = 2
# TOTAL pkts = 3
# TOTAL pkts = 4
