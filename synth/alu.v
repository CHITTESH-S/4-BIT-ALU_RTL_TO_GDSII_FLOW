module alu (
    input  wire clk,          // Dummy clock for PnR flow
    input [3:0] A, B,
    input [1:0] sel,
    output reg [3:0] Y,
    output reg Cout
);
    always @(*) begin
        case (sel)
            2'b00: {Cout, Y} = A + B;         // Addition
            2'b01: {Cout, Y} = A - B;         // Subtraction
            2'b10: Y = A & B;                 // AND
            2'b11: Y = A | B;                 // OR
        endcase
    end
endmodule
