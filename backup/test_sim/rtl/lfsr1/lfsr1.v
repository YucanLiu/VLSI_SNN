//
//
//
//
`timescale 1ns/1ps

module lfsr1 (clk, resetn, seed, lfsr_out);

        input clk, resetn;
        input [15:0] seed;
        output [15:0] lfsr_out;

        reg [15:0] lfsr_out;

        always @(posedge clk)
        begin
            if (~resetn)
                begin
                        lfsr_out <= #0.1 seed;
                end
            else
                begin
                        lfsr_out <= #0.1 {lfsr_out[14:0], lfsr_out[15]^lfsr_out[12]^lfsr_out[5]^lfsr_out[0]};
                end
        end
endmodule

