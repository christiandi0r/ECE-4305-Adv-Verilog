`timescale 1ns / 1ps

module param_right_shifter
#(parameter N = 4)
(
    // Input width is 2^N bits
    input  logic [2**N - 1:0] in,
    
    // N-bit value specifying how many positions to rotate
    input  logic [N-1:0] amount,
    
    // Rotated output, same width as input    
    output logic [2**N - 1:0] out   
);

// Array used to store the input and the rotated result after each rotation stage.
// stage[0] is the original input and stage[N] is the final result.
logic [2**N - 1:0] stage [0:N];

// Start the first stage with the original input.
assign stage[0] = in;   

generate
    genvar i;
    // Create N rotation stages.
    // Stage i conditionally rotates right by 2^i positions.
    for (i = 0; i < N; i++) 
        always_comb 
            if (amount[i] == 1'b1) 
                // Move the lower 2^i bits to the front to perform a rotate-right by 2^i positions.
                stage[i+1] = {stage[i][2**i - 1 : 0], stage[i][2**N - 1 : 2**i]};
            else 
                // If amount[i] is 0, pass the value to the next stage without rotating it.
                stage[i+1] = stage[i];
endgenerate

// The last stage contains the completed rotate-right result.
assign out = stage[N];

endmodule
