# 4-bit-Ripple-counter-using-Function-and-4-bit-Ripple-Adder-using-task

# Aim
To design and simulate a 4-bit-Ripple-counter-using-Function-and-4-bit-Ripple-Adder-using-task using Verilog HDL, and verify its functionality through a testbench in the Vivado 2023.1 environment. 

# Apparatus Required
Vivado 2023.1
# Procedure
1. Launch Vivado 2023.1
Open Vivado and create a new project.
2. Design the Verilog Code
Write the Verilog code for the seven-segment display, defining the logic that maps a 4-bit binary input to the corresponding segments (a to g) of the display.
3. Create the Testbench
Write a testbench to simulate the seven-segment display behavior. The testbench should apply various 4-bit input values and monitor the corresponding output.
4. Create the Verilog Files
Create both the design module and the testbench in the Vivado project.
5. Run Simulation
Run the behavioral simulation to verify the output. 
6. Observe the Waveforms
Analyze the output waveforms in the simulation window, and verify that the correct segments light up for each digit.
7. Save and Document Results
Capture screenshots of the waveform and save the simulation logs. These will be included in the lab report.

# Verilog Code
# 4 bit Ripple Adder using Task
``` 
module ripple_carry_adder(
    input [3:0] A, B,
    input Cin,
    output reg [3:0] Sum,
    output reg Cout
);
    integer i;
    reg c;
    task full_adder;
        input a, b, cin;
        output s, cout;
        begin
            s = a ^ b ^ cin;
            cout = (a & b) | (b & cin) | (a & cin);
        end
    endtask

    always @(*) begin
        c = Cin;
        for (i = 0; i < 4; i = i + 1) begin
            full_adder(A[i], B[i], c, Sum[i], c);
        end
        Cout = c;
    end
endmodule
```
# Test Bench
```
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
```
# Output Waveform
<img width="1919" height="1199" alt="image" src="https://github.com/user-attachments/assets/4214eedf-a07c-42ea-b540-55b650c05165" />

# 4 bit Ripple counter using Function
// 4-bit Ripple Counter using Function
module ripple_counter_func (
    input clk, rst,
    output reg [3:0] Q
);

    function [3:0] count;
     ///
    endfunction

    always @(posedge clk or posedge rst) begin
        if (rst)
            Q <= 4'b0000;
        else
            Q <= count(Q);  // use function to increment
    end
endmodule

# Test Bench


# Output Waveform 


# Conclusion
In this experiment, a 4-bit-Ripple-counter-using-Function-and-4-bit-Ripple-Adder-using-task was successfully designed and simulated using Verilog HDL.
