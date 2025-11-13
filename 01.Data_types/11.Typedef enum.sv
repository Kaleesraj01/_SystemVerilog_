// Code your testbench here
// or browse Examples
module enum_ex;
  typedef enum {CAR , BIKE , TRAIN , AEROPLANE , BOAT , CYCLE } transport_e ;
  transport_e trans_1 , trans_2 , trans_3 , trans_4 ;
  initial begin 
 
    trans_1 = CAR;
    trans_2 = TRAIN;
    trans_3 = BOAT;
    trans_4 = CYCLE;

    $display("Transport 1 = %s", trans_1.name());
    $display("Transport 2 = %s", trans_2.name());
    $display("Transport 3 = %s", trans_3.name());
    $display("Transport 4 = %s", trans_4.name());
  end
endmodule  

// OUTPUT
// # KERNEL: Transport 1 = CAR
// # KERNEL: Transport 2 = TRAIN
// # KERNEL: Transport 3 = BOAT
// # KERNEL: Transport 4 = CYCLE
