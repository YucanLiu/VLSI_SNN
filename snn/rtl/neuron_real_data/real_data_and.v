`timescale 1ns / 1ps

module real_data_and (
  clk,
  w1, // weight
  w2,
  w3,
  th1,// threshold
  th2,
  th3,
  p_in_1,
  n_in_1,
  p_in_2,
  n_in_2,
  p_out_3,
  n_out_3,
  o1, o2
  );

  input clk, w1, w2, w3;
  input [7:0] th1, th2, th3;
  input p_in_1, n_in_1, p_in_2, n_in_2;
  wire p_out_1, n_out_1, p_out_2, n_out_2;

  output reg o1, o2;

  wire p_in_3, n_in_3;
  output reg p_out_3, n_out_3;
  wire p_out_3_wire, n_out_3_wire;

  neuron n1(
    .clk      (clk),
    .weight   (w1),
    .threshold(th1),
    .pos_in  (p_in_1),
    .neg_in  (n_in_1),
    .pos_out (p_out_1),
    .neg_out (n_out_1)
    );

  neuron n2(
    .clk      (clk),
    .weight   (w2),
    .threshold(th2),
    .pos_in  (p_in_2),
    .neg_in  (n_in_2),
    .pos_out (p_out_2),
    .neg_out (n_out_2)
    );

  neuron n3(
    .clk      (clk),
    .weight   (w3),
    .threshold(th3),
    .pos_in  (p_in_3),
    .neg_in  (n_in_3),
    .pos_out (p_out_3_wire),
    .neg_out (n_out_3_wire)
    );

  assign p_in_3 = p_out_1 || p_out_2;
  assign n_in_3 = n_out_1 || n_out_2;

  always @ ( * ) begin
    p_out_3 = p_out_3_wire;
    n_out_3 = n_out_3_wire;
    o1 = p_out_1;
    o2 = p_out_2;
  end


endmodule // real_data_and
