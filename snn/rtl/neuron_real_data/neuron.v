`timescale 1ns / 1ps

module neuron ( // A neuron with both positive and negative input ports
  clk,
  weight,
  threshold,
  pos_in,
  neg_in,
  pos_out,
  neg_out
  );

  input clk, weight;
  input [7:0] threshold;
  input pos_in, neg_in;
  output pos_out, neg_out;

  reg [7:0] counter;
  reg pos_out, neg_out;

  initial begin
    counter <= 8'b0;
    pos_out <= 0;
    neg_out <= 0;
  end

  always @ ( pos_in, neg_in ) begin
    if (pos_in == 1)
      begin
        counter <= counter + 1;
      end
    else if (neg_in == 1)
      begin
        counter <= (counter == 8'b0) ? 0 : counter - 1;
      end
  end

  always @ ( negedge clk ) begin
    if (counter >= threshold) begin
      if (weight == 1) pos_out <= 1;
      else if (weight == 0) neg_out <= 1;
      counter <= 8'b0;
      #1
      pos_out <= 0;
      neg_out <= 0;

    end else begin
      pos_out <= 0;
      neg_out <= 0;
    end
  end

endmodule // neuron
