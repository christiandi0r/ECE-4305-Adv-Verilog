`timescale 1ns / 1ps

module barrel_shifter_mux_TB;

parameter N = 3;
logic [2**N - 1:0] in;
logic lr; // left-right select line (left = 0, right = 1)
logic [N - 1:0] amt;
logic [2**N - 1:0] out;

multi_barrel_shifter_mux #(.N(N)) UUT (.in(in), .lr(lr), .amt(amt), .out(out));

    initial begin
        in = 8'b1101;
        
        // left shift by 2
        amt = 3'b10;
        lr = 1'b0;
    
        #5 // right shift by 2
        lr = 1'b1;
    
        #5
        $stop;
    end
endmodule
