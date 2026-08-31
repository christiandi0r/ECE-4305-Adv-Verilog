`timescale 1ns / 1ps

module param_barrel_shifter_tb;

parameter N = 3;
logic [2**N - 1:0] r_in, r_out;
logic [N - 1:0] r_amount;

logic [2**N - 1:0] l_in, l_out;
logic [N - 1:0] l_amount;

param_right_shifter #(.N(N)) uut (.in(r_in), .amount(r_amount), .out(r_out));
param_left_shifter #(.N(N)) uut2 (.in(l_in), .amount(l_amount), .out(l_out));

initial 
    begin
        r_in = 8'b1011_1111;
        r_amount = 3'b110;
        
        l_in = 8'b1111_1101;
        l_amount = 3'b110;
        
        #100
        $stop;
    end
    
endmodule
