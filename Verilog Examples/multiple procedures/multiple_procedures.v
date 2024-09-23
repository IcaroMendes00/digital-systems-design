// teste de multiplos procedimentos em verilog
// exercise - 2

module multi_proc();

// registradores
    reg x = 1'b0; // variavel de 1 bit com valor 0
    reg y = 1'b1; // variavel de 1 bit com valor 1
    reg z;        // variavel para armazenar o valor das operacoes entre x e y

// procedimentos
// procedimento 1 - sempre que z for alterado exiba os valores de x, y e z
    always @(z) begin
        $display("x = %b, y = %b, z = %b,", x, y, z);
    end

// procedimento 2 - realiza as operacoes bitwise com x e y
    initial begin
        #2;        // aguarda duas unidades de tempo
        z = x ^ y; // operacao bitwise XOR entre x e y
        #10;       // aguarda dez unidades de tempo
        y = 0;     // altera o valor de y
        z = x | y; // operacao bitwise OR entre x e y
        #10;       // aguarda dez unidades de tempo
        z = ~z;    // operacao bitwise NOT com z
        #10;       // aguarda dez unidades de tempo
    end

endmodule
// end of file