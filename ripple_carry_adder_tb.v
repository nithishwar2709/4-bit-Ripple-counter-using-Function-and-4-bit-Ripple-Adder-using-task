module ripple_carry_adder_tb;
    reg [3:0] a_t, b_t;
    reg Cin_t;
    wire [3:0] sum_t;
    wire Cout_t;
    
    ripple_carry_adder dut(.Cin(Cin_t),.A(a_t),.B(b_t),.Sum(sum_t),.Cout(Cout_t));
    
    initial 
      begin 
        a_t = 4'd2;
        b_t = 4'd3;
        Cin_t = 1'b0;
        #100
        a_t = 4'd4;
        b_t = 4'd6;
        #100
        a_t = 4'd7;
        b_t = 4'd8;
        #100
        a_t = 4'd9;
        b_t = 4'd10;
        Cin_t = 1'b1;
        #100
        a_t = 4'd11;
        b_t = 4'd12;
        #100
        a_t = 4'd13;
        b_t = 4'd14;                
    end
endmodule
