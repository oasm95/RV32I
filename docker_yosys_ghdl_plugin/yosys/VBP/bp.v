/* Generated by Yosys 0.9+3624 (git sha1 UNKNOWN, clang 7.0.1-8+deb10u2 -fPIC -Os) */

module BranchPredictor(clk, ISJAL, WEN, TAKENJMP, WASMATCH, PCr, PCw, WTARGET, RTARGET, PREDICTION, MATCH);
  wire _00_;
  wire [1:0] _01_;
  wire _02_;
  wire [1:0] _03_;
  wire _04_;
  wire [1:0] _05_;
  wire _06_;
  wire [1:0] _07_;
  wire _08_;
  wire [1:0] _09_;
  wire [1:0] _10_;
  wire _11_;
  wire [7679:0] _12_;
  wire [29:0] _13_;
  wire [5631:0] _14_;
  wire [21:0] _15_;
  wire [511:0] _16_;
  wire [1:0] _17_;
  wire [511:0] _18_;
  wire [1:0] _19_;
  wire [255:0] _20_;
  wire _21_;
  wire _22_;
  wire _23_;
  wire _24_;
  wire _25_;
  input ISJAL;
  output MATCH;
  input [31:0] PCr;
  input [31:0] PCw;
  output PREDICTION;
  output [29:0] RTARGET;
  input TAKENJMP;
  input WASMATCH;
  input WEN;
  input [29:0] WTARGET;
  input clk;
  wire [1:0] nextstate;
  wire \predictbranch.vprediction ;
  wire smatch;
  wire spredict;
  reg [29:0] \$mem$\103  [255:0];
  reg [21:0] \$mem$\106  [255:0];
  reg [1:0] \$mem$\110  [255:0];
  reg [0:0] \$mem$\115  [255:0];
  reg [29:0] \103  [255:0];
  always @(posedge clk) begin
    if (WEN) \103 [PCw[9:2]] <= WTARGET;
  end
  assign _13_ = \103 [PCr[9:2]];
  reg [21:0] \106  [255:0];
  always @(posedge clk) begin
    if (WEN) \106 [PCw[9:2]] <= PCw[31:10];
  end
  assign _15_ = \106 [PCr[9:2]];
  reg [1:0] \110  [255:0];
  initial begin
    \110 [0] = 2'h0;
    \110 [1] = 2'h0;
    \110 [2] = 2'h0;
    \110 [3] = 2'h0;
    \110 [4] = 2'h0;
    \110 [5] = 2'h0;
    \110 [6] = 2'h0;
    \110 [7] = 2'h0;
    \110 [8] = 2'h0;
    \110 [9] = 2'h0;
    \110 [10] = 2'h0;
    \110 [11] = 2'h0;
    \110 [12] = 2'h0;
    \110 [13] = 2'h0;
    \110 [14] = 2'h0;
    \110 [15] = 2'h0;
    \110 [16] = 2'h0;
    \110 [17] = 2'h0;
    \110 [18] = 2'h0;
    \110 [19] = 2'h0;
    \110 [20] = 2'h0;
    \110 [21] = 2'h0;
    \110 [22] = 2'h0;
    \110 [23] = 2'h0;
    \110 [24] = 2'h0;
    \110 [25] = 2'h0;
    \110 [26] = 2'h0;
    \110 [27] = 2'h0;
    \110 [28] = 2'h0;
    \110 [29] = 2'h0;
    \110 [30] = 2'h0;
    \110 [31] = 2'h0;
    \110 [32] = 2'h0;
    \110 [33] = 2'h0;
    \110 [34] = 2'h0;
    \110 [35] = 2'h0;
    \110 [36] = 2'h0;
    \110 [37] = 2'h0;
    \110 [38] = 2'h0;
    \110 [39] = 2'h0;
    \110 [40] = 2'h0;
    \110 [41] = 2'h0;
    \110 [42] = 2'h0;
    \110 [43] = 2'h0;
    \110 [44] = 2'h0;
    \110 [45] = 2'h0;
    \110 [46] = 2'h0;
    \110 [47] = 2'h0;
    \110 [48] = 2'h0;
    \110 [49] = 2'h0;
    \110 [50] = 2'h0;
    \110 [51] = 2'h0;
    \110 [52] = 2'h0;
    \110 [53] = 2'h0;
    \110 [54] = 2'h0;
    \110 [55] = 2'h0;
    \110 [56] = 2'h0;
    \110 [57] = 2'h0;
    \110 [58] = 2'h0;
    \110 [59] = 2'h0;
    \110 [60] = 2'h0;
    \110 [61] = 2'h0;
    \110 [62] = 2'h0;
    \110 [63] = 2'h0;
    \110 [64] = 2'h0;
    \110 [65] = 2'h0;
    \110 [66] = 2'h0;
    \110 [67] = 2'h0;
    \110 [68] = 2'h0;
    \110 [69] = 2'h0;
    \110 [70] = 2'h0;
    \110 [71] = 2'h0;
    \110 [72] = 2'h0;
    \110 [73] = 2'h0;
    \110 [74] = 2'h0;
    \110 [75] = 2'h0;
    \110 [76] = 2'h0;
    \110 [77] = 2'h0;
    \110 [78] = 2'h0;
    \110 [79] = 2'h0;
    \110 [80] = 2'h0;
    \110 [81] = 2'h0;
    \110 [82] = 2'h0;
    \110 [83] = 2'h0;
    \110 [84] = 2'h0;
    \110 [85] = 2'h0;
    \110 [86] = 2'h0;
    \110 [87] = 2'h0;
    \110 [88] = 2'h0;
    \110 [89] = 2'h0;
    \110 [90] = 2'h0;
    \110 [91] = 2'h0;
    \110 [92] = 2'h0;
    \110 [93] = 2'h0;
    \110 [94] = 2'h0;
    \110 [95] = 2'h0;
    \110 [96] = 2'h0;
    \110 [97] = 2'h0;
    \110 [98] = 2'h0;
    \110 [99] = 2'h0;
    \110 [100] = 2'h0;
    \110 [101] = 2'h0;
    \110 [102] = 2'h0;
    \110 [103] = 2'h0;
    \110 [104] = 2'h0;
    \110 [105] = 2'h0;
    \110 [106] = 2'h0;
    \110 [107] = 2'h0;
    \110 [108] = 2'h0;
    \110 [109] = 2'h0;
    \110 [110] = 2'h0;
    \110 [111] = 2'h0;
    \110 [112] = 2'h0;
    \110 [113] = 2'h0;
    \110 [114] = 2'h0;
    \110 [115] = 2'h0;
    \110 [116] = 2'h0;
    \110 [117] = 2'h0;
    \110 [118] = 2'h0;
    \110 [119] = 2'h0;
    \110 [120] = 2'h0;
    \110 [121] = 2'h0;
    \110 [122] = 2'h0;
    \110 [123] = 2'h0;
    \110 [124] = 2'h0;
    \110 [125] = 2'h0;
    \110 [126] = 2'h0;
    \110 [127] = 2'h0;
    \110 [128] = 2'h0;
    \110 [129] = 2'h0;
    \110 [130] = 2'h0;
    \110 [131] = 2'h0;
    \110 [132] = 2'h0;
    \110 [133] = 2'h0;
    \110 [134] = 2'h0;
    \110 [135] = 2'h0;
    \110 [136] = 2'h0;
    \110 [137] = 2'h0;
    \110 [138] = 2'h0;
    \110 [139] = 2'h0;
    \110 [140] = 2'h0;
    \110 [141] = 2'h0;
    \110 [142] = 2'h0;
    \110 [143] = 2'h0;
    \110 [144] = 2'h0;
    \110 [145] = 2'h0;
    \110 [146] = 2'h0;
    \110 [147] = 2'h0;
    \110 [148] = 2'h0;
    \110 [149] = 2'h0;
    \110 [150] = 2'h0;
    \110 [151] = 2'h0;
    \110 [152] = 2'h0;
    \110 [153] = 2'h0;
    \110 [154] = 2'h0;
    \110 [155] = 2'h0;
    \110 [156] = 2'h0;
    \110 [157] = 2'h0;
    \110 [158] = 2'h0;
    \110 [159] = 2'h0;
    \110 [160] = 2'h0;
    \110 [161] = 2'h0;
    \110 [162] = 2'h0;
    \110 [163] = 2'h0;
    \110 [164] = 2'h0;
    \110 [165] = 2'h0;
    \110 [166] = 2'h0;
    \110 [167] = 2'h0;
    \110 [168] = 2'h0;
    \110 [169] = 2'h0;
    \110 [170] = 2'h0;
    \110 [171] = 2'h0;
    \110 [172] = 2'h0;
    \110 [173] = 2'h0;
    \110 [174] = 2'h0;
    \110 [175] = 2'h0;
    \110 [176] = 2'h0;
    \110 [177] = 2'h0;
    \110 [178] = 2'h0;
    \110 [179] = 2'h0;
    \110 [180] = 2'h0;
    \110 [181] = 2'h0;
    \110 [182] = 2'h0;
    \110 [183] = 2'h0;
    \110 [184] = 2'h0;
    \110 [185] = 2'h0;
    \110 [186] = 2'h0;
    \110 [187] = 2'h0;
    \110 [188] = 2'h0;
    \110 [189] = 2'h0;
    \110 [190] = 2'h0;
    \110 [191] = 2'h0;
    \110 [192] = 2'h0;
    \110 [193] = 2'h0;
    \110 [194] = 2'h0;
    \110 [195] = 2'h0;
    \110 [196] = 2'h0;
    \110 [197] = 2'h0;
    \110 [198] = 2'h0;
    \110 [199] = 2'h0;
    \110 [200] = 2'h0;
    \110 [201] = 2'h0;
    \110 [202] = 2'h0;
    \110 [203] = 2'h0;
    \110 [204] = 2'h0;
    \110 [205] = 2'h0;
    \110 [206] = 2'h0;
    \110 [207] = 2'h0;
    \110 [208] = 2'h0;
    \110 [209] = 2'h0;
    \110 [210] = 2'h0;
    \110 [211] = 2'h0;
    \110 [212] = 2'h0;
    \110 [213] = 2'h0;
    \110 [214] = 2'h0;
    \110 [215] = 2'h0;
    \110 [216] = 2'h0;
    \110 [217] = 2'h0;
    \110 [218] = 2'h0;
    \110 [219] = 2'h0;
    \110 [220] = 2'h0;
    \110 [221] = 2'h0;
    \110 [222] = 2'h0;
    \110 [223] = 2'h0;
    \110 [224] = 2'h0;
    \110 [225] = 2'h0;
    \110 [226] = 2'h0;
    \110 [227] = 2'h0;
    \110 [228] = 2'h0;
    \110 [229] = 2'h0;
    \110 [230] = 2'h0;
    \110 [231] = 2'h0;
    \110 [232] = 2'h0;
    \110 [233] = 2'h0;
    \110 [234] = 2'h0;
    \110 [235] = 2'h0;
    \110 [236] = 2'h0;
    \110 [237] = 2'h0;
    \110 [238] = 2'h0;
    \110 [239] = 2'h0;
    \110 [240] = 2'h0;
    \110 [241] = 2'h0;
    \110 [242] = 2'h0;
    \110 [243] = 2'h0;
    \110 [244] = 2'h0;
    \110 [245] = 2'h0;
    \110 [246] = 2'h0;
    \110 [247] = 2'h0;
    \110 [248] = 2'h0;
    \110 [249] = 2'h0;
    \110 [250] = 2'h0;
    \110 [251] = 2'h0;
    \110 [252] = 2'h0;
    \110 [253] = 2'h0;
    \110 [254] = 2'h0;
    \110 [255] = 2'h0;
  end
  always @(posedge clk) begin
    if (WEN) \110 [PCw[9:2]] <= nextstate;
  end
  assign _17_ = \110 [PCw[9:2]];
  assign _19_ = \110 [PCr[9:2]];
  reg [0:0] \115  [255:0];
  initial begin
    \115 [0] = 1'h0;
    \115 [1] = 1'h0;
    \115 [2] = 1'h0;
    \115 [3] = 1'h0;
    \115 [4] = 1'h0;
    \115 [5] = 1'h0;
    \115 [6] = 1'h0;
    \115 [7] = 1'h0;
    \115 [8] = 1'h0;
    \115 [9] = 1'h0;
    \115 [10] = 1'h0;
    \115 [11] = 1'h0;
    \115 [12] = 1'h0;
    \115 [13] = 1'h0;
    \115 [14] = 1'h0;
    \115 [15] = 1'h0;
    \115 [16] = 1'h0;
    \115 [17] = 1'h0;
    \115 [18] = 1'h0;
    \115 [19] = 1'h0;
    \115 [20] = 1'h0;
    \115 [21] = 1'h0;
    \115 [22] = 1'h0;
    \115 [23] = 1'h0;
    \115 [24] = 1'h0;
    \115 [25] = 1'h0;
    \115 [26] = 1'h0;
    \115 [27] = 1'h0;
    \115 [28] = 1'h0;
    \115 [29] = 1'h0;
    \115 [30] = 1'h0;
    \115 [31] = 1'h0;
    \115 [32] = 1'h0;
    \115 [33] = 1'h0;
    \115 [34] = 1'h0;
    \115 [35] = 1'h0;
    \115 [36] = 1'h0;
    \115 [37] = 1'h0;
    \115 [38] = 1'h0;
    \115 [39] = 1'h0;
    \115 [40] = 1'h0;
    \115 [41] = 1'h0;
    \115 [42] = 1'h0;
    \115 [43] = 1'h0;
    \115 [44] = 1'h0;
    \115 [45] = 1'h0;
    \115 [46] = 1'h0;
    \115 [47] = 1'h0;
    \115 [48] = 1'h0;
    \115 [49] = 1'h0;
    \115 [50] = 1'h0;
    \115 [51] = 1'h0;
    \115 [52] = 1'h0;
    \115 [53] = 1'h0;
    \115 [54] = 1'h0;
    \115 [55] = 1'h0;
    \115 [56] = 1'h0;
    \115 [57] = 1'h0;
    \115 [58] = 1'h0;
    \115 [59] = 1'h0;
    \115 [60] = 1'h0;
    \115 [61] = 1'h0;
    \115 [62] = 1'h0;
    \115 [63] = 1'h0;
    \115 [64] = 1'h0;
    \115 [65] = 1'h0;
    \115 [66] = 1'h0;
    \115 [67] = 1'h0;
    \115 [68] = 1'h0;
    \115 [69] = 1'h0;
    \115 [70] = 1'h0;
    \115 [71] = 1'h0;
    \115 [72] = 1'h0;
    \115 [73] = 1'h0;
    \115 [74] = 1'h0;
    \115 [75] = 1'h0;
    \115 [76] = 1'h0;
    \115 [77] = 1'h0;
    \115 [78] = 1'h0;
    \115 [79] = 1'h0;
    \115 [80] = 1'h0;
    \115 [81] = 1'h0;
    \115 [82] = 1'h0;
    \115 [83] = 1'h0;
    \115 [84] = 1'h0;
    \115 [85] = 1'h0;
    \115 [86] = 1'h0;
    \115 [87] = 1'h0;
    \115 [88] = 1'h0;
    \115 [89] = 1'h0;
    \115 [90] = 1'h0;
    \115 [91] = 1'h0;
    \115 [92] = 1'h0;
    \115 [93] = 1'h0;
    \115 [94] = 1'h0;
    \115 [95] = 1'h0;
    \115 [96] = 1'h0;
    \115 [97] = 1'h0;
    \115 [98] = 1'h0;
    \115 [99] = 1'h0;
    \115 [100] = 1'h0;
    \115 [101] = 1'h0;
    \115 [102] = 1'h0;
    \115 [103] = 1'h0;
    \115 [104] = 1'h0;
    \115 [105] = 1'h0;
    \115 [106] = 1'h0;
    \115 [107] = 1'h0;
    \115 [108] = 1'h0;
    \115 [109] = 1'h0;
    \115 [110] = 1'h0;
    \115 [111] = 1'h0;
    \115 [112] = 1'h0;
    \115 [113] = 1'h0;
    \115 [114] = 1'h0;
    \115 [115] = 1'h0;
    \115 [116] = 1'h0;
    \115 [117] = 1'h0;
    \115 [118] = 1'h0;
    \115 [119] = 1'h0;
    \115 [120] = 1'h0;
    \115 [121] = 1'h0;
    \115 [122] = 1'h0;
    \115 [123] = 1'h0;
    \115 [124] = 1'h0;
    \115 [125] = 1'h0;
    \115 [126] = 1'h0;
    \115 [127] = 1'h0;
    \115 [128] = 1'h0;
    \115 [129] = 1'h0;
    \115 [130] = 1'h0;
    \115 [131] = 1'h0;
    \115 [132] = 1'h0;
    \115 [133] = 1'h0;
    \115 [134] = 1'h0;
    \115 [135] = 1'h0;
    \115 [136] = 1'h0;
    \115 [137] = 1'h0;
    \115 [138] = 1'h0;
    \115 [139] = 1'h0;
    \115 [140] = 1'h0;
    \115 [141] = 1'h0;
    \115 [142] = 1'h0;
    \115 [143] = 1'h0;
    \115 [144] = 1'h0;
    \115 [145] = 1'h0;
    \115 [146] = 1'h0;
    \115 [147] = 1'h0;
    \115 [148] = 1'h0;
    \115 [149] = 1'h0;
    \115 [150] = 1'h0;
    \115 [151] = 1'h0;
    \115 [152] = 1'h0;
    \115 [153] = 1'h0;
    \115 [154] = 1'h0;
    \115 [155] = 1'h0;
    \115 [156] = 1'h0;
    \115 [157] = 1'h0;
    \115 [158] = 1'h0;
    \115 [159] = 1'h0;
    \115 [160] = 1'h0;
    \115 [161] = 1'h0;
    \115 [162] = 1'h0;
    \115 [163] = 1'h0;
    \115 [164] = 1'h0;
    \115 [165] = 1'h0;
    \115 [166] = 1'h0;
    \115 [167] = 1'h0;
    \115 [168] = 1'h0;
    \115 [169] = 1'h0;
    \115 [170] = 1'h0;
    \115 [171] = 1'h0;
    \115 [172] = 1'h0;
    \115 [173] = 1'h0;
    \115 [174] = 1'h0;
    \115 [175] = 1'h0;
    \115 [176] = 1'h0;
    \115 [177] = 1'h0;
    \115 [178] = 1'h0;
    \115 [179] = 1'h0;
    \115 [180] = 1'h0;
    \115 [181] = 1'h0;
    \115 [182] = 1'h0;
    \115 [183] = 1'h0;
    \115 [184] = 1'h0;
    \115 [185] = 1'h0;
    \115 [186] = 1'h0;
    \115 [187] = 1'h0;
    \115 [188] = 1'h0;
    \115 [189] = 1'h0;
    \115 [190] = 1'h0;
    \115 [191] = 1'h0;
    \115 [192] = 1'h0;
    \115 [193] = 1'h0;
    \115 [194] = 1'h0;
    \115 [195] = 1'h0;
    \115 [196] = 1'h0;
    \115 [197] = 1'h0;
    \115 [198] = 1'h0;
    \115 [199] = 1'h0;
    \115 [200] = 1'h0;
    \115 [201] = 1'h0;
    \115 [202] = 1'h0;
    \115 [203] = 1'h0;
    \115 [204] = 1'h0;
    \115 [205] = 1'h0;
    \115 [206] = 1'h0;
    \115 [207] = 1'h0;
    \115 [208] = 1'h0;
    \115 [209] = 1'h0;
    \115 [210] = 1'h0;
    \115 [211] = 1'h0;
    \115 [212] = 1'h0;
    \115 [213] = 1'h0;
    \115 [214] = 1'h0;
    \115 [215] = 1'h0;
    \115 [216] = 1'h0;
    \115 [217] = 1'h0;
    \115 [218] = 1'h0;
    \115 [219] = 1'h0;
    \115 [220] = 1'h0;
    \115 [221] = 1'h0;
    \115 [222] = 1'h0;
    \115 [223] = 1'h0;
    \115 [224] = 1'h0;
    \115 [225] = 1'h0;
    \115 [226] = 1'h0;
    \115 [227] = 1'h0;
    \115 [228] = 1'h0;
    \115 [229] = 1'h0;
    \115 [230] = 1'h0;
    \115 [231] = 1'h0;
    \115 [232] = 1'h0;
    \115 [233] = 1'h0;
    \115 [234] = 1'h0;
    \115 [235] = 1'h0;
    \115 [236] = 1'h0;
    \115 [237] = 1'h0;
    \115 [238] = 1'h0;
    \115 [239] = 1'h0;
    \115 [240] = 1'h0;
    \115 [241] = 1'h0;
    \115 [242] = 1'h0;
    \115 [243] = 1'h0;
    \115 [244] = 1'h0;
    \115 [245] = 1'h0;
    \115 [246] = 1'h0;
    \115 [247] = 1'h0;
    \115 [248] = 1'h0;
    \115 [249] = 1'h0;
    \115 [250] = 1'h0;
    \115 [251] = 1'h0;
    \115 [252] = 1'h0;
    \115 [253] = 1'h0;
    \115 [254] = 1'h0;
    \115 [255] = 1'h0;
  end
  always @(posedge clk) begin
    if (WEN) \115 [PCw[9:2]] <= ISJAL;
  end
  assign _21_ = \115 [PCr[9:2]];
  assign _00_ = smatch & spredict;
  assign _11_ = PCr[31:10] == _15_;
  assign smatch = _11_ ? 1'h1 : 1'h0;
  assign _22_ = _19_ == 2'h0;
  assign _23_ = _19_ == 2'h1;
  assign _24_ = _19_ == 2'h2;
  assign _25_ = _19_ == 2'h3;
  function [0:0] \40 ;
    input [0:0] a;
    input [3:0] b;
    input [3:0] s;
    (* parallel_case *)
    casez (s)
      4'b???1:
        \40  = b[0:0];
      4'b??1?:
        \40  = b[1:1];
      4'b?1??:
        \40  = b[2:2];
      4'b1???:
        \40  = b[3:3];
      default:
        \40  = a;
    endcase
  endfunction
  assign \predictbranch.vprediction  = \40 (\predictbranch.vprediction , 4'hc, { _25_, _24_, _23_, _22_ });
  assign spredict = \predictbranch.vprediction  | _21_;
  assign _01_ = TAKENJMP ? 2'h1 : 2'h0;
  assign _02_ = _17_ == 2'h0;
  assign _03_ = TAKENJMP ? 2'h2 : 2'h0;
  assign _04_ = _17_ == 2'h1;
  assign _05_ = TAKENJMP ? 2'h3 : 2'h1;
  assign _06_ = _17_ == 2'h2;
  assign _07_ = TAKENJMP ? 2'h3 : 2'h2;
  assign _08_ = _17_ == 2'h3;
  function [1:0] \70 ;
    input [1:0] a;
    input [7:0] b;
    input [3:0] s;
    (* parallel_case *)
    casez (s)
      4'b???1:
        \70  = b[1:0];
      4'b??1?:
        \70  = b[3:2];
      4'b?1??:
        \70  = b[5:4];
      4'b1???:
        \70  = b[7:6];
      default:
        \70  = a;
    endcase
  endfunction
  assign _09_ = \70 (nextstate, { _07_, _05_, _03_, _01_ }, { _08_, _06_, _04_, _02_ });
  assign _10_ = TAKENJMP ? 2'h1 : 2'h0;
  assign nextstate = WASMATCH ? _09_ : _10_;
  assign RTARGET = _13_;
  assign PREDICTION = _00_;
  assign MATCH = smatch;
endmodule
