`timescale 1ns / 1ps

module network_and (
  clk,
  w1, // weight
  w2,
  w3,
  th1,// threshold
  th2,
  th3,
  d_in_1,
  s_in_1,
  d_in_2,
  s_in_2,
  d_out_3,
  s_out_3,
  o1, o2
  );

  input clk, w1, w2, w3;
  input [3:0] th1, th2, th3;
  input d_in_1, s_in_1, d_in_2, s_in_2;
  wire d_out_1, s_out_1, d_out_2, s_out_2;

  output reg o1, o2;

  wire d_in_3, s_in_3;
  output reg d_out_3, s_out_3;
  wire d_out_3_wire, s_out_3_wire;

  neuron n1(
    .clk      (clk),
    .weight   (w1),
    .threshold(th1),
    .data_in  (d_in_1),
    .sign_in  (s_in_1),
    .data_out (d_out_1),
    .sign_out (s_out_1)
    );

  neuron n2(
    .clk      (clk),
    .weight   (w2),
    .threshold(th2),
    .data_in  (d_in_2),
    .sign_in  (s_in_2),
    .data_out (d_out_2),
    .sign_out (s_out_2)
    );

  neuron n3(
    .clk      (clk),
    .weight   (w3),
    .threshold(th3),
    .data_in  (d_in_3),
    .sign_in  (s_in_3),
    .data_out (d_out_3_wire),
    .sign_out (s_out_3_wire)
    );

  assign d_in_3 = d_out_1 || d_out_2;
  assign s_in_3 = s_out_1 || s_out_2;

  always @ ( * ) begin
    d_out_3 = d_out_3_wire;
    s_out_3 = s_out_3_wire;
    o1 = d_out_1;
    o2 = d_out_2;
  end


endmodule // network_and
