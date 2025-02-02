module full_adder_tb ;

 reg a,b,Cin;
 wire sum,carry;
 
 full_adder dut (
     .a(a),
     .b(b),
     .Cin(Cin),
     .sum(sum),
     .carry(carry)
   );
  
 initial begin 
   
   $dumpfile("full_adder_waveform.vcd");
   $dumpvars(0,full_adder_tb);
    
    $monitor("  Time=%0d: a=%b  b=%b  Cin=%b sum=%b  carry=%b ", $time, a, b, Cin, sum, carry);
    
    a = 0 ; b = 0 ; Cin = 0 ;
 #5 a = 0 ; b = 0 ; Cin = 1 ;
 #5 a = 0 ; b = 1 ; Cin = 0 ;
 #5 a = 0 ; b = 1 ; Cin = 1 ;
 #5 a = 1 ; b = 0 ; Cin = 0 ;
 #5 a = 1 ; b = 0 ; Cin = 1 ;
 #5 a = 1 ; b = 1 ; Cin = 0 ;
 #5 a = 1 ; b = 1 ; Cin = 1 ;
 #5 
 
    $finish ;
    
 end
 
endmodule
