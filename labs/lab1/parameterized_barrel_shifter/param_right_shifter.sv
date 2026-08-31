`timescale 1ns / 1ps

module param_right_shifter
#(parameter N = 4)
(
    input  logic [2**N - 1:0] in,
    input  logic [N-1:0] amount,
    output logic [2**N - 1:0] out
);

logic [2**N - 1:0] stage [0:N];

assign stage[0] = in;

genvar i;
generate
    for (i = 0; i < N; i++) begin

        always_comb begin
            if (amount[i] == 1'b1) begin
                stage[i+1] = {stage[i][2**i - 1 : 0], stage[i][2**N - 1 : 2**i]};
            end
            else begin
                stage[i+1] = stage[i];
            end
        end
    end
endgenerate

assign out = stage[N];

endmodule
