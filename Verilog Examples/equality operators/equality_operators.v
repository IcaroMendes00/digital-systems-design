
module equality_operators();
  
// registrador
   reg RESULTADO; // equality operators have 1 bit
  
	// Procedure used to generate stimulus
	initial begin
        #1; RESULTADO = (1'b1 == 1'b0); 
           $display("RESULTADO = %b", RESULTADO);
        #1; RESULTADO = (1'b1 == 1'b1); 
           $display("RESULTADO = %b", RESULTADO);
        #1; RESULTADO = (1'b1 == 1'bX); 
           $display("RESULTADO = %b", RESULTADO);
        #1; RESULTADO = (3'b101 == 3'b100); 
           $display("RESULTADO = %b", RESULTADO);
        #1; RESULTADO = (3'b101 != 3'b101); 
           $display("RESULTADO = %b", RESULTADO);
      
        #1; RESULTADO = (3'b10Z == 3'b10Z); 
           $display("RESULTADO = %b", RESULTADO);
        #1; RESULTADO = (3'b10Z === 3'b10Z); 
           $display("RESULTADO = %b", RESULTADO);
        #1; RESULTADO = (3'b1XZ == 3'b10Z); 
           $display("RESULTADO = %b", RESULTADO);      
        #1; RESULTADO = (3'b1XZ == 3'b1XZ); 
           $display("RESULTADO = %b", RESULTADO);
        #1; RESULTADO = (2'bXX !== 2'bXX); 
           $display("RESULTADO = %b", RESULTADO);
      
        // Change the values of the compared numbers to 4 bit
        // Ex: RESULTADO = (4'b101X == 4'b1011)
	end
  
endmodule


