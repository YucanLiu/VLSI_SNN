`timescale 1ns / 1ps

module neuron_tb ;
  reg clk, weight;
  reg [3:0] threshold;
  reg data_in, sign_in;
  wire data_out, sign_out;

  neuron U0(
    .clk        (clk),
    .weight     (weight),
    .threshold  (threshold),
    .data_in    (data_in),
    .sign_in    (sign_in),
    .data_out   (data_out),
    .sign_out   (sign_out)
    );


  initial begin
    clk = 0;
    weight = 1;
    threshold = 4'b0010;

    data_in = 0; sign_in = 0;

    #10 data_in = 1; sign_in = 1;
    #1  data_in = 0; sign_in = 0;

    #10 data_in = 1; sign_in = 0;
    #1  data_in = 0; sign_in = 0;

    #10 data_in = 1; sign_in = 1;
    #1  data_in = 0; sign_in = 0;

    #10 data_in = 1; sign_in = 1;
    #1  data_in = 0; sign_in = 0;

    #10 data_in = 1; sign_in = 0;
    #1 data_in = 0; sign_in = 0;

    #10 data_in = 1; sign_in = 1;
    #1  data_in = 0; sign_in = 0;

    #10 data_in = 1; sign_in = 1;
    #1  data_in = 0; sign_in = 0;

  end

  always
    #5 clk = !clk;

endmodule // neuron_tb
