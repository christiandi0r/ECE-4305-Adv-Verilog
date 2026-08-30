`timescale 1ns / 1ps

module comparator_1_bit
(
    input logic i0, i1,
    output logic f     
);

logic p0, p1;

assign p0 = ~i0 & ~i1;
assign p1 = i0 & i1;
assign f = p0 | p1;
 
endmodule
