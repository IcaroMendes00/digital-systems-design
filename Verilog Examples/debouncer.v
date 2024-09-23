/*****************************
 * Author: Icaro Mendes
 * Descricao: Debouncer
*******************************
 * Clock: 20MHz - aprox. 3ms para chegar no limite
******************************/

module debouncer(
    CLK,               // input        
    PUSH_BUTTON,       // input
    PUSH_BUTTON_STATE, // output
    PUSH_BUTTON_DOWN,  // output
    PUSH_BUTTON_UP     // output
);

// inputs
    input CLK;
    input PUSH_BUTTON;
// outputs
    output reg PUSH_BUTTON_STATE;
    output PUSH_BUTTON_DOWN;
    output PUSH_BUTTON_UP;

    // sincroniza o sinal de PUSH_BUTTON no dominio do clock
    reg PUSH_BUTTON_SYNC_0; 
    always @(posedge CLK) begin
        PUSH_BUTTON_SYNC_0 <= ~PUSH_BUTTON; // PUSH_BUTTON invertido para que PUSH_BUTTON_SYNC_0 seja ativado   
    end 
    
    reg PUSH_BUTTON_SYNC_1; 
    always @(posedge CLK) begin
        PUSH_BUTTON_SYNC_1 <= PUSH_BUTTON_SYNC_0;        
    end

    reg [15 :0] PUSH_BUTTON_COUNTER; // 16 bits counter

    // quando o botao e pressionado ou liberado, incrementamos o contador
    // o contador deve estar no maximo antes de decidirmos que o estado do botao mudou
    wire PUSH_BUTTON_IDLE = (PUSH_BUTTON_STATE == PUSH_BUTTON_SYNC_1);
    wire PUSH_BUTTON_COUNTER_MAX = &PUSH_BUTTON_COUNTER;

    always @(posedge CLK) begin
        if (PUSH_BUTTON_IDLE) begin 
            PUSH_BUTTON_COUNTER <= 0;
        end
        else begin
            PUSH_BUTTON_COUNTER <= PUSH_BUTTON_COUNTER + 16'd1;
            if (PUSH_BUTTON_COUNTER_MAX) begin
                PUSH_BUTTON_STATE <= ~PUSH_BUTTON_STATE;
            end  
        end
    end

    assign PUSH_BUTTON_DOWN = ~PUSH_BUTTON_IDLE & PUSH_BUTTON_COUNTER_MAX & ~PUSH_BUTTON_STATE;
    assign PUSH_BUTTON_UP   = ~PUSH_BUTTON_IDLE & PUSH_BUTTON_COUNTER_MAX & PUSH_BUTTON_STATE;
endmodule