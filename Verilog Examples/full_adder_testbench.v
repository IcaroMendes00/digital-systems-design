/*************************************************
 * Author: Icaro Mendes
 * Descricao: Text Fiuxture/Testbench de um somador 
 * completo(FULL ADDER) 
 ************************************************/

module test;

reg  A, B, Cin;
wire Sum, Cout;

FULL_ADDER SOMADOR_1(A, B, Cin, Sum, Cout);

intial

begin

$display("\n -- Start of simulation\n");

Cin = 1'b0; B = 1'b0; A = 1'b0;
#5 $display("A: %b, B: %b, Cin: %b, Sum: %b, Cout: %b", A, B, Cin, Sum, Cout);

Cin = 1'b1; B = 1'b0; A = 1'b0;
#5 $display("A: %b, B: %b, Cin: %b, Sum: %b, Cout: %b", A, B, Cin, Sum, Cout);

Cin = 1'b0; B = 1'b1; A = 1'b0;
#5 $display("A: %b, B: %b, Cin: %b, Sum: %b, Cout: %b", A, B, Cin, Sum, Cout);

Cin = 1'b1; B = 1'b1; A = 1'b0;
#5 $display("A: %b, B: %b, Cin: %b, Sum: %b, Cout: %b", A, B, Cin, Sum, Cout);

Cin = 1'b0; B = 1'b0; A = 1'b1;
#5 $display("A: %b, B: %b, Cin: %b, Sum: %b, Cout: %b", A, B, Cin, Sum, Cout);

Cin = 1'b1; B = 1'b0; A = 1'b1;
#5 $display("A: %b, B: %b, Cin: %b, Sum: %b, Cout: %b", A, B, Cin, Sum, Cout);

Cin = 1'b0; B = 1'b1; A = 1'b1;
#5 $display("A: %b, B: %b, Cin: %b, Sum: %b, Cout: %b", A, B, Cin, Sum, Cout);

Cin = 1'b1; B = 1'b1; A = 1'b1;
#5 $display("A: %b, B: %b, Cin: %b, Sum: %b, Cout: %b", A, B, Cin, Sum, Cout);

$display("\n -- End of simulation.\n");

#10 $finish;

end

endmodule

// End of file