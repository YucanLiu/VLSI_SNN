`timescale 1ns / 1ps

module network_3_2_tb ;

  reg clk;
  reg data_in_1, data_in_2, data_in_3;
  reg sign_in_1, sign_in_2, sign_in_3;
  reg weight_1, weight_2, weight_3, weight_4, weight_5;

  wire data_out_4, data_out_5;
  wire sign_out_4, sign_out_5;
  wire o1,o2,o3;

  network_3_2 U0(
    .clk         (clk),
    .data_in_1   (data_in_1),
    .sign_in_1   (sign_in_1),
    .data_in_2   (data_in_2),
    .sign_in_2   (sign_in_2),
    .data_in_3   (data_in_3),
    .sign_in_3   (sign_in_3),
    .weight_1    (weight_1),
    .weight_2    (weight_2),
    .weight_3    (weight_3),
    .weight_4    (weight_4),
    .weight_5    (weight_5),
    .data_out_4  (data_out_4),
    .sign_out_4  (sign_out_4),
    .data_out_5  (data_out_5),
    .sign_out_5  (sign_out_5),
    .o1 (o1), .o2 (o2), .o3(o3)
    );

  initial begin
    clk = 0;
    weight_1 = 1;
    weight_2 = 1;
    weight_3 = 0;
    weight_4 = 0;
    weight_5 = 1;

    data_in_1 = 0; data_in_2 = 0; data_in_3 = 0; sign_in_1 = 0; sign_in_2 = 0; sign_in_3 = 0;
    // 1
    #10 data_in_1 = 1; data_in_2 = 1; data_in_3 = 1; sign_in_1 = 1; sign_in_2 = 1; sign_in_3 = 1;
    // 2
    #1 data_in_1 = 0; data_in_2 = 0; data_in_3 = 0; sign_in_1 = 0; sign_in_2 = 0; sign_in_3 = 0;
    // 3
    #10 data_in_1 = 1; data_in_2 = 0; data_in_3 = 0; sign_in_1 = 1; sign_in_2 = 0; sign_in_3 = 0;
    // 4
    #1 data_in_1 = 0; data_in_2 = 0; data_in_3 = 0; sign_in_1 = 0; sign_in_2 = 0; sign_in_3 = 0;
    // 5
    #10 data_in_1 = 1; data_in_2 = 1; data_in_3 = 0; sign_in_1 = 1; sign_in_2 = 1; sign_in_3 = 0;
    // 6
    #1 data_in_1 = 0; data_in_2 = 0; data_in_3 = 0; sign_in_1 = 0; sign_in_2 = 0; sign_in_3 = 0;
    // 7
    #10 data_in_1 = 1; data_in_2 = 0; data_in_3 = 0; sign_in_1 = 1; sign_in_2 = 0; sign_in_3 = 0;
    // 8
    #1 data_in_1 = 0; data_in_2 = 0; data_in_3 = 0; sign_in_1 = 0; sign_in_2 = 0; sign_in_3 = 0;
    // 9
    #10 data_in_1 = 0; data_in_2 = 1; data_in_3 = 0; sign_in_1 = 0; sign_in_2 = 1; sign_in_3 = 0;
    // 10
    #1 data_in_1 = 0; data_in_2 = 0; data_in_3 = 0; sign_in_1 = 0; sign_in_2 = 0; sign_in_3 = 0;
    // 11
    #10 data_in_1 = 0; data_in_2 = 0; data_in_3 = 0; sign_in_1 = 0; sign_in_2 = 0; sign_in_3 = 0;
    // 12
    #10 data_in_1 = 0; data_in_2 = 0; data_in_3 = 1; sign_in_1 = 0; sign_in_2 = 0; sign_in_3 = 1;
    // 13
    #1 data_in_1 = 0; data_in_2 = 0; data_in_3 = 0; sign_in_1 = 0; sign_in_2 = 0; sign_in_3 = 0;
    // 14
    #10 data_in_1 = 0; data_in_2 = 1; data_in_3 = 0; sign_in_1 = 0; sign_in_2 = 1; sign_in_3 = 0;
    // 15
    #1 data_in_1 = 0; data_in_2 = 0; data_in_3 = 0; sign_in_1 = 0; sign_in_2 = 0; sign_in_3 = 0;
    // 16
    #10 data_in_1 = 0; data_in_2 = 0; data_in_3 = 0; sign_in_1 = 0; sign_in_2 = 0; sign_in_3 = 0;
    // 17
    #10 data_in_1 = 1; data_in_2 = 0; data_in_3 = 0; sign_in_1 = 1; sign_in_2 = 0; sign_in_3 = 0;

    #1 data_in_1 = 0; data_in_2 = 0; data_in_3 = 0; sign_in_1 = 0; sign_in_2 = 0; sign_in_3 = 0;
    // 18
    #10 data_in_1 = 0; data_in_2 = 1; data_in_3 = 0; sign_in_1 = 0; sign_in_2 = 1; sign_in_3 = 0;

    #1 data_in_1 = 0; data_in_2 = 0; data_in_3 = 0; sign_in_1 = 0; sign_in_2 = 0; sign_in_3 = 0;
    // 19
    #10 data_in_1 = 1; data_in_2 = 0; data_in_3 = 1; sign_in_1 = 1; sign_in_2 = 0; sign_in_3 = 1;
    // 20
    #1 data_in_1 = 0; data_in_2 = 0; data_in_3 = 0; sign_in_1 = 0; sign_in_2 = 0; sign_in_3 = 0;
    // 21
    #10 data_in_1 = 0; data_in_2 = 0; data_in_3 = 0; sign_in_1 = 0; sign_in_2 = 0; sign_in_3 = 0;
    // 22
    #10 data_in_1 = 0; data_in_2 = 1; data_in_3 = 0; sign_in_1 = 0; sign_in_2 = 1; sign_in_3 = 0;
    // 23
    #1 data_in_1 = 0; data_in_2 = 0; data_in_3 = 0; sign_in_1 = 0; sign_in_2 = 0; sign_in_3 = 0;
    // 24
    #10 data_in_1 = 0; data_in_2 = 0; data_in_3 = 0; sign_in_1 = 0; sign_in_2 = 0; sign_in_3 = 0;
    // 25
    #10 data_in_1 = 1; data_in_2 = 0; data_in_3 = 1; sign_in_1 = 1; sign_in_2 = 0; sign_in_3 = 1;

    #1 data_in_1 = 0; data_in_2 = 0; data_in_3 = 0; sign_in_1 = 0; sign_in_2 = 0; sign_in_3 = 0;
    // 26
    #10 data_in_1 = 0; data_in_2 = 1; data_in_3 = 0; sign_in_1 = 0; sign_in_2 = 1; sign_in_3 = 0;

    #1 data_in_1 = 0; data_in_2 = 0; data_in_3 = 0; sign_in_1 = 0; sign_in_2 = 0; sign_in_3 = 0;
    // 27
    #10 data_in_1 = 1; data_in_2 = 0; data_in_3 = 0; sign_in_1 = 1; sign_in_2 = 0; sign_in_3 = 0;
    // 28
    #1 data_in_1 = 0; data_in_2 = 0; data_in_3 = 0; sign_in_1 = 0; sign_in_2 = 0; sign_in_3 = 0;
    // 29
    #10 data_in_1 = 0; data_in_2 = 0; data_in_3 = 0; sign_in_1 = 0; sign_in_2 = 0; sign_in_3 = 0;
    // 30
    #10 data_in_1 = 0; data_in_2 = 1; data_in_3 = 0; sign_in_1 = 0; sign_in_2 = 1; sign_in_3 = 0;

    #1 data_in_1 = 0; data_in_2 = 0; data_in_3 = 0; sign_in_1 = 0; sign_in_2 = 0; sign_in_3 = 0;
    // 31
    #10 data_in_1 = 1; data_in_2 = 0; data_in_3 = 1; sign_in_1 = 1; sign_in_2 = 0; sign_in_3 = 1;
    // 32
    #1 data_in_1 = 0; data_in_2 = 0; data_in_3 = 0; sign_in_1 = 0; sign_in_2 = 0; sign_in_3 = 0;
  end


  always
    #5 clk = !clk;

endmodule // network_3_2_tb
