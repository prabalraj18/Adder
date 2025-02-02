module carry_look_ahead_adder_1bit ( input a ,b ,Cin ,
				output sum , carry );
				
      wire  p, g ;
      
      assign p = a ^ b ;
      assign g = a & b ;
            
      assign sum = a ^ b ^ Cin ;
      assign carry = g | ( p & Cin )  ;
      
endmodule

module carry_look_ahead_adder_4bit (input [3:0] a ,b ,
				    input Cin ,
				    output [3:0] sum ,
				    output carry4 
				   );
      
  wire carry1 ,carry2 ,carry3 ;
  
  carry_look_ahead_adder_1bit A0 ( a[0] ,b[0] ,Cin    ,sum[0] ,carry1 );
  carry_look_ahead_adder_1bit A1 ( a[1] ,b[1] ,carry1 ,sum[1] ,carry2 );
  carry_look_ahead_adder_1bit A2 ( a[2] ,b[2] ,carry2 ,sum[2] ,carry3 );
  carry_look_ahead_adder_1bit A3 ( a[3] ,b[3] ,carry3 ,sum[3] ,carry4 );
  
endmodule
