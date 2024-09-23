/*********************************
 * Author: Icaro Mendes
 * Descricao: Gerador de pulsos a cada
 * 1 milhao de pulsos de clock (1MHz)
*********************************/

module 1MHZ_tick(
    CLK,
    RESET,
    TICK
);

// input
    input CLK;
    input RESET;
// output
    output TICK;

    reg[19 :0] COUNTER;
    wire TICK_PULSE;

    always @(posedge CLK) begin
        if(RESET) begin
            COUNTER = 20'd0;
            TICK_PULSE = 1'b0;
        end
        else begin
            if (COUNTER == 20'd1000000) begin
                TICK_PULSE = 1'b1;
                COUNTER = 20'd0;
            end
            else begin
                COUNTER <= COUNTER + 1'b1;
                TICK_PULSE <= 1'b0;
            end
        end
    end // end always

    assign TICK = TICK_PULSE;
endmodule