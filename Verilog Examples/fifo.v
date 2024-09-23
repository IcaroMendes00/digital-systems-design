/***********************************************************
 * Author: Icaro Mendes
 * Descricao: Top level fifo memory
************************************************************
 * Referencia: fpga4student - VERILOG CODE FOR FIFO MEMORY 
***********************************************************/
// Write pointer module
module write_pointer(
    WPTR, 
    FIFO_WE,
    FIFO_FULL,
    CLK,
    RESET_N
);

// inputs
    input WR, FIFO_FULL, CLK, RESET_N;
// outputs
    output [4 :0] WPTR, FIFO_WE;

    reg [4 :0] WPTR;
    assign FIFO_WE = (~FIFO_FULL) & WR;

    always @(posedge CLK or negedge RESET_N) begin
        if      (~RESET_N) WPTR <= 5'b000000;
        else if (FIFO_WE)  WPTR <= WPTR + 5'b000001;
        else               WPTR <= WPTR;
    end
endmodule

// Read pointer
module read_pointer(
    RPTR, 
    FIFO_RD, 
    RD, 
    FIFO_EMPTY, 
    CLK, 
    RESET_N
);

// inputs
    input RD, FIFO_EMPTY, CLK, RESET_N;
// outputs
    output FIFO_RD, [4 :0] RPTR;

    reg [4 :0] RPTR;
    assign FIFO_RD = (~FIFO_EMPTY) & RD;

    always @(posedge CLK or negedge RESET_N) begin
        if      (~RESET_N) RPTR <= 5'b000000;
        else if (FIFO_RD)  RPTR <= RPTR + 5'b000001;
        else               RPTR <= RPTR;
    end
endmodule

// Status signal
module status_signal(
    FIFO_FULL,
    FIFO_EMPTY, 
    FIFO_THRESHOLD,
    FIFO_OVERFLOW,
    FIFO_UNDERFLOW,
    WR,
    RD,
    FIFO_WE,
    FIFO_RD,
    WPTR,
    RPTR,
    CLK,
    RESET_N
);

// inputs
    input WR, RD, FIFO_WE, FIFO_RD, CLK, RESET_N, WPTR, RPTR;
// outputs
    output FIFO_FULL, FIFO_EMPTY, FIFO_THRESHOLD, FIFO_OVERFLOW, FIFO_UNDERFLOW;
endmodule

module fifo_mem(
    DATA_OUT,
    FIFO_FULL,
    FIFO_EMPTY,
    FIFO_THRESHOLD,
    FIFO_OVERFLOW, 
    FIFO_UNDERFLOW,
    CLK, 
    RESET_N,
    WR,
    RD,
    DATA_IN
);

// inputs
    input WR, RD, CLK, RESET_N, [7 :0] DATA_IN;
// outputs
    output FIFO_FULL, FIFO_EMPTY, FIFO_THRESHOLD, FIFO_OVERFLOW, FIFO_UNDERFLOW, [7 :0] DATA_OUT;

    wire [4 :0] WPTR, RPTR;
    wire FIFO_WE, FIFO_RD;



endmodule