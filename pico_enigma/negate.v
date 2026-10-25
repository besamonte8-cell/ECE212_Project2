module negate(
    input en,
    input [3:0] in,
    output reg [3:0] out
);
    /*
    Applies 2s complement negation.
    If en is low, just pass in through to out unchanged.
    */
    //Do not modify above this line
    always @* begin
        case(en)
            0: out = in;
            1: out = (~in) + 1'b1;
        endcase
    end
endmodule

// Test successful!
