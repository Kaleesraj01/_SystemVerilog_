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

////////////////////////////////////////////////////////////////////////////////

class transaction;
  static int s_id;
  int id;
  
  static function void incr_s_id(); // Static function
    s_id++;
    //id++; // illegal access
  endfunction
  
  function void incr_id(); // Non-static function
    s_id++;
    id++;
  endfunction
  
endclass

module class_example;
  transaction tr[5], tr_new;
  initial begin
    foreach (tr[i]) begin 
      tr[i] = new();
      tr[i].incr_s_id();
      $display("On calling incr_s_id: Value of s_id = %0h, id = %0h", tr[i].s_id, tr[i].id);
    end
    tr[0].s_id = 0; // s_id value reset to 0
    foreach (tr[i]) begin 
      tr[i] = new();
      tr[i].incr_id();
      $display("On calling incr_id: Value of s_id = %0h, id = %0h", tr[i].s_id, tr[i].id);
    end
  end
endmodule

OUTPUT
 On calling incr_s_id: Value of s_id = 1, id = 0
# On calling incr_s_id: Value of s_id = 2, id = 0
# On calling incr_s_id: Value of s_id = 3, id = 0
# On calling incr_s_id: Value of s_id = 4, id = 0
# On calling incr_s_id: Value of s_id = 5, id = 0
# On calling incr_id: Value of s_id = 1, id = 1
# On calling incr_id: Value of s_id = 2, id = 1
# On calling incr_id: Value of s_id = 3, id = 1
# On calling incr_id: Value of s_id = 4, id = 1
# On calling incr_id: Value of s_id = 5, id = 1
# exit
