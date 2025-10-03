module ripple_counter_func (
    input clk, rst,
    output reg [3:0] Q
 );
    function [3:0] count;
        input [3:0] val;
         begin
             count = val + 1;
         end
     endfunction

     always @(posedge clk or posedge rst) begin
         if (rst)
             Q <= 4'b0000;
         else
             Q <= count(Q);
    end
endmodule
