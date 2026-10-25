module sevseg_disp(
    input [3:0] in,
    input dp,
    output reg [7:0] segs
);
    /*
    Takes in a 4 bit value and decimal point
    outputs signals for the 8 LEDs on the display
    Segments are assigned a=seg[0], b=seg[1], etc.
    seg[7] is the decimal point.
    Displays the hexadecimal value of the 4 bit input.
    Decimal point is controled by the dp input.
    */
    //Do not modify above this line
    always @* begin
        case(dp)
            0: case(in)
                0: segs = 8'b00111111; // A, B, C, D, E, F --> ON
                1: segs = 8'b00000110; // B, C --> ON
                2: segs = 8'b01011011; // A, B, D, E, G --> ON
                3: segs = 8'b01001111; // A, B, C, D, G --> ON
                4: segs = 8'b01100110; // B, C, F, G --> ON
                5: segs = 8'b01101101; // A, C, D, F, G --> ON
                6: segs = 8'b01111101; // A, C, D, E, F, G --> ON
                7: segs = 8'b00000111;// A, B, C --> ON
                8: segs = 8'b01111111; // all segments on except dp
                9: segs = 8'b01101111; // A, B, C, D, F, G --> ON
                10: segs = 8'b01110111; // hex A = A, B, C, E, F, G --> ON
                11: segs = 8'b01111100; // hex b = C, D, E, F, G --> ON
                12: segs = 8'b00111001; // hex C = A, D, E, F --> ON
                13: segs = 8'b01011110; // hex d = B, C, D, E, G --> ON
                14: segs = 8'b01111001; // hex E = A, D, E, F, G --> ON
                15: segs = 8'b01110001;  // hex F = A, E, F, G --> ON
            endcase
            1: case(in)
                0: segs = 8'b10111111; // A, B, C, D, E, F --> ON
                1: segs = 8'b10000110; // B, C --> ON
                2: segs = 8'b11011011; // A, B, D, E, G --> ON
                3: segs = 8'b11001111; // A, B, C, D, G --> ON
                4: segs = 8'b11100110; // B, C, F, G --> ON
                5: segs = 8'b11101101; // A, C, D, F, G --> ON
                6: segs = 8'b11111101; // A, C, D, E, F, G --> ON
                7: segs = 8'b10000111;// A, B, C --> ON
                8: segs = 8'b11111111; // all segments on except dp
                9: segs = 8'b11101111; // A, B, C, D, F, G --> ON
                10: segs = 8'b11110111; // hex A = A, B, C, E, F, G --> ON
                11: segs = 8'b11111100; // hex b = C, D, E, F, G --> ON
                12: segs = 8'b10111001; // hex C = A, D, E, F --> ON
                13: segs = 8'b11011110; // hex d = B, C, D, E, G --> ON
                14: segs = 8'b11111001; // hex E = A, D, E, F, G --> ON
                15: segs = 8'b11110001;  // hex F = A, E, F, G --> ON
            endcase
        endcase
    end

endmodule