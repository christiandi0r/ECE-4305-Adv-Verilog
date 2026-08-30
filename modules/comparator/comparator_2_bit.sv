`timescale 1ns / 1ps

module comparator_2_bit
(
    input logic [1:0] a, b,
    output logic f
);

logic e0, e1;

comparator_1_bit M0 (.i0(a[0]), .i1(b[0]), .f(e0));
comparator_1_bit M1 (.i0(a[1]), .i1(b[1]), .f(e1));

assign f = e0 & e1;

endmodule
