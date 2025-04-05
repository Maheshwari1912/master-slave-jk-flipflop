module master_slave_jk(
  input wire clk,reset,j,k,
  output reg Q,Q_bar);
  reg master_Q;
  always@(posedge clk or posedge reset) begin
    if(reset) begin
      master_Q <=1'b0;
    end else begin
      case({j,k})
        2'b00: master_Q <= master_Q;
        2'b01: master_Q <= 1'b0;
        2'b10: master_Q <= 1'b1;
        2'b00: master_Q <= ~master_Q;
      endcase
    end
  end
  always @(negedge clk or posedge reset) begin
    if(reset) begin
      Q <= 1'b0;
      Q_bar <= 1'b1;
    end else begin
      Q <= master_Q;
      Q_bar <= ~master_Q;
    end
  end
endmodule
      
      
        
