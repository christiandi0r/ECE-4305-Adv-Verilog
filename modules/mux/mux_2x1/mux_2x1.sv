`timescale 1ns / 1ps

module mux_2x1 (
    input logic x0,
    input logic x1,
    input logic s,
    output logic f
    );
    
    logic p0, p1;
    
    assign f = p0 | p1;
    assign p0 = x0 & ~s; 
    assign p1 = x1 & s;
    
endmodule
