//
// Decoder for 64 bit SEC-DED
//
// Authors: Joseph Crowe and Matt Markwell
//


module corrector (input [71:0] IN, 
    input [7:0] SYN,
    output reg [71:0] OUT
);

reg [71:0] LOC;

    always @(*) begin
        case(SYN)
            8'b00100011: LOC <= 72'h00_0000_0000_0000_0001; 
            8'b01000011: LOC <= 72'h00_0000_0000_0000_0002;
            8'b10000011: LOC <= 72'h00_0000_0000_0000_0004;
            8'b00111101: LOC <= 72'h00_0000_0000_0000_0008;
            8'b01000101: LOC <= 72'h00_0000_0000_0000_0010;
            8'b10000101: LOC <= 72'h00_0000_0000_0000_0020;
            8'b10001001: LOC <= 72'h00_0000_0000_0000_0040;
            8'b01001001: LOC <= 72'h00_0000_0000_0000_0080;
            8'b01000110: LOC <= 72'h00_0000_0000_0000_0100;
            8'b10000110: LOC <= 72'h00_0000_0000_0000_0200;
            8'b00000111: LOC <= 72'h00_0000_0000_0000_0400;
            8'b01111010: LOC <= 72'h00_0000_0000_0000_0800;
            8'b10001010: LOC <= 72'h00_0000_0000_0000_1000;
            8'b00001011: LOC <= 72'h00_0000_0000_0000_2000;
            8'b00010011: LOC <= 72'h00_0000_0000_0000_4000;
            8'b10010010: LOC <= 72'h00_0000_0000_0000_8000;
            8'b10001100: LOC <= 72'h00_0000_0000_0001_0000;
            8'b00001101: LOC <= 72'h00_0000_0000_0002_0000;
            8'b00001110: LOC <= 72'h00_0000_0000_0004_0000;
            8'b11110100: LOC <= 72'h00_0000_0000_0008_0000;
            8'b00010101: LOC <= 72'h00_0000_0000_0010_0000;
            8'b00010110: LOC <= 72'h00_0000_0000_0020_0000;
            8'b00100110: LOC <= 72'h00_0000_0000_0040_0000;
            8'b00100101: LOC <= 72'h00_0000_0000_0080_0000;
            8'b00011001: LOC <= 72'h00_0000_0000_0100_0000;
            8'b00011010: LOC <= 72'h00_0000_0000_0200_0000;
            8'b00011100: LOC <= 72'h00_0000_0000_0400_0000;
            8'b11101001: LOC <= 72'h00_0000_0000_0800_0000;
            8'b00101010: LOC <= 72'h00_0000_0000_1000_0000;
            8'b00101100: LOC <= 72'h00_0000_0000_2000_0000;
            8'b01001100: LOC <= 72'h00_0000_0000_4000_0000;
            8'b01001010: LOC <= 72'h00_0000_0000_8000_0000;
            8'b00110010: LOC <= 72'h00_0000_0001_0000_0000;
            8'b00110100: LOC <= 72'h00_0000_0002_0000_0000;
            8'b00111000: LOC <= 72'h00_0000_0004_0000_0000;
            8'b11010011: LOC <= 72'h00_0000_0008_0000_0000;
            8'b01010100: LOC <= 72'h00_0000_0010_0000_0000;
            8'b01011000: LOC <= 72'h00_0000_0020_0000_0000;
            8'b10011000: LOC <= 72'h00_0000_0040_0000_0000;
            8'b10010100: LOC <= 72'h00_0000_0080_0000_0000;
            8'b01100100: LOC <= 72'h00_0000_0100_0000_0000;
            8'b01101000: LOC <= 72'h00_0000_0200_0000_0000;
            8'b01110000: LOC <= 72'h00_0000_0400_0000_0000;
            8'b10100111: LOC <= 72'h00_0000_0800_0000_0000;
            8'b10101000: LOC <= 72'h00_0000_1000_0000_0000;
            8'b10110000: LOC <= 72'h00_0000_2000_0000_0000;
            8'b00110001: LOC <= 72'h00_0000_4000_0000_0000;
            8'b00101001: LOC <= 72'h00_0000_8000_0000_0000;
            8'b11001000: LOC <= 72'h00_0001_0000_0000_0000;
            8'b11010000: LOC <= 72'h00_0002_0000_0000_0000;
            8'b11100000: LOC <= 72'h00_0004_0000_0000_0000;
            8'b01001111: LOC <= 72'h00_0008_0000_0000_0000;
            8'b01010001: LOC <= 72'h00_0010_0000_0000_0000;
            8'b01100001: LOC <= 72'h00_0020_0000_0000_0000;
            8'b01100010: LOC <= 72'h00_0040_0000_0000_0000;
            8'b01010010: LOC <= 72'h00_0080_0000_0000_0000;
            8'b10010001: LOC <= 72'h00_0100_0000_0000_0000;
            8'b10100001: LOC <= 72'h00_0200_0000_0000_0000;
            8'b11000001: LOC <= 72'h00_0400_0000_0000_0000;
            8'b10011110: LOC <= 72'h00_0800_0000_0000_0000;
            8'b10100010: LOC <= 72'h00_1000_0000_0000_0000;
            8'b11000010: LOC <= 72'h00_2000_0000_0000_0000;
            8'b11000100: LOC <= 72'h00_4000_0000_0000_0000;
            8'b10100100: LOC <= 72'h00_8000_0000_0000_0000;
            8'b00000001: LOC <= 72'h01_0000_0000_0000_0000;
            8'b00000010: LOC <= 72'h02_0000_0000_0000_0000;
            8'b00000100: LOC <= 72'h04_0000_0000_0000_0000;
            8'b00001000: LOC <= 72'h08_0000_0000_0000_0000;
            8'b00010000: LOC <= 72'h10_0000_0000_0000_0000;
            8'b00100000: LOC <= 72'h20_0000_0000_0000_0000;
            8'b01000000: LOC <= 72'h40_0000_0000_0000_0000;
            8'b10000000: LOC <= 72'h80_0000_0000_0000_0000;            
            default: LOC <= 0;
        endcase            
        OUT <= LOC ^ IN;
    end

