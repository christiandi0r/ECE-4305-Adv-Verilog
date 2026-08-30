`timescale 1ns / 1ps

module comparator_2_bit_tb;

logic [1:0] a, b;
logic out;

comparator_2_bit uut (.a(a), .b(b), .f(out));

initial
    begin
        // a = 0, b =0
        a = 2'b00;
        b = 2'b00;
        #100
        
        // a = 1, b = 0
        a = 2'b01;
        b = 2'b00;
        #100
        
        // a = 1, b = 3
        a = 2'b01;
        b = 2'b11;
        #100
        
        // a = 2, b = 2
        a = 2'b10;
        b = 2'b10;
        #100
        
        // a = 2, b = 0
        a = 2'b10;
        b = 2'b00;
        #100
        
        // a = 3, b = 3
        a = 2'b11;
        b = 2'b11;
        #100
        
        // a = 3, b = 1
        a = 2'b11;
        b = 2'b01;
        #100
        
        $stop;
    end
endmodule
