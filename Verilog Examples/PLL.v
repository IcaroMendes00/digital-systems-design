/*********************************
 * Author: Icaro Mendes
 * Descricao: MODULO PLL
*********************************/

´include "PLL_100_25_8_3M12Hz.vhd" // XILINX example PLL
´include "mux2x1.v"                // Mux 2x1
´include "clock_div.v"             // clock divisor

module pll_top_proj (
    GPIO_DIP1,   // input
    PMOD1_P1,    // output
    PMOD1_P2,    // output
    PMOD1_P3,    // output
    PMOD1_P4,    // output
    CLK100MHZ    // input
    //CLK2KHZ    // input
);

// inputs
    input GPIO_DIP1;
    input CLK100MHZ;
    //input CLK2KHZ;
// outputs
    output PMOD1_P1;
    output PMOD1_P2;
    output PMOD1_P3;
    output PMOD1_P4;

    wire CLK100MHZ, BUFF100MHZ, BUFF25MHZ, BUFF8MHZ, BUFF3M12HZ, PLLRST;
    assign PLLRST = 0;

    wire CLK12_5MHZ, CLK6_25MHZ, CLK1_49HZ;
    assign PMOD1_P2 = CLK12_5MHZ;
    assign PMOD1_P3 = CLK6_25MHZ;
    assign PMOD1_P4 = CLK1_49HZ;

    PLL_100_25_8_3M12Hz PLL_1 (CLK100MHZ, BUFF100MHZ, BUFF25MHZ, BUFF8MHZ, BUFF3M12HZ, PLLRST);
    // o erro aqui apontado pode ser testado em sintese
    // mas não deve ser implementado fisicamente 
    // < PIN "PLL1/clkout4_buf.O" CLOCk_DEDICATED_ROUTE - FALSE;>
    MUX_2x1 MUX_1 (BUFF8MHZ, BUFF3M12HZ, GPIO_DIP1, PMOD1_P1);
    clock_divisor clock_div1 (BUFF100MHZ, CLK12_5MHZ, CLK6_25MHZ, CLK1_49HZ);
endmodule

