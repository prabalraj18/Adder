module ripple_carry_adder_tb ();
 
  reg [3:0]a ,b;
  reg Cin ;
  wire [3:0]sum;
  wire carry4 ;
  
  ripple_carry_adder dut (
  	  .a(a),
  	  .b(b),
  	  .Cin(Cin),
  	  .sum(sum),
  	  .carry4(carry4)
  	);
  	
 initial begin 
   Cin = 0 ;
    $dumpfile("ripple_carry_adder.vcd");
    $dumpvars(0,ripple_carry_adder_tb);
    $monitor("|Time = %0d   a = %b   b = %b   sum = %b   carry = %b  ",$time,a,b,sum,carry4 );
    
    
    a = 4'b0011 ; b = 4'b0111 ;
#5  a = 4'b1000 ; b = 4'b0110 ;
#5  a = 4'b1111 ; b = 4'b1111 ;
#5  a = 4'b1000 ; b = 4'b1001 ;
#5  a = 4'b0100 ; b = 4'b0010 ;
#5  a = 4'b1100 ; b = 4'b1101 ;
#5
   $finish ;
   
 end
 
endmodule 
     	
