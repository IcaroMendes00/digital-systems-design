module  timer_parameter
    
    # (parameter FINAL_VALUE = 255)
    (input clk, input reset_n, input enable, output [BITS - 1:0] Q);

    localparam BITS = $clog2(FINAL_VALUE);

    reg [BITS -1 :0] Q_reg, Q_next;
    wire DONE;

    always @(posedge clk, negedge reset_n) begin
        if      (~reset_n) Q_reg <= 'b0;
        else if (enable)   Q_reg <= Q_next;
        else               Q_reg <= Q_reg;
    end

    assign DONE = Q_reg == FINAL_VALUE;

    always @(*)
        Q_next = DONE? 'b0: Q_reg +1; 

    assign Q = Q_reg;

endmodule