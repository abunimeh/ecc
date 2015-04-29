//
// Encoder for 128 bit DEC
//
// Authors: Joseph Crowe and Matt Markwell
//

module enc_top (
    input [126:0] IN, 
    output reg [140:0] OUT,
    input clk   
);

    always @(*) begin
       OUT[126:0] <= IN[126:0];
       OUT[127] <= IN[0]^ IN[5]^ IN[6]^ IN[8]^ IN[9]^ IN[13]^ IN[14]^ IN[15]^ IN[17]^ IN[18]^ IN[19]^
              IN[22]^ IN[27]^ IN[28]^ IN[29]^ IN[30]^ IN[33]^ IN[34]^ IN[37]^ IN[39]^ IN[43]^
              IN[44]^ IN[45]^ IN[46]^ IN[48]^ IN[50]^ IN[51]^ IN[53]^ IN[57]^ IN[59]^ IN[61]^
              IN[64]^ IN[66]^ IN[68]^ IN[70]^ IN[72]^ IN[75]^ IN[77]^ IN[78]^ IN[80]^ IN[81]^
              IN[86]^ IN[88]^ IN[92]^ IN[93]^ IN[100]^ IN[101]^ IN[102]^ IN[103]^ IN[104]^ IN[105]^
              IN[107]^ IN[108]^ IN[110]^ IN[112]^ IN[113];

       OUT[128] <= IN[0]^ IN[1]^ IN[5]^ IN[7]^ IN[8]^ IN[10]^ IN[13]^ IN[16]^ IN[17]^ IN[20]^ IN[22]^
              IN[23]^ IN[27]^ IN[31]^ IN[33]^ IN[35]^ IN[37]^ IN[38]^ IN[39]^ IN[40]^ IN[43]^
              IN[47]^ IN[48]^ IN[49]^ IN[50]^ IN[52]^ IN[53]^ IN[54]^ IN[57]^ IN[58]^ IN[59]^
              IN[60]^ IN[61]^ IN[62]^ IN[64]^ IN[65]^ IN[66]^ IN[67]^ IN[68]^ IN[69]^ IN[70]^
              IN[71]^ IN[72]^ IN[73]^ IN[75]^ IN[76]^ IN[77]^ IN[79]^ IN[80]^ IN[82]^ IN[86]^
              IN[87]^ IN[88]^ IN[89]^ IN[92]^ IN[94]^ IN[100]^ IN[106]^ IN[107]^ IN[109]^ IN[110]^
              IN[111]^ IN[112]^ IN[114];

       OUT[129] <=  IN[0]^ IN[1]^ IN[2]^ IN[5]^ IN[11]^ IN[13]^ IN[15]^ IN[19]^ IN[21]^ IN[22]^ IN[23]^
               IN[24]^ IN[27]^ IN[29]^ IN[30]^ IN[32]^ IN[33]^ IN[36]^ IN[37]^ IN[38]^ IN[40]^
               IN[41]^ IN[43]^ IN[45]^ IN[46]^ IN[49]^ IN[54]^ IN[55]^ IN[57]^ IN[58]^ IN[60]^
               IN[62]^ IN[63]^ IN[64]^ IN[65]^ IN[67]^ IN[69]^ IN[71]^ IN[73]^ IN[74]^ IN[75]^
               IN[76]^ IN[83]^ IN[86]^ IN[87]^ IN[89]^ IN[90]^ IN[92]^ IN[95]^ IN[100]^ IN[102]^
               IN[103]^ IN[104]^ IN[105]^ IN[111]^ IN[115];

       OUT[130] <=  IN[1]^ IN[2]^ IN[3]^ IN[6]^ IN[12]^ IN[14]^ IN[16]^ IN[20]^ IN[22]^ IN[23]^ IN[24]^
               IN[25]^ IN[28]^ IN[30]^ IN[31]^ IN[33]^ IN[34]^ IN[37]^ IN[38]^ IN[39]^ IN[41]^ IN[42]^
               IN[44]^ IN[46]^ IN[47]^ IN[50]^ IN[55]^ IN[56]^ IN[58]^ IN[59]^ IN[61]^ IN[63]^ IN[64]^
               IN[65]^ IN[66]^ IN[68]^ IN[70]^ IN[72]^ IN[74]^ IN[75]^ IN[76]^ IN[77]^ IN[84]^ IN[87]^
               IN[88]^ IN[90]^ IN[91]^ IN[93]^ IN[96]^ IN[101]^ IN[103]^ IN[104]^ IN[105]^ IN[106]^
               IN[112]^ IN[116];

       OUT[131] <=  IN[0]^ IN[2]^ IN[3]^ IN[4]^ IN[5]^ IN[6]^ IN[7]^ IN[8]^ IN[9]^ IN[14]^ IN[18]^ IN[19]^
               IN[21]^ IN[22]^ IN[23]^ IN[24]^ IN[25]^ IN[26]^ IN[27]^ IN[28]^ IN[30]^ IN[31]^ IN[32]^
               IN[33]^ IN[35]^ IN[37]^ IN[38]^ IN[40]^ IN[42]^ IN[44]^ IN[46]^ IN[47]^ IN[50]^ IN[53]^
               IN[56]^ IN[60]^ IN[61]^ IN[62]^ IN[65]^ IN[67]^ IN[68]^ IN[69]^ IN[70]^ IN[71]^ IN[72]^
               IN[73]^ IN[76]^ IN[80]^ IN[81]^ IN[85]^ IN[86]^ IN[89]^ IN[91]^ IN[93]^ IN[94]^ IN[97]^
               IN[100]^ IN[101]^ IN[103]^ IN[106]^ IN[108]^ IN[110]^ IN[112]^ IN[117];

       OUT[132] <=  IN[0]^ IN[1]^ IN[3]^ IN[4]^ IN[7]^ IN[10]^ IN[13]^ IN[14]^ IN[17]^ IN[18]^ IN[20]^ IN[23]^
               IN[24]^ IN[25]^ IN[26]^ IN[30]^ IN[31]^ IN[32]^ IN[36]^ IN[37]^ IN[38]^ IN[41]^ IN[44]^																		   
               IN[46]^ IN[47]^ IN[50]^ IN[53]^ IN[54]^ IN[59]^ IN[62]^ IN[63]^ IN[64]^ IN[69]^ IN[71]^
               IN[73]^ IN[74]^ IN[75]^ IN[78]^ IN[80]^ IN[82]^ IN[87]^ IN[88]^ IN[90]^ IN[93]^ IN[94]^
               IN[95]^ IN[98]^ IN[100]^ IN[103]^ IN[105]^ IN[108]^ IN[109]^ IN[110]^ IN[111]^ IN[112]^
               IN[118];

       OUT[133] <=  IN[0]^ IN[1]^ IN[2]^ IN[4]^ IN[6]^ IN[9]^ IN[11]^ IN[13]^ IN[17]^ IN[21]^ IN[22]^ IN[24]^
               IN[25]^ IN[26]^ IN[28]^ IN[29]^ IN[30]^ IN[31]^ IN[32]^ IN[34]^ IN[38]^ IN[42]^ IN[43]^
               IN[44]^ IN[46]^ IN[47]^ IN[50]^ IN[53]^ IN[54]^ IN[55]^ IN[57]^ IN[59]^ IN[60]^ IN[61]^
               IN[63]^ IN[65]^ IN[66]^ IN[68]^ IN[74]^ IN[76]^ IN[77]^ IN[78]^ IN[79]^ IN[80]^ IN[83]^
               IN[86]^ IN[89]^ IN[91]^ IN[92]^ IN[93]^ IN[94]^ IN[95]^ IN[96]^ IN[99]^ IN[100]^ IN[102]^
               IN[103]^ IN[105]^ IN[106]^ IN[107]^ IN[108]^ IN[109]^ IN[111]^ IN[119];

       OUT[134] <=  IN[1]^ IN[2]^ IN[3]^ IN[5]^ IN[7]^ IN[10]^ IN[12]^ IN[14]^ IN[18]^ IN[22]^ IN[23]^ IN[25]^
               IN[26]^ IN[27]^ IN[29]^ IN[30]^ IN[31]^ IN[32]^ IN[33]^ IN[35]^ IN[39]^ IN[43]^ IN[44]^
               IN[45]^ IN[47]^ IN[48]^ IN[51]^ IN[54]^ IN[55]^ IN[56]^ IN[58]^ IN[60]^ IN[61]^ IN[62]^
               IN[64]^ IN[66]^ IN[67]^ IN[69]^ IN[75]^ IN[77]^ IN[78]^ IN[79]^ IN[80]^ IN[81]^ IN[84]^ 
               IN[87]^ IN[90]^ IN[92]^ IN[93]^ IN[94]^ IN[95]^ IN[96]^ IN[97]^ IN[100]^ IN[101]^ IN[103]^
               IN[104]^ IN[106]^ IN[107]^ IN[108]^ IN[109]^ IN[110]^ IN[112]^ IN[120];

       OUT[135] <=  IN[0]^ IN[2]^ IN[3]^ IN[4]^ IN[5]^ IN[9]^ IN[11]^ IN[14]^ IN[17]^ IN[18]^ IN[22]^ IN[23]^
               IN[24]^ IN[26]^ IN[29]^ IN[31]^ IN[32]^ IN[36]^ IN[37]^ IN[39]^ IN[40]^ IN[43]^ IN[49]^
               IN[50]^ IN[51]^ IN[52]^ IN[53]^ IN[55]^ IN[56]^ IN[62]^ IN[63]^ IN[64]^ IN[65]^ IN[66]^
               IN[67]^ IN[72]^ IN[75]^ IN[76]^ IN[77]^ IN[79]^ IN[82]^ IN[85]^ IN[86]^ IN[91]^ IN[92]^
               IN[94]^ IN[95]^ IN[96]^ IN[97]^ IN[98]^ IN[100]^ IN[103]^ IN[109]^ IN[111]^ IN[112]^ IN[121];

       OUT[136] <=  IN[0]^ IN[1]^ IN[3]^ IN[4]^ IN[8]^ IN[9]^ IN[10]^ IN[12]^ IN[13]^ IN[14]^ IN[17]^ IN[22]^ IN[23]^
               IN[24]^ IN[25]^ IN[28]^ IN[29]^ IN[32]^ IN[34]^ IN[38]^ IN[39]^ IN[40]^ IN[41]^ IN[43]^ IN[45]^
               IN[46]^ IN[48]^ IN[52]^ IN[54]^ IN[56]^ IN[59]^ IN[61]^ IN[63]^ IN[65]^ IN[67]^ IN[70]^ IN[72]^
               IN[73]^ IN[75]^ IN[76]^ IN[81]^ IN[83]^ IN[87]^ IN[88]^ IN[95]^ IN[96]^ IN[97]^ IN[98]^ IN[99]^
               IN[100]^ IN[102]^ IN[103]^ IN[105]^ IN[107]^ IN[108]^ IN[122];

       OUT[137] <= IN[1]^ IN[2]^ IN[4]^ IN[5]^ IN[9]^ IN[10]^ IN[11]^ IN[13]^ IN[14]^ IN[15]^ IN[18]^ IN[23]^ IN[24]^
               IN[25]^ IN[26]^ IN[29]^ IN[30]^ IN[33]^ IN[35]^ IN[39]^ IN[40]^ IN[41]^ IN[42]^ IN[44]^ IN[46]^
               IN[47]^ IN[49]^ IN[53]^ IN[55]^ IN[57]^ IN[60]^ IN[62]^ IN[64]^ IN[66]^ IN[68]^ IN[71]^ IN[73]^
               IN[74]^ IN[76]^ IN[77]^ IN[82]^ IN[84]^ IN[88]^ IN[89]^ IN[96]^ IN[97]^ IN[98]^ IN[99]^ IN[100]^ 
               IN[101]^ IN[103]^ IN[104]^ IN[106]^ IN[108]^ IN[109]^ IN[123];

       OUT[138] <= IN[2]^ IN[3]^ IN[5]^ IN[6]^ IN[10]^ IN[11]^ IN[12]^ IN[14]^ IN[15]^ IN[16]^ IN[19]^ IN[24]^ IN[25]^
               IN[26]^ IN[27]^ IN[30]^ IN[31]^ IN[34]^ IN[36]^ IN[40]^ IN[41]^ IN[42]^ IN[43]^ IN[45]^ IN[47]^ IN[48]^
               IN[50]^ IN[54]^ IN[56]^ IN[58]^ IN[61]^ IN[63]^ IN[65]^ IN[67]^ IN[69]^ IN[72]^ IN[74]^ IN[75]^ IN[77]^
               IN[78]^ IN[83]^ IN[85]^ IN[89]^ IN[90]^ IN[97]^ IN[98]^ IN[99]^ IN[100]^ IN[101]^ IN[102]^ IN[104]^
               IN[105]^ IN[107]^ IN[109]^ IN[110]^ IN[124];

       OUT[139] <= IN[3]^ IN[4]^ IN[6]^ IN[7]^ IN[11]^ IN[12]^IN[13]^ IN[15]^ IN[16]^ IN[17]^ IN[20]^ IN[25]^ IN[26]^
               IN[27]^ IN[28]^ IN[31]^ IN[32]^ IN[35]^ IN[37]^ IN[41]^ IN[42]^ IN[43]^ IN[44]^ IN[46]^ IN[48]^
               IN[49]^ IN[51]^ IN[55]^ IN[57]^ IN[59]^ IN[62]^ IN[64]^ IN[66]^ IN[68]^ IN[70]^ IN[73]^ IN[75]^
               IN[76]^ IN[78]^ IN[79]^ IN[84]^ IN[86]^ IN[90]^ IN[91]^ IN[98]^ IN[99]^ IN[100]^ IN[101]^ IN[102]^
               IN[103]^ IN[105]^ IN[106]^ IN[108]^ IN[110]^ IN[111]^ IN[125];

       OUT[140] <=  IN[4]^ IN[5]^ IN[7]^ IN[8]^ IN[12]^ IN[13]^ IN[14]^ IN[16]^ IN[17]^ IN[18]^ IN[21]^ IN[26]^ IN[27]^
                IN[28]^ IN[29]^ IN[32]^ IN[33]^ IN[36]^ IN[38]^ IN[42]^ IN[43]^ IN[44]^ IN[45]^ IN[47]^ IN[49]^
                IN[50]^ IN[52]^ IN[56]^ IN[58]^ IN[60]^ IN[63]^ IN[65]^ IN[67]^ IN[69]^ IN[71]^ IN[74]^ IN[76]^
                IN[77]^ IN[79]^ IN[80]^ IN[85]^ IN[87]^ IN[91]^ IN[92]^ IN[99]^ IN[100]^ IN[101]^ IN[102]^
                IN[103]^ IN[104]^ IN[106]^ IN[107]^ IN[109]^ IN[111]^ IN[112]^ IN[126];



    end
endmodule


