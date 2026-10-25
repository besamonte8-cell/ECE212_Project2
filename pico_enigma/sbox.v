module sbox(
    input en,
    input [3:0] in,
    output reg [3:0] out
);
    /*
    Substitution box, as described in the spec.
    If en is low, just pass in through to out unchanged.
    */
    //Do not modify above this line
    always @* begin
        case(en)
            0: out = in;
            1: case(in)
                0: out = 10;
                1: out = 14;
                2: out = 13;
                3: out = 7;
                4: out = 15;
                5: out = 9;
                6: out = 8;
                7: out = 3;
                8: out = 6;
                9: out = 5;
                10: out = 0;
                11: out = 12;
                12: out = 11;
                13: out = 2;
                14:  out = 1;
                15: out = 4;
            endcase
        endcase
    end
endmodule

// Test successful!