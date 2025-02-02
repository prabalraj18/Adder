module carry_look_ahead_adder_tb ;

 reg [3:0] a , b ;
 reg Cin ;
 wire  [3:0] sum ;
 wire  carry4 ;
 
 carry_look_ahead_adder_4bit dut ( .a(a),
                                   .b(b),
                                   .Cin(Cin),
                                   .sum(sum),
                                   .carry4(carry4)
                                 );
                                 
 initial begin
   
   $dumpfile("carry_look_ahead_adder.vcd");
   $dumpvars(0,carry_look_ahead_adder_tb);
   $display(" _______________________________________________");
   $display("|Time	|A	|B	|Cin	|Sum	|Carry |");
   $display(" _______________________________________________");
   $monitor("| %0d	| %0d	| %0d	|%0d	|%0d	|%0d     |",$time,a,b,Cin,sum,carry4);
   
    
    Cin = 1'b0;
    
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
