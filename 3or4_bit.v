module up_down_counter #(parameter N=4) (
    output reg [N-1:0] q,
    input  wire mod,   //1=up, 0=down
    input  wire clk,
    input  wire rst
);

  always @(posedge clk) begin
    if (rst) 
    begin
      q <= 0;
    end 
    else
    begin
      if (mod)
        q <= q + 1;   //increase count by 1
      else
        q <= q - 1;   //decrease count by 1
    end
  end
endmodule
