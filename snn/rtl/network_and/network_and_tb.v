`timescale 1ns / 1ps

module network_and_tb ;
  reg clk, w1, w2, w3;
  reg [3:0] th1, th2, th3;
  reg d_in_1, d_in_2, s_in_1, s_in_2;

  wire d_out_3, s_out_3;
  wire o1, o2;

  network_and U0(
    .clk    (clk),
    .w1     (w1), // weight
    .w2     (w2),
    .w3     (w2),
    .th1    (th1),// threshold
    .th2    (th2),
    .th3    (th3),
    .d_in_1 (d_in_1),
    .s_in_1 (s_in_1),
    .d_in_2 (d_in_2),
    .s_in_2 (s_in_2),
    .d_out_3(d_out_3),
    .s_out_3(s_out_3),
    .o1 (o1), .o2(o2)
    );

  initial begin
    clk = 0;
    w1 = 1;
    w2 = 1;
    w3 = 1;
    th1 = 4;
    th2 = 4;
    th3 = 2;

    d_in_1 = 0; s_in_1 = 0; d_in_2 = 0; s_in_2 = 0;

    #50;
    // 00
    #10 d_in_1 = 1; s_in_1 = 0; d_in_2 = 1; s_in_2 = 0;
    #1 d_in_1 = 0; s_in_1 = 0; d_in_2 = 0; s_in_2 = 0;

    #10 d_in_1 = 1; s_in_1 = 0; d_in_2 = 1; s_in_2 = 0;
    #1 d_in_1 = 0; s_in_1 = 0; d_in_2 = 0; s_in_2 = 0;

    #10 d_in_1 = 1; s_in_1 = 0; d_in_2 = 1; s_in_2 = 0;
    #1 d_in_1 = 0; s_in_1 = 0; d_in_2 = 0; s_in_2 = 0;

    #10 d_in_1 = 1; s_in_1 = 0;
    #1 d_in_1 = 0; s_in_1 = 0;
    #10 d_in_2 = 1; s_in_2 = 0;
    #1 d_in_2 = 0; s_in_2 = 0;

    #50;

    // 01
    #10 d_in_1 = 1; s_in_1 = 0; d_in_2 = 1; s_in_2 = 1;
    #1 d_in_1 = 0; s_in_1 = 0; d_in_2 = 0; s_in_2 = 0;

    #10 d_in_1 = 1; s_in_1 = 0; d_in_2 = 1; s_in_2 = 1;
    #1 d_in_1 = 0; s_in_1 = 0; d_in_2 = 0; s_in_2 = 0;

    #10 d_in_1 = 1; s_in_1 = 0; d_in_2 = 1; s_in_2 = 1;
    #1 d_in_1 = 0; s_in_1 = 0; d_in_2 = 0; s_in_2 = 0;

    #10 d_in_1 = 1; s_in_1 = 0;
    #1 d_in_1 = 0; s_in_1 = 0;
    #10 d_in_2 = 1; s_in_2 = 1;
    #1 d_in_2 = 0; s_in_2 = 0;

    #50;

    // 10
    #10 d_in_1 = 1; s_in_1 = 1; d_in_2 = 1; s_in_2 = 0;
    #1 d_in_1 = 0; s_in_1 = 0; d_in_2 = 0; s_in_2 = 0;

    #10 d_in_1 = 1; s_in_1 = 1; d_in_2 = 1; s_in_2 = 0;
    #1 d_in_1 = 0; s_in_1 = 0; d_in_2 = 0; s_in_2 = 0;

    #10 d_in_1 = 1; s_in_1 = 1; d_in_2 = 1; s_in_2 = 0;
    #1 d_in_1 = 0; s_in_1 = 0; d_in_2 = 0; s_in_2 = 0;

    #10 d_in_1 = 1; s_in_1 = 1;
    #1 d_in_1 = 0; s_in_1 = 0;
    #10 d_in_2 = 1; s_in_2 = 0;
    #1 d_in_2 = 0; s_in_2 = 0;

    #50;

    // 11
    #10 d_in_1 = 1; s_in_1 = 1; d_in_2 = 1; s_in_2 = 1;
    #1 d_in_1 = 0; s_in_1 = 0; d_in_2 = 0; s_in_2 = 0;

    #10 d_in_1 = 1; s_in_1 = 1; d_in_2 = 1; s_in_2 = 1;
    #1 d_in_1 = 0; s_in_1 = 0; d_in_2 = 0; s_in_2 = 0;

    #10 d_in_1 = 1; s_in_1 = 1; d_in_2 = 1; s_in_2 = 1;
    #1 d_in_1 = 0; s_in_1 = 0; d_in_2 = 0; s_in_2 = 0;

    #10 d_in_1 = 1; s_in_1 = 1;
    #1 d_in_1 = 0; s_in_1 = 0;
    #10 d_in_2 = 1; s_in_2 = 1;
    #1 d_in_2 = 0; s_in_2 = 0;

    #50;

  end

  always
    #5 clk = !clk;

endmodule // network_and_tb
