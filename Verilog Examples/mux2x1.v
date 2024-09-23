// MULTIPLEXADOR 2 x 1
module MUX_2x1(
    A, 
    B,
    S,
    OUT 
);

// inputs
    input A;
    input B;
    input S;
// outputs
    output OUT;

    assign OUT = S? A:B; // se S = 1, OUT = A, se S = 0, OUT = B
endmodule