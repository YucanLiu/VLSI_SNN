`timescale 1ns / 1ps

module neuron (
  clk,
  weight,
  threshold,
  data_in,
  sign_in,
  data_out,
  sign_out
  );

  input clk, weight;
  input [3:0] threshold;
  input data_in, sign_in;
  output data_out, sign_out;
  // reg counter, data_out;
  reg [3:0] counter;
  reg data_out, sign_out;

  initial begin
    counter <= 4'b0;
    data_out <= 0;
    sign_out <= 0;
  end

  // The receiver
  always @ ( data_in, sign_in ) begin

    // debug block
    // $display ("counter= %d", (counter));
    // $display ("data_in=  %b", (data_in));
    // $display ("sign_in=  %b \n", (sign_in));

    if (data_in == 1 && sign_in == 1) // positive pulse
      begin
        counter <= counter + 1;
      end
    else if (data_in == 1 && sign_in == 0) // negative pulse
      begin
        counter <= (counter == 4'b0) ? 0 : counter - 1;
      end
  end

  // The transmitter
  always @ (negedge clk) begin
    if (counter >= threshold) begin // Threshold = 2
      data_out <= 1;
      sign_out <= weight;
      counter <= 4'b0;           // clear the counter
      #1 // generate the pulse
      data_out <= 0;
      sign_out <= 0;
    end else begin
      data_out <= 0;
      sign_out <= 0;
    end
  end

endmodule // neuron