endmodule


module dec_top (input [71:0] IN, 
    output wire [71:0] OUT, 
    output reg [7:0] SYN, 
    output reg ERR, SGL, DBL,
    input clk 
);


    wire [7:0] CHK;
    assign CHK = IN[71:64];


    always @(*) begin
       SYN[0] <= IN[0] ^ IN[1] ^ IN[2] ^ IN[3] ^ IN[4] ^ IN[5] ^ IN[6] ^ IN[7] ^ IN[10] ^ IN[13] ^ IN[14] ^ IN[17] ^ IN[20] ^ IN[23] ^ IN[24] ^ IN[27] ^ IN[35] ^ IN[43] ^ IN[46] ^ IN[47] ^ IN[51] ^ IN[52] ^ IN[53] ^ IN[56] ^ IN[57] ^ IN[58] ^ CHK[0];
       SYN[1] <= IN[0] ^ IN[1] ^ IN[2] ^ IN[8] ^ IN[9] ^ IN[10] ^ IN[11] ^ IN[12] ^ IN[13] ^ IN[14] ^ IN[15] ^ IN[18] ^ IN[21] ^ IN[22] ^ IN[25] ^ IN[28] ^ IN[31] ^ IN[32] ^ IN[35] ^ IN[43] ^ IN[51] ^ IN[54] ^ IN[55] ^ IN[59] ^ IN[60] ^ IN[61] ^ CHK[1];
       SYN[2] <= IN[3] ^ IN[4] ^ IN[5] ^ IN[8] ^ IN[9] ^ IN[10] ^ IN[16] ^ IN[17] ^ IN[18] ^ IN[19] ^ IN[20] ^ IN[21] ^ IN[22] ^ IN[23] ^ IN[26] ^ IN[29] ^ IN[30] ^ IN[33] ^ IN[36] ^ IN[39] ^ IN[40] ^ IN[43] ^ IN[51] ^ IN[59] ^ IN[62] ^ IN[63] ^ CHK[2];
       SYN[3] <= IN[3] ^ IN[6] ^ IN[7] ^ IN[11] ^ IN[12] ^ IN[13] ^ IN[16] ^ IN[17] ^ IN[18] ^ IN[24] ^ IN[25] ^ IN[26] ^ IN[27] ^ IN[28] ^ IN[29] ^ IN[30] ^ IN[31] ^ IN[34] ^ IN[37] ^ IN[38] ^ IN[41] ^ IN[44] ^ IN[47] ^ IN[48] ^ IN[51] ^ IN[59] ^ CHK[3];
       SYN[4] <= IN[3] ^ IN[11] ^ IN[14] ^ IN[15] ^ IN[19] ^ IN[20] ^ IN[21] ^ IN[24] ^ IN[25] ^ IN[26] ^ IN[32] ^ IN[33] ^ IN[34] ^ IN[35] ^ IN[36] ^ IN[37] ^ IN[38] ^ IN[39] ^ IN[42] ^ IN[45] ^ IN[46] ^ IN[49] ^ IN[52] ^ IN[55] ^ IN[56] ^ IN[59] ^ CHK[4];
       SYN[5] <= IN[0] ^ IN[3] ^ IN[11] ^ IN[19] ^ IN[22] ^ IN[23] ^ IN[27] ^ IN[28] ^ IN[29] ^ IN[32] ^ IN[33] ^ IN[34] ^ IN[40] ^ IN[41] ^ IN[42] ^ IN[43] ^ IN[44] ^ IN[45] ^ IN[46] ^ IN[47] ^ IN[50] ^ IN[53] ^ IN[54] ^ IN[57] ^ IN[60] ^ IN[63] ^ CHK[5];
       SYN[6] <= IN[1] ^ IN[4] ^ IN[7] ^ IN[8] ^ IN[11] ^ IN[19] ^ IN[27] ^ IN[30] ^ IN[31] ^ IN[35] ^ IN[36] ^ IN[37] ^ IN[40] ^ IN[41] ^ IN[42] ^ IN[48] ^ IN[49] ^ IN[50] ^ IN[51] ^ IN[52] ^ IN[53] ^ IN[54] ^ IN[55] ^ IN[58] ^ IN[61] ^ IN[62] ^ CHK[6];
       SYN[7] <= IN[2] ^ IN[5] ^ IN[6] ^ IN[9] ^ IN[12] ^ IN[15] ^ IN[16] ^ IN[19] ^ IN[27] ^ IN[35] ^ IN[38] ^ IN[39] ^ IN[43] ^ IN[44] ^ IN[45] ^ IN[48] ^ IN[49] ^ IN[50] ^ IN[56] ^ IN[57] ^ IN[58] ^ IN[59] ^ IN[60] ^ IN[61] ^ IN[62] ^ IN[63] ^ CHK[7];
    
       ERR <= |SYN;
       SGL <= ^SYN & ERR;
       DBL <= ~^SYN & ERR;
    end

corrector corr_mod (.IN(IN), .SYN(SYN), .OUT(OUT));
    
endmodule



