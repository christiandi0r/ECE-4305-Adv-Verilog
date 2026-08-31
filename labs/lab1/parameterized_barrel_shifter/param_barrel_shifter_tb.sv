`timescale 1ns / 1ps

module param_barrel_shifter_tb;

logic [3:0] r_in, r_out;
logic [1:0] r_amount;

logic [3:0] l_in, l_out;
logic [1:0] l_amount;

param_right_shifter #(.N(2)) uut (.in(r_in), .amount(r_amount), .out(r_out));
param_left_shifter #(.N(2)) uut2 (.in(l_in), .amount(l_amount), .out(l_out));

initial 
    begin
        r_in = 4'b1011;
        r_amount = 2'b10;
        
        l_in = 4'b1101;
        l_amount = 2'b10;
        
        #100
        $stop;
    end
    
endmodule
