class datas;
  randc int data ;
endclass 

class vlaue;
  int data[10];
  
  function void pre_randomize();
    datas d;
    
    d=new();
    
    
    foreach (data[i]) begin 
      d.randomize();
      data[i] = d.data;
      
      $display ("datas=%0d, data[%0d]=[%0d]" ,d.data,i,data[i]);
    end 
  endfunction 
endclass
  
  module tb ;
    vlaue v ;
    initial begin 
      v = new();
      
      assert (v.randomize())
      else 
        $display("randomizATION FAILED ");
      
    end 
  endmodule 

OUTPUT
# datas=1947854238, data[0]=[1947854238]
# datas=1375226795, data[1]=[1375226795]
# datas=-2083371104, data[2]=[-2083371104]
# datas=-1481706307, data[3]=[-1481706307]
# datas=-1011111870, data[4]=[-1011111870]
# datas=112771439, data[5]=[112771439]
# datas=1545927044, data[6]=[1545927044]
# datas=1759196097, data[7]=[1759196097]
# datas=-2139697818, data[8]=[-2139697818]
# datas=-1401786957, data[9]=[-1401786957]
