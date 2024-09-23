// operacoes de reducao em verilog
// operacoes logicas com os bits que compoem os vetores/registradores

module reduction_operations();

// registradores
    reg[4:0] registrador_1 = 5'b1_1111;
    reg[8:0] registrador_2 = 9'b1_0101_1110;
    reg resultado;

// procedimentos
// procedimento 1 - verifica continuamente registrador_1, registrador_2 e resultado
    initial begin
        $monitor("\n\t REDUCTION OPERATIONS - Registrador 1 = %b, Registrador 2 = %b, Resultado = %b", registrador_1, registrador_2, resultado);
    end

// procedimento 2 - gerador de estimulos
    initial begin
        resultado    = &registrador_1;  // reducao AND
        #1 resultado = &registrador_2;  // reducao AND
        #1 resultado = ~&registrador_2; // reducao NAND
        #1 resultado = ~&registrador_1; // reducao NAND
        #1 resultado = |registrador_2;  // reducao OR
        #1 resultado = ~|registrador_2; // reducao NOR
        #1 resultado = ^registrador_1;  // reducao XOR
        #1 resultado = ~^registrador_1; // reducao XNOR
    end
    
endmodule
// end of file