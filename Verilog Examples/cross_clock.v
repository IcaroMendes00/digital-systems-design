// signal crossing module
module signal_crossing_domain(
    CLK_A,
    SIGNAL_IN_CLK_A,
    CLK_B,
    SIGNAL_OUT_CLK_B
);

// inputs
    input CLK_A;
    input SIGNAL_IN_CLK_A;
    input CLK_B;
// outputs
    output SIGNAL_OUT_CLK_B

    reg [1 :0] SYNC_A_CLK_B;
    always @(posedge CLK_B) begin
        SYNC_A_CLK_B[0] <= SIGNAL_IN_CLK_A;
    end
    always @(posedge CLK_B) begin
        SYNC_A_CLK_B[1] <= SYNC_A_CLK_B[0];
    end

    assign SIGNAL_OUT_CLK_B = SYNC_A_CLK_B[1]; 
endmodule

// flag cross domain module
module flag_cross_domain(
    CLK_A,
    CLK_B,
    FLAG_IN_CLK_A,
    FLAG_OUT_CLK_B
);

// inputs
    input CLK_A;
    input CLK_B;
    input FLAG_IN_CLK_A;
// output
    output FLAG_OUT_CLK_B;

    reg FLAG_TOOGLE_CLK_A;
    always @(posedge CLK_A) begin
        FLAG_TOOGLE_CLK_A <= FLAG_IN_CLK_A ^ FLAG_IN_CLK_A; 
    end

    reg [2 :0] SYNC_A_CLK_B;
    always @(posedge CLK_B) begin
        SYNC_A_CLK_B <= {SYNC_A_CLK_B[1 :0], FLAG_TOOGLE_CLK_A};
    end

    assign FLAG_OUT_CLK_B = (SYNC_A_CLK_B[2] ^ SYNC_A_CLK_B[1])
endmodule

// flag ack cross domain module
module flag_ack_cross_domain(
    CLK_A,
    CLK_B,
    FLAG_IN_CLK_A,
    FLAG_OUT_CLK_B,
    BUSY_CLK_A
);

// inputs
    input CLK_A;
    input CLK_B;
    input FLAG_IN_CLK_A;
// outputs
    output FLAG_OUT_CLK_B;
    output BUSY_CLK_A;

    reg FLAG_TOOGLE_CLK_A;
    always @(posedge CLK_A) begin
        FLAG_TOOGLE_CLK_A <= FLAG_TOOGLE_CLK_A ^ (FLAG_IN_CLK_A & ~BUSY_CLK_A);
    end

    reg [2 :0] SYNC_A_CLK_B;
    always @(posedge CLK_B) begin
        SYNC_A_CLK_B <= {SYNC_A_CLK_B[1 :0], FLAG_TOOGLE_CLK_A};
    end

    reg [1 :0]SYNC_B_CLK_A;
    always @(posedge CLK_A) begin
        SYNC_B_CLK_A <= {SYNC_B_CLK_A[0], SYNC_A_CLK_B[2]};
    end

    assign FLAG_OUT_CLK_B = (SYNC_A_CLK_B[2] ^SYNC_A_CLK_B[1]);
    assign BUSY_CLK_A     = FLAG_TOOGLE_CLK_A ^ SYNC_B_CLK_A;
endmodule

// task ack cross domain module
module task_ack_cross_domain(
    CLK_A,            // input
    CLK_B,            // input
    TASK_START_CLK_A, // input
    TASK_START_CLK_B, // output
    TASK_DONE_CLK_A,  // output
    TASK_DONE_CLK_B   // input
    TASK_BUSY_CLK_A,  // output
    TASK_BUSY_CLK_B   // output
);

// inputs
    input CLK_A;
    input CLK_B;
    input TASK_START_CLK_A;
    input TASK_DONE_CLK_B;
// outputs
    output TASK_START_CLK_B;
    output TASK_DONE_CLK_A;
    output TASK_BUSY_CLK_A;
    output TASK_BUSY_CLK_B;

    reg FLAG_TOOGLE_CLK_A, FLAG_TOOGLE_CLK_B, BUSY_HOLD_CLK_B;
    reg [2 :0] SYNC_A_CLK_B, SYNC_B_CLK_A;
    
    always @(posedge CLK_A) begin
        FLAG_TOOGLE_CLK_A <= FLAG_TOOGLE_CLK_A ^ (TASK_START_CLK_A & ~TASK_BUSY_CLK_A);
    end

    always @(posedge CLK_B) begin
        SYNC_A_CLK_B <= {SYNC_A_CLK_B[1 :0], FLAG_TOOGLE_CLK_A};
    end

    assign TASK_START_CLK_B = ^SYNC_A_CLK_B[2 :0];
    assign TASK_BUSY_CLK_B = TASK_START_CLK_B | BUSY_HOLD_CLK_B;

    always @(posedge CLK_B) begin
        BUSY_HOLD_CLK_B <= TASK_BUSY_CLK_B & ~TASK_DONE_CLK_B;
    end

    always @(posedge CLK_B) begin 
        if(TASK_BUSY_CLK_B & TASK_DONE_CLK_B) begin
            FLAG_TOOGLE_CLK_B <= FLAG_TOOGLE_CLK_A;
        end
    end

    always @(posedge CLK_A) begin
        SYNC_B_CLK_A <= {SYNC_B_CLK_A[1 :0], FLAG_TOOGLE_CLK_B};
    end

    assign TASK_BUSY_CLK_A = FLAG_TOOGLE_CLK_A ^ SYNC_B_CLK_A[2];
    assign TASK_DONE_CLK_A = SYNC_B_CLK_A[2 :1];
endmodule

