// shift operators

module shift_operators();

// registradores
    reg[11:0] A = 12'b0101_1010_1101; 
    reg[11:0] B;

// procedimentos
// procedimento 1 - verifica continuamente as mudancas de A e B
    initial begin
        $monitor("\n\t MONITOR - A = %12b, B = %12b, A = %0d, B = %0d", A, B, A, B);
    end

// procedimento 2 - gerador de estimulos
    initial begin
        B = A << 1; // B = A*2

        #1; B = 0;

        #1; B = A * 2;
        #1; B = A << 5;
        #1; B = B >> 2;
        #1; B = B >> 7;
        #1; B = B << 1;
        #1; B = (A << 1) >> 6;
    end

endmodule