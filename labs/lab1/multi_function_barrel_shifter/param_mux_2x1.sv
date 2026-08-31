`timescale 1ns / 1ps

module param_mux_2x1
#(parameter N)
(
    input  logic [N-1:0] in0, in1,
    input  logic sel,
    output logic [N-1:0] f
);

assign f = sel ? in1 : in0;

endmodule