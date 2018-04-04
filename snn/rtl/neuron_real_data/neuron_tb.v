`timescale 1ns / 1ps

module neuron_tb ;
  reg clk, weight;
  reg [3:0] threshold;
  reg pos_in, neg_in;
  wire pos_out, neg_out;

  neuron U0(
    .clk        (clk),
    .weight     (weight),
    .threshold  (threshold),
    .pos_in    (pos_in),
    .neg_in    (neg_in),
    .pos_out   (pos_out),
    .neg_out   (neg_out)
    );


  initial begin
    clk = 0;
    weight = 1;
    threshold = 4'b0010;

    pos_in = 0; neg_in = 0;

    #10 pos_in = 1; neg_in = 0;
    #1  pos_in = 0; neg_in = 0;

    #10 pos_in = 0; neg_in = 1;
    #1  pos_in = 0; neg_in = 0;

    #10 pos_in = 1; neg_in = 0;
    #1  pos_in = 0; neg_in = 0;

    #10 pos_in = 1; neg_in = 0;
    #1  pos_in = 0; neg_in = 0;

    #10 pos_in = 0; neg_in = 1;
    #1 pos_in = 0; neg_in = 0;

    #10 pos_in = 1; neg_in = 0;
    #1  pos_in = 0; neg_in = 0;

    #10 pos_in = 1; neg_in = 0;
    #1  pos_in = 0; neg_in = 0;

  end

  always
    #5 clk = !clk;

endmodule // neuron_tb
