`timescale 1ns / 1ps

module mux_4x1 (
  input logic [3:0] x,
  input logic [1:0] s,
  output logic f
  );

  logic w0, w1;

  
