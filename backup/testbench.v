module counter_tb;
  reg clk, reset, enable;
  wire [3:0] count;

  counter U0 (
  .clk    (clk),
  .reset  (reset),
  .enable (enable),
  .count  (count)
  );

  initial
  begin 
    clk = 0;
    reset = 0;
    enable = 0;
  end

  always
    #5 clk = !clk;

endmodule
