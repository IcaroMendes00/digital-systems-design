/*************************************************
 * Author: Icaro Mendes
 * Descricao: Modelagem de um somador completo
 * (FULL ADDER) utilizando portas logicas 
 ************************************************/

module FULL_ADDER(A, B, Cin, Sum, Cout);
    
    input A, B, Cin;
    output Sum, Cout;

    xor g1 (X1, B, Cin);
    xor g2 (Sum, X1, A);

    and g3 (X2, A, B);
    and g4 (X3, B, Cin);
    and g5 (X4, A, Cin);

    or g6 (Cout, X2, X3, X4);

endmodule FULL_ADDER

// End of file