`timescale 1ns / 1ps

module param_mux_2x1
#(parameter N)
(
    input  logic [N-1:0] in0, in1,

    // lr = left-right select line (left = 0, right = 1)
    input  logic lr,
    output logic [N-1:0] f
);

assign f = lr ? in1 : in0;

endmodule