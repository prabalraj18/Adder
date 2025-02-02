module full_adder ( input a , b, Cin ,
                    output sum , carry);

	assign sum = a ^ b ^ Cin ;
	assign carry = (a & b) | (b & Cin) | (Cin & a);
	
endmodule

module ripple_carry_adder (input [3:0]a ,b , 
		           input Cin ,
                           output carry4 ,
                           output [3:0]sum );	       
                           
wire carry1 , carry2 , carry3 ;
 
 full_adder FA0 ( a[0], b[0], Cin   , sum[0] ,carry1 );
 full_adder FA1 ( a[1], b[1], carry1, sum[1] ,carry2 );
 full_adder FA2 ( a[2], b[2], carry2, sum[2] ,carry3 );
 full_adder FA3 ( a[3], b[3], carry3, sum[3] ,carry4 );       

endmodule                  
                           
                
                    
