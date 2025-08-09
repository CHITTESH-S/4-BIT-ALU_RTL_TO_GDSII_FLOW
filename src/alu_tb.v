module alu_tb;
    reg [3:0] A, B;
    reg [1:0] sel;
    wire [3:0] Y;
    wire Cout;

    alu uut (
        .A(A), .B(B), .sel(sel), .Y(Y), .Cout(Cout)
    );

    initial begin
        $dumpfile("alu.vcd");
        $dumpvars(0, alu_tb);

        A = 4'b0011; B = 4'b0001; sel = 2'b00; #10;
        A = 4'b0100; B = 4'b0001; sel = 2'b01; #10;
        A = 4'b1100; B = 4'b1010; sel = 2'b10; #10;
        A = 4'b1100; B = 4'b1010; sel = 2'b11; #10;

        $finish;
    end
endmodule
