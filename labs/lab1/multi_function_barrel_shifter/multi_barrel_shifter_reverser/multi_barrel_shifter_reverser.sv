`timescale 1ns / 1ps

module multi_barrel_shifter_reverser
#(parameter N = 2)
(
    input logic [2**N - 1:0] in,
    input logic lr,
    input logic [N-1:0] amt,
    output logic [2**N - 1:0] out
);

logic [2**N - 1:0] w1, w2;

bit_reverse #(.N(N)) pre_reverser
(
    .data_in(in), 
    .select(lr),
    .data_out(w1)
);

param_right_shifter #(.N(N)) right_shift
(
    .in(w1),
    .amount(amt), 
    .out(w2)
);

bit_reverse #(.N(N)) post_reverser
(
    .data_in(w2), 
    .select(lr),
    .data_out(out)
);

endmodule
