
module enum_ex;
  enum {CAR , BIKE , TRAIN , AEROPLANE , BOAT , CYCLE } transport_e ;
//   transport_e trans_1 , trans_2 , trans_3 , trans_4 ;
  initial begin
//     trans_1 = CAR;
//     trans_2 = TRAIN;
//     trans_3 = BOAT;
//     trans_4 = CYCLE;
    transport_e = AEROPLANE;
    $display("Transport 1 = %s", transport_e.name());

//     $display("Transport 1 = %s", trans_1.name());
//     $display("Transport 2 = %s", trans_2.name());
//     $display("Transport 3 = %s", trans_3.name());
//     $display("Transport 4 = %s", trans_4.name());
 end
endmodule

// OUTPUT 
//  Transport 1 = AEROPLANE 




module enum_ex;
  enum {CAR , BIKE , TRAIN , AEROPLANE , BOAT , CYCLE } transport_e , trans , raj ;
//   transport_e trans_1 , trans_2 , trans_3 , trans_4 ;
  initial begin

    transport_e = CAR ;
    trans = BOAT;
    raj =  AEROPLANE;
    
    
    $display("Transport 1 = %s", transport_e.name());
    $display("Transport 2 = %s", trans.name());
    $display("Transport 2 = %s", raj.name());

 end
endmodule


OUTPUT 
Transport 1 = CAR
Transport 2 = BOAT
Transport 2 = AEROPLANE
