`timescale 1ns / 1ps

module mux_4x1 (
    input logic [3:0] x,
    input logic [1:0] s,
    output logic f
    );
  
    logic w0, w1;
  
    mux_2x1 M0 (.x0 (x[0]),
                .x1 (x[1]),
                .s  (s[0]),
                .f  (w0));
    
    mux_2x1 M1 (.x1 (x[3]),
                .x0 (x[2]),
                .f  (w1),
                .s  (s[0]));
  
    mux_2x1 M2 (.x0 (w0),
                .x1 (w1),
                .s  (s[1]),
                .f  (f));

endmodule
