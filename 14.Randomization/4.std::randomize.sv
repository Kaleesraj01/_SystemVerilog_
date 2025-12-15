module ex;
  logic[5:1] data ;
  initial begin
    repeat(9) begin 
    std::randomize(data);
    $display ("data=%0d",data);
  end 
  end
endmodule 

OUTPUT
# data=3
# data=18
# data=10
# data=29
# data=24
# data=26
# data=0
# data=12
# data=18
