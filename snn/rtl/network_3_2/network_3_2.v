`timescale 1ns / 1ps

module network_3_2 (
  clk,
  data_in_1,
  sign_in_1,
  data_in_2,
  sign_in_2,
  data_in_3,
  sign_in_3,
  weight_1,
  weight_2,
  weight_3,
  weight_4,
  weight_5,
  data_out_4,
  sign_out_4,
  data_out_5,
  sign_out_5,
  o1,o2,o3
  );

  input clk;

  input data_in_1, data_in_2, data_in_3;
  input sign_in_1, sign_in_2, sign_in_3;
  wire data_out_1, data_out_2, data_out_3;
  wire sign_out_1, sign_out_2, sign_out_3;

  output reg o1, o2, o3;

  input weight_1, weight_2, weight_3, weight_4, weight_5;

  output reg data_out_4, data_out_5;
  output reg sign_out_4, sign_out_5;
  wire data_out_4_wire, data_out_5_wire;
  wire sign_out_4_wire, sign_out_5_wire;
  wire data_in_4, data_in_5;
  wire sign_in_4, sign_in_5;

  neuron n1(
    .clk      (clk),
    .weight   (weight_1),
    .data_in  (data_in_1),
    .sign_in  (sign_in_1),
    .data_out (data_out_1),
    .sign_out (sign_out_1)
    );

  neuron n2(
    .clk      (clk),
    .weight   (weight_2),
    .data_in  (data_in_2),
    .sign_in  (sign_in_2),
    .data_out (data_out_2),
    .sign_out (sign_out_2)
    );

  neuron n3(
    .clk      (clk),
    .weight   (weight_3),
    .data_in  (data_in_3),
    .sign_in  (sign_in_3),
    .data_out (data_out_3),
    .sign_out (sign_out_3)
    );

  neuron n4(
    .clk      (clk),
    .weight   (weight_4),
    .data_in  (data_in_4),
    .sign_in  (sign_in_4),
    .data_out (data_out_4_wire),
    .sign_out (sign_out_4_wire)
    );

  neuron n5(
    .clk      (clk),
    .weight   (weight_5),
    .data_in  (data_in_5),
    .sign_in  (sign_in_5),
    .data_out (data_out_5_wire),
    .sign_out (sign_out_5_wire)
    );

  // assume no collision
  assign data_in_4 = data_out_1 || data_out_2 || data_out_3;
  assign sign_in_4 = sign_out_1 || sign_out_2 || sign_out_3;

  assign data_in_5 = data_out_1 || data_out_2 || data_out_3;
  assign sign_in_5 = sign_out_1 || sign_out_2 || sign_out_3;

  always @ ( * ) begin
  // debug block
  $display ("data_in_4=  %b", (data_in_4));
  $display ("sign_in_4=  %b \n", (sign_in_5));
    data_out_4 = data_out_4_wire;
    sign_out_4 = sign_out_4_wire;
    data_out_5 = data_out_5_wire;
    sign_out_5 = sign_out_5_wire;
    o1 = data_out_1;
    o2 = data_out_2;
    o3 = data_out_3;
  end

endmodule // network
