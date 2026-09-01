`timescale 1ns / 1ps

module param_mux_2x1
#(parameter N = 2)
(
    input  logic [2**N - 1:0] in0, in1,
    input  logic sel,
    output logic [2**N - 1:0] f
);

assign f = sel ? in1 : in0;

endmodule
