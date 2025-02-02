module full_adder (input a ,b ,Cin ,
	            output sum ,carry );
	            
	assign sum = a ^ b ^ Cin ;
	assign carry = (a & b) | (b & Cin) | (Cin & a);
	
endmodule	 	            
