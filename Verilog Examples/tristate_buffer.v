/*********************************
 * Author: Icaro Mendes
 * Descricao: Tri-state buffer
 * 
*********************************/

module tri_state(
    PORT,
    DIR,
    SEND,
    READ
);

// inouts
    inout PORT;
// inputs
    input DIR, SEND;
// outputs
    output READ;

    assign PORT = DIR ? SEND :1'bZ; // se DIR = 1, PORT = SEND, se DIR = 0, PORT = alta impedancia
    assign READ = DIR ? 1'bz :PORT; // se DIR = 1, READ = alta impedancia, se DIR = 0, READ = PORT
endmodule