`timescale 1ns / 1ps

module multi_barrel_shifter_reverser_tb;

parameter N = 2;
logic [2**N - 1:0] in;
logic lr; // left-right select line (left = 0, right = 1)
logic [N - 1:0] amt;
logic [2**N - 1:0] out;

multi_barrel_shifter_reverser #(.N(N)) UUT (.in(in), .lr(lr), .amt(amt), .out(out));

initial
    begin
        in = 4'b1110;
        lr = 1'b0;
        amt = 2'b11;
        
        #50
        in = 4'b0111;
        lr = 1'b1;
        amt = 2'b11;
        
        #50
        
        $stop;
    end
    
endmodule
