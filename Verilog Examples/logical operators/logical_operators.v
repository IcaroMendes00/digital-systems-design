// logical operator in verilog

module logical_operators();
    
// registradores
    reg[2:0] registrador_1 = 3'b111;
    reg[3:0] registrador_2 = 4'b0000;
    reg resultado;

// procedimentos
// procedimento 1 - verifica continuamente os valores de regitrador_1, registrador_2 e resultado
    initial begin
        $monitor("MONITOR - REGISTRADOR 1 = %b, REGISTRADOR 2 = %b, RESULTADO = %b", registrador_1, registrador_2, resultado);
    end

// procedimento 2 - gerador de estimulos
    initial begin
        resultado    = !registrador_1;                 // NOT
        
        #1;
        resultado = !registrador_2;                 // NOT apos uma unidade de tempo
        
        #1; 
        resultado = registrador_1 && registrador_2; // AND apos uma unidade de tempo
        
        #1;
        resultado = registrador_1 || registrador_2; // OR apos uma unidade de tempo
        
        #1; 
        registrador_1 = 3'bz0X;                     //  adiciona alguns bits desconhecidos
        resultado    = !registrador_1;

        #1;
        resultado = registrador_1 || registrador_2;

        #1;
        resultado = registrador_1 && registrador_2;
    end

endmodule
// end of file