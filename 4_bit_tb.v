module up_down_counter_tb;
  wire [3:0] q;  
  reg mod;
  reg clk;
  reg rst;

  up_down_counter #(4) dut(.q(q), .mod(mod), .clk(clk), .rst(rst));
  initial begin
    clk = 0;
    forever #10 clk = ~clk;
  end

  initial 
  begin
    $dumpfile("4_bit.vcd");
    $dumpvars(0, up_down_counter_tb);
  end 
    
  initial 
  begin 
    rst = 1;        
    mod = 0;      //this starts the counting in back
    #20 rst = 0;
    forever #320 mod = ~mod;
  end

  initial 
  begin
    #650 $finish;
  end
endmodule
