`timescale 1ns / 1ps

module multi_barrel_shifter_mux
#(parameter N = 2)
(
    input logic [2**N - 1:0] in,
    input logic lr, // left-right select line (left = 0, right = 1)
    input logic [N-1:0] amt,
    output logic [2**N - 1:0] out
);

logic [2**N - 1:0] left_out, right_out;

param_left_shifter #(.N(N)) left_shift 
(
    .in(in),
    .amount(amt), 
    .out(left_out)
);

param_right_shifter #(.N(N)) right_shift
(
    .in(in),
    .amount(amt), 
    .out(right_out)
);

param_mux_2x1 #(.N(N)) M0
(
    .in0(left_out),
    .in1(right_out),

    // lr = left-right select line (left = 0, right = 1)
    .sel(lr),
    .f(out)
);

endmodule
