/*****************************
 * Author: Icaro Mendes 
 * Descricao: Clock divisor
 ****************************/

 ´timescale 1ns / 1ps

module clock_divisor(
    CLK,
    OUT1,
    OUT2,
    OUT3
);

// inputs
    input CLK;
// outputs
    output OUT1, OUT2, OUT3;

    reg [25 :0] COUNTER;
    initial COUNTER = 0;

    assign OUT1 = COUNTER[2];  // bit  [3] -- 12.5 MHz
    assign OUT2 = COUNTER[3];  // bit  [4] -- 6.25 MHz
    assign OUT3 = COUNTER[25]; // bit [26] -- 1.49  Hz

    always @(posedge CLK) begin
        COUNTER <= COUNTER+1;
        if (COUNTER == 26'h3FFFFFF) begin
            COUNTER <= 26'h0;
        end
    end
    
 endmodule