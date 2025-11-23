// Code your testbench here
// or browse Examples
module reverse;
  string original = " ketta paiyan sir intha kali " ;
  string reverse = "" ;
  
  initial begin 
    for ( int i = original.len()-1 ; i>=0 ; i--) 
    reverse = {reverse , original[i]};
  
    $display("Original string: %s", original);
    $display("Reversed string: %s", reverse);
  
  end 
endmodule 
OUTPUT 
# KERNEL: Original string:  ketta paiyan sir intha kali 
# KERNEL: Reversed string:  ilak ahtni ris nayiap attek 
