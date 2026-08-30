`timescale 1ns / 1ps

module comparator_1_bit_tb;

logic a, b;
logic out;

comparator_1_bit uut (.i0(a), .i1(b), .f(out));

initial
    begin
        
        a = 1'b0;
        b = 1'b0;
        #100
        
        a = 1'b0;
        b = 1'b1;
        #100
        
        a = 1'b1;
        b = 1'b0;
        #100
        
        a = 1'b1;
        b = 1'b1;
        #100
        
        $stop;
    end
endmodule
