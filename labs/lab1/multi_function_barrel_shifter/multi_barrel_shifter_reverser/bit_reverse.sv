`timescale 1ns / 1ps

module bit_reverse
#(parameter N = 2)
(
    input logic [2**N - 1:0] data_in,
    input logic select,
    output logic [2**N - 1:0] data_out
);
    
always_comb
begin
    if (select == 1'b0)
        // Reverses bit order (MSB becomes LSB)
        data_out = {<<{data_in}};
    else
        data_out = data_in;
end
     
endmodule
