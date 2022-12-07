/* Verilog module written by DEF2Verilog (qflow) */
module RISCV32I (
    input CLK,
    output [31:0] DMEM_ADDR,
    input [31:0] DMEM_DATA_L,
    output [31:0] DMEM_DATA_S,
    output DMEM_WEN,
    output [31:0] IMEM_ADDR,
    input [31:0] IMEM_DATA,
    input IRQ
);

wire _4972_ ;
wire _4552_ ;
wire _4132_ ;
wire _5757_ ;
wire _5337_ ;
wire _1677_ ;
wire _1257_ ;
wire _7903_ ;
wire _5090_ ;
wire _588_ ;
wire _168_ ;
wire _3823_ ;
wire _3403_ ;
wire _6295_ ;
wire _4608_ ;
wire _8441_ ;
wire _8021_ ;
wire \datapath.alu.b_4_bF$buf1  ;
wire _4781_ ;
wire _4361_ ;
wire _800_ ;
wire _5986_ ;
wire _5566_ ;
wire _5146_ ;
wire _60_ ;
wire _2783__bF$buf0 ;
wire _2783__bF$buf1 ;
wire _1486_ ;
wire _2783__bF$buf2 ;
wire _1066_ ;
wire _2783__bF$buf3 ;
wire _2783__bF$buf4 ;
wire _7712_ ;
wire _397_ ;
wire _3632_ ;
wire _3212_ ;
wire _4837_ ;
wire _4417_ ;
wire _8250_ ;
wire \datapath.immediatedecoder._06_  ;
wire _4590_ ;
wire _4170_ ;
wire _2903_ ;
wire _5795_ ;
wire _5375_ ;
wire _1295_ ;
wire _7941_ ;
wire _7521_ ;
wire _7101_ ;
wire _8306_ ;
wire _3861_ ;
wire _3441_ ;
wire _3021_ ;
wire _4646_ ;
wire _4226_ ;
wire CLK_bF$buf50 ;
wire CLK_bF$buf51 ;
wire CLK_bF$buf52 ;
wire CLK_bF$buf53 ;
wire CLK_bF$buf54 ;
wire CLK_bF$buf55 ;
wire CLK_bF$buf56 ;
wire CLK_bF$buf57 ;
wire CLK_bF$buf58 ;
wire CLK_bF$buf59 ;
wire _2712_ ;
wire _5184_ ;
wire _3917_ ;
wire _6389_ ;
wire _7750_ ;
wire _7330_ ;
wire _8535_ ;
wire _8115_ ;
wire _3670_ ;
wire _3250_ ;
wire _4875_ ;
wire _4455_ ;
wire _4035_ ;
wire [31:0] \datapath.memoryinterface.byte_size_store.storebyte  ;
wire _6601_ ;
wire _7806_ ;
wire _2941_ ;
wire _2521_ ;
wire _2101_ ;
wire _3726_ ;
wire _3306_ ;
wire _6198_ ;
wire _8344_ ;
wire _4684_ ;
wire _4264_ ;
wire _703_ ;
wire _5889_ ;
wire _5469_ ;
wire _5049_ ;
wire _6830_ ;
wire _6410_ ;
wire _1389_ ;
wire _7615_ ;
wire _2750_ ;
wire _2330_ ;
wire _3955_ ;
wire _3535_ ;
wire _3115_ ;
wire _8573_ ;
wire _8153_ ;
wire _19_ ;
wire _1601_ ;
wire _4493_ ;
wire _4073_ ;
wire \datapath.idinstr_20_bF$buf12  ;
wire _932_ ;
wire _512_ ;
wire _2806_ ;
wire _5698_ ;
wire _5278_ ;
wire [1:0] asel ;
wire _1198_ ;
wire _7844_ ;
wire _7424_ ;
wire _7004_ ;
wire _8629_ ;
wire _8209_ ;
wire _3764_ ;
wire _3344_ ;
wire _4969_ ;
wire _4549_ ;
wire \datapath.idinstr_21_bF$buf21  ;
wire _4129_ ;
wire _5910_ ;
wire _8382_ ;
wire _1830_ ;
wire _1410_ ;
wire _741_ ;
wire _321_ ;
wire _2615_ ;
wire _5087_ ;
wire \datapath.idinstr_15_bF$buf26  ;
wire \datapath.idinstr_22_bF$buf30  ;
wire _7653_ ;
wire _7233_ ;
wire _8438_ ;
wire _8018_ ;
wire _3993_ ;
wire _3573_ ;
wire _3153_ ;
wire _4778_ ;
wire _4358_ ;
wire _8191_ ;
wire \datapath.idinstr_16_bF$buf35  ;
wire _57_ ;
wire _6924_ ;
wire _6504_ ;
wire \datapath.idinstr_20_bF$buf50  ;
wire _970_ ;
wire _550_ ;
wire _130_ ;
wire _7709_ ;
wire _2844_ ;
wire _2424_ ;
wire _2004_ ;
wire _3629_ ;
wire _3209_ ;
wire _7882_ ;
wire _7462_ ;
wire _7042_ ;
wire _8247_ ;
wire _3382_ ;
wire _4587_ ;
wire _4167_ ;
wire _606_ ;
wire _6733_ ;
wire _6313_ ;
wire _7938_ ;
wire _7518_ ;
wire _2653_ ;
wire _2233_ ;
wire _3858_ ;
wire _3438_ ;
wire _3018_ ;
wire _7691_ ;
wire _7271_ ;
wire _8476_ ;
wire _8056_ ;
wire _3191_ ;
wire _1924_ ;
wire _1504_ ;
wire _4396_ ;
wire _835_ ;
wire _415_ ;
wire _2709_ ;
wire _95_ ;
wire _6962_ ;
wire _6542_ ;
wire _6122_ ;
wire _7747_ ;
wire _7327_ ;
wire _2882_ ;
wire _2462_ ;
wire _2042_ ;
wire _3667_ ;
wire _3247_ ;
wire _7080_ ;
wire _5813_ ;
wire _8285_ ;
wire _1733_ ;
wire _1313_ ;
wire _644_ ;
wire _224_ ;
wire _2938_ ;
wire _2518_ ;
wire _6771_ ;
wire _6351_ ;
wire _7976_ ;
wire _7556_ ;
wire _7136_ ;
wire _2691_ ;
wire _2271_ ;
wire _3896_ ;
wire _3476_ ;
wire _3056_ ;
wire _5622_ ;
wire _5202_ ;
wire _8094_ ;
wire _6827_ ;
wire _6407_ ;
wire _1962_ ;
wire _1542_ ;
wire _1122_ ;
wire _873_ ;
wire _453_ ;
wire _2747_ ;
wire _2327_ ;
wire _6580_ ;
wire _6160_ ;
wire _7785_ ;
wire _7365_ ;
wire _2080_ ;
wire _3285_ ;
wire _5851_ ;
wire _5431_ ;
wire _5011_ ;
wire _929_ ;
wire _509_ ;
wire _6636_ ;
wire _6216_ ;
wire _1771_ ;
wire _1351_ ;
wire _682_ ;
wire _262_ ;
wire _2976_ ;
wire _2556_ ;
wire _2136_ ;
wire _4702_ ;
wire _7594_ ;
wire _7174_ ;
wire \datapath.idinstr_21_bF$buf18  ;
wire _5907_ ;
wire _8379_ ;
wire _3094_ ;
wire _1827_ ;
wire _1407_ ;
wire _4299_ ;
wire _5660_ ;
wire _5240_ ;
wire _738_ ;
wire _318_ ;
wire \datapath.idinstr_17_bF$buf3  ;
wire _6865_ ;
wire _6445_ ;
wire _6025_ ;
wire _1580_ ;
wire _1160_ ;
wire _491_ ;
wire \datapath.idinstr_22_bF$buf27  ;
wire _2785_ ;
wire _2365_ ;
wire _4931_ ;
wire _4511_ ;
wire _5716_ ;
wire _8188_ ;
wire _1636_ ;
wire _1216_ ;
wire \datapath.idinstr_21_bF$buf3  ;
wire \datapath.idinstr_20_bF$buf47  ;
wire _967_ ;
wire _547_ ;
wire _127_ ;
wire _6674_ ;
wire _6254_ ;
wire _7879_ ;
wire _7459_ ;
wire _7039_ ;
wire _2594_ ;
wire _2174_ ;
wire _8400_ ;
wire _3799_ ;
wire _3379_ ;
wire _4740_ ;
wire _4320_ ;
wire _5945_ ;
wire _5525_ ;
wire _5105_ ;
wire _1865_ ;
wire _1445_ ;
wire _1025_ ;
wire _776_ ;
wire _356_ ;
wire _6483_ ;
wire _6063_ ;
wire _7688_ ;
wire _7268_ ;
wire _5503__bF$buf0 ;
wire _5503__bF$buf1 ;
wire _5503__bF$buf2 ;
wire _5503__bF$buf3 ;
wire _5503__bF$buf4 ;
wire _5503__bF$buf5 ;
wire _5503__bF$buf6 ;
wire _5503__bF$buf7 ;
wire _3188_ ;
wire _5754_ ;
wire _5334_ ;
wire _6959_ ;
wire _6539_ ;
wire _6119_ ;
wire _1674_ ;
wire _1254_ ;
wire _7900_ ;
wire _585_ ;
wire _165_ ;
wire _2879_ ;
wire _2459_ ;
wire _2039_ ;
wire _3820_ ;
wire _3400_ ;
wire _6292_ ;
wire _4605_ ;
wire _7497_ ;
wire _7077_ ;
wire _5983_ ;
wire _5563_ ;
wire _5143_ ;
wire _6768_ ;
wire _6348_ ;
wire _1483_ ;
wire _1063_ ;
wire _394_ ;
wire _2688_ ;
wire _2268_ ;
wire _4834_ ;
wire _4414_ ;
wire _5619_ ;
wire \datapath.alu.b_2_bF$buf5  ;
wire _4772__bF$buf0 ;
wire _4772__bF$buf1 ;
wire _4772__bF$buf2 ;
wire _4772__bF$buf3 ;
wire _4772__bF$buf4 ;
wire _4772__bF$buf5 ;
wire _4772__bF$buf6 ;
wire _4772__bF$buf7 ;
wire _1959_ ;
wire _1539_ ;
wire _1119_ ;
wire _2900_ ;
wire _5792_ ;
wire _5372_ ;
wire _6997_ ;
wire _6577_ ;
wire _6157_ ;
wire _1292_ ;
wire _2497_ ;
wire _2077_ ;
wire _8303_ ;
wire _4643_ ;
wire _4223_ ;
wire CLK_bF$buf20 ;
wire CLK_bF$buf21 ;
wire CLK_bF$buf22 ;
wire CLK_bF$buf23 ;
wire CLK_bF$buf24 ;
wire CLK_bF$buf25 ;
wire CLK_bF$buf26 ;
wire CLK_bF$buf27 ;
wire CLK_bF$buf28 ;
wire CLK_bF$buf29 ;
wire _5848_ ;
wire _5428_ ;
wire _5008_ ;
wire _1768_ ;
wire _1348_ ;
wire _5181_ ;
wire _679_ ;
wire _259_ ;
wire _3914_ ;
wire _6386_ ;
wire _8532_ ;
wire _8112_ ;
wire _4872_ ;
wire _4452_ ;
wire _4032_ ;
wire _4701__bF$buf0 ;
wire _4701__bF$buf1 ;
wire _4701__bF$buf2 ;
wire _4701__bF$buf3 ;
wire _5657_ ;
wire _5237_ ;
wire _1997_ ;
wire _1577_ ;
wire _1157_ ;
wire _7803_ ;
wire _488_ ;
wire _3723_ ;
wire _3303_ ;
wire _6195_ ;
wire _4928_ ;
wire _4508_ ;
wire _8341_ ;
wire _4681_ ;
wire _4261_ ;
wire _700_ ;
wire _5886_ ;
wire _5466_ ;
wire _5046_ ;
wire _1386_ ;
wire _7612_ ;
wire _297_ ;
wire \datapath.idinstr_20_hier0_bF$buf4  ;
wire _3952_ ;
wire _3532_ ;
wire _3112_ ;
wire _4737_ ;
wire _4317_ ;
wire _8570_ ;
wire _8150_ ;
wire _16_ ;
wire _4490_ ;
wire _4070_ ;
wire _2803_ ;
wire _5695_ ;
wire _5275_ ;
wire _1195_ ;
wire _7841_ ;
wire _7421_ ;
wire _7001_ ;
wire [31:0] \datapath.regcwb  ;
wire _8626_ ;
wire _8206_ ;
wire _3761_ ;
wire _3341_ ;
wire _4966_ ;
wire _4546_ ;
wire _4126_ ;
wire _2612_ ;
wire _5084_ ;
wire \datapath.idinstr_15_bF$buf23  ;
wire _3817_ ;
wire _6289_ ;
wire _7650_ ;
wire _7230_ ;
wire _8435_ ;
wire _8015_ ;
wire _3990_ ;
wire _3570_ ;
wire _1886__bF$buf0 ;
wire _3150_ ;
wire _1886__bF$buf1 ;
wire _1886__bF$buf2 ;
wire _1886__bF$buf3 ;
wire _4689__bF$buf0 ;
wire _4689__bF$buf1 ;
wire _4689__bF$buf2 ;
wire _4689__bF$buf3 ;
wire _4689__bF$buf4 ;
wire _4775_ ;
wire _4355_ ;
wire [31:0] \datapath.csr.mvect  ;
wire \datapath.idinstr_16_bF$buf32  ;
wire _54_ ;
wire _6921_ ;
wire _6501_ ;
wire _7706_ ;
wire _2841_ ;
wire _2421_ ;
wire _2001_ ;
wire _7089__bF$buf10 ;
wire _3626_ ;
wire _3206_ ;
wire _6098_ ;
wire _4693__bF$buf0 ;
wire _4693__bF$buf1 ;
wire _4693__bF$buf2 ;
wire _8244_ ;
wire _4693__bF$buf3 ;
wire _4693__bF$buf4 ;
wire _4584_ ;
wire _4164_ ;
wire _603_ ;
wire _5789_ ;
wire _5369_ ;
wire _6730_ ;
wire _6310_ ;
wire _1289_ ;
wire _7935_ ;
wire _7515_ ;
wire _2650_ ;
wire _2230_ ;
wire _3855_ ;
wire _3435_ ;
wire _3015_ ;
wire _8473_ ;
wire _8053_ ;
wire _1921_ ;
wire _1501_ ;
wire _4393_ ;
wire _832_ ;
wire _412_ ;
wire _2706_ ;
wire _5598_ ;
wire _5178_ ;
wire _92_ ;
wire _1098_ ;
wire _7744_ ;
wire _7324_ ;
wire _8529_ ;
wire _8109_ ;
wire _3664_ ;
wire _3244_ ;
wire _4869_ ;
wire _4449_ ;
wire _4029_ ;
wire _5810_ ;
wire _8282_ ;
wire _1730_ ;
wire _1310_ ;
wire _641_ ;
wire _221_ ;
wire _2935_ ;
wire _2515_ ;
wire _7973_ ;
wire _7553_ ;
wire _7133_ ;
wire _8338_ ;
wire _3893_ ;
wire _3473_ ;
wire _3053_ ;
wire _4678_ ;
wire _4258_ ;
wire _8091_ ;
wire _6824_ ;
wire _6404_ ;
wire _870_ ;
wire _450_ ;
wire _7609_ ;
wire _2744_ ;
wire _2324_ ;
wire _3949_ ;
wire _3529_ ;
wire _3109_ ;
wire _7782_ ;
wire _7362_ ;
wire _8567_ ;
wire _8147_ ;
wire _3282_ ;
wire _4487_ ;
wire _4067_ ;
wire _926_ ;
wire _506_ ;
wire _6633_ ;
wire _6213_ ;
wire _7838_ ;
wire _7418_ ;
wire _2973_ ;
wire _2553_ ;
wire _2133_ ;
wire _3758_ ;
wire _3338_ ;
wire _7591_ ;
wire _7171_ ;
wire \datapath.idinstr_21_bF$buf15  ;
wire _5904_ ;
wire _8376_ ;
wire _3091_ ;
wire _1824_ ;
wire _1404_ ;
wire _4296_ ;
wire _735_ ;
wire _315_ ;
wire \datapath.idinstr_17_bF$buf0  ;
wire _2609_ ;
wire _6862_ ;
wire _6442_ ;
wire _6022_ ;
wire \datapath.idinstr_22_bF$buf24  ;
wire _7647_ ;
wire _7227_ ;
wire _2782_ ;
wire _2362_ ;
wire _3987_ ;
wire _3567_ ;
wire _3147_ ;
wire _5713_ ;
wire _8185_ ;
wire \datapath.idinstr_16_bF$buf29  ;
wire _6918_ ;
wire _1633_ ;
wire _1213_ ;
wire \datapath.idinstr_21_bF$buf0  ;
wire \datapath.idinstr_20_bF$buf44  ;
wire _964_ ;
wire _544_ ;
wire _124_ ;
wire _2838_ ;
wire \datapath.idinstr_15_bF$buf7  ;
wire _2418_ ;
wire _6671_ ;
wire _6251_ ;
wire \controlunit.mret  ;
wire _7876_ ;
wire _7456_ ;
wire _7036_ ;
wire _2591_ ;
wire _2171_ ;
wire IRQ ;
wire _3796_ ;
wire _3376_ ;
wire _5942_ ;
wire _5522_ ;
wire _5102_ ;
wire _6727_ ;
wire _6307_ ;
wire _1862_ ;
wire _1442_ ;
wire _1022_ ;
wire _773_ ;
wire _353_ ;
wire _2647_ ;
wire _2227_ ;
wire _6480_ ;
wire _6060_ ;
wire _7685_ ;
wire _7265_ ;
wire _3185_ ;
wire _1918_ ;
wire _5751_ ;
wire _5331_ ;
wire _829_ ;
wire _409_ ;
wire _89_ ;
wire _6956_ ;
wire _6536_ ;
wire _6116_ ;
wire _1671_ ;
wire _1251_ ;
wire _582_ ;
wire _162_ ;
wire _2876_ ;
wire _2456_ ;
wire _2036_ ;
wire _4602_ ;
wire _7494_ ;
wire _7074_ ;
wire _5807_ ;
wire _8279_ ;
wire _1727_ ;
wire _1307_ ;
wire [31:0] \datapath.registers.828[2]  ;
wire _4199_ ;
wire _5980_ ;
wire _5560_ ;
wire _5140_ ;
wire _638_ ;
wire _218_ ;
wire _6765_ ;
wire _6345_ ;
wire _1480_ ;
wire _1060_ ;
wire _391_ ;
wire \datapath.idinstr_24_bF$buf3  ;
wire _2685_ ;
wire _2265_ ;
wire _4831_ ;
wire _4411_ ;
wire _5616_ ;
wire _8088_ ;
wire \datapath.alu.b_2_bF$buf2  ;
wire _1956_ ;
wire _1536_ ;
wire _1116_ ;
wire _867_ ;
wire _447_ ;
wire _6994_ ;
wire _6574_ ;
wire _6154_ ;
wire _7779_ ;
wire _7359_ ;
wire _2494_ ;
wire _2074_ ;
wire _8300_ ;
wire _3699_ ;
wire _3279_ ;
wire _4640_ ;
wire _4220_ ;
wire _5845_ ;
wire _5425_ ;
wire _5005_ ;
wire _1765_ ;
wire _1345_ ;
wire _676_ ;
wire _256_ ;
wire _3911_ ;
wire _6383_ ;
wire _7588_ ;
wire _7168_ ;
wire _3088_ ;
wire _218__bF$buf0 ;
wire _218__bF$buf1 ;
wire _218__bF$buf2 ;
wire _218__bF$buf3 ;
wire _218__bF$buf4 ;
wire _5654_ ;
wire _5234_ ;
wire _6859_ ;
wire _6439_ ;
wire _6019_ ;
wire _1994_ ;
wire _1574_ ;
wire _1154_ ;
wire _7800_ ;
wire _485_ ;
wire _2779_ ;
wire _2359_ ;
wire _3720_ ;
wire _3300_ ;
wire _6192_ ;
wire _4925_ ;
wire _4505_ ;
wire _7397_ ;
wire _5883_ ;
wire _5463_ ;
wire _5043_ ;
wire _6668_ ;
wire _6248_ ;
wire _1383_ ;
wire _294_ ;
wire _2588_ ;
wire _2168_ ;
wire \datapath.idinstr_20_hier0_bF$buf1  ;
wire _4734_ ;
wire _4314_ ;
wire _3031__bF$buf0 ;
wire _3031__bF$buf1 ;
wire _3031__bF$buf2 ;
wire _3031__bF$buf3 ;
wire _3031__bF$buf4 ;
wire _3031__bF$buf5 ;
wire _3031__bF$buf6 ;
wire _3031__bF$buf7 ;
wire _5939_ ;
wire _5519_ ;
wire _13_ ;
wire _1859_ ;
wire _1439_ ;
wire _1019_ ;
wire _2800_ ;
wire _5692_ ;
wire _5272_ ;
wire _6897_ ;
wire _6477_ ;
wire _6057_ ;
wire _1192_ ;
wire _2397_ ;
wire _8623_ ;
wire _8203_ ;
wire _4963_ ;
wire _4543_ ;
wire _4123_ ;
wire _5748_ ;
wire _5328_ ;
wire \datapath.alu.condtrue  ;
wire _1668_ ;
wire _1248_ ;
wire _5081_ ;
wire _999_ ;
wire _579_ ;
wire _159_ ;
wire \datapath.idinstr_15_bF$buf20  ;
wire _3814_ ;
wire _6286_ ;
wire _8432_ ;
wire _8012_ ;
wire _4772_ ;
wire _4352_ ;
wire _5977_ ;
wire _5557_ ;
wire _5137_ ;
wire _51_ ;
wire _1897_ ;
wire _1477_ ;
wire _1057_ ;
wire _7703_ ;
wire _388_ ;
wire _3623_ ;
wire _3203_ ;
wire _6095_ ;
wire _4828_ ;
wire _4408_ ;
wire _8661_ ;
wire _8241_ ;
wire _4581_ ;
wire _4161_ ;
wire _600_ ;
wire _5786_ ;
wire _5366_ ;
wire _1286_ ;
wire _7932_ ;
wire _7512_ ;
wire _197_ ;
wire _3852_ ;
wire _3432_ ;
wire _3012_ ;
wire _4637_ ;
wire _4217_ ;
wire _8470_ ;
wire _8050_ ;
wire _4390_ ;
wire _2703_ ;
wire _5595_ ;
wire _5175_ ;
wire _5681__bF$buf10 ;
wire [31:0] \datapath.registers.828[26]  ;
wire _3908_ ;
wire _1095_ ;
wire _7741_ ;
wire _7321_ ;
wire _8526_ ;
wire _8106_ ;
wire _3661_ ;
wire _3241_ ;
wire _4866_ ;
wire _4446_ ;
wire _4026_ ;
wire _1889__bF$buf0 ;
wire _1889__bF$buf1 ;
wire _1889__bF$buf2 ;
wire _1889__bF$buf3 ;
wire _2932_ ;
wire _2512_ ;
wire _3717_ ;
wire _6189_ ;
wire _7970_ ;
wire _7550_ ;
wire _7130_ ;
wire _8335_ ;
wire _3890_ ;
wire _3470_ ;
wire _3050_ ;
wire _4675_ ;
wire _4255_ ;
wire _4842__bF$buf0 ;
wire _4842__bF$buf1 ;
wire _4842__bF$buf2 ;
wire _4842__bF$buf3 ;
wire _4842__bF$buf4 ;
wire _4842__bF$buf5 ;
wire _4842__bF$buf6 ;
wire _4842__bF$buf7 ;
wire _6821_ ;
wire _6401_ ;
wire _7606_ ;
wire _2741_ ;
wire _2321_ ;
wire _3946_ ;
wire _3526_ ;
wire _3106_ ;
wire _7_ ;
wire _8564_ ;
wire _8144_ ;
wire _4484_ ;
wire _4064_ ;
wire _923_ ;
wire _503_ ;
wire _5689_ ;
wire _5269_ ;
wire _6630_ ;
wire _6210_ ;
wire _1189_ ;
wire _7835_ ;
wire _7415_ ;
wire _2970_ ;
wire _2550_ ;
wire _2130_ ;
wire _3755_ ;
wire _3335_ ;
wire \datapath.idinstr_21_bF$buf12  ;
wire _5901_ ;
wire _8373_ ;
wire _1821_ ;
wire _1401_ ;
wire _4293_ ;
wire _732_ ;
wire _312_ ;
wire _2606_ ;
wire _5498_ ;
wire _5078_ ;
wire \datapath.idinstr_15_bF$buf17  ;
wire \datapath.idinstr_15_hier0_bF$buf5  ;
wire \datapath.idinstr_22_bF$buf21  ;
wire _7644_ ;
wire _7224_ ;
wire _8429_ ;
wire _8009_ ;
wire _3984_ ;
wire _3564_ ;
wire _3144_ ;
wire _4769_ ;
wire _4349_ ;
wire _5710_ ;
wire _8182_ ;
wire \datapath.idinstr_16_bF$buf26  ;
wire _48_ ;
wire _6915_ ;
wire _1630_ ;
wire _1210_ ;
wire \datapath.idinstr_20_bF$buf41  ;
wire _961_ ;
wire _541_ ;
wire _121_ ;
wire _2835_ ;
wire \datapath.idinstr_15_bF$buf4  ;
wire _2415_ ;
wire _7873_ ;
wire _7453_ ;
wire _7033_ ;
wire _8658_ ;
wire _8238_ ;
wire _3793_ ;
wire _3373_ ;
wire _4998_ ;
wire _4578_ ;
wire _4158_ ;
wire _6724_ ;
wire _6304_ ;
wire _770_ ;
wire _350_ ;
wire _7929_ ;
wire _7509_ ;
wire _2644_ ;
wire _2224_ ;
wire _3849_ ;
wire _3429_ ;
wire _3009_ ;
wire _7682_ ;
wire _7262_ ;
wire _8467_ ;
wire _8047_ ;
wire _3182_ ;
wire _1915_ ;
wire _4387_ ;
wire _826_ ;
wire _406_ ;
wire _86_ ;
wire _6953_ ;
wire _6533_ ;
wire _6113_ ;
wire _7738_ ;
wire _7318_ ;
wire _2873_ ;
wire _2453_ ;
wire _2033_ ;
wire _3658_ ;
wire _3238_ ;
wire _7491_ ;
wire _7071_ ;
wire _5804_ ;
wire _8276_ ;
wire [31:0] \datapath.csr._32_  ;
wire _1724_ ;
wire _1304_ ;
wire _4196_ ;
wire _635_ ;
wire _215_ ;
wire _2929_ ;
wire _2509_ ;
wire _6762_ ;
wire _6342_ ;
wire _7967_ ;
wire _7547_ ;
wire _7127_ ;
wire \datapath.idinstr_24_bF$buf0  ;
wire _2682_ ;
wire _2262_ ;
wire \datapath.idinstr_18_bF$buf7  ;
wire _3887_ ;
wire _3467_ ;
wire _3047_ ;
wire _5613_ ;
wire _8085_ ;
wire _6818_ ;
wire _1953_ ;
wire _1533_ ;
wire _1113_ ;
wire _864_ ;
wire _444_ ;
wire _2738_ ;
wire _2318_ ;
wire _6991_ ;
wire _6571_ ;
wire _6151_ ;
wire \controlunit.csrfile_trap_wen_bF$buf5  ;
wire _7776_ ;
wire _7356_ ;
wire _2491_ ;
wire _2071_ ;
wire \datapath.idinstr_22_bF$buf7  ;
wire _3696_ ;
wire _3276_ ;
wire _5842_ ;
wire _5422_ ;
wire _5002_ ;
wire _6627_ ;
wire _6207_ ;
wire _1762_ ;
wire _1342_ ;
wire _673_ ;
wire _253_ ;
wire _2967_ ;
wire _2547_ ;
wire _2127_ ;
wire _6380_ ;
wire _7585_ ;
wire _7165_ ;
wire _3085_ ;
wire _1818_ ;
wire _5651_ ;
wire _5231_ ;
wire _729_ ;
wire _309_ ;
wire _6856_ ;
wire _6436_ ;
wire _6016_ ;
wire _1991_ ;
wire _1571_ ;
wire _1151_ ;
wire _482_ ;
wire \datapath.idinstr_22_bF$buf18  ;
wire _2776_ ;
wire _2356_ ;
wire _4922_ ;
wire _4502_ ;
wire _7394_ ;
wire _5707_ ;
wire _8599_ ;
wire _8179_ ;
wire _1627_ ;
wire _1207_ ;
wire _4099_ ;
wire _5880_ ;
wire _5460_ ;
wire _5040_ ;
wire \datapath.idinstr_20_bF$buf38  ;
wire _958_ ;
wire _538_ ;
wire _118_ ;
wire _6665_ ;
wire _6245_ ;
wire _1380_ ;
wire _291_ ;
wire _2585_ ;
wire _2165_ ;
wire _4731_ ;
wire _4311_ ;
wire _5936_ ;
wire _5516_ ;
wire _10_ ;
wire \datapath.alu.b_0_bF$buf8  ;
wire _1856_ ;
wire _1436_ ;
wire _1016_ ;
wire _767_ ;
wire _347_ ;
wire _6894_ ;
wire _6474_ ;
wire _6054_ ;
wire _7679_ ;
wire _7259_ ;
wire _2394_ ;
wire _8620_ ;
wire _8200_ ;
wire _3599_ ;
wire _3179_ ;
wire _4960_ ;
wire _4540_ ;
wire _4120_ ;
wire _5745_ ;
wire _5325_ ;
wire _1665_ ;
wire _1245_ ;
wire _996_ ;
wire _576_ ;
wire _156_ ;
wire _3811_ ;
wire _6283_ ;
wire \datapath.csr.mie  ;
wire _7488_ ;
wire _7068_ ;
wire \datapath.idinstr_21_hier0_bF$buf3  ;
wire _5974_ ;
wire _5554_ ;
wire _5134_ ;
wire _6759_ ;
wire _6339_ ;
wire _1894_ ;
wire _1474_ ;
wire _1054_ ;
wire _7700_ ;
wire _385_ ;
wire _2679_ ;
wire _2259_ ;
wire _3620_ ;
wire _3200_ ;
wire _6092_ ;
wire _4924__bF$buf0 ;
wire _4924__bF$buf1 ;
wire _4825_ ;
wire _4924__bF$buf2 ;
wire _4405_ ;
wire _4924__bF$buf3 ;
wire _4924__bF$buf4 ;
wire _4924__bF$buf5 ;
wire _4924__bF$buf6 ;
wire _4924__bF$buf7 ;
wire _7297_ ;
wire _5783_ ;
wire _5363_ ;
wire _6988_ ;
wire _6568_ ;
wire _6148_ ;
wire _1283_ ;
wire _194_ ;
wire _2488_ ;
wire _2068_ ;
wire _4634_ ;
wire _4214_ ;
wire _5839_ ;
wire _5419_ ;
wire _1759_ ;
wire _1339_ ;
wire _2700_ ;
wire _5592_ ;
wire _5172_ ;
wire _5300__bF$buf0 ;
wire _5300__bF$buf1 ;
wire _5300__bF$buf2 ;
wire _5300__bF$buf3 ;
wire _5300__bF$buf4 ;
wire _5300__bF$buf5 ;
wire _5300__bF$buf6 ;
wire _5300__bF$buf7 ;
wire _3905_ ;
wire _6797_ ;
wire _6377_ ;
wire _1092_ ;
wire _4707__bF$buf0 ;
wire _2297_ ;
wire _4707__bF$buf1 ;
wire _4707__bF$buf2 ;
wire _4707__bF$buf3 ;
wire _4707__bF$buf4 ;
wire _8523_ ;
wire _8103_ ;
wire _4863_ ;
wire _4443_ ;
wire _4023_ ;
wire _5648_ ;
wire _5228_ ;
wire _1988_ ;
wire _1568_ ;
wire _1148_ ;
wire _899_ ;
wire _479_ ;
wire _3714_ ;
wire _6186_ ;
wire _4711__bF$buf0 ;
wire _4919_ ;
wire _4711__bF$buf1 ;
wire _4711__bF$buf2 ;
wire _4711__bF$buf3 ;
wire _4711__bF$buf4 ;
wire _8332_ ;
wire _4672_ ;
wire _4252_ ;
wire _5877_ ;
wire _5457_ ;
wire _5037_ ;
wire _1797_ ;
wire _1377_ ;
wire [31:0] \datapath.registers.828[9]  ;
wire _7603_ ;
wire _288_ ;
wire _3943_ ;
wire _3523_ ;
wire _3103_ ;
wire _4_ ;
wire _4728_ ;
wire _4308_ ;
wire _8561_ ;
wire _8141_ ;
wire _4481_ ;
wire _4061_ ;
wire _920_ ;
wire _500_ ;
wire _5686_ ;
wire _5266_ ;
wire _1186_ ;
wire _7832_ ;
wire _7412_ ;
wire _8617_ ;
wire _3752_ ;
wire _3332_ ;
wire _4957_ ;
wire _4537_ ;
wire _4117_ ;
wire _8370_ ;
wire _4290_ ;
wire _2603_ ;
wire _5495_ ;
wire _5075_ ;
wire [31:0] \datapath.registers.828[16]  ;
wire CLK_bF$buf140 ;
wire CLK_bF$buf141 ;
wire CLK_bF$buf142 ;
wire CLK_bF$buf143 ;
wire CLK_bF$buf144 ;
wire CLK_bF$buf145 ;
wire \datapath.idinstr_15_bF$buf14  ;
wire CLK_bF$buf146 ;
wire CLK_bF$buf147 ;
wire CLK_bF$buf148 ;
wire \datapath.csr.meta_irq  ;
wire _3808_ ;
wire CLK_bF$buf149 ;
wire \datapath.idinstr_15_hier0_bF$buf2  ;
wire _7641_ ;
wire _7221_ ;
wire _8426_ ;
wire _8006_ ;
wire _3981_ ;
wire _3561_ ;
wire _3141_ ;
wire _4766_ ;
wire _4346_ ;
wire \datapath.idinstr_16_bF$buf23  ;
wire _45_ ;
wire _6912_ ;
wire _2832_ ;
wire \datapath.idinstr_15_bF$buf1  ;
wire _2412_ ;
wire _4699__bF$buf0 ;
wire _4699__bF$buf1 ;
wire _4699__bF$buf2 ;
wire _4699__bF$buf3 ;
wire _4699__bF$buf4 ;
wire _3617_ ;
wire _6089_ ;
wire _7870_ ;
wire _7450_ ;
wire _7030_ ;
wire _8655_ ;
wire _8235_ ;
wire _3790_ ;
wire _3370_ ;
wire _4995_ ;
wire _4575_ ;
wire _4155_ ;
wire _6721_ ;
wire _6301_ ;
wire _7926_ ;
wire _7506_ ;
wire _2641_ ;
wire _2221_ ;
wire \datapath.idinstr_15_bF$buf52  ;
wire _3846_ ;
wire _3426_ ;
wire _3006_ ;
wire _8464_ ;
wire _8044_ ;
wire _1912_ ;
wire _4384_ ;
wire _823_ ;
wire _403_ ;
wire _5589_ ;
wire _5169_ ;
wire _83_ ;
wire _6950_ ;
wire _6530_ ;
wire _6110_ ;
wire _1089_ ;
wire _7735_ ;
wire _7315_ ;
wire _2870_ ;
wire _2450_ ;
wire _2030_ ;
wire _3655_ ;
wire _3235_ ;
wire _5801_ ;
wire _8273_ ;
wire _1721_ ;
wire _1301_ ;
wire _4193_ ;
wire _632_ ;
wire _212_ ;
wire _2926_ ;
wire _2506_ ;
wire _5398_ ;
wire _7964_ ;
wire _7544_ ;
wire _7124_ ;
wire \datapath.idinstr_18_bF$buf4  ;
wire _8329_ ;
wire _3884_ ;
wire _3464_ ;
wire _3044_ ;
wire _4669_ ;
wire _4249_ ;
wire _5610_ ;
wire _5004__bF$buf0 ;
wire _5004__bF$buf1 ;
wire _5004__bF$buf2 ;
wire _5004__bF$buf3 ;
wire _5004__bF$buf4 ;
wire _8082_ ;
wire _6815_ ;
wire _1950_ ;
wire _1530_ ;
wire _1110_ ;
wire _861_ ;
wire _441_ ;
wire _2735_ ;
wire _2315_ ;
wire \controlunit.csrfile_trap_wen_bF$buf2  ;
wire _7773_ ;
wire _7353_ ;
wire \datapath.idinstr_22_bF$buf4  ;
wire _8558_ ;
wire _8138_ ;
wire _3693_ ;
wire _3273_ ;
wire _4898_ ;
wire _4478_ ;
wire _4058_ ;
wire _917_ ;
wire _6624_ ;
wire _6204_ ;
wire _670_ ;
wire _250_ ;
wire _7829_ ;
wire _7409_ ;
wire _2964_ ;
wire _2544_ ;
wire _2124_ ;
wire _3749_ ;
wire _3329_ ;
wire _7582_ ;
wire _7162_ ;
wire _8367_ ;
wire _3082_ ;
wire _1815_ ;
wire _4287_ ;
wire _726_ ;
wire _306_ ;
wire _6853_ ;
wire _6433_ ;
wire _6013_ ;
wire \datapath.idinstr_22_bF$buf15  ;
wire _7638_ ;
wire _7218_ ;
wire _2773_ ;
wire _2353_ ;
wire _3978_ ;
wire _3558_ ;
wire _3138_ ;
wire _7391_ ;
wire _5704_ ;
wire _8596_ ;
wire _8176_ ;
wire _6909_ ;
wire _1624_ ;
wire _1204_ ;
wire _4096_ ;
wire \datapath.idinstr_20_bF$buf35  ;
wire _955_ ;
wire _535_ ;
wire _115_ ;
wire _2829_ ;
wire _2409_ ;
wire _6662_ ;
wire _6242_ ;
wire _7867_ ;
wire _7447_ ;
wire _7027_ ;
wire _2582_ ;
wire _2162_ ;
wire _3787_ ;
wire _3367_ ;
wire \datapath.idinstr_21_bF$buf44  ;
wire _5933_ ;
wire _5513_ ;
wire _6718_ ;
wire \datapath.alu.b_0_bF$buf5  ;
wire _1853_ ;
wire _1433_ ;
wire _1013_ ;
wire _764_ ;
wire _344_ ;
wire _2638_ ;
wire _2218_ ;
wire _6891_ ;
wire _6471_ ;
wire _6051_ ;
wire \datapath.idinstr_15_bF$buf49  ;
wire _7676_ ;
wire _7256_ ;
wire _2391_ ;
wire _3596_ ;
wire _3176_ ;
wire _1909_ ;
wire _5742_ ;
wire _5322_ ;
wire _6947_ ;
wire _6527_ ;
wire _6107_ ;
wire _1662_ ;
wire _1242_ ;
wire _993_ ;
wire _573_ ;
wire _153_ ;
wire _2867_ ;
wire _2447_ ;
wire _2027_ ;
wire _6280_ ;
wire _7485_ ;
wire _7065_ ;
wire _1718_ ;
wire \datapath.idinstr_21_hier0_bF$buf0  ;
wire _5971_ ;
wire _5551_ ;
wire _5131_ ;
wire _629_ ;
wire _209_ ;
wire _6756_ ;
wire _6336_ ;
wire _1891_ ;
wire _1471_ ;
wire _1051_ ;
wire _382_ ;
wire _2676_ ;
wire _2256_ ;
wire _4822_ ;
wire _4402_ ;
wire _7294_ ;
wire _5607_ ;
wire _8499_ ;
wire _8079_ ;
wire _1947_ ;
wire _1527_ ;
wire _1107_ ;
wire _5780_ ;
wire _5360_ ;
wire _858_ ;
wire _438_ ;
wire _6985_ ;
wire _6565_ ;
wire _6145_ ;
wire _1280_ ;
wire _191_ ;
wire _2485_ ;
wire _2065_ ;
wire _4631_ ;
wire _4211_ ;
wire _5685__bF$buf0 ;
wire _5836_ ;
wire _5685__bF$buf1 ;
wire _5416_ ;
wire _5685__bF$buf2 ;
wire _5685__bF$buf3 ;
wire _5685__bF$buf4 ;
wire _5685__bF$buf5 ;
wire _5685__bF$buf6 ;
wire _5685__bF$buf7 ;
wire _1756_ ;
wire _1336_ ;
wire _667_ ;
wire _247_ ;
wire _3902_ ;
wire _6794_ ;
wire _6374_ ;
wire _7999_ ;
wire _7579_ ;
wire _7159_ ;
wire _2294_ ;
wire _8520_ ;
wire _8100_ ;
wire _3499_ ;
wire _3079_ ;
wire _4860_ ;
wire _4440_ ;
wire _4020_ ;
wire _5645_ ;
wire _5225_ ;
wire [31:0] \datapath.registers.828[31]  ;
wire _1985_ ;
wire _1565_ ;
wire _1145_ ;
wire _896_ ;
wire _476_ ;
wire [2:0] \datapath.memexecptions  ;
wire _3711_ ;
wire _6183_ ;
wire _4916_ ;
wire _7388_ ;
wire _5874_ ;
wire _5454_ ;
wire _5034_ ;
wire [31:0] \datapath.alupc_4  ;
wire _6659_ ;
wire _6239_ ;
wire _1794_ ;
wire _1374_ ;
wire _7600_ ;
wire _285_ ;
wire _2999_ ;
wire _2579_ ;
wire _2159_ ;
wire _3940_ ;
wire _3520_ ;
wire _3100_ ;
wire [31:0] _1_ ;
wire _4725_ ;
wire _4305_ ;
wire _7197_ ;
wire _5683_ ;
wire _5263_ ;
wire _6888_ ;
wire _6468_ ;
wire _6048_ ;
wire _1183_ ;
wire _2388_ ;
wire _2500__bF$buf0 ;
wire _2500__bF$buf1 ;
wire _2500__bF$buf2 ;
wire _2500__bF$buf3 ;
wire _8614_ ;
wire _2500__bF$buf4 ;
wire _4954_ ;
wire _4534_ ;
wire _4114_ ;
wire _5739_ ;
wire _5319_ ;
wire _1659_ ;
wire _1239_ ;
wire _2600_ ;
wire _5492_ ;
wire _5072_ ;
wire CLK_bF$buf110 ;
wire CLK_bF$buf111 ;
wire CLK_bF$buf112 ;
wire CLK_bF$buf113 ;
wire CLK_bF$buf114 ;
wire CLK_bF$buf115 ;
wire \datapath.idinstr_15_bF$buf11  ;
wire CLK_bF$buf116 ;
wire CLK_bF$buf117 ;
wire CLK_bF$buf118 ;
wire _3805_ ;
wire CLK_bF$buf119 ;
wire _6697_ ;
wire _6277_ ;
wire _2197_ ;
wire _8423_ ;
wire _8003_ ;
wire _4763_ ;
wire _4343_ ;
wire _5968_ ;
wire _5548_ ;
wire _5128_ ;
wire \datapath.idinstr_16_bF$buf20  ;
wire _42_ ;
wire _1888_ ;
wire _1468_ ;
wire _1048_ ;
wire _799_ ;
wire _379_ ;
wire _3614_ ;
wire _6086_ ;
wire _4819_ ;
wire _8652_ ;
wire _8232_ ;
wire _4992_ ;
wire _4572_ ;
wire _4152_ ;
wire _5777_ ;
wire _5357_ ;
wire _1697_ ;
wire _1277_ ;
wire _7923_ ;
wire _7503_ ;
wire _188_ ;
wire _3843_ ;
wire _3423_ ;
wire _3003_ ;
wire _4628_ ;
wire _4208_ ;
wire _8461_ ;
wire _8041_ ;
wire \datapath.idinstr_16_hier0_bF$buf4  ;
wire _4381_ ;
wire _820_ ;
wire _400_ ;
wire _5586_ ;
wire _5166_ ;
wire _80_ ;
wire _1086_ ;
wire _5437__bF$buf0 ;
wire _5437__bF$buf1 ;
wire _5437__bF$buf2 ;
wire _5437__bF$buf3 ;
wire _5437__bF$buf4 ;
wire _5437__bF$buf5 ;
wire _7732_ ;
wire _5437__bF$buf6 ;
wire _7312_ ;
wire _5437__bF$buf7 ;
wire _8517_ ;
wire _3652_ ;
wire _3232_ ;
wire _4857_ ;
wire _4437_ ;
wire _4017_ ;
wire _8270_ ;
wire _4190_ ;
wire _2923_ ;
wire _2503_ ;
wire _5395_ ;
wire _3708_ ;
wire _7961_ ;
wire _7541_ ;
wire _7121_ ;
wire \datapath.idinstr_18_bF$buf1  ;
wire _8326_ ;
wire _3881_ ;
wire _3461_ ;
wire _3041_ ;
wire _4666_ ;
wire _4246_ ;
wire _6812_ ;
wire _2732_ ;
wire _2312_ ;
wire _3937_ ;
wire _3517_ ;
wire _7770_ ;
wire _7350_ ;
wire \datapath.idinstr_22_bF$buf1  ;
wire \datapath.idinstr_16_bF$buf8  ;
wire _8555_ ;
wire _8135_ ;
wire _3690_ ;
wire _3270_ ;
wire _4895_ ;
wire _4475_ ;
wire _4055_ ;
wire _914_ ;
wire _6621_ ;
wire _6201_ ;
wire \controlunit.mret_bF$buf3  ;
wire _7826_ ;
wire _7406_ ;
wire _2961_ ;
wire _2541_ ;
wire _2121_ ;
wire _3746_ ;
wire _3326_ ;
wire \datapath.idinstr_20_bF$buf8  ;
wire _8364_ ;
wire _1812_ ;
wire _4284_ ;
wire _723_ ;
wire _303_ ;
wire _5489_ ;
wire _5069_ ;
wire _6850_ ;
wire _6430_ ;
wire _6010_ ;
wire \datapath.idinstr_22_bF$buf12  ;
wire _7635_ ;
wire _7215_ ;
wire _2770_ ;
wire _2350_ ;
wire _3975_ ;
wire _3555_ ;
wire _3135_ ;
wire _5701_ ;
wire _8593_ ;
wire _8173_ ;
wire \datapath.idinstr_16_bF$buf17  ;
wire _39_ ;
wire _6906_ ;
wire _1621_ ;
wire _1201_ ;
wire _4093_ ;
wire \datapath.idinstr_20_bF$buf32  ;
wire _952_ ;
wire _532_ ;
wire _112_ ;
wire _2826_ ;
wire _2406_ ;
wire \controlunit.csrfile_wen  ;
wire _5298_ ;
wire [31:0] \datapath.regcsralu  ;
wire _7864_ ;
wire _7444_ ;
wire _7024_ ;
wire _8649_ ;
wire _8229_ ;
wire _3784_ ;
wire _3364_ ;
wire _4733__bF$buf0 ;
wire _4733__bF$buf1 ;
wire _4733__bF$buf2 ;
wire _4733__bF$buf3 ;
wire _4733__bF$buf4 ;
wire _4989_ ;
wire _4569_ ;
wire \datapath.idinstr_21_bF$buf41  ;
wire _4149_ ;
wire _5930_ ;
wire _5510_ ;
wire _6715_ ;
wire \datapath.alu.b_0_bF$buf2  ;
wire _1850_ ;
wire _1430_ ;
wire _1010_ ;
wire _761_ ;
wire _341_ ;
wire _2635_ ;
wire _2215_ ;
wire \datapath.idinstr_15_bF$buf46  ;
wire _7673_ ;
wire _7253_ ;
wire _8458_ ;
wire _8038_ ;
wire _3593_ ;
wire _3173_ ;
wire _1906_ ;
wire _4798_ ;
wire _4378_ ;
wire _817_ ;
wire _77_ ;
wire _6944_ ;
wire _6524_ ;
wire _6104_ ;
wire _990_ ;
wire _570_ ;
wire _150_ ;
wire _7729_ ;
wire _7309_ ;
wire _2864_ ;
wire _2444_ ;
wire _2024_ ;
wire _3649_ ;
wire _3229_ ;
wire _7482_ ;
wire _7062_ ;
wire _8267_ ;
wire _1715_ ;
wire _4187_ ;
wire _626_ ;
wire _206_ ;
wire _6753_ ;
wire _6333_ ;
wire _7958_ ;
wire _7538_ ;
wire _7118_ ;
wire _2673_ ;
wire _2253_ ;
wire _3878_ ;
wire _3458_ ;
wire _3038_ ;
wire _7291_ ;
wire _5604_ ;
wire _8496_ ;
wire _8076_ ;
wire _6809_ ;
wire _1944_ ;
wire _1524_ ;
wire _1104_ ;
wire _855_ ;
wire _435_ ;
wire _2729_ ;
wire _2309_ ;
wire _6982_ ;
wire _6562_ ;
wire _6142_ ;
wire \datapath.alu.b_3_bF$buf5  ;
wire _7767_ ;
wire _7347_ ;
wire _2482_ ;
wire _2062_ ;
wire _3687_ ;
wire _3267_ ;
wire _5833_ ;
wire _5413_ ;
wire _6618_ ;
wire _1753_ ;
wire _1333_ ;
wire _664_ ;
wire _244_ ;
wire _2958_ ;
wire _2538_ ;
wire _2118_ ;
wire _6791_ ;
wire _6371_ ;
wire _7996_ ;
wire _7576_ ;
wire _7156_ ;
wire _2291_ ;
wire _3496_ ;
wire _3076_ ;
wire _1809_ ;
wire _5642_ ;
wire _5222_ ;
wire _6847_ ;
wire _6427_ ;
wire _6007_ ;
wire _1982_ ;
wire _1562_ ;
wire _1142_ ;
wire _893_ ;
wire _473_ ;
wire _2767_ ;
wire _2347_ ;
wire _6180_ ;
wire _4913_ ;
wire _7385_ ;
wire _1618_ ;
wire _5871_ ;
wire _5451_ ;
wire _5031_ ;
wire \datapath.idinstr_20_bF$buf29  ;
wire _949_ ;
wire _529_ ;
wire _109_ ;
wire _6656_ ;
wire _6236_ ;
wire _1791_ ;
wire _1371_ ;
wire _282_ ;
wire _2996_ ;
wire _2576_ ;
wire _2156_ ;
wire _4722_ ;
wire _4302_ ;
wire _7194_ ;
wire \datapath.idinstr_21_bF$buf38  ;
wire _5927_ ;
wire _5507_ ;
wire _8399_ ;
wire _1847_ ;
wire _1427_ ;
wire _1007_ ;
wire _5680_ ;
wire _5260_ ;
wire _758_ ;
wire _338_ ;
wire _6885_ ;
wire _6465_ ;
wire _6045_ ;
wire _1180_ ;
wire \datapath.idinstr_22_hier0_bF$buf4  ;
wire _2385_ ;
wire _8611_ ;
wire _4951_ ;
wire _4531_ ;
wire _4111_ ;
wire _5736_ ;
wire _5316_ ;
wire _1656_ ;
wire _1236_ ;
wire _987_ ;
wire _567_ ;
wire _147_ ;
wire _3802_ ;
wire _6694_ ;
wire _6274_ ;
wire _7899_ ;
wire _7479_ ;
wire _7059_ ;
wire _2194_ ;
wire _8420_ ;
wire _8000_ ;
wire _3399_ ;
wire _4760_ ;
wire _4340_ ;
wire _5965_ ;
wire _5545_ ;
wire _5125_ ;
wire [31:0] \datapath.registers.828[21]  ;
wire _1885_ ;
wire _1465_ ;
wire _1045_ ;
wire _796_ ;
wire _376_ ;
wire _3611_ ;
wire _6083_ ;
wire _4816_ ;
wire _7288_ ;
wire _5774_ ;
wire _5354_ ;
wire CLK_bF$buf0 ;
wire CLK_bF$buf1 ;
wire CLK_bF$buf2 ;
wire CLK_bF$buf3 ;
wire CLK_bF$buf4 ;
wire CLK_bF$buf5 ;
wire _2672__bF$buf0 ;
wire CLK_bF$buf6 ;
wire _2672__bF$buf1 ;
wire CLK_bF$buf7 ;
wire _2672__bF$buf2 ;
wire CLK_bF$buf8 ;
wire _2672__bF$buf3 ;
wire CLK_bF$buf9 ;
wire _2672__bF$buf4 ;
wire _2672__bF$buf5 ;
wire _2672__bF$buf6 ;
wire _6979_ ;
wire _6559_ ;
wire _6139_ ;
wire _1694_ ;
wire _1274_ ;
wire _7920_ ;
wire _7500_ ;
wire _185_ ;
wire _2899_ ;
wire _2479_ ;
wire _2059_ ;
wire _3840_ ;
wire _3420_ ;
wire _3000_ ;
wire _4625_ ;
wire _4205_ ;
wire _7097_ ;
wire \datapath.idinstr_16_hier0_bF$buf1  ;
wire _5583_ ;
wire _5163_ ;
wire _6788_ ;
wire _6368_ ;
wire _1083_ ;
wire _2288_ ;
wire _8514_ ;
wire _4854_ ;
wire _4434_ ;
wire _4014_ ;
wire _5639_ ;
wire _5219_ ;
wire _1979_ ;
wire _1559_ ;
wire _1139_ ;
wire _2920_ ;
wire _2500_ ;
wire _4717__bF$buf0 ;
wire _4717__bF$buf1 ;
wire _5392_ ;
wire _4717__bF$buf2 ;
wire _4717__bF$buf3 ;
wire _4717__bF$buf4 ;
wire _3705_ ;
wire _6597_ ;
wire _6177_ ;
wire _2097_ ;
wire _8323_ ;
wire _4663_ ;
wire _4243_ ;
wire _5868_ ;
wire _5448_ ;
wire _5028_ ;
wire _1788_ ;
wire _1368_ ;
wire _4721__bF$buf0 ;
wire _4721__bF$buf1 ;
wire _4721__bF$buf2 ;
wire _4721__bF$buf3 ;
wire _4721__bF$buf4 ;
wire _699_ ;
wire _279_ ;
wire _3934_ ;
wire _3514_ ;
wire _4719_ ;
wire \datapath.idinstr_16_bF$buf5  ;
wire _8552_ ;
wire _8132_ ;
wire _4892_ ;
wire _4472_ ;
wire _4052_ ;
wire _911_ ;
wire _5677_ ;
wire _5257_ ;
wire \controlunit.mret_bF$buf0  ;
wire _1597_ ;
wire _1177_ ;
wire _7823_ ;
wire _7403_ ;
wire _8608_ ;
wire _3743_ ;
wire _3323_ ;
wire _4948_ ;
wire \datapath.idinstr_20_bF$buf5  ;
wire _4528_ ;
wire _4108_ ;
wire _8361_ ;
wire _4281_ ;
wire _720_ ;
wire _300_ ;
wire _5486_ ;
wire _5066_ ;
wire _7632_ ;
wire _7212_ ;
wire _8417_ ;
wire _3972_ ;
wire _3552_ ;
wire _3132_ ;
wire _4757_ ;
wire _4337_ ;
wire _8590_ ;
wire _8170_ ;
wire \datapath.idinstr_16_bF$buf14  ;
wire _36_ ;
wire _6903_ ;
wire _4090_ ;
wire _2823_ ;
wire _2403_ ;
wire _5295_ ;
wire _3608_ ;
wire _7861_ ;
wire _7441_ ;
wire _7021_ ;
wire _8646_ ;
wire _8226_ ;
wire _3781_ ;
wire _3361_ ;
wire _4986_ ;
wire _4566_ ;
wire _4146_ ;
wire _6712_ ;
wire _7917_ ;
wire _2632_ ;
wire _2212_ ;
wire \datapath.idinstr_15_bF$buf43  ;
wire _3837_ ;
wire _3417_ ;
wire _7670_ ;
wire _7250_ ;
wire _8455_ ;
wire _8035_ ;
wire _3590_ ;
wire _3170_ ;
wire _1903_ ;
wire _4795_ ;
wire _4375_ ;
wire _814_ ;
wire _74_ ;
wire _6941_ ;
wire _6521_ ;
wire _6101_ ;
wire _7726_ ;
wire _7306_ ;
wire _2861_ ;
wire _2441_ ;
wire _2021_ ;
wire _3646_ ;
wire _3226_ ;
wire _8264_ ;
wire _1712_ ;
wire _4184_ ;
wire _623_ ;
wire _203_ ;
wire _2917_ ;
wire _5389_ ;
wire _6750_ ;
wire _6330_ ;
wire _7955_ ;
wire _7535_ ;
wire _7115_ ;
wire _2670_ ;
wire _2250_ ;
wire _3875_ ;
wire _3455_ ;
wire _3035_ ;
wire _5601_ ;
wire _8493_ ;
wire _8073_ ;
wire _6806_ ;
wire _1941_ ;
wire _1521_ ;
wire _1101_ ;
wire _852_ ;
wire _432_ ;
wire _2726_ ;
wire _2306_ ;
wire _5198_ ;
wire \datapath.alu.b_3_bF$buf2  ;
wire _7764_ ;
wire _7344_ ;
wire _8549_ ;
wire _8129_ ;
wire _3684_ ;
wire _3264_ ;
wire _4889_ ;
wire _4469_ ;
wire _4049_ ;
wire _5830_ ;
wire _5410_ ;
wire _908_ ;
wire _6615_ ;
wire _1750_ ;
wire _1330_ ;
wire _661_ ;
wire _241_ ;
wire _2955_ ;
wire _2535_ ;
wire _2115_ ;
wire _7993_ ;
wire _7573_ ;
wire _7153_ ;
wire _5680__bF$buf0 ;
wire _5680__bF$buf1 ;
wire _5680__bF$buf2 ;
wire _5680__bF$buf3 ;
wire _5680__bF$buf4 ;
wire _8358_ ;
wire _3493_ ;
wire _3073_ ;
wire _1806_ ;
wire _4698_ ;
wire _4278_ ;
wire _717_ ;
wire _6844_ ;
wire _6424_ ;
wire _6004_ ;
wire _890_ ;
wire _470_ ;
wire _7629_ ;
wire _7209_ ;
wire _2764_ ;
wire _2344_ ;
wire _3969_ ;
wire _3549_ ;
wire _3129_ ;
wire _4910_ ;
wire _7382_ ;
wire _8587_ ;
wire _8167_ ;
wire _1615_ ;
wire _4087_ ;
wire \datapath.idinstr_20_bF$buf26  ;
wire _946_ ;
wire _526_ ;
wire _106_ ;
wire _6653_ ;
wire _6233_ ;
wire _7858_ ;
wire _7438_ ;
wire _7018_ ;
wire _2993_ ;
wire _2573_ ;
wire _2153_ ;
wire _317__bF$buf0 ;
wire _317__bF$buf1 ;
wire _317__bF$buf2 ;
wire _317__bF$buf3 ;
wire _317__bF$buf4 ;
wire _3778_ ;
wire _3358_ ;
wire _7191_ ;
wire \datapath.idinstr_21_bF$buf35  ;
wire _5924_ ;
wire _5504_ ;
wire _8396_ ;
wire _6709_ ;
wire _1844_ ;
wire _1424_ ;
wire _1004_ ;
wire _755_ ;
wire _335_ ;
wire _2629_ ;
wire _2209_ ;
wire _6882_ ;
wire _6462_ ;
wire _6042_ ;
wire \datapath.idinstr_22_hier0_bF$buf1  ;
wire _7667_ ;
wire _7247_ ;
wire _2382_ ;
wire _3587_ ;
wire _3167_ ;
wire _5733_ ;
wire _5313_ ;
wire _6938_ ;
wire _6518_ ;
wire _1653_ ;
wire _1233_ ;
wire _984_ ;
wire _564_ ;
wire _144_ ;
wire _2858_ ;
wire _2438_ ;
wire _2018_ ;
wire _6691_ ;
wire _6271_ ;
wire _7896_ ;
wire _7476_ ;
wire _7056_ ;
wire _2191_ ;
wire _3396_ ;
wire _1709_ ;
wire _5962_ ;
wire _5542_ ;
wire _5122_ ;
wire _6747_ ;
wire _6327_ ;
wire _1882_ ;
wire _1462_ ;
wire _1042_ ;
wire _793_ ;
wire _373_ ;
wire _2667_ ;
wire _2247_ ;
wire _6080_ ;
wire _4813_ ;
wire _7285_ ;
wire _1938_ ;
wire _1518_ ;
wire _5771_ ;
wire _5351_ ;
wire _849_ ;
wire _429_ ;
wire _6976_ ;
wire _6556_ ;
wire _6136_ ;
wire _1691_ ;
wire _1271_ ;
wire _182_ ;
wire _2896_ ;
wire _2476_ ;
wire _2056_ ;
wire _4622_ ;
wire _4202_ ;
wire _7094_ ;
wire _5827_ ;
wire _5407_ ;
wire _8299_ ;
wire _1747_ ;
wire _1327_ ;
wire [31:0] \datapath.registers.828[4]  ;
wire _5580_ ;
wire _5160_ ;
wire _658_ ;
wire _238_ ;
wire _6785_ ;
wire _6365_ ;
wire _1080_ ;
wire _2285_ ;
wire _8511_ ;
wire _4851_ ;
wire _4431_ ;
wire _4011_ ;
wire _5636_ ;
wire _5216_ ;
wire _1976_ ;
wire _1556_ ;
wire _1136_ ;
wire _887_ ;
wire _467_ ;
wire _3702_ ;
wire _6594_ ;
wire _6174_ ;
wire _4907_ ;
wire _7799_ ;
wire _7379_ ;
wire _2094_ ;
wire _8320_ ;
wire _3299_ ;
wire _4660_ ;
wire _4240_ ;
wire _5865_ ;
wire _5445_ ;
wire _5025_ ;
wire [31:0] \datapath.registers.828[11]  ;
wire [31:0] \datapath.idpc  ;
wire _1785_ ;
wire _1365_ ;
wire _696_ ;
wire _276_ ;
wire _3931_ ;
wire _3511_ ;
wire _4716_ ;
wire _7188_ ;
wire \datapath.idinstr_16_bF$buf2  ;
wire _5674_ ;
wire _5254_ ;
wire _6879_ ;
wire _6459_ ;
wire _6039_ ;
wire _1594_ ;
wire _1174_ ;
wire _7820_ ;
wire _7400_ ;
wire _2799_ ;
wire _2379_ ;
wire _8605_ ;
wire _3740_ ;
wire _3320_ ;
wire _4945_ ;
wire \datapath.idinstr_20_bF$buf2  ;
wire _4525_ ;
wire _4105_ ;
wire _5483_ ;
wire _5063_ ;
wire _5167__bF$buf0 ;
wire _5167__bF$buf1 ;
wire _5167__bF$buf2 ;
wire _5167__bF$buf3 ;
wire _5167__bF$buf4 ;
wire _5167__bF$buf5 ;
wire _5167__bF$buf6 ;
wire _5167__bF$buf7 ;
wire _6688_ ;
wire _6268_ ;
wire _2188_ ;
wire _8414_ ;
wire _4754_ ;
wire _4334_ ;
wire _5959_ ;
wire _5539_ ;
wire _5119_ ;
wire \datapath.idinstr_16_bF$buf11  ;
wire _33_ ;
wire _6900_ ;
wire _1879_ ;
wire _1459_ ;
wire _1039_ ;
wire _2820_ ;
wire _2400_ ;
wire _5292_ ;
wire _3605_ ;
wire _6497_ ;
wire _6077_ ;
wire _8643_ ;
wire _8223_ ;
wire _4983_ ;
wire _4563_ ;
wire _4143_ ;
wire \datapath.idinstr_19_bF$buf5  ;
wire _5768_ ;
wire _5348_ ;
wire _1688_ ;
wire _1268_ ;
wire _7914_ ;
wire _599_ ;
wire _179_ ;
wire \datapath.idinstr_15_bF$buf40  ;
wire _3834_ ;
wire _3414_ ;
wire _4619_ ;
wire _8452_ ;
wire _8032_ ;
wire _1900_ ;
wire _4792_ ;
wire _4372_ ;
wire \datapath.idinstr_23_bF$buf5  ;
wire _811_ ;
wire _5997_ ;
wire _5577_ ;
wire _5157_ ;
wire _71_ ;
wire _8565__bF$buf0 ;
wire _1497_ ;
wire _8565__bF$buf1 ;
wire _1077_ ;
wire _8565__bF$buf2 ;
wire _8565__bF$buf3 ;
wire _8565__bF$buf4 ;
wire _8565__bF$buf5 ;
wire _8565__bF$buf6 ;
wire _8565__bF$buf7 ;
wire _7723_ ;
wire _7303_ ;
wire _8508_ ;
wire _3643_ ;
wire _3223_ ;
wire _4848_ ;
wire _4428_ ;
wire _4008_ ;
wire _8261_ ;
wire [31:0] \datapath.csr.csr_data  ;
wire _4181_ ;
wire _620_ ;
wire _200_ ;
wire _2914_ ;
wire _5386_ ;
wire _7952_ ;
wire _7532_ ;
wire _7112_ ;
wire _8317_ ;
wire _3872_ ;
wire _3452_ ;
wire _3032_ ;
wire _4657_ ;
wire _4237_ ;
wire _8490_ ;
wire _8070_ ;
wire _6803_ ;
wire _2723_ ;
wire _2303_ ;
wire _5195_ ;
wire [31:0] \datapath.registers.828[28]  ;
wire _3928_ ;
wire _3508_ ;
wire _7761_ ;
wire _7341_ ;
wire _8546_ ;
wire _8126_ ;
wire _3681_ ;
wire _3261_ ;
wire _4886_ ;
wire _4466_ ;
wire _4046_ ;
wire _905_ ;
wire _6612_ ;
wire _7817_ ;
wire _2952_ ;
wire _2532_ ;
wire _2112_ ;
wire _3737_ ;
wire _3317_ ;
wire \datapath.alu.b_1_bF$buf6  ;
wire _7990_ ;
wire _7570_ ;
wire _7150_ ;
wire _8355_ ;
wire _3490_ ;
wire _3070_ ;
wire _1803_ ;
wire _4695_ ;
wire _4275_ ;
wire _714_ ;
wire _6841_ ;
wire _6421_ ;
wire _6001_ ;
wire [31:1] \datapath.alu.c  ;
wire _7626_ ;
wire _7206_ ;
wire _2761_ ;
wire _2341_ ;
wire _3966_ ;
wire _3546_ ;
wire _3126_ ;
wire _8584_ ;
wire _8164_ ;
wire _1612_ ;
wire _4084_ ;
wire \datapath.idinstr_20_bF$buf23  ;
wire _943_ ;
wire _523_ ;
wire _103_ ;
wire _2817_ ;
wire _5289_ ;
wire _6650_ ;
wire _6230_ ;
wire _7855_ ;
wire _7435_ ;
wire _7015_ ;
wire _2990_ ;
wire _2570_ ;
wire _2150_ ;
wire _3775_ ;
wire _3355_ ;
wire \datapath.idinstr_21_bF$buf32  ;
wire _5921_ ;
wire _5501_ ;
wire _8393_ ;
wire _6706_ ;
wire _1841_ ;
wire _1421_ ;
wire _1001_ ;
wire _752_ ;
wire _332_ ;
wire _2626_ ;
wire _2206_ ;
wire _5098_ ;
wire \datapath.idinstr_15_bF$buf37  ;
wire \datapath.idinstr_22_bF$buf41  ;
wire _7664_ ;
wire _7244_ ;
wire _8449_ ;
wire _8029_ ;
wire _3584_ ;
wire _3164_ ;
wire _4789_ ;
wire _4369_ ;
wire _5730_ ;
wire _5310_ ;
wire _808_ ;
wire _5683__bF$buf0 ;
wire _5683__bF$buf1 ;
wire _5683__bF$buf2 ;
wire _5683__bF$buf3 ;
wire _68_ ;
wire _6935_ ;
wire _6515_ ;
wire _1650_ ;
wire _1230_ ;
wire _981_ ;
wire _561_ ;
wire _141_ ;
wire _2855_ ;
wire _2435_ ;
wire _2015_ ;
wire _7893_ ;
wire _7473_ ;
wire _7053_ ;
wire _8258_ ;
wire _3393_ ;
wire _1706_ ;
wire _4598_ ;
wire _4178_ ;
wire _617_ ;
wire _6744_ ;
wire _6324_ ;
wire _7089__bF$buf0 ;
wire _7089__bF$buf1 ;
wire _7089__bF$buf2 ;
wire _7089__bF$buf3 ;
wire _7089__bF$buf4 ;
wire _7089__bF$buf5 ;
wire _7089__bF$buf6 ;
wire _7089__bF$buf7 ;
wire _7089__bF$buf8 ;
wire _7089__bF$buf9 ;
wire _790_ ;
wire _370_ ;
wire _7949_ ;
wire _7529_ ;
wire _7109_ ;
wire _2664_ ;
wire _2244_ ;
wire _3869_ ;
wire _3449_ ;
wire _3029_ ;
wire _4810_ ;
wire _7282_ ;
wire _8487_ ;
wire _8067_ ;
wire _5612__bF$buf0 ;
wire _5612__bF$buf1 ;
wire _5612__bF$buf2 ;
wire _5612__bF$buf3 ;
wire _5612__bF$buf4 ;
wire _1935_ ;
wire _1515_ ;
wire _846_ ;
wire _426_ ;
wire _6973_ ;
wire _6553_ ;
wire _6133_ ;
wire _7093__bF$buf0 ;
wire _7093__bF$buf1 ;
wire _7093__bF$buf2 ;
wire _7093__bF$buf3 ;
wire _7093__bF$buf4 ;
wire _7093__bF$buf5 ;
wire _7093__bF$buf6 ;
wire _7093__bF$buf7 ;
wire _7758_ ;
wire _7338_ ;
wire _2893_ ;
wire _2473_ ;
wire _2053_ ;
wire _3678_ ;
wire _3258_ ;
wire _7091_ ;
wire _5824_ ;
wire _5404_ ;
wire _8296_ ;
wire _5470__bF$buf0 ;
wire _5470__bF$buf1 ;
wire _5470__bF$buf2 ;
wire _5470__bF$buf3 ;
wire _5470__bF$buf4 ;
wire _5470__bF$buf5 ;
wire _5470__bF$buf6 ;
wire _5470__bF$buf7 ;
wire _6609_ ;
wire _1744_ ;
wire _1324_ ;
wire _655_ ;
wire _235_ ;
wire _2949_ ;
wire _2529_ ;
wire _2109_ ;
wire _6782_ ;
wire _6362_ ;
wire _7987_ ;
wire _7567_ ;
wire _7147_ ;
wire _2282_ ;
wire _3487_ ;
wire _3067_ ;
wire _5633_ ;
wire _5213_ ;
wire _6838_ ;
wire _6418_ ;
wire _1973_ ;
wire _1553_ ;
wire _1133_ ;
wire _884_ ;
wire _464_ ;
wire _2758_ ;
wire _2338_ ;
wire _6591_ ;
wire _6171_ ;
wire _4904_ ;
wire _7796_ ;
wire _7376_ ;
wire _2091_ ;
wire _3296_ ;
wire _1609_ ;
wire _5862_ ;
wire _5442_ ;
wire _5022_ ;
wire _4806__bF$buf0 ;
wire _4806__bF$buf1 ;
wire _4806__bF$buf2 ;
wire _4806__bF$buf3 ;
wire _4806__bF$buf4 ;
wire _4806__bF$buf5 ;
wire _4806__bF$buf6 ;
wire _6647_ ;
wire _4806__bF$buf7 ;
wire _6227_ ;
wire _1782_ ;
wire _1362_ ;
wire _693_ ;
wire _273_ ;
wire _2987_ ;
wire _2567_ ;
wire _2147_ ;
wire _4713_ ;
wire _7185_ ;
wire \datapath.idinstr_21_bF$buf29  ;
wire _5918_ ;
wire _1838_ ;
wire _1418_ ;
wire _5671_ ;
wire _5251_ ;
wire _749_ ;
wire _329_ ;
wire _6876_ ;
wire _6456_ ;
wire _6036_ ;
wire _1591_ ;
wire _1171_ ;
wire \datapath.idinstr_22_bF$buf38  ;
wire _2796_ ;
wire _2376_ ;
wire _8602_ ;
wire _4942_ ;
wire _4522_ ;
wire _4102_ ;
wire _5727_ ;
wire _5307_ ;
wire _8199_ ;
wire _1647_ ;
wire _1227_ ;
wire _5480_ ;
wire _5060_ ;
wire _978_ ;
wire _558_ ;
wire _138_ ;
wire _6685_ ;
wire _6265_ ;
wire _2185_ ;
wire _8411_ ;
wire _4751_ ;
wire _4331_ ;
wire _5956_ ;
wire _5536_ ;
wire _5116_ ;
wire \datapath.regtkbranch  ;
wire _30_ ;
wire _1876_ ;
wire _1456_ ;
wire _1036_ ;
wire _787_ ;
wire _367_ ;
wire _3602_ ;
wire _6494_ ;
wire _6074_ ;
wire _4807_ ;
wire _7699_ ;
wire _7279_ ;
wire _8640_ ;
wire _8220_ ;
wire _3199_ ;
wire _4980_ ;
wire _4560_ ;
wire _4140_ ;
wire \datapath.idinstr_19_bF$buf2  ;
wire _5765_ ;
wire _5345_ ;
wire _1685_ ;
wire _1265_ ;
wire _7911_ ;
wire _596_ ;
wire _176_ ;
wire _3831_ ;
wire _3411_ ;
wire _4616_ ;
wire _7088_ ;
wire \datapath.idinstr_23_bF$buf2  ;
wire _5994_ ;
wire _5574_ ;
wire _5154_ ;
wire [31:0] \datapath.programcounter.pc_mux  ;
wire _6779_ ;
wire _6359_ ;
wire _1494_ ;
wire _1074_ ;
wire _7720_ ;
wire _7300_ ;
wire _2699_ ;
wire _2279_ ;
wire _8505_ ;
wire _3640_ ;
wire _3220_ ;
wire [31:2] \datapath.csr.csr_mepc  ;
wire _4845_ ;
wire _4425_ ;
wire _4005_ ;
wire _2911_ ;
wire _5383_ ;
wire _6588_ ;
wire _6168_ ;
wire _2088_ ;
wire _8314_ ;
wire _4654_ ;
wire _4234_ ;
wire _4727__bF$buf0 ;
wire _4727__bF$buf1 ;
wire _4727__bF$buf2 ;
wire _4727__bF$buf3 ;
wire _4727__bF$buf4 ;
wire _5859_ ;
wire _5439_ ;
wire _5019_ ;
wire _6800_ ;
wire _1779_ ;
wire _1359_ ;
wire _2720_ ;
wire _2300_ ;
wire _5192_ ;
wire _3925_ ;
wire _3505_ ;
wire _6397_ ;
wire _8543_ ;
wire _8123_ ;
wire _4883_ ;
wire _4463_ ;
wire _4043_ ;
wire _4731__bF$buf0 ;
wire _4731__bF$buf1 ;
wire _4731__bF$buf2 ;
wire _4731__bF$buf3 ;
wire _4731__bF$buf4 ;
wire _902_ ;
wire _5668_ ;
wire _5248_ ;
wire _1588_ ;
wire _1168_ ;
wire _7814_ ;
wire _499_ ;
wire _3734_ ;
wire _3314_ ;
wire \datapath.alu.b_1_bF$buf3  ;
wire _4939_ ;
wire _4519_ ;
wire _8352_ ;
wire _1800_ ;
wire _4692_ ;
wire _4272_ ;
wire _711_ ;
wire _5897_ ;
wire _5477_ ;
wire _5057_ ;
wire _1397_ ;
wire _7623_ ;
wire _7203_ ;
wire _8408_ ;
wire _3963_ ;
wire _3543_ ;
wire _3123_ ;
wire _4748_ ;
wire _4328_ ;
wire _8581_ ;
wire _8161_ ;
wire _27_ ;
wire _4081_ ;
wire \datapath.idinstr_20_bF$buf20  ;
wire _940_ ;
wire _520_ ;
wire _100_ ;
wire _2814_ ;
wire _5286_ ;
wire _7852_ ;
wire _7432_ ;
wire _7012_ ;
wire _8637_ ;
wire _8217_ ;
wire _3772_ ;
wire _3352_ ;
wire \datapath.idinstr_17_bF$buf14  ;
wire _4977_ ;
wire _4557_ ;
wire _4137_ ;
wire _8390_ ;
wire _6703_ ;
wire _7908_ ;
wire _2623_ ;
wire _2203_ ;
wire _5095_ ;
wire [31:0] \datapath.registers.828[18]  ;
wire \datapath.idinstr_15_bF$buf34  ;
wire _3828_ ;
wire _3408_ ;
wire _7661_ ;
wire _7241_ ;
wire _8446_ ;
wire _8026_ ;
wire _3581_ ;
wire _3161_ ;
wire _4786_ ;
wire _4366_ ;
wire _805_ ;
wire \datapath.idinstr_16_bF$buf43  ;
wire _65_ ;
wire _6932_ ;
wire _6512_ ;
wire _7717_ ;
wire _2852_ ;
wire _2432_ ;
wire _2012_ ;
wire _3637_ ;
wire _3217_ ;
wire _7890_ ;
wire _7470_ ;
wire _7050_ ;
wire _8255_ ;
wire _3390_ ;
wire _1703_ ;
wire _4595_ ;
wire _4175_ ;
wire _614_ ;
wire _2908_ ;
wire _6741_ ;
wire _6321_ ;
wire _7946_ ;
wire _7526_ ;
wire _7106_ ;
wire _2661_ ;
wire _2241_ ;
wire _5335__bF$buf0 ;
wire _5335__bF$buf1 ;
wire _5335__bF$buf2 ;
wire _5335__bF$buf3 ;
wire _5335__bF$buf4 ;
wire _3866_ ;
wire _3446_ ;
wire _3026_ ;
wire _8484_ ;
wire _8064_ ;
wire _1932_ ;
wire _1512_ ;
wire _843_ ;
wire _423_ ;
wire _2717_ ;
wire _5189_ ;
wire _6970_ ;
wire _6550_ ;
wire _6130_ ;
wire _7755_ ;
wire _7335_ ;
wire _2890_ ;
wire _2470_ ;
wire _2050_ ;
wire _3675_ ;
wire _3255_ ;
wire _5821_ ;
wire _5401_ ;
wire _8293_ ;
wire _6606_ ;
wire _1741_ ;
wire _1321_ ;
wire _652_ ;
wire _232_ ;
wire _2946_ ;
wire _2526_ ;
wire _2106_ ;
wire _7984_ ;
wire _7564_ ;
wire _7144_ ;
wire _8349_ ;
wire _3484_ ;
wire _3064_ ;
wire _4689_ ;
wire _4269_ ;
wire _5630_ ;
wire _5210_ ;
wire _708_ ;
wire _6835_ ;
wire _6415_ ;
wire _1970_ ;
wire _1550_ ;
wire _1130_ ;
wire _881_ ;
wire _461_ ;
wire _2755_ ;
wire _2335_ ;
wire [3:0] alusel ;
wire _4901_ ;
wire _7793_ ;
wire _7373_ ;
wire _8578_ ;
wire _8158_ ;
wire _3293_ ;
wire _1606_ ;
wire _4498_ ;
wire _4078_ ;
wire \datapath.idinstr_20_bF$buf17  ;
wire _937_ ;
wire _517_ ;
wire _6644_ ;
wire _6224_ ;
wire _690_ ;
wire _270_ ;
wire _7849_ ;
wire _7429_ ;
wire _7009_ ;
wire _2984_ ;
wire _2564_ ;
wire _2144_ ;
wire _3769_ ;
wire _3349_ ;
wire _4710_ ;
wire _7182_ ;
wire \datapath.idinstr_21_bF$buf26  ;
wire _5915_ ;
wire _8387_ ;
wire _1835_ ;
wire _1415_ ;
wire _746_ ;
wire _326_ ;
wire _6873_ ;
wire _6453_ ;
wire _6033_ ;
wire \datapath.idinstr_22_bF$buf35  ;
wire _7658_ ;
wire _7238_ ;
wire _2793_ ;
wire _2373_ ;
wire _3998_ ;
wire _3578_ ;
wire _3158_ ;
wire _5724_ ;
wire _5304_ ;
wire _8196_ ;
wire _6929_ ;
wire _6509_ ;
wire _1644_ ;
wire _1224_ ;
wire _975_ ;
wire _555_ ;
wire _135_ ;
wire _2849_ ;
wire _2429_ ;
wire _2009_ ;
wire _6682_ ;
wire _6262_ ;
wire _7887_ ;
wire _7467_ ;
wire _7047_ ;
wire _2182_ ;
wire _3387_ ;
wire _5953_ ;
wire _5533_ ;
wire _5113_ ;
wire DMEM_WEN ;
wire _6738_ ;
wire _6318_ ;
wire _1873_ ;
wire _5402__bF$buf0 ;
wire _1453_ ;
wire _5402__bF$buf1 ;
wire _1033_ ;
wire _5402__bF$buf2 ;
wire _5402__bF$buf3 ;
wire _5402__bF$buf4 ;
wire _5402__bF$buf5 ;
wire _5402__bF$buf6 ;
wire _5402__bF$buf7 ;
wire _784_ ;
wire _364_ ;
wire _2658_ ;
wire _2238_ ;
wire _6491_ ;
wire _6071_ ;
wire _4804_ ;
wire _7696_ ;
wire _7276_ ;
wire _3196_ ;
wire _1929_ ;
wire _1509_ ;
wire _5762_ ;
wire _5342_ ;
wire _6967_ ;
wire _6547_ ;
wire _6127_ ;
wire _1682_ ;
wire _1262_ ;
wire _593_ ;
wire _173_ ;
wire _2887_ ;
wire _2467_ ;
wire _2047_ ;
wire _4613_ ;
wire _7085_ ;
wire _5818_ ;
wire _1738_ ;
wire _1318_ ;
wire _5039__bF$buf0 ;
wire _5991_ ;
wire _5039__bF$buf1 ;
wire _5571_ ;
wire _5039__bF$buf2 ;
wire _5151_ ;
wire _5039__bF$buf3 ;
wire _5039__bF$buf4 ;
wire _5039__bF$buf5 ;
wire _5039__bF$buf6 ;
wire _5039__bF$buf7 ;
wire _649_ ;
wire _229_ ;
wire _6776_ ;
wire _6356_ ;
wire _1491_ ;
wire _1071_ ;
wire _2696_ ;
wire _2276_ ;
wire _8502_ ;
wire _4842_ ;
wire _4422_ ;
wire _4002_ ;
wire _5627_ ;
wire _5207_ ;
wire _8099_ ;
wire _1967_ ;
wire _1547_ ;
wire _1127_ ;
wire _5380_ ;
wire _878_ ;
wire _458_ ;
wire _6585_ ;
wire _6165_ ;
wire _2085_ ;
wire _8311_ ;
wire _4651_ ;
wire _4231_ ;
wire _5856_ ;
wire _5436_ ;
wire _5016_ ;
wire _1776_ ;
wire _1356_ ;
wire _687_ ;
wire _267_ ;
wire _3922_ ;
wire _3502_ ;
wire _6394_ ;
wire _4707_ ;
wire _7599_ ;
wire _7179_ ;
wire _8540_ ;
wire _8120_ ;
wire _3099_ ;
wire _4880_ ;
wire _4460_ ;
wire _4040_ ;
wire _5665_ ;
wire _5245_ ;
wire \datapath.idinstr_17_bF$buf8  ;
wire _1585_ ;
wire _1165_ ;
wire _7811_ ;
wire _496_ ;
wire _3731_ ;
wire _3311_ ;
wire \datapath.alu.b_1_bF$buf0  ;
wire _4936_ ;
wire _4516_ ;
wire \datapath.idinstr_21_bF$buf8  ;
wire _5894_ ;
wire _5474_ ;
wire _5054_ ;
wire _6679_ ;
wire _6259_ ;
wire _1394_ ;
wire _7620_ ;
wire _7200_ ;
wire _2599_ ;
wire _2179_ ;
wire _8405_ ;
wire _3960_ ;
wire _3540_ ;
wire _3120_ ;
wire _4745_ ;
wire _4325_ ;
wire _24_ ;
wire _2811_ ;
wire _5283_ ;
wire [31:0] IMEM_DATA ;
wire _6488_ ;
wire _6068_ ;
wire _8634_ ;
wire _8214_ ;
wire \datapath.idinstr_17_bF$buf11  ;
wire _4974_ ;
wire _4554_ ;
wire _4134_ ;
wire [7:0] \datapath.memoryinterface.byte_size_load.byteval  ;
wire _5759_ ;
wire _5339_ ;
wire _6700_ ;
wire _1123__bF$buf0 ;
wire _1123__bF$buf1 ;
wire _1123__bF$buf2 ;
wire _1123__bF$buf3 ;
wire _1123__bF$buf4 ;
wire _1123__bF$buf5 ;
wire _1123__bF$buf6 ;
wire _1679_ ;
wire _1259_ ;
wire _7905_ ;
wire _2620_ ;
wire _2200_ ;
wire _5092_ ;
wire \datapath.idinstr_15_bF$buf31  ;
wire _3825_ ;
wire _3405_ ;
wire _6297_ ;
wire _8443_ ;
wire _8023_ ;
wire \datapath.alu.b_4_bF$buf3  ;
wire _4783_ ;
wire _4363_ ;
wire _802_ ;
wire _5988_ ;
wire _5568_ ;
wire _5148_ ;
wire \datapath.idinstr_16_bF$buf40  ;
wire _62_ ;
wire _1488_ ;
wire _1068_ ;
wire _7714_ ;
wire _399_ ;
wire _3634_ ;
wire _3214_ ;
wire _4839_ ;
wire _4419_ ;
wire _8252_ ;
wire _1700_ ;
wire _4592_ ;
wire _4172_ ;
wire _611_ ;
wire _2905_ ;
wire _5797_ ;
wire _5377_ ;
wire _1297_ ;
wire _7943_ ;
wire _7523_ ;
wire _7103_ ;
wire _8308_ ;
wire _3863_ ;
wire _3443_ ;
wire _3023_ ;
wire _4648_ ;
wire _4228_ ;
wire _8481_ ;
wire CLK_bF$buf70 ;
wire _8061_ ;
wire CLK_bF$buf71 ;
wire CLK_bF$buf72 ;
wire CLK_bF$buf73 ;
wire CLK_bF$buf74 ;
wire CLK_bF$buf75 ;
wire CLK_bF$buf76 ;
wire CLK_bF$buf77 ;
wire CLK_bF$buf78 ;
wire CLK_bF$buf79 ;
wire _840_ ;
wire _420_ ;
wire _2714_ ;
wire _5684__bF$buf10 ;
wire _5684__bF$buf11 ;
wire _5186_ ;
wire _3919_ ;
wire _7752_ ;
wire _7332_ ;
wire _8537_ ;
wire _8117_ ;
wire _3672_ ;
wire _3252_ ;
wire _4877_ ;
wire _4457_ ;
wire _4037_ ;
wire _8290_ ;
wire _6603_ ;
wire _7808_ ;
wire _2943_ ;
wire _2523_ ;
wire _2103_ ;
wire _3728_ ;
wire _3308_ ;
wire _7981_ ;
wire _7561_ ;
wire _7141_ ;
wire _8346_ ;
wire _3481_ ;
wire _3061_ ;
wire _4686_ ;
wire _4266_ ;
wire _705_ ;
wire _6832_ ;
wire _6412_ ;
wire _7617_ ;
wire _2752_ ;
wire _2332_ ;
wire _3957_ ;
wire _3537_ ;
wire _3117_ ;
wire _7790_ ;
wire _7370_ ;
wire _5098__bF$buf0 ;
wire _5098__bF$buf1 ;
wire _5098__bF$buf2 ;
wire _5098__bF$buf3 ;
wire _5098__bF$buf4 ;
wire _5098__bF$buf5 ;
wire _8575_ ;
wire _8155_ ;
wire _3290_ ;
wire _1603_ ;
wire _4495_ ;
wire _4075_ ;
wire \datapath.idinstr_20_bF$buf14  ;
wire _934_ ;
wire _514_ ;
wire _2808_ ;
wire _6641_ ;
wire _6221_ ;
wire _7846_ ;
wire _7426_ ;
wire _7006_ ;
wire _2981_ ;
wire _2561_ ;
wire _2141_ ;
wire _3766_ ;
wire _3346_ ;
wire \datapath.idinstr_21_bF$buf23  ;
wire _5912_ ;
wire _8384_ ;
wire _1832_ ;
wire _1412_ ;
wire _743_ ;
wire _323_ ;
wire _2617_ ;
wire _5089_ ;
wire _6870_ ;
wire _6450_ ;
wire _6030_ ;
wire \datapath.idinstr_15_bF$buf28  ;
wire \datapath.csr.mip  ;
wire \datapath.idinstr_22_bF$buf32  ;
wire _7655_ ;
wire _7235_ ;
wire _2790_ ;
wire _2370_ ;
wire _3995_ ;
wire _3575_ ;
wire _3155_ ;
wire _5721_ ;
wire _5301_ ;
wire _8193_ ;
wire \datapath.idinstr_16_bF$buf37  ;
wire _59_ ;
wire _6926_ ;
wire _6506_ ;
wire _1641_ ;
wire _1221_ ;
wire \datapath.idinstr_20_bF$buf52  ;
wire _972_ ;
wire _552_ ;
wire _132_ ;
wire _2846_ ;
wire _2426_ ;
wire _2006_ ;
wire _7884_ ;
wire _7464_ ;
wire _7044_ ;
wire _8249_ ;
wire _3384_ ;
wire _4589_ ;
wire _4169_ ;
wire _5950_ ;
wire _5530_ ;
wire _5110_ ;
wire _608_ ;
wire _6735_ ;
wire _6315_ ;
wire _1870_ ;
wire _1450_ ;
wire _1030_ ;
wire _781_ ;
wire _361_ ;
wire _2655_ ;
wire _2235_ ;
wire _4801_ ;
wire _7693_ ;
wire _7273_ ;
wire _8478_ ;
wire _8058_ ;
wire _3193_ ;
wire _1926_ ;
wire _1506_ ;
wire _4398_ ;
wire _837_ ;
wire _417_ ;
wire _97_ ;
wire _6964_ ;
wire _6544_ ;
wire _6124_ ;
wire _590_ ;
wire _170_ ;
wire _7749_ ;
wire _7329_ ;
wire _2884_ ;
wire _2464_ ;
wire _2044_ ;
wire _3669_ ;
wire _3249_ ;
wire _4610_ ;
wire _7082_ ;
wire _5815_ ;
wire _8287_ ;
wire _1735_ ;
wire _1315_ ;
wire _646_ ;
wire _226_ ;
wire \datapath.alu.z  ;
wire _6773_ ;
wire _6353_ ;
wire _7978_ ;
wire _7558_ ;
wire _7138_ ;
wire _2693_ ;
wire _2273_ ;
wire _3898_ ;
wire _3478_ ;
wire _3058_ ;
wire _5624_ ;
wire _5204_ ;
wire _8096_ ;
wire _6829_ ;
wire _6409_ ;
wire _1964_ ;
wire _1544_ ;
wire _1124_ ;
wire _875_ ;
wire _455_ ;
wire _2749_ ;
wire _2329_ ;
wire _6582_ ;
wire _6162_ ;
wire _2602__bF$buf0 ;
wire _2602__bF$buf1 ;
wire _2602__bF$buf2 ;
wire _2602__bF$buf3 ;
wire _2602__bF$buf4 ;
wire _7787_ ;
wire _7367_ ;
wire _2082_ ;
wire _3287_ ;
wire _5853_ ;
wire _5433_ ;
wire _5013_ ;
wire _6638_ ;
wire _6218_ ;
wire _1773_ ;
wire _1353_ ;
wire _684_ ;
wire _264_ ;
wire _2978_ ;
wire _2558_ ;
wire _2138_ ;
wire _6391_ ;
wire _4704_ ;
wire _7596_ ;
wire _7176_ ;
wire _5909_ ;
wire _3096_ ;
wire _1829_ ;
wire _1409_ ;
wire _5662_ ;
wire _5242_ ;
wire \datapath.idinstr_17_bF$buf5  ;
wire _6867_ ;
wire _6447_ ;
wire _6027_ ;
wire _1582_ ;
wire _1162_ ;
wire _493_ ;
wire \datapath.idinstr_22_bF$buf29  ;
wire _2787_ ;
wire _2367_ ;
wire _4933_ ;
wire _4513_ ;
wire _5718_ ;
wire _1638_ ;
wire _1218_ ;
wire \datapath.idinstr_21_bF$buf5  ;
wire _5891_ ;
wire _5471_ ;
wire _5051_ ;
wire \datapath.idinstr_20_bF$buf49  ;
wire _969_ ;
wire _549_ ;
wire _129_ ;
wire _6676_ ;
wire _6256_ ;
wire _1391_ ;
wire _2596_ ;
wire _2176_ ;
wire _8402_ ;
wire _4742_ ;
wire _4322_ ;
wire _5947_ ;
wire _5527_ ;
wire _5107_ ;
wire _21_ ;
wire _3423__bF$buf0 ;
wire _3423__bF$buf1 ;
wire _3423__bF$buf2 ;
wire _3423__bF$buf3 ;
wire _3423__bF$buf4 ;
wire _1867_ ;
wire _1447_ ;
wire _1027_ ;
wire _5280_ ;
wire _778_ ;
wire _358_ ;
wire _6485_ ;
wire _6065_ ;
wire _8631_ ;
wire _8211_ ;
wire _4971_ ;
wire _4551_ ;
wire _4131_ ;
wire _5756_ ;
wire _5336_ ;
wire _1676_ ;
wire _1256_ ;
wire _7902_ ;
wire _587_ ;
wire _167_ ;
wire _3822_ ;
wire _3402_ ;
wire _6294_ ;
wire _4607_ ;
wire [31:0] \datapath._03_  ;
wire _7499_ ;
wire _7079_ ;
wire _8440_ ;
wire _8020_ ;
wire \datapath.alu.b_4_bF$buf0  ;
wire _4780_ ;
wire _4360_ ;
wire _5985_ ;
wire _5565_ ;
wire _5145_ ;
wire [31:0] \datapath.registers.828[23]  ;
wire _1485_ ;
wire _1065_ ;
wire _7711_ ;
wire _396_ ;
wire _3631_ ;
wire _3211_ ;
wire _4836_ ;
wire _4416_ ;
wire \datapath.alu.b_2_bF$buf7  ;
wire _2902_ ;
wire _5794_ ;
wire _5374_ ;
wire _6999_ ;
wire _6579_ ;
wire _6159_ ;
wire _1294_ ;
wire _7940_ ;
wire _7520_ ;
wire _7100_ ;
wire _2499_ ;
wire _2079_ ;
wire _8305_ ;
wire _3860_ ;
wire _3440_ ;
wire _3020_ ;
wire _4645_ ;
wire _4225_ ;
wire CLK_bF$buf40 ;
wire CLK_bF$buf41 ;
wire CLK_bF$buf42 ;
wire CLK_bF$buf43 ;
wire CLK_bF$buf44 ;
wire CLK_bF$buf45 ;
wire CLK_bF$buf46 ;
wire CLK_bF$buf47 ;
wire CLK_bF$buf48 ;
wire CLK_bF$buf49 ;
wire _2711_ ;
wire _5183_ ;
wire _3916_ ;
wire _6388_ ;
wire _8534_ ;
wire _8114_ ;
wire _4874_ ;
wire _4454_ ;
wire _4034_ ;
wire _5659_ ;
wire _5239_ ;
wire _6600_ ;
wire _1999_ ;
wire _1579_ ;
wire _1159_ ;
wire _7805_ ;
wire _2940_ ;
wire _2520_ ;
wire _2100_ ;
wire _3725_ ;
wire _3305_ ;
wire _6197_ ;
wire _8343_ ;
wire _4683_ ;
wire _4263_ ;
wire _702_ ;
wire _5888_ ;
wire _5468_ ;
wire _5048_ ;
wire _1388_ ;
wire _7614_ ;
wire _299_ ;
wire \datapath.idinstr_20_hier0_bF$buf6  ;
wire _3954_ ;
wire _3534_ ;
wire _3114_ ;
wire _4739_ ;
wire _4319_ ;
wire _1890__bF$buf0 ;
wire _1890__bF$buf1 ;
wire _1890__bF$buf2 ;
wire _1890__bF$buf3 ;
wire _8572_ ;
wire _8152_ ;
wire _18_ ;
wire _1600_ ;
wire _4492_ ;
wire _4072_ ;
wire \datapath.idinstr_20_bF$buf11  ;
wire _931_ ;
wire _511_ ;
wire _2805_ ;
wire _5697_ ;
wire _5277_ ;
wire _1197_ ;
wire _7843_ ;
wire _7423_ ;
wire _7003_ ;
wire _8628_ ;
wire _8208_ ;
wire _3763_ ;
wire _3343_ ;
wire _4968_ ;
wire _4548_ ;
wire \datapath.idinstr_21_bF$buf20  ;
wire _4128_ ;
wire _8381_ ;
wire _740_ ;
wire _320_ ;
wire _2614_ ;
wire _5086_ ;
wire \datapath.idinstr_15_bF$buf25  ;
wire _3819_ ;
wire _7652_ ;
wire _7232_ ;
wire _8437_ ;
wire _8017_ ;
wire _3992_ ;
wire _3572_ ;
wire _3152_ ;
wire _4777_ ;
wire _4357_ ;
wire _8190_ ;
wire \datapath.idinstr_16_bF$buf34  ;
wire _56_ ;
wire _6923_ ;
wire _6503_ ;
wire _416__bF$buf0 ;
wire _416__bF$buf1 ;
wire _416__bF$buf2 ;
wire _416__bF$buf3 ;
wire _416__bF$buf4 ;
wire _7708_ ;
wire _2843_ ;
wire _2423_ ;
wire _2003_ ;
wire _3628_ ;
wire _3208_ ;
wire _7881_ ;
wire _7461_ ;
wire _7041_ ;
wire _8246_ ;
wire _3381_ ;
wire _4586_ ;
wire _4166_ ;
wire _605_ ;
wire _6732_ ;
wire _6312_ ;
wire _7937_ ;
wire _7517_ ;
wire _2652_ ;
wire _2232_ ;
wire _3857_ ;
wire _3437_ ;
wire _3017_ ;
wire _7690_ ;
wire _7270_ ;
wire _8475_ ;
wire _8055_ ;
wire _3190_ ;
wire _1923_ ;
wire _1503_ ;
wire _4395_ ;
wire _834_ ;
wire _414_ ;
wire _2708_ ;
wire _94_ ;
wire _6961_ ;
wire _6541_ ;
wire _6121_ ;
wire _7746_ ;
wire _7326_ ;
wire _2881_ ;
wire _2461_ ;
wire _2041_ ;
wire _3666_ ;
wire _3246_ ;
wire _5812_ ;
wire _8284_ ;
wire _1732_ ;
wire _1312_ ;
wire _643_ ;
wire _223_ ;
wire _2937_ ;
wire _2517_ ;
wire _6770_ ;
wire _6350_ ;
wire _7975_ ;
wire _7555_ ;
wire _7135_ ;
wire _2690_ ;
wire _2270_ ;
wire _3895_ ;
wire _3475_ ;
wire _3055_ ;
wire _5621_ ;
wire [31:0] \datapath.memdataload  ;
wire _5201_ ;
wire _8093_ ;
wire _6826_ ;
wire _6406_ ;
wire _1961_ ;
wire _1541_ ;
wire _1121_ ;
wire _872_ ;
wire _452_ ;
wire _2746_ ;
wire _2326_ ;
wire _7784_ ;
wire _7364_ ;
wire _8569_ ;
wire _8149_ ;
wire _3284_ ;
wire _4489_ ;
wire _4069_ ;
wire _5850_ ;
wire _5430_ ;
wire _5010_ ;
wire _928_ ;
wire _508_ ;
wire _5132__bF$buf0 ;
wire _5132__bF$buf1 ;
wire _5132__bF$buf2 ;
wire _5132__bF$buf3 ;
wire _5132__bF$buf4 ;
wire _5132__bF$buf5 ;
wire _5132__bF$buf6 ;
wire _5132__bF$buf7 ;
wire _6635_ ;
wire _6215_ ;
wire _1770_ ;
wire _1350_ ;
wire _681_ ;
wire _261_ ;
wire _2975_ ;
wire _2555_ ;
wire _2135_ ;
wire _4701_ ;
wire _7593_ ;
wire _7173_ ;
wire \datapath.idinstr_21_bF$buf17  ;
wire _5906_ ;
wire _8378_ ;
wire _3093_ ;
wire _1826_ ;
wire _1406_ ;
wire _4298_ ;
wire _737_ ;
wire _317_ ;
wire \datapath.idinstr_17_bF$buf2  ;
wire _6864_ ;
wire _6444_ ;
wire _6024_ ;
wire _490_ ;
wire \datapath.idinstr_22_bF$buf26  ;
wire _7649_ ;
wire _7229_ ;
wire _2784_ ;
wire _2364_ ;
wire _3989_ ;
wire _3569_ ;
wire _3149_ ;
wire _4930_ ;
wire _4510_ ;
wire _5715_ ;
wire _8187_ ;
wire _1635_ ;
wire _1215_ ;
wire \datapath.idinstr_21_bF$buf2  ;
wire \datapath.idinstr_20_bF$buf46  ;
wire _966_ ;
wire _546_ ;
wire _126_ ;
wire \datapath.idinstr_15_bF$buf9  ;
wire _6673_ ;
wire _6253_ ;
wire _7878_ ;
wire _7458_ ;
wire _7038_ ;
wire _2593_ ;
wire _2173_ ;
wire _3798_ ;
wire _3378_ ;
wire _5944_ ;
wire _5524_ ;
wire _5104_ ;
wire _6729_ ;
wire _6309_ ;
wire _1864_ ;
wire _1444_ ;
wire _1024_ ;
wire _775_ ;
wire _355_ ;
wire [31:0] \datapath.registers.regb_data  ;
wire _2649_ ;
wire _2229_ ;
wire _6482_ ;
wire _6062_ ;
wire _7687_ ;
wire _7267_ ;
wire _3187_ ;
wire _5753_ ;
wire _5333_ ;
wire _6958_ ;
wire _6538_ ;
wire _6118_ ;
wire _1673_ ;
wire _1253_ ;
wire _584_ ;
wire _164_ ;
wire _2878_ ;
wire _2458_ ;
wire _2038_ ;
wire _6291_ ;
wire _4604_ ;
wire _7496_ ;
wire _7076_ ;
wire _5809_ ;
wire _1729_ ;
wire _1309_ ;
wire _5982_ ;
wire _5562_ ;
wire _5142_ ;
wire _4677__bF$buf0 ;
wire _4677__bF$buf1 ;
wire _4677__bF$buf2 ;
wire _4677__bF$buf3 ;
wire _4677__bF$buf4 ;
wire _6767_ ;
wire _6347_ ;
wire _1482_ ;
wire _1062_ ;
wire _393_ ;
wire \datapath.idinstr_24_bF$buf5  ;
wire _2687_ ;
wire _2267_ ;
wire _4833_ ;
wire _4413_ ;
wire _5618_ ;
wire \datapath.alu.b_2_bF$buf4  ;
wire _1958_ ;
wire _1538_ ;
wire _1118_ ;
wire _5791_ ;
wire _5371_ ;
wire _4681__bF$buf0 ;
wire _869_ ;
wire _4681__bF$buf1 ;
wire _449_ ;
wire _4681__bF$buf2 ;
wire _4681__bF$buf3 ;
wire _4681__bF$buf4 ;
wire _6996_ ;
wire _6576_ ;
wire _6156_ ;
wire _1291_ ;
wire _2496_ ;
wire _2076_ ;
wire _8302_ ;
wire _4642_ ;
wire _4222_ ;
wire CLK_bF$buf10 ;
wire CLK_bF$buf11 ;
wire CLK_bF$buf12 ;
wire CLK_bF$buf13 ;
wire CLK_bF$buf14 ;
wire CLK_bF$buf15 ;
wire CLK_bF$buf16 ;
wire CLK_bF$buf17 ;
wire CLK_bF$buf18 ;
wire CLK_bF$buf19 ;
wire _5847_ ;
wire _5427_ ;
wire _5007_ ;
wire _1767_ ;
wire _1347_ ;
wire [31:0] \datapath.registers.828[6]  ;
wire _5180_ ;
wire _678_ ;
wire _258_ ;
wire _3913_ ;
wire _6385_ ;
wire _5546__bF$buf0 ;
wire _5546__bF$buf1 ;
wire _5546__bF$buf2 ;
wire _5546__bF$buf3 ;
wire _5546__bF$buf4 ;
wire _8531_ ;
wire _8111_ ;
wire _4871_ ;
wire _4451_ ;
wire _4031_ ;
wire _5656_ ;
wire _5236_ ;
wire _1996_ ;
wire _1576_ ;
wire _1156_ ;
wire _7802_ ;
wire _487_ ;
wire [31:0] DMEM_DATA_L ;
wire _3722_ ;
wire _3302_ ;
wire [31:0] DMEM_DATA_S ;
wire _6194_ ;
wire _4927_ ;
wire _4507_ ;
wire _7399_ ;
wire _8340_ ;
wire _4680_ ;
wire _4260_ ;
wire _5885_ ;
wire _5465_ ;
wire _5045_ ;
wire [31:0] \datapath.registers.828[13]  ;
wire _1385_ ;
wire _7611_ ;
wire _296_ ;
wire \datapath.idinstr_20_hier0_bF$buf3  ;
wire _3951_ ;
wire _3531_ ;
wire _3111_ ;
wire _4736_ ;
wire _4316_ ;
wire _15_ ;
wire _2802_ ;
wire _5694_ ;
wire _5274_ ;
wire _6899_ ;
wire _6479_ ;
wire _6059_ ;
wire _1194_ ;
wire _7840_ ;
wire _7420_ ;
wire _7000_ ;
wire _2399_ ;
wire _8625_ ;
wire _8205_ ;
wire _3760_ ;
wire _3340_ ;
wire _4965_ ;
wire _4545_ ;
wire _4125_ ;
wire _2611_ ;
wire _5083_ ;
wire \datapath.idinstr_15_bF$buf22  ;
wire _3816_ ;
wire _6288_ ;
wire _8434_ ;
wire _8014_ ;
wire _4774_ ;
wire _4354_ ;
wire _5979_ ;
wire _5559_ ;
wire _5139_ ;
wire \datapath.idinstr_16_bF$buf31  ;
wire _53_ ;
wire _6920_ ;
wire _6500_ ;
wire _1899_ ;
wire _1479_ ;
wire _1059_ ;
wire _7705_ ;
wire _2840_ ;
wire _2420_ ;
wire _2000_ ;
wire _3625_ ;
wire _3205_ ;
wire _6097_ ;
wire _8663_ ;
wire _8243_ ;
wire _4583_ ;
wire _4163_ ;
wire _602_ ;
wire _5788_ ;
wire _5368_ ;
wire _1288_ ;
wire _7934_ ;
wire _7514_ ;
wire _199_ ;
wire _3854_ ;
wire _3434_ ;
wire _3014_ ;
wire _4639_ ;
wire _4219_ ;
wire _8472_ ;
wire _8052_ ;
wire _1920_ ;
wire _1500_ ;
wire _4392_ ;
wire _831_ ;
wire _411_ ;
wire _2705_ ;
wire _5597_ ;
wire _5177_ ;
wire _91_ ;
wire _1097_ ;
wire _7743_ ;
wire _7323_ ;
wire _8528_ ;
wire _8108_ ;
wire _3663_ ;
wire _3243_ ;
wire _4868_ ;
wire _4448_ ;
wire _4028_ ;
wire _8281_ ;
wire _640_ ;
wire _220_ ;
wire _2934_ ;
wire _2514_ ;
wire _3719_ ;
wire _7972_ ;
wire _7552_ ;
wire _7132_ ;
wire _8337_ ;
wire _3892_ ;
wire _3472_ ;
wire _3052_ ;
wire _4677_ ;
wire _4257_ ;
wire _8090_ ;
wire _6823_ ;
wire _6403_ ;
wire CLK_hier0_bF$buf10 ;
wire CLK_hier0_bF$buf11 ;
wire _7608_ ;
wire _2743_ ;
wire _2323_ ;
wire _3948_ ;
wire _3528_ ;
wire _3108_ ;
wire _9_ ;
wire _7781_ ;
wire _7361_ ;
wire _8566_ ;
wire _8146_ ;
wire _3281_ ;
wire _4486_ ;
wire _4066_ ;
wire _925_ ;
wire _505_ ;
wire _6632_ ;
wire _6212_ ;
wire _7837_ ;
wire _7417_ ;
wire _2972_ ;
wire _2552_ ;
wire _2132_ ;
wire _3757_ ;
wire _3337_ ;
wire _7590_ ;
wire _7170_ ;
wire \datapath.idinstr_21_bF$buf14  ;
wire _5903_ ;
wire _8375_ ;
wire _3090_ ;
wire _1823_ ;
wire _1403_ ;
wire _4295_ ;
wire _734_ ;
wire _314_ ;
wire _2608_ ;
wire _6861_ ;
wire _6441_ ;
wire _6021_ ;
wire \datapath.idinstr_15_bF$buf19  ;
wire \datapath.idinstr_22_bF$buf23  ;
wire _7646_ ;
wire _7226_ ;
wire _2781_ ;
wire _2361_ ;
wire _3986_ ;
wire _3566_ ;
wire _3146_ ;
wire _5712_ ;
wire _8184_ ;
wire \datapath.idinstr_16_bF$buf28  ;
wire _6917_ ;
wire _1632_ ;
wire _1212_ ;
wire \datapath.idinstr_20_bF$buf43  ;
wire _963_ ;
wire _543_ ;
wire _123_ ;
wire _2837_ ;
wire \datapath.idinstr_15_bF$buf6  ;
wire _2417_ ;
wire _6670_ ;
wire _6250_ ;
wire _7875_ ;
wire _7455_ ;
wire _7035_ ;
wire _2590_ ;
wire _2170_ ;
wire _3795_ ;
wire _3375_ ;
wire _5941_ ;
wire _5521_ ;
wire _5101_ ;
wire _6726_ ;
wire _6306_ ;
wire _1861_ ;
wire _1441_ ;
wire _1021_ ;
wire _772_ ;
wire _352_ ;
wire _2646_ ;
wire _2226_ ;
wire _7684_ ;
wire _7264_ ;
wire _8469_ ;
wire _8049_ ;
wire _3184_ ;
wire _1917_ ;
wire _4389_ ;
wire _5750_ ;
wire _5330_ ;
wire _828_ ;
wire _408_ ;
wire _88_ ;
wire _6955_ ;
wire _6535_ ;
wire _6115_ ;
wire _1670_ ;
wire _1250_ ;
wire _581_ ;
wire _161_ ;
wire _2875_ ;
wire _2455_ ;
wire _2035_ ;
wire _4601_ ;
wire _7493_ ;
wire _7073_ ;
wire _5806_ ;
wire _8278_ ;
wire _1726_ ;
wire _1306_ ;
wire _4198_ ;
wire _637_ ;
wire _217_ ;
wire _6764_ ;
wire _6344_ ;
wire _390_ ;
wire _7969_ ;
wire _7549_ ;
wire _7129_ ;
wire \datapath.idinstr_24_bF$buf2  ;
wire _2684_ ;
wire _2264_ ;
wire _3889_ ;
wire _3469_ ;
wire _3049_ ;
wire _4830_ ;
wire _4410_ ;
wire _5615_ ;
wire _8087_ ;
wire \datapath.alu.b_2_bF$buf1  ;
wire _1955_ ;
wire _1535_ ;
wire _1115_ ;
wire _866_ ;
wire _446_ ;
wire \datapath.tkbranch  ;
wire _6993_ ;
wire _6573_ ;
wire _6153_ ;
wire \controlunit.csrfile_trap_wen_bF$buf7  ;
wire _7778_ ;
wire _7358_ ;
wire _2493_ ;
wire _2073_ ;
wire \datapath.idinstr_22_bF$buf9  ;
wire _3698_ ;
wire _3278_ ;
wire _5844_ ;
wire _5424_ ;
wire _5004_ ;
wire _6629_ ;
wire _6209_ ;
wire _1764_ ;
wire _1344_ ;
wire _675_ ;
wire _255_ ;
wire _2969_ ;
wire _2549_ ;
wire _2129_ ;
wire _3910_ ;
wire _6382_ ;
wire _7587_ ;
wire _7167_ ;
wire _3087_ ;
wire _5653_ ;
wire _5233_ ;
wire _6858_ ;
wire _6438_ ;
wire _6018_ ;
wire _1993_ ;
wire _1573_ ;
wire _1153_ ;
wire _484_ ;
wire _2778_ ;
wire _2358_ ;
wire _6191_ ;
wire _4924_ ;
wire _4504_ ;
wire _7396_ ;
wire _5709_ ;
wire _1629_ ;
wire _1209_ ;
wire _5882_ ;
wire _5462_ ;
wire _5042_ ;
wire _6667_ ;
wire _6247_ ;
wire _1382_ ;
wire _293_ ;
wire _2587_ ;
wire _2167_ ;
wire \datapath.idinstr_20_hier0_bF$buf0  ;
wire _4733_ ;
wire _4313_ ;
wire _3429__bF$buf0 ;
wire _3429__bF$buf1 ;
wire _3429__bF$buf2 ;
wire _3429__bF$buf3 ;
wire _3429__bF$buf4 ;
wire _5938_ ;
wire _5518_ ;
wire _12_ ;
wire _1858_ ;
wire _1438_ ;
wire _1018_ ;
wire _5691_ ;
wire _5271_ ;
wire _769_ ;
wire _349_ ;
wire _6896_ ;
wire _6476_ ;
wire _6056_ ;
wire _1191_ ;
wire _2396_ ;
wire _8622_ ;
wire _8202_ ;
wire _4962_ ;
wire _4542_ ;
wire _4122_ ;
wire _5747_ ;
wire _5327_ ;
wire _1667_ ;
wire _1247_ ;
wire _5080_ ;
wire _998_ ;
wire _578_ ;
wire _158_ ;
wire _3813_ ;
wire _6285_ ;
wire _8431_ ;
wire _8011_ ;
wire _3291__bF$buf0 ;
wire _3291__bF$buf1 ;
wire _3291__bF$buf2 ;
wire _3291__bF$buf3 ;
wire _4771_ ;
wire _4351_ ;
wire \datapath.idinstr_21_hier0_bF$buf5  ;
wire _5976_ ;
wire _5556_ ;
wire _5136_ ;
wire _50_ ;
wire _5647__bF$buf0 ;
wire _5647__bF$buf1 ;
wire _5647__bF$buf2 ;
wire _5647__bF$buf3 ;
wire _5647__bF$buf4 ;
wire _5647__bF$buf5 ;
wire _5647__bF$buf6 ;
wire _5647__bF$buf7 ;
wire _1896_ ;
wire _1476_ ;
wire _1056_ ;
wire _7702_ ;
wire _387_ ;
wire _3622_ ;
wire _3202_ ;
wire _6094_ ;
wire _4827_ ;
wire _4407_ ;
wire _7299_ ;
wire _8660_ ;
wire _8240_ ;
wire _4580_ ;
wire _4160_ ;
wire _5785_ ;
wire _5365_ ;
wire _1285_ ;
wire _7931_ ;
wire _7511_ ;
wire _196_ ;
wire _3851_ ;
wire _3431_ ;
wire _3011_ ;
wire _4636_ ;
wire _4216_ ;
wire _5336__bF$buf0 ;
wire _5336__bF$buf1 ;
wire _5336__bF$buf2 ;
wire _5336__bF$buf3 ;
wire _5336__bF$buf4 ;
wire _2702_ ;
wire _5594_ ;
wire _5174_ ;
wire _3907_ ;
wire _6799_ ;
wire _6379_ ;
wire _1094_ ;
wire _7740_ ;
wire _7320_ ;
wire _2299_ ;
wire _8525_ ;
wire _8105_ ;
wire _3660_ ;
wire _3240_ ;
wire _4865_ ;
wire _4445_ ;
wire _4025_ ;
wire _2931_ ;
wire _2511_ ;
wire _3716_ ;
wire _6188_ ;
wire _8334_ ;
wire _4674_ ;
wire _4254_ ;
wire _5879_ ;
wire _5459_ ;
wire _5039_ ;
wire _6820_ ;
wire _6400_ ;
wire _1799_ ;
wire _1379_ ;
wire _7605_ ;
wire _2740_ ;
wire _2320_ ;
wire _3945_ ;
wire _3525_ ;
wire _3105_ ;
wire _6_ ;
wire _8563_ ;
wire _8143_ ;
wire _4483_ ;
wire _4063_ ;
wire _922_ ;
wire _502_ ;
wire _5688_ ;
wire _5268_ ;
wire _1188_ ;
wire _7834_ ;
wire _7414_ ;
wire _8619_ ;
wire _3754_ ;
wire _3334_ ;
wire _4959_ ;
wire _4539_ ;
wire \datapath.idinstr_21_bF$buf11  ;
wire _4119_ ;
wire _5900_ ;
wire _8372_ ;
wire _1820_ ;
wire _1400_ ;
wire _4292_ ;
wire _731_ ;
wire _311_ ;
wire _2605_ ;
wire _5497_ ;
wire _5077_ ;
wire \datapath.idinstr_15_bF$buf16  ;
wire \datapath.idinstr_15_hier0_bF$buf4  ;
wire \datapath.idinstr_22_bF$buf20  ;
wire _7643_ ;
wire _7223_ ;
wire _8428_ ;
wire _8008_ ;
wire _3983_ ;
wire _3563_ ;
wire _3143_ ;
wire _2103__bF$buf0 ;
wire _2103__bF$buf1 ;
wire _2103__bF$buf2 ;
wire _2103__bF$buf3 ;
wire _4768_ ;
wire _4348_ ;
wire _8181_ ;
wire \datapath.idinstr_16_bF$buf25  ;
wire _47_ ;
wire _6914_ ;
wire \datapath.idinstr_20_bF$buf40  ;
wire _960_ ;
wire _540_ ;
wire _120_ ;
wire _2834_ ;
wire \datapath.idinstr_15_bF$buf3  ;
wire _2414_ ;
wire _3619_ ;
wire _7872_ ;
wire _7452_ ;
wire _7032_ ;
wire _8657_ ;
wire _8237_ ;
wire _3792_ ;
wire _3372_ ;
wire _4997_ ;
wire _4577_ ;
wire _4157_ ;
wire _6723_ ;
wire _6303_ ;
wire _7928_ ;
wire _7508_ ;
wire _2643_ ;
wire _2223_ ;
wire \datapath.idinstr_15_bF$buf54  ;
wire _3848_ ;
wire _3428_ ;
wire _3008_ ;
wire _7681_ ;
wire _7261_ ;
wire _8466_ ;
wire _8046_ ;
wire _3181_ ;
wire _1914_ ;
wire _4386_ ;
wire _825_ ;
wire _405_ ;
wire _85_ ;
wire _6952_ ;
wire _6532_ ;
wire _6112_ ;
wire _7737_ ;
wire _7317_ ;
wire _2872_ ;
wire _2452_ ;
wire _2032_ ;
wire _3657_ ;
wire _3237_ ;
wire _7490_ ;
wire _7070_ ;
wire _5803_ ;
wire _8275_ ;
wire _4668__bF$buf0 ;
wire _4668__bF$buf1 ;
wire _4668__bF$buf2 ;
wire _4668__bF$buf3 ;
wire _4668__bF$buf4 ;
wire _4668__bF$buf5 ;
wire _4668__bF$buf6 ;
wire _4668__bF$buf7 ;
wire _1723_ ;
wire _1303_ ;
wire _4195_ ;
wire _634_ ;
wire _214_ ;
wire _2928_ ;
wire _2508_ ;
wire _6761_ ;
wire _6341_ ;
wire _7966_ ;
wire _7546_ ;
wire _7126_ ;
wire _2681_ ;
wire _2261_ ;
wire \datapath.idinstr_18_bF$buf6  ;
wire _3886_ ;
wire _3466_ ;
wire _3046_ ;
wire _213__bF$buf0 ;
wire _213__bF$buf1 ;
wire _213__bF$buf2 ;
wire _213__bF$buf3 ;
wire _213__bF$buf4 ;
wire _5612_ ;
wire _8084_ ;
wire _6817_ ;
wire _1952_ ;
wire _1532_ ;
wire _1112_ ;
wire _863_ ;
wire _443_ ;
wire _2737_ ;
wire _2317_ ;
wire _6990_ ;
wire _6570_ ;
wire _6150_ ;
wire \controlunit.csrfile_trap_wen_bF$buf4  ;
wire _7775_ ;
wire _7355_ ;
wire _2490_ ;
wire _2070_ ;
wire \datapath.idinstr_22_bF$buf6  ;
wire _3695_ ;
wire _3275_ ;
wire _5841_ ;
wire _5421_ ;
wire _5001_ ;
wire _919_ ;
wire _6626_ ;
wire _6206_ ;
wire _1761_ ;
wire _1341_ ;
wire _672_ ;
wire _252_ ;
wire _2966_ ;
wire _2546_ ;
wire _2126_ ;
wire _7584_ ;
wire _7164_ ;
wire _8369_ ;
wire _3084_ ;
wire _1817_ ;
wire _4289_ ;
wire _5650_ ;
wire _5230_ ;
wire _728_ ;
wire _308_ ;
wire [1:0] \controlunit.pc_sel  ;
wire _6855_ ;
wire _6435_ ;
wire _6015_ ;
wire _1990_ ;
wire _1570_ ;
wire _1150_ ;
wire _481_ ;
wire \datapath.idinstr_22_bF$buf17  ;
wire _2775_ ;
wire _2355_ ;
wire _4921_ ;
wire _4501_ ;
wire _7393_ ;
wire _5706_ ;
wire _8598_ ;
wire _8178_ ;
wire _1626_ ;
wire _1206_ ;
wire _4098_ ;
wire \datapath.idinstr_20_bF$buf37  ;
wire _957_ ;
wire _537_ ;
wire _117_ ;
wire _6664_ ;
wire _6244_ ;
wire _290_ ;
wire _7869_ ;
wire _7449_ ;
wire _7029_ ;
wire _2584_ ;
wire _2164_ ;
wire _3789_ ;
wire _3369_ ;
wire _4730_ ;
wire _4310_ ;
wire _5935_ ;
wire _5515_ ;
wire \datapath.alu.b_0_bF$buf7  ;
wire _1855_ ;
wire _1435_ ;
wire _1015_ ;
wire _766_ ;
wire _346_ ;
wire _6893_ ;
wire _6473_ ;
wire _6053_ ;
wire _7678_ ;
wire _7258_ ;
wire _2393_ ;
wire _3598_ ;
wire _3178_ ;
wire _5744_ ;
wire _5324_ ;
wire [29:0] \datapath.csr._26_  ;
wire _6949_ ;
wire _6529_ ;
wire _6109_ ;
wire _1664_ ;
wire _1244_ ;
wire _995_ ;
wire _575_ ;
wire _155_ ;
wire _2869_ ;
wire _2449_ ;
wire _2029_ ;
wire _3810_ ;
wire _6282_ ;
wire _7487_ ;
wire _7067_ ;
wire \datapath.idinstr_21_hier0_bF$buf2  ;
wire _5973_ ;
wire _5553_ ;
wire _5133_ ;
wire _6758_ ;
wire _6338_ ;
wire _1893_ ;
wire _1473_ ;
wire _1053_ ;
wire _384_ ;
wire _2678_ ;
wire _2258_ ;
wire _6091_ ;
wire _4824_ ;
wire _4404_ ;
wire _7296_ ;
wire _5609_ ;
wire _4687__bF$buf0 ;
wire _4687__bF$buf1 ;
wire _4687__bF$buf2 ;
wire _4687__bF$buf3 ;
wire _4687__bF$buf4 ;
wire _1949_ ;
wire _1529_ ;
wire _1109_ ;
wire _5782_ ;
wire _5362_ ;
wire [1:0] \controlunit.wb_sel  ;
wire _6987_ ;
wire _6567_ ;
wire _6147_ ;
wire _1282_ ;
wire _193_ ;
wire _2487_ ;
wire _2067_ ;
wire _4633_ ;
wire _4213_ ;
wire _4691__bF$buf0 ;
wire _4691__bF$buf1 ;
wire _4691__bF$buf2 ;
wire _4691__bF$buf3 ;
wire _4691__bF$buf4 ;
wire _5838_ ;
wire _5418_ ;
wire _1758_ ;
wire _1338_ ;
wire _5591_ ;
wire _5171_ ;
wire _669_ ;
wire _249_ ;
wire _3904_ ;
wire _6796_ ;
wire _6376_ ;
wire _1091_ ;
wire _2296_ ;
wire _8522_ ;
wire _8102_ ;
wire [31:0] \datapath.alupc  ;
wire _4862_ ;
wire _4442_ ;
wire _4022_ ;
wire _5647_ ;
wire _5227_ ;
wire _1987_ ;
wire _1567_ ;
wire _1147_ ;
wire _898_ ;
wire _478_ ;
wire _3713_ ;
wire _6185_ ;
wire _4918_ ;
wire _8331_ ;
wire _4671_ ;
wire _4251_ ;
wire _5876_ ;
wire _5456_ ;
wire _5036_ ;
wire _1796_ ;
wire _1376_ ;
wire _7602_ ;
wire _287_ ;
wire _3942_ ;
wire _3522_ ;
wire _3102_ ;
wire _3_ ;
wire _4727_ ;
wire _4307_ ;
wire _7199_ ;
wire _8560_ ;
wire _8140_ ;
wire _4480_ ;
wire _4060_ ;
wire _5685_ ;
wire _5265_ ;
wire _1185_ ;
wire _7831_ ;
wire _7411_ ;
wire _8616_ ;
wire _3751_ ;
wire _3331_ ;
wire _4956_ ;
wire _4536_ ;
wire _4116_ ;
wire _2602_ ;
wire _5494_ ;
wire _5074_ ;
wire CLK_bF$buf130 ;
wire CLK_bF$buf131 ;
wire CLK_bF$buf132 ;
wire CLK_bF$buf133 ;
wire CLK_bF$buf134 ;
wire CLK_bF$buf135 ;
wire \datapath.idinstr_15_bF$buf13  ;
wire CLK_bF$buf136 ;
wire CLK_bF$buf137 ;
wire CLK_bF$buf138 ;
wire _3807_ ;
wire CLK_bF$buf139 ;
wire \datapath.idinstr_15_hier0_bF$buf1  ;
wire _6699_ ;
wire _6279_ ;
wire _7640_ ;
wire _7220_ ;
wire _2199_ ;
wire _8425_ ;
wire _8005_ ;
wire _3980_ ;
wire _3560_ ;
wire _3140_ ;
wire _4765_ ;
wire _4345_ ;
wire \datapath.idinstr_16_bF$buf22  ;
wire _44_ ;
wire _6911_ ;
wire _2831_ ;
wire \datapath.idinstr_15_bF$buf0  ;
wire _2411_ ;
wire _3616_ ;
wire _6088_ ;
wire _8654_ ;
wire _8234_ ;
wire _4994_ ;
wire _4574_ ;
wire _4154_ ;
wire _5779_ ;
wire _5359_ ;
wire _6720_ ;
wire _6300_ ;
wire _1699_ ;
wire _1279_ ;
wire _7925_ ;
wire _7505_ ;
wire _2640_ ;
wire _2220_ ;
wire \datapath.idinstr_15_bF$buf51  ;
wire _3845_ ;
wire _3425_ ;
wire _3005_ ;
wire _8463_ ;
wire _8043_ ;
wire _1911_ ;
wire _4383_ ;
wire _822_ ;
wire _402_ ;
wire _5588_ ;
wire _5168_ ;
wire _82_ ;
wire _1088_ ;
wire _7734_ ;
wire _7314_ ;
wire _8519_ ;
wire _3654_ ;
wire _3234_ ;
wire _4859_ ;
wire _4439_ ;
wire _4019_ ;
wire _5800_ ;
wire _8272_ ;
wire _1720_ ;
wire _1300_ ;
wire _4192_ ;
wire _631_ ;
wire _211_ ;
wire _2925_ ;
wire _2505_ ;
wire _5397_ ;
wire _7963_ ;
wire _7543_ ;
wire _7123_ ;
wire \datapath.idinstr_18_bF$buf3  ;
wire _8328_ ;
wire _3883_ ;
wire _3463_ ;
wire _3043_ ;
wire _0__1_bF$buf0 ;
wire _0__1_bF$buf1 ;
wire _0__1_bF$buf2 ;
wire _0__1_bF$buf3 ;
wire _0__1_bF$buf4 ;
wire _0__1_bF$buf5 ;
wire _0__1_bF$buf6 ;
wire _0__1_bF$buf7 ;
wire _4668_ ;
wire _0__1_bF$buf8 ;
wire _4248_ ;
wire _0__1_bF$buf9 ;
wire _8081_ ;
wire _6814_ ;
wire _860_ ;
wire _440_ ;
wire _2734_ ;
wire _2314_ ;
wire _3939_ ;
wire _3519_ ;
wire \controlunit.csrfile_trap_wen_bF$buf1  ;
wire _7772_ ;
wire _7352_ ;
wire \datapath.idinstr_22_bF$buf3  ;
wire _8557_ ;
wire _8137_ ;
wire _3692_ ;
wire _3272_ ;
wire _4897_ ;
wire _4477_ ;
wire _4057_ ;
wire _916_ ;
wire _6623_ ;
wire _6203_ ;
wire _7828_ ;
wire _7408_ ;
wire _2963_ ;
wire _2543_ ;
wire _2123_ ;
wire _3748_ ;
wire _3328_ ;
wire _7581_ ;
wire _7161_ ;
wire _8366_ ;
wire _3081_ ;
wire _1814_ ;
wire _4286_ ;
wire _725_ ;
wire _305_ ;
wire _6852_ ;
wire _6432_ ;
wire _6012_ ;
wire \datapath.idinstr_22_bF$buf14  ;
wire _7637_ ;
wire _7217_ ;
wire _2772_ ;
wire _2352_ ;
wire _3977_ ;
wire _3557_ ;
wire _3137_ ;
wire _7390_ ;
wire _5703_ ;
wire _8595_ ;
wire _8175_ ;
wire \datapath.idinstr_16_bF$buf19  ;
wire _6908_ ;
wire _1623_ ;
wire _1203_ ;
wire _4095_ ;
wire _216__bF$buf0 ;
wire _216__bF$buf1 ;
wire _216__bF$buf2 ;
wire _216__bF$buf3 ;
wire _216__bF$buf4 ;
wire \datapath.idinstr_20_bF$buf34  ;
wire _954_ ;
wire _534_ ;
wire _114_ ;
wire _2828_ ;
wire _2408_ ;
wire _6661_ ;
wire _6241_ ;
wire _7866_ ;
wire _7446_ ;
wire _7026_ ;
wire _2581_ ;
wire _2161_ ;
wire _3786_ ;
wire _3366_ ;
wire \datapath.idinstr_21_bF$buf43  ;
wire _5932_ ;
wire _5512_ ;
wire _6717_ ;
wire \datapath.alu.b_0_bF$buf4  ;
wire _1852_ ;
wire _1432_ ;
wire _1012_ ;
wire _763_ ;
wire _343_ ;
wire _2637_ ;
wire _2217_ ;
wire _6890_ ;
wire _6470_ ;
wire _6050_ ;
wire \datapath.idinstr_15_bF$buf48  ;
wire _7675_ ;
wire _7255_ ;
wire _2390_ ;
wire _3595_ ;
wire _3175_ ;
wire _1908_ ;
wire _5741_ ;
wire _5321_ ;
wire _819_ ;
wire _79_ ;
wire _6946_ ;
wire _6526_ ;
wire _6106_ ;
wire _1661_ ;
wire _1241_ ;
wire _992_ ;
wire _572_ ;
wire _152_ ;
wire _2866_ ;
wire _2446_ ;
wire _2026_ ;
wire _7484_ ;
wire _7064_ ;
wire _8269_ ;
wire _1717_ ;
wire [31:0] \datapath.registers.828[1]  ;
wire _4189_ ;
wire _5970_ ;
wire _5550_ ;
wire _5130_ ;
wire _628_ ;
wire _208_ ;
wire _6755_ ;
wire _6335_ ;
wire _1890_ ;
wire _1470_ ;
wire _1050_ ;
wire _381_ ;
wire _2675_ ;
wire _2255_ ;
wire _4821_ ;
wire _4401_ ;
wire _7293_ ;
wire _5606_ ;
wire _8498_ ;
wire _8078_ ;
wire _1946_ ;
wire _1526_ ;
wire _1106_ ;
wire _857_ ;
wire _437_ ;
wire _6984_ ;
wire _6564_ ;
wire _6144_ ;
wire \datapath.alu.b_3_bF$buf7  ;
wire _190_ ;
wire _7769_ ;
wire _7349_ ;
wire _2484_ ;
wire _2064_ ;
wire _3689_ ;
wire _3269_ ;
wire _4630_ ;
wire _4210_ ;
wire _5835_ ;
wire _5415_ ;
wire _1755_ ;
wire _1335_ ;
wire _666_ ;
wire _246_ ;
wire _3901_ ;
wire _6793_ ;
wire _6373_ ;
wire _7998_ ;
wire _7578_ ;
wire _7158_ ;
wire _2293_ ;
wire _3498_ ;
wire _3078_ ;
wire _5644_ ;
wire _5224_ ;
wire _6849_ ;
wire _6429_ ;
wire _6009_ ;
wire _1984_ ;
wire _1564_ ;
wire _1144_ ;
wire _895_ ;
wire _475_ ;
wire _2769_ ;
wire _2349_ ;
wire _3710_ ;
wire _6182_ ;
wire _4915_ ;
wire _7387_ ;
wire [31:0] \datapath.jumptarget  ;
wire _5873_ ;
wire _5453_ ;
wire _5033_ ;
wire _6658_ ;
wire _6238_ ;
wire _1793_ ;
wire _1373_ ;
wire _284_ ;
wire _2998_ ;
wire _2578_ ;
wire _2158_ ;
wire [31:0] _0_ ;
wire _4724_ ;
wire _4304_ ;
wire _7196_ ;
wire _5929_ ;
wire _5509_ ;
wire _1849_ ;
wire _1429_ ;
wire _1009_ ;
wire _5682_ ;
wire _5262_ ;
wire _4840__bF$buf0 ;
wire _4840__bF$buf1 ;
wire _4840__bF$buf2 ;
wire _4840__bF$buf3 ;
wire _4840__bF$buf4 ;
wire _4840__bF$buf5 ;
wire _4840__bF$buf6 ;
wire _4840__bF$buf7 ;
wire _4840__bF$buf8 ;
wire _6887_ ;
wire _6467_ ;
wire _6047_ ;
wire _1182_ ;
wire _2387_ ;
wire _8613_ ;
wire _4953_ ;
wire _4533_ ;
wire _4113_ ;
wire _5212__bF$buf0 ;
wire _5212__bF$buf1 ;
wire _5212__bF$buf2 ;
wire _5212__bF$buf3 ;
wire _5212__bF$buf4 ;
wire _5212__bF$buf5 ;
wire _5212__bF$buf6 ;
wire _5212__bF$buf7 ;
wire _5738_ ;
wire _5318_ ;
wire _1658_ ;
wire _1238_ ;
wire _5491_ ;
wire _5071_ ;
wire _989_ ;
wire _569_ ;
wire _149_ ;
wire CLK_bF$buf100 ;
wire CLK_bF$buf101 ;
wire CLK_bF$buf102 ;
wire CLK_bF$buf103 ;
wire CLK_bF$buf104 ;
wire CLK_bF$buf105 ;
wire \datapath.idinstr_15_bF$buf10  ;
wire CLK_bF$buf106 ;
wire CLK_bF$buf107 ;
wire CLK_bF$buf108 ;
wire _3804_ ;
wire CLK_bF$buf109 ;
wire _6696_ ;
wire _6276_ ;
wire _2196_ ;
wire _8422_ ;
wire _8002_ ;
wire _4762_ ;
wire _4342_ ;
wire _5967_ ;
wire _5547_ ;
wire _5127_ ;
wire _41_ ;
wire _1887_ ;
wire _1467_ ;
wire _1047_ ;
wire _798_ ;
wire _378_ ;
wire _3613_ ;
wire _6085_ ;
wire _417__bF$buf0 ;
wire _417__bF$buf1 ;
wire _417__bF$buf2 ;
wire _417__bF$buf3 ;
wire _417__bF$buf4 ;
wire _4818_ ;
wire _8651_ ;
wire _8231_ ;
wire _4991_ ;
wire _4571_ ;
wire _4151_ ;
wire _5776_ ;
wire _5356_ ;
wire _1696_ ;
wire _1276_ ;
wire _7922_ ;
wire _7502_ ;
wire _187_ ;
wire _3842_ ;
wire _3422_ ;
wire _3002_ ;
wire _4627_ ;
wire _4207_ ;
wire [31:0] \datapath._05_  ;
wire _7099_ ;
wire _8460_ ;
wire _8040_ ;
wire \datapath.idinstr_16_hier0_bF$buf3  ;
wire [31:2] \datapath.csr.csr_pcaddr  ;
wire _4380_ ;
wire _5585_ ;
wire _5165_ ;
wire [31:0] \datapath.registers.828[25]  ;
wire _1085_ ;
wire _7731_ ;
wire _7311_ ;
wire _8516_ ;
wire _3651_ ;
wire _3231_ ;
wire _4856_ ;
wire _4436_ ;
wire _4016_ ;
wire _2922_ ;
wire _2502_ ;
wire _5394_ ;
wire _3707_ ;
wire _6599_ ;
wire _6179_ ;
wire _7960_ ;
wire _7540_ ;
wire _7120_ ;
wire \datapath.idinstr_18_bF$buf0  ;
wire _2099_ ;
wire _8325_ ;
wire _3880_ ;
wire _3460_ ;
wire _3040_ ;
wire _4665_ ;
wire _4245_ ;
wire _6811_ ;
wire _2731_ ;
wire _2311_ ;
wire _3936_ ;
wire _3516_ ;
wire \datapath.idinstr_22_bF$buf0  ;
wire \datapath.idinstr_16_bF$buf7  ;
wire _8554_ ;
wire _8134_ ;
wire _4894_ ;
wire _4474_ ;
wire _4054_ ;
wire _913_ ;
wire _5679_ ;
wire _5259_ ;
wire _6620_ ;
wire _6200_ ;
wire \controlunit.mret_bF$buf2  ;
wire _1599_ ;
wire _1179_ ;
wire _7825_ ;
wire _7405_ ;
wire _2960_ ;
wire _2540_ ;
wire _2120_ ;
wire _3745_ ;
wire _3325_ ;
wire _8598__bF$buf0 ;
wire _8598__bF$buf1 ;
wire _8598__bF$buf2 ;
wire _8598__bF$buf3 ;
wire _8598__bF$buf4 ;
wire _8598__bF$buf5 ;
wire _8598__bF$buf6 ;
wire _8598__bF$buf7 ;
wire \datapath.idinstr_20_bF$buf7  ;
wire _8363_ ;
wire _1811_ ;
wire _4283_ ;
wire _722_ ;
wire _302_ ;
wire _5488_ ;
wire _5068_ ;
wire \datapath.idinstr_22_bF$buf11  ;
wire _7634_ ;
wire _7214_ ;
wire _8419_ ;
wire _3974_ ;
wire _3554_ ;
wire _3134_ ;
wire [31:0] \datapath.regrs2alu  ;
wire _4759_ ;
wire _4339_ ;
wire _5700_ ;
wire _8592_ ;
wire _8172_ ;
wire \datapath.idinstr_16_bF$buf16  ;
wire _38_ ;
wire _6905_ ;
wire _1620_ ;
wire _1200_ ;
wire _4092_ ;
wire \datapath.idinstr_20_bF$buf31  ;
wire _951_ ;
wire _531_ ;
wire _111_ ;
wire _2825_ ;
wire _2405_ ;
wire _5297_ ;
wire _7863_ ;
wire _7443_ ;
wire _7023_ ;
wire _8648_ ;
wire _8228_ ;
wire _3783_ ;
wire _3363_ ;
wire _4988_ ;
wire _4568_ ;
wire \datapath.idinstr_21_bF$buf40  ;
wire _4148_ ;
wire [31:0] \datapath.idpc_4  ;
wire [31:0] \datapath.meminstr  ;
wire _6714_ ;
wire \datapath.alu.b_0_bF$buf1  ;
wire _760_ ;
wire _340_ ;
wire _7919_ ;
wire _2634_ ;
wire _2214_ ;
wire \datapath.idinstr_15_bF$buf45  ;
wire _3839_ ;
wire _3419_ ;
wire _8531__bF$buf0 ;
wire _8531__bF$buf1 ;
wire _8531__bF$buf2 ;
wire _8531__bF$buf3 ;
wire _7672_ ;
wire _8531__bF$buf4 ;
wire _7252_ ;
wire _8531__bF$buf5 ;
wire _8531__bF$buf6 ;
wire _8531__bF$buf7 ;
wire _8457_ ;
wire _8037_ ;
wire _3592_ ;
wire _3172_ ;
wire _1905_ ;
wire _4797_ ;
wire _4377_ ;
wire _816_ ;
wire _76_ ;
wire _6943_ ;
wire _6523_ ;
wire _6103_ ;
wire _7728_ ;
wire _7308_ ;
wire _2863_ ;
wire _2443_ ;
wire _2023_ ;
wire _3648_ ;
wire _3228_ ;
wire _7481_ ;
wire _7061_ ;
wire _8266_ ;
wire _1714_ ;
wire _4186_ ;
wire _625_ ;
wire _205_ ;
wire _2919_ ;
wire _6752_ ;
wire _6332_ ;
wire _7957_ ;
wire _219__bF$buf0 ;
wire _7537_ ;
wire _219__bF$buf1 ;
wire _7117_ ;
wire _219__bF$buf2 ;
wire _219__bF$buf3 ;
wire _219__bF$buf4 ;
wire _2672_ ;
wire _2252_ ;
wire _3877_ ;
wire _3457_ ;
wire _3037_ ;
wire _7290_ ;
wire _5603_ ;
wire _8495_ ;
wire _8075_ ;
wire _6808_ ;
wire _1943_ ;
wire _1523_ ;
wire _1103_ ;
wire _854_ ;
wire _434_ ;
wire _2728_ ;
wire _2308_ ;
wire _6981_ ;
wire _6561_ ;
wire _6141_ ;
wire \datapath.alu.b_3_bF$buf4  ;
wire _7766_ ;
wire _7346_ ;
wire _2481_ ;
wire _2061_ ;
wire _3686_ ;
wire _3266_ ;
wire _5832_ ;
wire _5412_ ;
wire _6617_ ;
wire _1752_ ;
wire _1332_ ;
wire _663_ ;
wire _243_ ;
wire _2957_ ;
wire _2537_ ;
wire _2117_ ;
wire _6790_ ;
wire _6370_ ;
wire _7995_ ;
wire _7575_ ;
wire _7155_ ;
wire _2290_ ;
wire _3495_ ;
wire _3075_ ;
wire _1808_ ;
wire _5641_ ;
wire _5221_ ;
wire _719_ ;
wire _6846_ ;
wire _6426_ ;
wire _6006_ ;
wire _1981_ ;
wire _1561_ ;
wire _1141_ ;
wire _892_ ;
wire _472_ ;
wire _2766_ ;
wire _2346_ ;
wire _4912_ ;
wire _7384_ ;
wire _4705__bF$buf0 ;
wire _4705__bF$buf1 ;
wire _4705__bF$buf2 ;
wire _4705__bF$buf3 ;
wire _4705__bF$buf4 ;
wire _8589_ ;
wire _8169_ ;
wire _1617_ ;
wire _4089_ ;
wire _5870_ ;
wire _5450_ ;
wire _5030_ ;
wire \datapath.idinstr_20_bF$buf28  ;
wire _948_ ;
wire _528_ ;
wire _108_ ;
wire _6655_ ;
wire _6235_ ;
wire _1790_ ;
wire _1370_ ;
wire _281_ ;
wire _2995_ ;
wire _2575_ ;
wire _2155_ ;
wire _4721_ ;
wire _4301_ ;
wire _7193_ ;
wire \datapath.idinstr_21_bF$buf37  ;
wire _5926_ ;
wire _5506_ ;
wire _8398_ ;
wire _1846_ ;
wire _1426_ ;
wire _1006_ ;
wire _757_ ;
wire _337_ ;
wire _6884_ ;
wire _6464_ ;
wire _6044_ ;
wire \datapath.idinstr_22_hier0_bF$buf3  ;
wire _7669_ ;
wire _7249_ ;
wire _2384_ ;
wire _8610_ ;
wire _3589_ ;
wire _3169_ ;
wire _4950_ ;
wire _4530_ ;
wire _4110_ ;
wire _5735_ ;
wire _5315_ ;
wire _1655_ ;
wire _1235_ ;
wire _986_ ;
wire _566_ ;
wire _146_ ;
wire _3801_ ;
wire _6693_ ;
wire _6273_ ;
wire _7898_ ;
wire _7478_ ;
wire _7058_ ;
wire _2193_ ;
wire _3398_ ;
wire _5964_ ;
wire _5544_ ;
wire _5124_ ;
wire _6749_ ;
wire _6329_ ;
wire _1884_ ;
wire _1464_ ;
wire _1044_ ;
wire _795_ ;
wire _375_ ;
wire _2669_ ;
wire _2249_ ;
wire _3610_ ;
wire _6082_ ;
wire _4815_ ;
wire _7287_ ;
wire _5773_ ;
wire _5353_ ;
wire [31:0] \datapath.wbpc_4  ;
wire _6978_ ;
wire _6558_ ;
wire _6138_ ;
wire _1693_ ;
wire _1273_ ;
wire _184_ ;
wire _2898_ ;
wire _2478_ ;
wire _2058_ ;
wire _4697__bF$buf0 ;
wire _4697__bF$buf1 ;
wire _4697__bF$buf2 ;
wire _4697__bF$buf3 ;
wire _4697__bF$buf4 ;
wire _4624_ ;
wire _4204_ ;
wire _7096_ ;
wire _5829_ ;
wire _5409_ ;
wire \datapath.idinstr_16_hier0_bF$buf0  ;
wire _1749_ ;
wire _1329_ ;
wire _5582_ ;
wire _5162_ ;
wire _6787_ ;
wire _6367_ ;
wire _1082_ ;
wire _2287_ ;
wire _8513_ ;
wire _4853_ ;
wire _4433_ ;
wire _4013_ ;
wire _5638_ ;
wire _5218_ ;
wire _1978_ ;
wire _1558_ ;
wire _1138_ ;
wire _5391_ ;
wire _889_ ;
wire _469_ ;
wire _3704_ ;
wire _6596_ ;
wire _6176_ ;
wire _4909_ ;
wire _2096_ ;
wire _8322_ ;
wire _4662_ ;
wire _4242_ ;
wire _5867_ ;
wire _5447_ ;
wire _5027_ ;
wire _1787_ ;
wire _1367_ ;
wire [31:0] \datapath.registers.828[8]  ;
wire _698_ ;
wire _278_ ;
wire _3933_ ;
wire _3513_ ;
wire _4718_ ;
wire \datapath.idinstr_16_bF$buf4  ;
wire _8551_ ;
wire _8131_ ;
wire _4891_ ;
wire _4471_ ;
wire _4051_ ;
wire _910_ ;
wire _5676_ ;
wire _5256_ ;
wire _1596_ ;
wire _1176_ ;
wire _7822_ ;
wire _7402_ ;
wire _8607_ ;
wire _3742_ ;
wire _3322_ ;
wire _4947_ ;
wire \datapath.idinstr_20_bF$buf4  ;
wire _4527_ ;
wire _4107_ ;
wire _8360_ ;
wire _4280_ ;
wire _5485_ ;
wire _5065_ ;
wire [31:0] \datapath.registers.828[15]  ;
wire [31:0] \datapath.programcounter._1_  ;
wire _7631_ ;
wire _7211_ ;
wire _8416_ ;
wire _3971_ ;
wire _3551_ ;
wire _3131_ ;
wire _4756_ ;
wire _4336_ ;
wire \datapath.idinstr_16_bF$buf13  ;
wire _35_ ;
wire _6902_ ;
wire _2822_ ;
wire _2402_ ;
wire _5294_ ;
wire _3607_ ;
wire _6499_ ;
wire _6079_ ;
wire _7860_ ;
wire _7440_ ;
wire _7020_ ;
wire _8645_ ;
wire _8225_ ;
wire _3780_ ;
wire _3360_ ;
wire _4985_ ;
wire _4565_ ;
wire _4145_ ;
wire _6711_ ;
wire _7916_ ;
wire _2631_ ;
wire _2211_ ;
wire \datapath.idinstr_15_bF$buf42  ;
wire _3836_ ;
wire _3416_ ;
wire _8454_ ;
wire _8034_ ;
wire _1902_ ;
wire _4794_ ;
wire _4374_ ;
wire \datapath.idinstr_23_bF$buf7  ;
wire _813_ ;
wire _5999_ ;
wire _5579_ ;
wire _5159_ ;
wire _73_ ;
wire _6940_ ;
wire _6520_ ;
wire _6100_ ;
wire _1499_ ;
wire _1079_ ;
wire _7725_ ;
wire _7305_ ;
wire _2860_ ;
wire _2440_ ;
wire _2020_ ;
wire _3645_ ;
wire _3225_ ;
wire _8263_ ;
wire _1711_ ;
wire _4183_ ;
wire _622_ ;
wire _202_ ;
wire _2916_ ;
wire _5388_ ;
wire _7954_ ;
wire _7534_ ;
wire _7114_ ;
wire _8319_ ;
wire _3874_ ;
wire _3454_ ;
wire _3034_ ;
wire _4659_ ;
wire _4239_ ;
wire _5600_ ;
wire _8492_ ;
wire _8072_ ;
wire _6805_ ;
wire _1940_ ;
wire _1520_ ;
wire _1100_ ;
wire _851_ ;
wire _431_ ;
wire _2725_ ;
wire _2305_ ;
wire _5197_ ;
wire \datapath.alu.b_3_bF$buf1  ;
wire _7763_ ;
wire _7343_ ;
wire _8548_ ;
wire _8128_ ;
wire \datapath.regwbtrap  ;
wire _3683_ ;
wire _3263_ ;
wire _4888_ ;
wire _4468_ ;
wire _4048_ ;
wire _907_ ;
wire _6614_ ;
wire _660_ ;
wire _240_ ;
wire _7819_ ;
wire _2954_ ;
wire _2534_ ;
wire _2114_ ;
wire _3739_ ;
wire _3319_ ;
wire _7992_ ;
wire _7572_ ;
wire _7152_ ;
wire _8357_ ;
wire _3492_ ;
wire _3072_ ;
wire _1805_ ;
wire _4697_ ;
wire _4277_ ;
wire _716_ ;
wire _6843_ ;
wire _6423_ ;
wire _6003_ ;
wire _7628_ ;
wire _7208_ ;
wire _2763_ ;
wire _2343_ ;
wire _3968_ ;
wire _3548_ ;
wire _3128_ ;
wire _7381_ ;
wire _8586_ ;
wire _8166_ ;
wire _1614_ ;
wire _4086_ ;
wire \datapath.idinstr_20_bF$buf25  ;
wire _945_ ;
wire _525_ ;
wire _105_ ;
wire _2819_ ;
wire _6652_ ;
wire _6232_ ;
wire _7857_ ;
wire _7437_ ;
wire _7017_ ;
wire _2992_ ;
wire _2572_ ;
wire _2152_ ;
wire _3777_ ;
wire _3357_ ;
wire _7190_ ;
wire \datapath.idinstr_21_bF$buf34  ;
wire _5923_ ;
wire _5503_ ;
wire _8395_ ;
wire _6708_ ;
wire _1843_ ;
wire _1423_ ;
wire _1003_ ;
wire _754_ ;
wire _334_ ;
wire _2628_ ;
wire _2208_ ;
wire _6881_ ;
wire _6461_ ;
wire _6041_ ;
wire \datapath.idinstr_15_bF$buf39  ;
wire \datapath.idinstr_22_hier0_bF$buf0  ;
wire _7666_ ;
wire _7246_ ;
wire _2381_ ;
wire _3586_ ;
wire _3166_ ;
wire _5732_ ;
wire _5312_ ;
wire _6937_ ;
wire _6517_ ;
wire _1652_ ;
wire _1232_ ;
wire _983_ ;
wire _563_ ;
wire _143_ ;
wire _2857_ ;
wire _2437_ ;
wire _2017_ ;
wire _6690_ ;
wire _6270_ ;
wire [31:0] \datapath.mempc_4  ;
wire _7895_ ;
wire _7475_ ;
wire _7055_ ;
wire _2190_ ;
wire _3395_ ;
wire _1708_ ;
wire _5961_ ;
wire _5541_ ;
wire _5121_ ;
wire _619_ ;
wire _6746_ ;
wire _6326_ ;
wire _1881_ ;
wire _1461_ ;
wire _1041_ ;
wire _792_ ;
wire _372_ ;
wire _2666_ ;
wire _2246_ ;
wire _4812_ ;
wire _7284_ ;
wire _8489_ ;
wire _8069_ ;
wire _1937_ ;
wire _1517_ ;
wire _5770_ ;
wire _5350_ ;
wire _848_ ;
wire _428_ ;
wire _6975_ ;
wire _6555_ ;
wire _6135_ ;
wire _1690_ ;
wire _1270_ ;
wire _181_ ;
wire _2895_ ;
wire _2475_ ;
wire _2055_ ;
wire _4621_ ;
wire _4201_ ;
wire _2797__bF$buf0 ;
wire _2797__bF$buf1 ;
wire _2797__bF$buf2 ;
wire _2797__bF$buf3 ;
wire _2797__bF$buf4 ;
wire _2797__bF$buf5 ;
wire _2797__bF$buf6 ;
wire _7093_ ;
wire _5826_ ;
wire _5406_ ;
wire _8298_ ;
wire _1746_ ;
wire _1326_ ;
wire _657_ ;
wire _237_ ;
wire _6784_ ;
wire _6364_ ;
wire _7989_ ;
wire _7569_ ;
wire _7149_ ;
wire _2284_ ;
wire _8510_ ;
wire _3489_ ;
wire _3069_ ;
wire _4850_ ;
wire _4430_ ;
wire _4010_ ;
wire _5635_ ;
wire _5215_ ;
wire [31:0] \datapath.registers.828[30]  ;
wire _1975_ ;
wire _1555_ ;
wire _1135_ ;
wire _886_ ;
wire _466_ ;
wire _3701_ ;
wire _6593_ ;
wire _6173_ ;
wire _4906_ ;
wire _7798_ ;
wire _7378_ ;
wire _2093_ ;
wire _3298_ ;
wire _5864_ ;
wire _5444_ ;
wire _5024_ ;
wire _6649_ ;
wire _6229_ ;
wire _1784_ ;
wire _1364_ ;
wire _695_ ;
wire _275_ ;
wire _2989_ ;
wire _2569_ ;
wire _2149_ ;
wire _3930_ ;
wire _3510_ ;
wire _2490__bF$buf0 ;
wire _2490__bF$buf1 ;
wire _2490__bF$buf2 ;
wire _2490__bF$buf3 ;
wire _2490__bF$buf4 ;
wire _4715_ ;
wire _7187_ ;
wire \datapath.idinstr_16_bF$buf1  ;
wire _5673_ ;
wire _5253_ ;
wire _6878_ ;
wire _6458_ ;
wire _6038_ ;
wire _1593_ ;
wire _1173_ ;
wire _2798_ ;
wire _2378_ ;
wire _8604_ ;
wire _4944_ ;
wire \datapath.idinstr_20_bF$buf1  ;
wire _4524_ ;
wire _4104_ ;
wire _5729_ ;
wire _5309_ ;
wire _1649_ ;
wire _1229_ ;
wire _5482_ ;
wire _5062_ ;
wire [31:0] \datapath.muxbval  ;
wire _6687_ ;
wire _6267_ ;
wire _2187_ ;
wire _8413_ ;
wire _4753_ ;
wire _4333_ ;
wire _5958_ ;
wire _5538_ ;
wire _5118_ ;
wire \datapath.idinstr_16_bF$buf10  ;
wire _32_ ;
wire _1878_ ;
wire _1458_ ;
wire _1038_ ;
wire _5291_ ;
wire _789_ ;
wire _369_ ;
wire _3604_ ;
wire _6496_ ;
wire _6076_ ;
wire _4809_ ;
wire _8642_ ;
wire _8222_ ;
wire _4982_ ;
wire _4562_ ;
wire _4142_ ;
wire \datapath.idinstr_19_bF$buf4  ;
wire _5767_ ;
wire _5347_ ;
wire _1687_ ;
wire _1267_ ;
wire _7913_ ;
wire _598_ ;
wire _178_ ;
wire _3833_ ;
wire _3413_ ;
wire _4618_ ;
wire _8451_ ;
wire _8031_ ;
wire _4791_ ;
wire _4371_ ;
wire \datapath.idinstr_23_bF$buf4  ;
wire _810_ ;
wire _5996_ ;
wire _5576_ ;
wire _5156_ ;
wire _70_ ;
wire _1496_ ;
wire _1076_ ;
wire _7722_ ;
wire _7302_ ;
wire _8507_ ;
wire _3642_ ;
wire _3222_ ;
wire _4847_ ;
wire _4427_ ;
wire _4007_ ;
wire _8260_ ;
wire _4180_ ;
wire _2913_ ;
wire _5385_ ;
wire _7951_ ;
wire _7531_ ;
wire _7111_ ;
wire _8316_ ;
wire _3871_ ;
wire _3451_ ;
wire _3031_ ;
wire _4656_ ;
wire _4236_ ;
wire _6802_ ;
wire _2722_ ;
wire _2302_ ;
wire _5194_ ;
wire _3927_ ;
wire _3507_ ;
wire _6399_ ;
wire _7760_ ;
wire _7340_ ;
wire _8545_ ;
wire _8125_ ;
wire _3680_ ;
wire _3260_ ;
wire _4885_ ;
wire _4465_ ;
wire _4045_ ;
wire _904_ ;
wire _6611_ ;
wire _7816_ ;
wire _2951_ ;
wire _2531_ ;
wire _2111_ ;
wire _3736_ ;
wire _3316_ ;
wire \datapath.alu.b_1_bF$buf5  ;
wire _8354_ ;
wire _1802_ ;
wire _4694_ ;
wire _4274_ ;
wire _713_ ;
wire _5899_ ;
wire _5479_ ;
wire _5059_ ;
wire _6840_ ;
wire _6420_ ;
wire _6000_ ;
wire [31:0] \datapath.alu.b  ;
wire _1399_ ;
wire _7625_ ;
wire _7205_ ;
wire _2760_ ;
wire _2340_ ;
wire _3965_ ;
wire _3545_ ;
wire _3125_ ;
wire _8583_ ;
wire _8163_ ;
wire _29_ ;
wire _1611_ ;
wire _4083_ ;
wire \datapath.idinstr_20_bF$buf22  ;
wire _942_ ;
wire _522_ ;
wire _102_ ;
wire _2816_ ;
wire _5288_ ;
wire _7854_ ;
wire _7434_ ;
wire _7014_ ;
wire _8639_ ;
wire _8219_ ;
wire _3774_ ;
wire _3354_ ;
wire _4979_ ;
wire _4559_ ;
wire \datapath.idinstr_21_bF$buf31  ;
wire _4139_ ;
wire _5920_ ;
wire _5500_ ;
wire _8392_ ;
wire _6705_ ;
wire _1840_ ;
wire _1420_ ;
wire _1000_ ;
wire _751_ ;
wire _331_ ;
wire _2625_ ;
wire _2205_ ;
wire _5097_ ;
wire \datapath.idinstr_15_bF$buf36  ;
wire \datapath.idinstr_22_bF$buf40  ;
wire _7663_ ;
wire _7243_ ;
wire _8448_ ;
wire _8028_ ;
wire _3583_ ;
wire _3163_ ;
wire _4788_ ;
wire _4368_ ;
wire _807_ ;
wire \datapath.idinstr_16_bF$buf45  ;
wire _67_ ;
wire _6934_ ;
wire _6514_ ;
wire _980_ ;
wire _560_ ;
wire _140_ ;
wire _7719_ ;
wire _2854_ ;
wire _2434_ ;
wire _2014_ ;
wire _3639_ ;
wire _3219_ ;
wire _7892_ ;
wire _7472_ ;
wire _7052_ ;
wire _8257_ ;
wire _3392_ ;
wire _1705_ ;
wire _4597_ ;
wire _4177_ ;
wire _616_ ;
wire _6743_ ;
wire _6323_ ;
wire _7948_ ;
wire _7528_ ;
wire _7108_ ;
wire _2663_ ;
wire _2243_ ;
wire _3868_ ;
wire _3448_ ;
wire _3028_ ;
wire \datapath.csr.csr_irq  ;
wire _7281_ ;
wire _8486_ ;
wire _8066_ ;
wire _1934_ ;
wire _1514_ ;
wire _845_ ;
wire _425_ ;
wire _2719_ ;
wire _6972_ ;
wire _6552_ ;
wire _6132_ ;
wire _7757_ ;
wire _7337_ ;
wire _2892_ ;
wire _2472_ ;
wire _2052_ ;
wire _3677_ ;
wire _3257_ ;
wire _7090_ ;
wire _5823_ ;
wire _5403_ ;
wire _8295_ ;
wire _6608_ ;
wire _1743_ ;
wire _1323_ ;
wire _654_ ;
wire _234_ ;
wire _2948_ ;
wire _2528_ ;
wire _2108_ ;
wire _6781_ ;
wire _6361_ ;
wire _7986_ ;
wire _7566_ ;
wire _7146_ ;
wire _2281_ ;
wire _3486_ ;
wire _3066_ ;
wire _5632_ ;
wire _5212_ ;
wire _6837_ ;
wire _6417_ ;
wire _1972_ ;
wire _1552_ ;
wire _1132_ ;
wire _883_ ;
wire _463_ ;
wire _1908__bF$buf0 ;
wire _1908__bF$buf1 ;
wire _2757_ ;
wire _1908__bF$buf2 ;
wire _2337_ ;
wire _1908__bF$buf3 ;
wire _6590_ ;
wire _6170_ ;
wire _4903_ ;
wire _7795_ ;
wire _7375_ ;
wire _2090_ ;
wire _3295_ ;
wire _1608_ ;
wire _5861_ ;
wire _5441_ ;
wire _5021_ ;
wire \datapath.idinstr_20_bF$buf19  ;
wire _939_ ;
wire _519_ ;
wire _6646_ ;
wire _6226_ ;
wire _1781_ ;
wire _1361_ ;
wire _4715__bF$buf0 ;
wire _4715__bF$buf1 ;
wire _692_ ;
wire _4715__bF$buf2 ;
wire _272_ ;
wire _4715__bF$buf3 ;
wire _4715__bF$buf4 ;
wire _2986_ ;
wire _2566_ ;
wire _2146_ ;
wire _4712_ ;
wire _7184_ ;
wire \datapath.idinstr_21_bF$buf28  ;
wire _5917_ ;
wire _8389_ ;
wire _1837_ ;
wire _1417_ ;
wire _5670_ ;
wire _5250_ ;
wire _748_ ;
wire _328_ ;
wire _6875_ ;
wire _6455_ ;
wire _6035_ ;
wire _1590_ ;
wire _1170_ ;
wire \datapath.idinstr_22_bF$buf37  ;
wire _2795_ ;
wire _2375_ ;
wire _8601_ ;
wire _4941_ ;
wire _4521_ ;
wire _4101_ ;
wire _5726_ ;
wire _5306_ ;
wire _8198_ ;
wire _1646_ ;
wire _1226_ ;
wire _977_ ;
wire _557_ ;
wire _137_ ;
wire _6684_ ;
wire _6264_ ;
wire [31:0] \datapath.aluinstr  ;
wire _7889_ ;
wire _7469_ ;
wire _7049_ ;
wire _2184_ ;
wire _8410_ ;
wire _3389_ ;
wire _4750_ ;
wire _4330_ ;
wire _5955_ ;
wire _5535_ ;
wire _5115_ ;
wire [31:0] \datapath.registers.828[20]  ;
wire _1875_ ;
wire _1455_ ;
wire _1035_ ;
wire _786_ ;
wire _366_ ;
wire _3601_ ;
wire _6493_ ;
wire _6073_ ;
wire _4806_ ;
wire _7698_ ;
wire _7278_ ;
wire _3198_ ;
wire \datapath.idinstr_19_bF$buf1  ;
wire _5764_ ;
wire _5344_ ;
wire _6969_ ;
wire _6549_ ;
wire _6129_ ;
wire _1684_ ;
wire _1264_ ;
wire _7910_ ;
wire _595_ ;
wire _175_ ;
wire _2889_ ;
wire _2469_ ;
wire _2049_ ;
wire _3830_ ;
wire _3410_ ;
wire _4615_ ;
wire _7087_ ;
wire \datapath.idinstr_23_bF$buf1  ;
wire _5993_ ;
wire _5573_ ;
wire _5153_ ;
wire _6778_ ;
wire _6358_ ;
wire _1493_ ;
wire _1073_ ;
wire _2698_ ;
wire _2278_ ;
wire _8504_ ;
wire _4844_ ;
wire _4424_ ;
wire _4004_ ;
wire _5629_ ;
wire _5209_ ;
wire _1969_ ;
wire _1549_ ;
wire _1129_ ;
wire _2910_ ;
wire _5382_ ;
wire _6587_ ;
wire _6167_ ;
wire _2087_ ;
wire _8313_ ;
wire _4653_ ;
wire _4233_ ;
wire _5858_ ;
wire _5438_ ;
wire _5018_ ;
wire _1778_ ;
wire _1358_ ;
wire _5191_ ;
wire _689_ ;
wire _269_ ;
wire _3924_ ;
wire _3504_ ;
wire _6396_ ;
wire _4709_ ;
wire _8542_ ;
wire _8122_ ;
wire _4882_ ;
wire _4462_ ;
wire _4042_ ;
wire _901_ ;
wire _5667_ ;
wire _5247_ ;
wire _1587_ ;
wire _1167_ ;
wire _7813_ ;
wire _3239__bF$buf0 ;
wire _3239__bF$buf1 ;
wire _3239__bF$buf2 ;
wire _3239__bF$buf3 ;
wire _498_ ;
wire _3733_ ;
wire _3313_ ;
wire \datapath.alu.b_1_bF$buf2  ;
wire _4938_ ;
wire _4518_ ;
wire _8351_ ;
wire _4691_ ;
wire _4271_ ;
wire _710_ ;
wire _5896_ ;
wire _5476_ ;
wire _5056_ ;
wire _1396_ ;
wire _7622_ ;
wire _7202_ ;
wire _8407_ ;
wire _3962_ ;
wire _3542_ ;
wire _3122_ ;
wire _4747_ ;
wire _4327_ ;
wire _8580_ ;
wire _8160_ ;
wire _26_ ;
wire _4080_ ;
wire _2813_ ;
wire _5285_ ;
wire _7851_ ;
wire _7431_ ;
wire _7011_ ;
wire _8636_ ;
wire _8216_ ;
wire _3771_ ;
wire _3351_ ;
wire \datapath.idinstr_17_bF$buf13  ;
wire _4976_ ;
wire _4556_ ;
wire _4136_ ;
wire _6702_ ;
wire _7907_ ;
wire _2622_ ;
wire _2202_ ;
wire _5094_ ;
wire \datapath.idinstr_15_bF$buf33  ;
wire _3827_ ;
wire _3407_ ;
wire _6299_ ;
wire _7660_ ;
wire _7240_ ;
wire _8445_ ;
wire _8025_ ;
wire _3580_ ;
wire _3160_ ;
wire _4785_ ;
wire _4365_ ;
wire _804_ ;
wire \datapath.idinstr_16_bF$buf42  ;
wire _64_ ;
wire _6931_ ;
wire _6511_ ;
wire _7716_ ;
wire _2851_ ;
wire _2431_ ;
wire _2011_ ;
wire _3636_ ;
wire _3216_ ;
wire _8254_ ;
wire \controlunit.csrfile_trap_wen  ;
wire _1702_ ;
wire _4594_ ;
wire _4174_ ;
wire _613_ ;
wire _2907_ ;
wire _5799_ ;
wire _5379_ ;
wire _6740_ ;
wire _6320_ ;
wire _1299_ ;
wire _7945_ ;
wire _7525_ ;
wire _7105_ ;
wire _2660_ ;
wire _2240_ ;
wire _3865_ ;
wire _3445_ ;
wire _3025_ ;
wire _4703__bF$buf0 ;
wire _4703__bF$buf1 ;
wire _4703__bF$buf2 ;
wire _4703__bF$buf3 ;
wire _4703__bF$buf4 ;
wire _8483_ ;
wire CLK_bF$buf90 ;
wire _8063_ ;
wire CLK_bF$buf91 ;
wire CLK_bF$buf92 ;
wire CLK_bF$buf93 ;
wire CLK_bF$buf94 ;
wire CLK_bF$buf95 ;
wire CLK_bF$buf96 ;
wire CLK_bF$buf97 ;
wire CLK_bF$buf98 ;
wire CLK_bF$buf99 ;
wire _1931_ ;
wire _1511_ ;
wire _842_ ;
wire _422_ ;
wire _2716_ ;
wire _5188_ ;
wire _7754_ ;
wire _7334_ ;
wire _8539_ ;
wire _8119_ ;
wire _3674_ ;
wire _3254_ ;
wire _4879_ ;
wire _4459_ ;
wire _4039_ ;
wire _5820_ ;
wire _5400_ ;
wire _8292_ ;
wire _6605_ ;
wire _1740_ ;
wire _1320_ ;
wire _651_ ;
wire _231_ ;
wire _2945_ ;
wire _2525_ ;
wire _2105_ ;
wire _7983_ ;
wire _7563_ ;
wire _7143_ ;
wire _8348_ ;
wire _3483_ ;
wire _3063_ ;
wire _4688_ ;
wire _4268_ ;
wire _707_ ;
wire _6834_ ;
wire _6414_ ;
wire \controlunit.ecall  ;
wire _880_ ;
wire _460_ ;
wire _7619_ ;
wire _2754_ ;
wire _2334_ ;
wire _3959_ ;
wire _3539_ ;
wire _3119_ ;
wire _4900_ ;
wire _7792_ ;
wire _7372_ ;
wire _8577_ ;
wire _8157_ ;
wire _3292_ ;
wire _1605_ ;
wire _4497_ ;
wire _4077_ ;
wire \datapath.idinstr_20_bF$buf16  ;
wire _936_ ;
wire _516_ ;
wire _6643_ ;
wire _6223_ ;
wire _7848_ ;
wire _7428_ ;
wire _7008_ ;
wire _2983_ ;
wire _2563_ ;
wire _2143_ ;
wire _3768_ ;
wire _3348_ ;
wire _7181_ ;
wire \datapath.idinstr_21_bF$buf25  ;
wire _5914_ ;
wire _8386_ ;
wire _1834_ ;
wire _1414_ ;
wire _745_ ;
wire _325_ ;
wire _2619_ ;
wire _6872_ ;
wire _6452_ ;
wire _6032_ ;
wire \datapath.idinstr_22_bF$buf34  ;
wire _7657_ ;
wire _7237_ ;
wire _2792_ ;
wire _2372_ ;
wire _3997_ ;
wire _3577_ ;
wire _3157_ ;
wire _5723_ ;
wire _5303_ ;
wire _8195_ ;
wire \datapath.idinstr_16_bF$buf39  ;
wire _6928_ ;
wire _6508_ ;
wire _1643_ ;
wire _1223_ ;
wire \datapath.idinstr_20_bF$buf54  ;
wire _974_ ;
wire _554_ ;
wire _134_ ;
wire _2848_ ;
wire _2428_ ;
wire _2008_ ;
wire _6681_ ;
wire _6261_ ;
wire _7886_ ;
wire _7466_ ;
wire _7046_ ;
wire _2181_ ;
wire _3386_ ;
wire _1990__bF$buf0 ;
wire _1990__bF$buf1 ;
wire _1990__bF$buf2 ;
wire _1990__bF$buf3 ;
wire _5952_ ;
wire _5532_ ;
wire _5112_ ;
wire _6737_ ;
wire _6317_ ;
wire _1872_ ;
wire _1452_ ;
wire _1032_ ;
wire _783_ ;
wire _363_ ;
wire _2657_ ;
wire _2237_ ;
wire _6490_ ;
wire _6070_ ;
wire _4803_ ;
wire _7695_ ;
wire _7275_ ;
wire _3195_ ;
wire _1928_ ;
wire _1508_ ;
wire _5761_ ;
wire _5341_ ;
wire _839_ ;
wire _419_ ;
wire _99_ ;
wire _6966_ ;
wire _6546_ ;
wire _6126_ ;
wire _1681_ ;
wire _1261_ ;
wire _592_ ;
wire _172_ ;
wire _2886_ ;
wire _2466_ ;
wire _2046_ ;
wire _4612_ ;
wire _7084_ ;
wire _5817_ ;
wire _8289_ ;
wire _1737_ ;
wire _1317_ ;
wire [31:0] \datapath.registers.828[3]  ;
wire _5990_ ;
wire _5570_ ;
wire _5150_ ;
wire _648_ ;
wire _228_ ;
wire _6775_ ;
wire _6355_ ;
wire _1490_ ;
wire _1070_ ;
wire _2695_ ;
wire _2275_ ;
wire _8501_ ;
wire _4841_ ;
wire _4421_ ;
wire _4001_ ;
wire _5626_ ;
wire _5206_ ;
wire _8098_ ;
wire _1966_ ;
wire _1546_ ;
wire _1126_ ;
wire _877_ ;
wire _457_ ;
wire _6584_ ;
wire _6164_ ;
wire _7789_ ;
wire _7369_ ;
wire _2084_ ;
wire _8310_ ;
wire \datapath.immediatedecoder._12_  ;
wire _3289_ ;
wire _4650_ ;
wire _4230_ ;
wire _5855_ ;
wire _5435_ ;
wire _5015_ ;
wire [31:0] \datapath.registers.828[10]  ;
wire _1775_ ;
wire _1355_ ;
wire _686_ ;
wire _266_ ;
wire [30:1] \datapath.imm  ;
wire _3921_ ;
wire _3501_ ;
wire _6393_ ;
wire _4706_ ;
wire _7598_ ;
wire _7178_ ;
wire _3098_ ;
wire [31:0] \datapath.regimmalu  ;
wire _5664_ ;
wire _5244_ ;
wire \datapath.idinstr_17_bF$buf7  ;
wire _6869_ ;
wire _6449_ ;
wire _6029_ ;
wire _1584_ ;
wire _1164_ ;
wire _7810_ ;
wire CLK ;
wire _495_ ;
wire _2789_ ;
wire _2369_ ;
wire _3730_ ;
wire _3310_ ;
wire _4935_ ;
wire _4515_ ;
wire \datapath.idinstr_21_bF$buf7  ;
wire _5893_ ;
wire _5473_ ;
wire _5053_ ;
wire _6678_ ;
wire _6258_ ;
wire _1393_ ;
wire _2598_ ;
wire _2178_ ;
wire _8404_ ;
wire _4744_ ;
wire _4324_ ;
wire _5949_ ;
wire _5529_ ;
wire _5109_ ;
wire _23_ ;
wire _1869_ ;
wire _1449_ ;
wire _1029_ ;
wire _2810_ ;
wire _5282_ ;
wire _6487_ ;
wire _6067_ ;
wire _8633_ ;
wire _8213_ ;
wire \datapath.idinstr_17_bF$buf10  ;
wire _4973_ ;
wire _4553_ ;
wire _4133_ ;
wire _5758_ ;
wire _5338_ ;
wire _1678_ ;
wire _1258_ ;
wire _7904_ ;
wire _5091_ ;
wire _589_ ;
wire _169_ ;
wire \datapath.idinstr_15_bF$buf30  ;
wire _3824_ ;
wire _3404_ ;
wire _6296_ ;
wire _4609_ ;
wire _8442_ ;
wire _8022_ ;
wire \datapath.alu.b_4_bF$buf2  ;
wire _4782_ ;
wire _4362_ ;
wire _801_ ;
wire _5987_ ;
wire _5567_ ;
wire _5147_ ;
wire _61_ ;
wire _1487_ ;
wire _1067_ ;
wire _7713_ ;
wire _398_ ;
wire _3633_ ;
wire _3213_ ;
wire _4838_ ;
wire _4418_ ;
wire _8251_ ;
wire _4591_ ;
wire _4171_ ;
wire _610_ ;
wire _2904_ ;
wire _5681__bF$buf0 ;
wire _5681__bF$buf1 ;
wire _5681__bF$buf2 ;
wire _5681__bF$buf3 ;
wire _5681__bF$buf4 ;
wire _5681__bF$buf5 ;
wire _5796_ ;
wire _5681__bF$buf6 ;
wire _5376_ ;
wire _5681__bF$buf7 ;
wire _5681__bF$buf8 ;
wire _5681__bF$buf9 ;
wire _1296_ ;
wire _7942_ ;
wire _7522_ ;
wire _7102_ ;
wire _8307_ ;
wire _3862_ ;
wire _3442_ ;
wire _3022_ ;
wire _4647_ ;
wire _4227_ ;
wire _8480_ ;
wire CLK_bF$buf60 ;
wire _8060_ ;
wire CLK_bF$buf61 ;
wire CLK_bF$buf62 ;
wire CLK_bF$buf63 ;
wire CLK_bF$buf64 ;
wire CLK_bF$buf65 ;
wire CLK_bF$buf66 ;
wire CLK_bF$buf67 ;
wire CLK_bF$buf68 ;
wire CLK_bF$buf69 ;
wire _2713_ ;
wire _5185_ ;
wire [31:0] \datapath.registers.828[27]  ;
wire _3918_ ;
wire [31:0] \datapath.rd  ;
wire _7751_ ;
wire _7331_ ;
wire _3029__bF$buf0 ;
wire _3029__bF$buf1 ;
wire _3029__bF$buf2 ;
wire _3029__bF$buf3 ;
wire _3029__bF$buf4 ;
wire _8536_ ;
wire _8116_ ;
wire _3671_ ;
wire _3251_ ;
wire _4876_ ;
wire _4456_ ;
wire _4036_ ;
wire _318__bF$buf0 ;
wire _318__bF$buf1 ;
wire _318__bF$buf2 ;
wire _318__bF$buf3 ;
wire _318__bF$buf4 ;
wire _6602_ ;
wire _7807_ ;
wire _2942_ ;
wire _2522_ ;
wire _2102_ ;
wire _7091__bF$buf0 ;
wire _7091__bF$buf1 ;
wire _7091__bF$buf2 ;
wire _7091__bF$buf3 ;
wire _3727_ ;
wire _7091__bF$buf4 ;
wire _3307_ ;
wire _6199_ ;
wire _7980_ ;
wire _7560_ ;
wire _7140_ ;
wire _3033__bF$buf0 ;
wire _3033__bF$buf1 ;
wire _3033__bF$buf2 ;
wire _3033__bF$buf3 ;
wire _3033__bF$buf4 ;
wire _3033__bF$buf5 ;
wire _3033__bF$buf6 ;
wire _8345_ ;
wire _3480_ ;
wire _3060_ ;
wire _4685_ ;
wire _4265_ ;
wire _704_ ;
wire _6831_ ;
wire _6411_ ;
wire _7616_ ;
wire _2751_ ;
wire _2331_ ;
wire _3956_ ;
wire _3536_ ;
wire _3116_ ;
wire _8574_ ;
wire _8154_ ;
wire _1602_ ;
wire _4494_ ;
wire _4074_ ;
wire \datapath.idinstr_20_bF$buf13  ;
wire _933_ ;
wire _513_ ;
wire _2807_ ;
wire _5699_ ;
wire _5279_ ;
wire _6640_ ;
wire _6220_ ;
wire _1199_ ;
wire _7845_ ;
wire _7425_ ;
wire _7005_ ;
wire _2980_ ;
wire _2560_ ;
wire _2140_ ;
wire _3765_ ;
wire _3345_ ;
wire \datapath.idinstr_21_bF$buf22  ;
wire _5911_ ;
wire _8383_ ;
wire _1831_ ;
wire _1411_ ;
wire _742_ ;
wire _322_ ;
wire _2616_ ;
wire _5088_ ;
wire \datapath.idinstr_15_bF$buf27  ;
wire \datapath.idinstr_22_bF$buf31  ;
wire _7654_ ;
wire _7234_ ;
wire _8439_ ;
wire _8019_ ;
wire _3994_ ;
wire _3574_ ;
wire _3154_ ;
wire [31:0] IMEM_ADDR ;
wire _4779_ ;
wire _4359_ ;
wire _5720_ ;
wire _5300_ ;
wire _8192_ ;
wire \datapath.idinstr_16_bF$buf36  ;
wire _58_ ;
wire _6925_ ;
wire _6505_ ;
wire _1640_ ;
wire _1220_ ;
wire \datapath.idinstr_20_bF$buf51  ;
wire _971_ ;
wire _551_ ;
wire _131_ ;
wire _2845_ ;
wire _2425_ ;
wire _2005_ ;
wire _7883_ ;
wire _7463_ ;
wire _7043_ ;
wire _8248_ ;
wire _3383_ ;
wire _4588_ ;
wire _4168_ ;
wire _607_ ;
wire _6734_ ;
wire _6314_ ;
wire _780_ ;
wire _360_ ;
wire _7939_ ;
wire _7519_ ;
wire _2654_ ;
wire _2234_ ;
wire _3859_ ;
wire _3439_ ;
wire _3019_ ;
wire _4800_ ;
wire _7692_ ;
wire _7272_ ;
wire _8477_ ;
wire _8057_ ;
wire _3192_ ;
wire _1925_ ;
wire _1505_ ;
wire _4397_ ;
wire _836_ ;
wire _416_ ;
wire _96_ ;
wire _6963_ ;
wire _6543_ ;
wire _6123_ ;
wire _7748_ ;
wire _7328_ ;
wire _2883_ ;
wire _2463_ ;
wire _2043_ ;
wire _3668_ ;
wire _3248_ ;
wire _7081_ ;
wire _5814_ ;
wire _8286_ ;
wire _1734_ ;
wire _1314_ ;
wire _645_ ;
wire _225_ ;
wire _2939_ ;
wire _2519_ ;
wire _6772_ ;
wire _6352_ ;
wire _7977_ ;
wire _7557_ ;
wire _7137_ ;
wire _2692_ ;
wire _2272_ ;
wire _2507__bF$buf0 ;
wire _2507__bF$buf1 ;
wire _2507__bF$buf2 ;
wire _2507__bF$buf3 ;
wire _2507__bF$buf4 ;
wire _3897_ ;
wire _3477_ ;
wire _3057_ ;
wire _5623_ ;
wire _5203_ ;
wire _8095_ ;
wire _6828_ ;
wire _6408_ ;
wire _1963_ ;
wire _1543_ ;
wire _1123_ ;
wire _874_ ;
wire _454_ ;
wire _2748_ ;
wire _2328_ ;
wire _6581_ ;
wire _6161_ ;
wire _7786_ ;
wire _7366_ ;
wire _2081_ ;
wire _3286_ ;
wire _5852_ ;
wire _5432_ ;
wire _5012_ ;
wire _6637_ ;
wire _6217_ ;
wire _1772_ ;
wire _1352_ ;
wire _683_ ;
wire _263_ ;
wire _2977_ ;
wire _2557_ ;
wire _2137_ ;
wire _6390_ ;
wire _4703_ ;
wire _7595_ ;
wire _7175_ ;
wire \datapath.idinstr_21_bF$buf19  ;
wire _5908_ ;
wire _3095_ ;
wire _1828_ ;
wire _1408_ ;
wire _4725__bF$buf0 ;
wire _4725__bF$buf1 ;
wire _4725__bF$buf2 ;
wire _4725__bF$buf3 ;
wire _4725__bF$buf4 ;
wire _5661_ ;
wire _5241_ ;
wire _739_ ;
wire _319_ ;
wire \datapath.idinstr_17_bF$buf4  ;
wire _6866_ ;
wire _6446_ ;
wire _6026_ ;
wire _1581_ ;
wire _1161_ ;
wire _492_ ;
wire \datapath.idinstr_22_bF$buf28  ;
wire _2786_ ;
wire _2366_ ;
wire _4932_ ;
wire _4512_ ;
wire _5717_ ;
wire _8189_ ;
wire _1637_ ;
wire _1217_ ;
wire \datapath.idinstr_21_bF$buf4  ;
wire _5890_ ;
wire _5470_ ;
wire _5050_ ;
wire \datapath.idinstr_20_bF$buf48  ;
wire _968_ ;
wire _548_ ;
wire _128_ ;
wire _6675_ ;
wire _6255_ ;
wire _1390_ ;
wire _2595_ ;
wire _2175_ ;
wire _8401_ ;
wire _4741_ ;
wire _4321_ ;
wire _5946_ ;
wire _5526_ ;
wire _5106_ ;
wire _20_ ;
wire _1866_ ;
wire _1446_ ;
wire _1026_ ;
wire _777_ ;
wire _357_ ;
wire _6484_ ;
wire _6064_ ;
wire _7689_ ;
wire _7269_ ;
wire _8630_ ;
wire _8210_ ;
wire _3189_ ;
wire _4970_ ;
wire _4550_ ;
wire _4130_ ;
wire _5755_ ;
wire _5335_ ;
wire _1675_ ;
wire _1255_ ;
wire _7901_ ;
wire _586_ ;
wire _166_ ;
wire _3821_ ;
wire _3401_ ;
wire _6293_ ;
wire _4606_ ;
wire _7498_ ;
wire _7078_ ;
wire _5984_ ;
wire _5564_ ;
wire _5144_ ;
wire _6769_ ;
wire _6349_ ;
wire _1484_ ;
wire _1064_ ;
wire _7710_ ;
wire _395_ ;
wire _2689_ ;
wire _2269_ ;
wire [1:0] \datapath.regjmpalign  ;
wire _3630_ ;
wire _3210_ ;
wire _4835_ ;
wire _4415_ ;
wire \datapath.alu.b_2_bF$buf6  ;
wire _2901_ ;
wire _5793_ ;
wire _5373_ ;
wire _6998_ ;
wire _6578_ ;
wire _6158_ ;
wire _1293_ ;
wire _2498_ ;
wire _2078_ ;
wire _8304_ ;
wire _4644_ ;
wire _4224_ ;
wire CLK_bF$buf30 ;
wire CLK_bF$buf31 ;
wire CLK_bF$buf32 ;
wire CLK_bF$buf33 ;
wire CLK_bF$buf34 ;
wire CLK_bF$buf35 ;
wire CLK_bF$buf36 ;
wire CLK_bF$buf37 ;
wire CLK_bF$buf38 ;
wire CLK_bF$buf39 ;
wire _5849_ ;
wire _5429_ ;
wire _5009_ ;
wire _1769_ ;
wire _1349_ ;
wire _2710_ ;
wire _5182_ ;
wire _3915_ ;
wire _6387_ ;
wire _8533_ ;
wire _8113_ ;
wire _4873_ ;
wire _4453_ ;
wire _4033_ ;
wire _5658_ ;
wire _5238_ ;
wire _1998_ ;
wire _1578_ ;
wire _1158_ ;
wire _7804_ ;
wire _489_ ;
wire _3724_ ;
wire _3304_ ;
wire _6196_ ;
wire _4929_ ;
wire _4509_ ;
wire _8342_ ;
wire _4682_ ;
wire _4262_ ;
wire _701_ ;
wire _5887_ ;
wire _5467_ ;
wire _5047_ ;
wire _1387_ ;
wire _7613_ ;
wire _298_ ;
wire _5684__bF$buf0 ;
wire _5684__bF$buf1 ;
wire _5684__bF$buf2 ;
wire _5684__bF$buf3 ;
wire _5684__bF$buf4 ;
wire _5684__bF$buf5 ;
wire _5684__bF$buf6 ;
wire \datapath.idinstr_20_hier0_bF$buf5  ;
wire _5684__bF$buf7 ;
wire _5684__bF$buf8 ;
wire _5684__bF$buf9 ;
wire _3953_ ;
wire _3533_ ;
wire _3113_ ;
wire _4738_ ;
wire _4318_ ;
wire _8571_ ;
wire _8151_ ;
wire _17_ ;
wire _4491_ ;
wire _4071_ ;
wire \datapath.idinstr_20_bF$buf10  ;
wire _930_ ;
wire _510_ ;
wire _2804_ ;
wire _5696_ ;
wire _5276_ ;
wire _5369__bF$buf0 ;
wire _5369__bF$buf1 ;
wire _5369__bF$buf2 ;
wire _5369__bF$buf3 ;
wire _5369__bF$buf4 ;
wire _5369__bF$buf5 ;
wire _5369__bF$buf6 ;
wire _5369__bF$buf7 ;
wire _1196_ ;
wire _7842_ ;
wire _7422_ ;
wire _7002_ ;
wire _8627_ ;
wire _8207_ ;
wire _3762_ ;
wire _3342_ ;
wire _4967_ ;
wire _4547_ ;
wire _4127_ ;
wire _8380_ ;
wire _2613_ ;
wire _5085_ ;
wire [31:0] \datapath.registers.828[17]  ;
wire \datapath.idinstr_15_bF$buf24  ;
wire _3818_ ;
wire _7651_ ;
wire _7231_ ;
wire _8436_ ;
wire _8016_ ;
wire _3991_ ;
wire _3571_ ;
wire _3151_ ;
wire _4776_ ;
wire _4356_ ;
wire \datapath.idinstr_16_bF$buf33  ;
wire _55_ ;
wire _6922_ ;
wire _6502_ ;
wire _7707_ ;
wire _2842_ ;
wire _2422_ ;
wire _2002_ ;
wire _3627_ ;
wire _3207_ ;
wire _6099_ ;
wire _7880_ ;
wire _7460_ ;
wire _7040_ ;
wire _8245_ ;
wire _3380_ ;
wire _4585_ ;
wire _4165_ ;
wire _604_ ;
wire _6731_ ;
wire _6311_ ;
wire _7936_ ;
wire _7516_ ;
wire _2651_ ;
wire _2231_ ;
wire _4709__bF$buf0 ;
wire _4709__bF$buf1 ;
wire _4709__bF$buf2 ;
wire _4709__bF$buf3 ;
wire _4709__bF$buf4 ;
wire _3856_ ;
wire _3436_ ;
wire _3016_ ;
wire _8474_ ;
wire _8054_ ;
wire _1922_ ;
wire _1502_ ;
wire _4394_ ;
wire _833_ ;
wire _413_ ;
wire _2707_ ;
wire _5599_ ;
wire _5179_ ;
wire _93_ ;
wire _6960_ ;
wire _6540_ ;
wire _6120_ ;
wire _1099_ ;
wire _7745_ ;
wire _7325_ ;
wire _2880_ ;
wire _2460_ ;
wire _2040_ ;
wire _4713__bF$buf0 ;
wire _4713__bF$buf1 ;
wire _4713__bF$buf2 ;
wire _4713__bF$buf3 ;
wire _4713__bF$buf4 ;
wire _3665_ ;
wire _3245_ ;
wire _5811_ ;
wire _8283_ ;
wire _1731_ ;
wire _1311_ ;
wire _642_ ;
wire _222_ ;
wire _2936_ ;
wire _2516_ ;
wire _7974_ ;
wire _7554_ ;
wire _7134_ ;
wire _8339_ ;
wire _3894_ ;
wire _3474_ ;
wire _3054_ ;
wire _4679_ ;
wire _4259_ ;
wire _5620_ ;
wire _5200_ ;
wire _8092_ ;
wire _6825_ ;
wire _6405_ ;
wire _1960_ ;
wire _1540_ ;
wire _1120_ ;
wire _871_ ;
wire _451_ ;
wire _2745_ ;
wire _2325_ ;
wire _7783_ ;
wire _7363_ ;
wire _8568_ ;
wire _8148_ ;
wire _3283_ ;
wire _4488_ ;
wire _4068_ ;
wire _927_ ;
wire _507_ ;
wire _6634_ ;
wire _6214_ ;
wire _680_ ;
wire _260_ ;
wire _7839_ ;
wire _7419_ ;
wire _2974_ ;
wire _2554_ ;
wire _2134_ ;
wire _3759_ ;
wire _3339_ ;
wire _4700_ ;
wire _7592_ ;
wire _7172_ ;
wire \datapath.idinstr_21_bF$buf16  ;
wire _5905_ ;
wire _8377_ ;
wire _3092_ ;
wire _1825_ ;
wire _1405_ ;
wire _4297_ ;
wire _2585__bF$buf0 ;
wire _2585__bF$buf1 ;
wire _2585__bF$buf2 ;
wire _2585__bF$buf3 ;
wire _2585__bF$buf4 ;
wire _2585__bF$buf5 ;
wire _736_ ;
wire _316_ ;
wire \datapath.idinstr_17_bF$buf1  ;
wire _6863_ ;
wire _6443_ ;
wire _6023_ ;
wire \datapath.idinstr_22_bF$buf25  ;
wire _7648_ ;
wire _7228_ ;
wire _2783_ ;
wire _2363_ ;
wire _3988_ ;
wire _3568_ ;
wire _3148_ ;
wire _5714_ ;
wire _8186_ ;
wire _6919_ ;
wire _1634_ ;
wire _1214_ ;
wire \datapath.idinstr_21_bF$buf1  ;
wire \datapath.idinstr_20_bF$buf45  ;
wire _965_ ;
wire _545_ ;
wire _125_ ;
wire _2839_ ;
wire \datapath.idinstr_15_bF$buf8  ;
wire _2419_ ;
wire _6672_ ;
wire _6252_ ;
wire _7877_ ;
wire _7457_ ;
wire _7037_ ;
wire _2592_ ;
wire _2172_ ;
wire _3797_ ;
wire _3377_ ;
wire _5943_ ;
wire _5523_ ;
wire _5103_ ;
wire _6728_ ;
wire _6308_ ;
wire _1863_ ;
wire _1443_ ;
wire _1023_ ;
wire _774_ ;
wire _354_ ;
wire _2648_ ;
wire _2228_ ;
wire _6481_ ;
wire _6061_ ;
wire _7686_ ;
wire _7266_ ;
wire _3186_ ;
wire _1919_ ;
wire _5752_ ;
wire _5332_ ;
wire _6957_ ;
wire _6537_ ;
wire _6117_ ;
wire _1672_ ;
wire _1252_ ;
wire _583_ ;
wire _163_ ;
wire _2877_ ;
wire _2457_ ;
wire _2037_ ;
wire _6290_ ;
wire _4603_ ;
wire _7495_ ;
wire _7075_ ;
wire _5808_ ;
wire _1728_ ;
wire _1308_ ;
wire _5981_ ;
wire _5561_ ;
wire _5141_ ;
wire _639_ ;
wire _219_ ;
wire [31:0] DMEM_ADDR ;
wire _6766_ ;
wire _6346_ ;
wire _1481_ ;
wire _1061_ ;
wire _392_ ;
wire \datapath.idinstr_24_bF$buf4  ;
wire _2686_ ;
wire _2266_ ;
wire _4832_ ;
wire _4412_ ;
wire _5617_ ;
wire _8089_ ;
wire \datapath.alu.b_2_bF$buf3  ;
wire _1957_ ;
wire _1537_ ;
wire _1117_ ;
wire _5790_ ;
wire _5370_ ;
wire _868_ ;
wire _448_ ;
wire _6995_ ;
wire _6575_ ;
wire _6155_ ;
wire _1290_ ;
wire _2495_ ;
wire _2075_ ;
wire _8301_ ;
wire _4641_ ;
wire _4221_ ;
wire _5846_ ;
wire _5426_ ;
wire _5006_ ;
wire _1766_ ;
wire _1346_ ;
wire _677_ ;
wire _257_ ;
wire _3912_ ;
wire _6384_ ;
wire \datapath._12_  ;
wire _7589_ ;
wire _7169_ ;
wire _8530_ ;
wire _8110_ ;
wire _3089_ ;
wire _4870_ ;
wire _4450_ ;
wire _4030_ ;
wire _5655_ ;
wire _5235_ ;
wire _1995_ ;
wire _1575_ ;
wire _1155_ ;
wire _7801_ ;
wire _486_ ;
wire _3721_ ;
wire _3301_ ;
wire _6193_ ;
wire _4926_ ;
wire _4506_ ;
wire _7398_ ;
wire _5884_ ;
wire _5464_ ;
wire _5044_ ;
wire _6669_ ;
wire _6249_ ;
wire _1384_ ;
wire _7610_ ;
wire _295_ ;
wire _2589_ ;
wire _2169_ ;
wire \datapath.idinstr_20_hier0_bF$buf2  ;
wire _3950_ ;
wire _3530_ ;
wire _3110_ ;
wire _4735_ ;
wire _4315_ ;
wire _14_ ;
wire _2801_ ;
wire _5693_ ;
wire _5273_ ;
wire _6898_ ;
wire _6478_ ;
wire _6058_ ;
wire _1193_ ;
wire _2398_ ;
wire _8624_ ;
wire _8204_ ;
wire _4964_ ;
wire _4544_ ;
wire _4124_ ;
wire _5749_ ;
wire _5329_ ;
wire _1669_ ;
wire _1249_ ;
wire _2610_ ;
wire _5082_ ;
wire \datapath.idinstr_15_bF$buf21  ;
wire _3815_ ;
wire _6287_ ;
wire _8433_ ;
wire _8013_ ;
wire _4773_ ;
wire _4353_ ;
wire _5978_ ;
wire _5558_ ;
wire _5138_ ;
wire \datapath.idinstr_16_bF$buf30  ;
wire _52_ ;
wire _1898_ ;
wire _1478_ ;
wire _1058_ ;
wire _7704_ ;
wire _389_ ;
wire _3624_ ;
wire _3204_ ;
wire _6096_ ;
wire _4829_ ;
wire _4409_ ;
wire _8662_ ;
wire _8242_ ;
wire _5687__bF$buf0 ;
wire _5687__bF$buf1 ;
wire _5687__bF$buf2 ;
wire _5687__bF$buf3 ;
wire _5687__bF$buf4 ;
wire _4582_ ;
wire _4162_ ;
wire _601_ ;
wire _5787_ ;
wire _5367_ ;
wire _1287_ ;
wire _7933_ ;
wire _7513_ ;
wire _198_ ;
wire _3853_ ;
wire _3433_ ;
wire _3013_ ;
wire _4638_ ;
wire _4218_ ;
wire _8471_ ;
wire _8051_ ;
wire _4391_ ;
wire _830_ ;
wire _410_ ;
wire _2704_ ;
wire _5596_ ;
wire _5176_ ;
wire _90_ ;
wire _3909_ ;
wire _1096_ ;
wire _7742_ ;
wire _7322_ ;
wire _8527_ ;
wire _8107_ ;
wire _3662_ ;
wire _3242_ ;
wire _4867_ ;
wire _4447_ ;
wire _4027_ ;
wire _8280_ ;
wire \datapath.immediatedecoder._09_  ;
wire _2933_ ;
wire _2513_ ;
wire _3718_ ;
wire _7971_ ;
wire _7551_ ;
wire _7131_ ;
wire _8336_ ;
wire _3891_ ;
wire _3471_ ;
wire _3051_ ;
wire _4676_ ;
wire _4256_ ;
wire _6822_ ;
wire _6402_ ;
wire _7607_ ;
wire _2742_ ;
wire _2322_ ;
wire _3947_ ;
wire _3527_ ;
wire _3107_ ;
wire _8_ ;
wire _7780_ ;
wire _7360_ ;
wire _8565_ ;
wire _8145_ ;
wire _994__bF$buf0 ;
wire _3280_ ;
wire _994__bF$buf1 ;
wire _994__bF$buf2 ;
wire _994__bF$buf3 ;
wire _994__bF$buf4 ;
wire _994__bF$buf5 ;
wire _994__bF$buf6 ;
wire _994__bF$buf7 ;
wire _4485_ ;
wire _4065_ ;
wire _924_ ;
wire _504_ ;
wire _6631_ ;
wire _6211_ ;
wire _7836_ ;
wire _7416_ ;
wire _2971_ ;
wire _2551_ ;
wire _2131_ ;
wire _3756_ ;
wire _3336_ ;
wire _5257__bF$buf0 ;
wire _5257__bF$buf1 ;
wire _5257__bF$buf2 ;
wire _5257__bF$buf3 ;
wire _5257__bF$buf4 ;
wire _5257__bF$buf5 ;
wire _5257__bF$buf6 ;
wire _5257__bF$buf7 ;
wire \datapath.idinstr_21_bF$buf13  ;
wire _5902_ ;
wire _8374_ ;
wire _1822_ ;
wire _1402_ ;
wire _4294_ ;
wire _733_ ;
wire _313_ ;
wire _2607_ ;
wire _5499_ ;
wire _5079_ ;
wire _6860_ ;
wire _6440_ ;
wire _6020_ ;
wire \datapath.idinstr_15_bF$buf18  ;
wire \datapath.idinstr_15_hier0_bF$buf6  ;
wire \datapath.idinstr_22_bF$buf22  ;
wire _7645_ ;
wire _7225_ ;
wire _2780_ ;
wire _2360_ ;
wire _3985_ ;
wire _3565_ ;
wire _3145_ ;
wire _5711_ ;
wire _8183_ ;
wire \datapath.idinstr_16_bF$buf27  ;
wire _49_ ;
wire _6916_ ;
wire _1631_ ;
wire _1211_ ;
wire \datapath.idinstr_20_bF$buf42  ;
wire _962_ ;
wire _542_ ;
wire _122_ ;
wire _2836_ ;
wire \datapath.idinstr_15_bF$buf5  ;
wire _2416_ ;
wire _7874_ ;
wire _7454_ ;
wire _7034_ ;
wire _8659_ ;
wire _8239_ ;
wire _3794_ ;
wire _3374_ ;
wire _4999_ ;
wire _4579_ ;
wire _4159_ ;
wire _5940_ ;
wire _5520_ ;
wire _5100_ ;
wire _6725_ ;
wire _6305_ ;
wire _1860_ ;
wire _1440_ ;
wire _1020_ ;
wire _771_ ;
wire _351_ ;
wire _2645_ ;
wire _2225_ ;
wire _7683_ ;
wire _7263_ ;
wire _8468_ ;
wire _8048_ ;
wire _3183_ ;
wire _1916_ ;
wire _4388_ ;
wire _827_ ;
wire _407_ ;
wire _87_ ;
wire _6954_ ;
wire _6534_ ;
wire _6114_ ;
wire _580_ ;
wire _160_ ;
wire _7739_ ;
wire _7319_ ;
wire _2874_ ;
wire _2454_ ;
wire _2034_ ;
wire _3659_ ;
wire _3239_ ;
wire _4600_ ;
wire _7492_ ;
wire _7072_ ;
wire _5805_ ;
wire _8277_ ;
wire _1725_ ;
wire _1305_ ;
wire _4197_ ;
wire _636_ ;
wire _216_ ;
wire _6763_ ;
wire _6343_ ;
wire _7968_ ;
wire _7548_ ;
wire _7128_ ;
wire \datapath.idinstr_24_bF$buf1  ;
wire _2683_ ;
wire _2263_ ;
wire _3888_ ;
wire _3468_ ;
wire _3048_ ;
wire _5614_ ;
wire _8086_ ;
wire [31:0] \datapath.csr._13_  ;
wire \datapath.alu.b_2_bF$buf0  ;
wire _6819_ ;
wire _1954_ ;
wire _1534_ ;
wire _1114_ ;
wire _865_ ;
wire _445_ ;
wire _2739_ ;
wire _2319_ ;
wire _6992_ ;
wire _6572_ ;
wire _6152_ ;
wire \controlunit.csrfile_trap_wen_bF$buf6  ;
wire _7777_ ;
wire _7357_ ;
wire _2492_ ;
wire _2072_ ;
wire \datapath.idinstr_22_bF$buf8  ;
wire _3697_ ;
wire _3277_ ;
wire _5843_ ;
wire _5423_ ;
wire _5003_ ;
wire _6628_ ;
wire _6208_ ;
wire _1763_ ;
wire _1343_ ;
wire _674_ ;
wire _254_ ;
wire _2968_ ;
wire _2548_ ;
wire _2128_ ;
wire _6381_ ;
wire _7586_ ;
wire _7166_ ;
wire _3086_ ;
wire _1819_ ;
wire _5652_ ;
wire _5232_ ;
wire _6857_ ;
wire _6437_ ;
wire _6017_ ;
wire _1992_ ;
wire _1572_ ;
wire _1152_ ;
wire _483_ ;
wire \datapath.idinstr_22_bF$buf19  ;
wire _2777_ ;
wire _2357_ ;
wire _6190_ ;
wire _4923_ ;
wire _4503_ ;
wire _7395_ ;
wire _4735__bF$buf0 ;
wire _4735__bF$buf1 ;
wire _4735__bF$buf2 ;
wire _4735__bF$buf3 ;
wire _4735__bF$buf4 ;
wire _5708_ ;
wire _1628_ ;
wire _1208_ ;
wire _5881_ ;
wire _5461_ ;
wire _5041_ ;
wire \datapath.idinstr_20_bF$buf39  ;
wire _959_ ;
wire _539_ ;
wire _119_ ;
wire _6666_ ;
wire _6246_ ;
wire _1381_ ;
wire _292_ ;
wire _2586_ ;
wire _2166_ ;
wire _4732_ ;
wire _4312_ ;
wire _5937_ ;
wire _5517_ ;
wire _11_ ;
wire _1857_ ;
wire _1437_ ;
wire _1017_ ;
wire _5690_ ;
wire _5270_ ;
wire _768_ ;
wire _348_ ;
wire _6895_ ;
wire _6475_ ;
wire _6055_ ;
wire _1190_ ;
wire _2395_ ;
wire _8621_ ;
wire _8201_ ;
wire _4961_ ;
wire _4541_ ;
wire _4121_ ;
wire [1:0] \datapath.csr.mstatus  ;
wire _5746_ ;
wire _5326_ ;
wire \controlunit.ill_op  ;
wire _1666_ ;
wire _1246_ ;
wire _997_ ;
wire _577_ ;
wire _157_ ;
wire _3812_ ;
wire _6284_ ;
wire _7489_ ;
wire _7069_ ;
wire _8430_ ;
wire _8010_ ;
wire _3027__bF$buf0 ;
wire _3027__bF$buf1 ;
wire _3027__bF$buf2 ;
wire _3027__bF$buf3 ;
wire _3027__bF$buf4 ;
wire _4770_ ;
wire _4350_ ;
wire \datapath.idinstr_21_hier0_bF$buf4  ;
wire _5975_ ;
wire _5555_ ;
wire _5135_ ;
wire [31:0] \datapath.registers.828[22]  ;
wire _316__bF$buf0 ;
wire _316__bF$buf1 ;
wire _316__bF$buf2 ;
wire _316__bF$buf3 ;
wire _316__bF$buf4 ;
wire _1895_ ;
wire _1475_ ;
wire _1055_ ;
wire _7701_ ;
wire _386_ ;
wire _3621_ ;
wire _3201_ ;
wire _6093_ ;
wire _4826_ ;
wire _4406_ ;
wire _7298_ ;
wire _5784_ ;
wire _5364_ ;
wire _6989_ ;
wire _6569_ ;
wire _6149_ ;
wire _1284_ ;
wire _7930_ ;
wire _7510_ ;
wire _195_ ;
wire _2489_ ;
wire _2069_ ;
wire _3850_ ;
wire _3430_ ;
wire _3010_ ;
wire _4635_ ;
wire _4215_ ;
wire _5099__bF$buf0 ;
wire _5099__bF$buf1 ;
wire _5099__bF$buf2 ;
wire _5099__bF$buf3 ;
wire _5099__bF$buf4 ;
wire _5099__bF$buf5 ;
wire _5099__bF$buf6 ;
wire _5099__bF$buf7 ;
wire _2701_ ;
wire _5593_ ;
wire _5173_ ;
wire _3906_ ;
wire _6798_ ;
wire _6378_ ;
wire _1093_ ;
wire _2298_ ;
wire _8524_ ;
wire _8104_ ;
wire _4864_ ;
wire _4444_ ;
wire _4024_ ;
wire _5649_ ;
wire _5229_ ;
wire _1989_ ;
wire _1569_ ;
wire _1149_ ;
wire _2930_ ;
wire _2510_ ;
wire _3715_ ;
wire _6187_ ;
wire _8333_ ;
wire _4673_ ;
wire _4253_ ;
wire _5878_ ;
wire _5458_ ;
wire _5038_ ;
wire _1798_ ;
wire _1378_ ;
wire _7604_ ;
wire _289_ ;
wire _4660__bF$buf0 ;
wire _4660__bF$buf1 ;
wire _4660__bF$buf2 ;
wire _4660__bF$buf3 ;
wire _4660__bF$buf4 ;
wire _3944_ ;
wire _3524_ ;
wire _3104_ ;
wire _5_ ;
wire _4729_ ;
wire _4309_ ;
wire _8562_ ;
wire _8142_ ;
wire _4482_ ;
wire _4062_ ;
wire [31:0] \datapath.muxaval  ;
wire _921_ ;
wire _501_ ;
wire _5687_ ;
wire _5267_ ;
wire _1187_ ;
wire _7833_ ;
wire _7413_ ;
wire _8618_ ;
wire _3753_ ;
wire _3333_ ;
wire _4958_ ;
wire _4538_ ;
wire \datapath.idinstr_21_bF$buf10  ;
wire _4118_ ;
wire _8371_ ;
wire _4291_ ;
wire _730_ ;
wire _310_ ;
wire _2604_ ;
wire _5496_ ;
wire _5076_ ;
wire \datapath.idinstr_15_bF$buf15  ;
wire _3809_ ;
wire \datapath.idinstr_15_hier0_bF$buf3  ;
wire _7642_ ;
wire _7222_ ;
wire _8427_ ;
wire _8007_ ;
wire _3982_ ;
wire _3562_ ;
wire _3142_ ;
wire _4767_ ;
wire _4347_ ;
wire _8180_ ;
wire \datapath.idinstr_16_bF$buf24  ;
wire _46_ ;
wire _6913_ ;
wire _2833_ ;
wire \datapath.idinstr_15_bF$buf2  ;
wire _2413_ ;
wire _3618_ ;
wire _7871_ ;
wire _7451_ ;
wire _7031_ ;
wire _8656_ ;
wire _8236_ ;
wire _3791_ ;
wire _3371_ ;
wire _4996_ ;
wire _4576_ ;
wire _4156_ ;
wire _6722_ ;
wire _6302_ ;
wire _7927_ ;
wire _7507_ ;
wire _2642_ ;
wire _2222_ ;
wire \datapath.idinstr_15_bF$buf53  ;
wire _3847_ ;
wire _3427_ ;
wire _3007_ ;
wire _7680_ ;
wire _7260_ ;
wire _8465_ ;
wire _8045_ ;
wire _3180_ ;
wire _1913_ ;
wire _4385_ ;
wire _824_ ;
wire _404_ ;
wire _4719__bF$buf0 ;
wire _4719__bF$buf1 ;
wire _4719__bF$buf2 ;
wire _4719__bF$buf3 ;
wire _84_ ;
wire _6951_ ;
wire _6531_ ;
wire _6111_ ;
wire _7736_ ;
wire _7316_ ;
wire _2871_ ;
wire _2451_ ;
wire _2031_ ;
wire _3656_ ;
wire _3236_ ;
wire _7092__bF$buf10 ;
wire _5802_ ;
wire _8274_ ;
wire _1722_ ;
wire _1302_ ;
wire _4194_ ;
wire _4723__bF$buf0 ;
wire _4723__bF$buf1 ;
wire _4723__bF$buf2 ;
wire _4723__bF$buf3 ;
wire _4723__bF$buf4 ;
wire _633_ ;
wire _213_ ;
wire _2927_ ;
wire _2507_ ;
wire _5399_ ;
wire _6760_ ;
wire _6340_ ;
wire _7965_ ;
wire _7545_ ;
wire _7125_ ;
wire _2680_ ;
wire _2260_ ;
wire \datapath.idinstr_18_bF$buf5  ;
wire _3885_ ;
wire _3465_ ;
wire _3045_ ;
wire _5611_ ;
wire _8083_ ;
wire _6816_ ;
wire _1951_ ;
wire _1531_ ;
wire _1111_ ;
wire _862_ ;
wire _442_ ;
wire _2736_ ;
wire _2316_ ;
wire _4675__bF$buf0 ;
wire _4675__bF$buf1 ;
wire _4675__bF$buf2 ;
wire _4675__bF$buf3 ;
wire _4675__bF$buf4 ;
wire \controlunit.csrfile_trap_wen_bF$buf3  ;
wire _7774_ ;
wire _7354_ ;
wire \datapath.idinstr_22_bF$buf5  ;
wire _8559_ ;
wire _8139_ ;
wire _3694_ ;
wire _3274_ ;
wire _4899_ ;
wire _4479_ ;
wire _4059_ ;
wire _5840_ ;
wire _5420_ ;
wire _5000_ ;
wire _918_ ;
wire _6625_ ;
wire _6205_ ;
wire _1760_ ;
wire _1340_ ;
wire _671_ ;
wire _251_ ;
wire _2965_ ;
wire _2545_ ;
wire _2125_ ;
wire _3424__bF$buf0 ;
wire _3424__bF$buf1 ;
wire _3424__bF$buf2 ;
wire _3424__bF$buf3 ;
wire _3424__bF$buf4 ;
wire _7583_ ;
wire _7163_ ;
wire _8368_ ;
wire _3083_ ;
wire _1816_ ;
wire _4288_ ;
wire _727_ ;
wire _307_ ;
wire _6854_ ;
wire _6434_ ;
wire _6014_ ;
wire _480_ ;
wire \datapath.idinstr_22_bF$buf16  ;
wire _7639_ ;
wire _7219_ ;
wire _2774_ ;
wire _2354_ ;
wire _3979_ ;
wire _3559_ ;
wire _3139_ ;
wire _4920_ ;
wire _4500_ ;
wire _7392_ ;
wire _5705_ ;
wire _8597_ ;
wire _8177_ ;
wire _1625_ ;
wire _1205_ ;
wire _4097_ ;
wire \datapath.idinstr_20_bF$buf36  ;
wire _956_ ;
wire _536_ ;
wire _116_ ;
wire _6663_ ;
wire _6243_ ;
wire _7868_ ;
wire _7448_ ;
wire _7028_ ;
wire _2583_ ;
wire _2163_ ;
wire _3788_ ;
wire _3368_ ;
wire _5934_ ;
wire _5514_ ;
wire _6719_ ;
wire \datapath.alu.b_0_bF$buf6  ;
wire _1854_ ;
wire _1434_ ;
wire _1014_ ;
wire _765_ ;
wire _345_ ;
wire _2639_ ;
wire _2219_ ;
wire _6892_ ;
wire _6472_ ;
wire _6052_ ;
wire _7677_ ;
wire _7257_ ;
wire _2392_ ;
wire _3597_ ;
wire _3177_ ;
wire _5743_ ;
wire _5323_ ;
wire _6948_ ;
wire _6528_ ;
wire _6108_ ;
wire _1663_ ;
wire _1243_ ;
wire _994_ ;
wire _574_ ;
wire _154_ ;
wire _2868_ ;
wire _2448_ ;
wire _2028_ ;
wire _6281_ ;
wire _7486_ ;
wire _7066_ ;
wire _1719_ ;
wire \datapath.idinstr_21_hier0_bF$buf1  ;
wire _4738__bF$buf0 ;
wire _4738__bF$buf1 ;
wire _4738__bF$buf2 ;
wire _4738__bF$buf3 ;
wire _4738__bF$buf4 ;
wire _4738__bF$buf5 ;
wire _4738__bF$buf6 ;
wire _5972_ ;
wire _4738__bF$buf7 ;
wire _5552_ ;
wire _5132_ ;
wire _6757_ ;
wire _6337_ ;
wire _1892_ ;
wire _1472_ ;
wire _1052_ ;
wire _383_ ;
wire _2677_ ;
wire _2257_ ;
wire _6090_ ;
wire \controlunit.regfile_wen  ;
wire _4823_ ;
wire _4403_ ;
wire gnd = 1'b0 ;
wire _7295_ ;
wire _5608_ ;
wire _1948_ ;
wire _1528_ ;
wire _1108_ ;
wire [31:0] \datapath.csr.csr_wdata  ;
wire _5781_ ;
wire _5361_ ;
wire _859_ ;
wire _439_ ;
wire _6986_ ;
wire _6566_ ;
wire _6146_ ;
wire _1281_ ;
wire _192_ ;
wire _2486_ ;
wire _2066_ ;
wire _8631__bF$buf0 ;
wire _8631__bF$buf1 ;
wire _8631__bF$buf2 ;
wire _8631__bF$buf3 ;
wire _8631__bF$buf4 ;
wire _8631__bF$buf5 ;
wire _8631__bF$buf6 ;
wire _8631__bF$buf7 ;
wire _4632_ ;
wire _4212_ ;
wire _5837_ ;
wire _5417_ ;
wire _1757_ ;
wire _1337_ ;
wire [31:0] \datapath.registers.828[5]  ;
wire _5590_ ;
wire _5170_ ;
wire _668_ ;
wire _248_ ;
wire _3903_ ;
wire _6795_ ;
wire _6375_ ;
wire _1090_ ;
wire _2295_ ;
wire _8521_ ;
wire _8101_ ;
wire _4861_ ;
wire _4441_ ;
wire _4021_ ;
wire _7088__bF$buf0 ;
wire _7088__bF$buf1 ;
wire _7088__bF$buf2 ;
wire _7088__bF$buf3 ;
wire _7088__bF$buf4 ;
wire _5646_ ;
wire _5226_ ;
wire _1986_ ;
wire _1566_ ;
wire _1146_ ;
wire _897_ ;
wire _477_ ;
wire _3712_ ;
wire _6184_ ;
wire _4917_ ;
wire \datapath._34_  ;
wire _7389_ ;
wire _8330_ ;
wire _7092__bF$buf0 ;
wire _7092__bF$buf1 ;
wire _7092__bF$buf2 ;
wire _7092__bF$buf3 ;
wire _7092__bF$buf4 ;
wire _7092__bF$buf5 ;
wire _7092__bF$buf6 ;
wire _7092__bF$buf7 ;
wire _7092__bF$buf8 ;
wire _7092__bF$buf9 ;
wire _4670_ ;
wire _4250_ ;
wire _5875_ ;
wire _5455_ ;
wire _5035_ ;
wire [31:0] \datapath.registers.828[12]  ;
wire _1795_ ;
wire _1375_ ;
wire _7601_ ;
wire _286_ ;
wire [31:0] \datapath.csr.mcause  ;
wire _3941_ ;
wire _3521_ ;
wire _3101_ ;
wire _2_ ;
wire _4726_ ;
wire _4306_ ;
wire _7198_ ;
wire _5684_ ;
wire _5264_ ;
wire _6889_ ;
wire _6469_ ;
wire _6049_ ;
wire _1184_ ;
wire _7830_ ;
wire _7410_ ;
wire _2389_ ;
wire _8615_ ;
wire _3750_ ;
wire _3330_ ;
wire _4955_ ;
wire _4535_ ;
wire _4115_ ;
wire _2601_ ;
wire _5493_ ;
wire _5073_ ;
wire CLK_bF$buf120 ;
wire CLK_bF$buf121 ;
wire CLK_bF$buf122 ;
wire CLK_bF$buf123 ;
wire CLK_bF$buf124 ;
wire CLK_bF$buf125 ;
wire \datapath.idinstr_15_bF$buf12  ;
wire CLK_bF$buf126 ;
wire CLK_bF$buf127 ;
wire CLK_bF$buf128 ;
wire _3806_ ;
wire CLK_bF$buf129 ;
wire \datapath.idinstr_15_hier0_bF$buf0  ;
wire _6698_ ;
wire _6278_ ;
wire _2198_ ;
wire _8424_ ;
wire _8004_ ;
wire _4764_ ;
wire _4344_ ;
wire _5969_ ;
wire _5549_ ;
wire _5129_ ;
wire \datapath.idinstr_16_bF$buf21  ;
wire _43_ ;
wire _6910_ ;
wire _1889_ ;
wire _1469_ ;
wire _1049_ ;
wire _2830_ ;
wire _2410_ ;
wire _3615_ ;
wire _6087_ ;
wire _8653_ ;
wire _8233_ ;
wire _4993_ ;
wire _4573_ ;
wire _4153_ ;
wire _5778_ ;
wire _5358_ ;
wire _1698_ ;
wire _1278_ ;
wire _7924_ ;
wire _7504_ ;
wire _189_ ;
wire \datapath.idinstr_15_bF$buf50  ;
wire _3844_ ;
wire _3424_ ;
wire _3004_ ;
wire _4629_ ;
wire _4209_ ;
wire _8462_ ;
wire _8042_ ;
wire \datapath.idinstr_16_hier0_bF$buf5  ;
wire _1910_ ;
wire _4382_ ;
wire _821_ ;
wire _401_ ;
wire _5587_ ;
wire _5167_ ;
wire _81_ ;
wire _1087_ ;
wire _7733_ ;
wire _7313_ ;
wire _8518_ ;
wire _3653_ ;
wire _3233_ ;
wire _4858_ ;
wire _4438_ ;
wire _4018_ ;
wire _8271_ ;
wire _4191_ ;
wire _630_ ;
wire _210_ ;
wire _2924_ ;
wire _2504_ ;
wire _5396_ ;
wire _3709_ ;
wire _7962_ ;
wire _7542_ ;
wire _7122_ ;
wire \datapath.idinstr_18_bF$buf2  ;
wire _8327_ ;
wire _3882_ ;
wire _3462_ ;
wire _3042_ ;
wire [31:0] \datapath.regcsrwb  ;
wire _4667_ ;
wire _4247_ ;
wire _8080_ ;
wire _6813_ ;
wire _2733_ ;
wire _2313_ ;
wire [31:0] \datapath.registers.828[29]  ;
wire _3938_ ;
wire _3518_ ;
wire \controlunit.csrfile_trap_wen_bF$buf0  ;
wire _7771_ ;
wire _7351_ ;
wire \datapath.idinstr_22_bF$buf2  ;
wire \datapath.idinstr_16_bF$buf9  ;
wire _8556_ ;
wire _8136_ ;
wire _3691_ ;
wire _3271_ ;
wire _4896_ ;
wire _4476_ ;
wire _4056_ ;
wire _915_ ;
wire _6622_ ;
wire _6202_ ;
wire \controlunit.mret_bF$buf4  ;
wire _7827_ ;
wire _7407_ ;
wire _2962_ ;
wire _2542_ ;
wire _2122_ ;
wire _3747_ ;
wire _3327_ ;
wire _7580_ ;
wire _7160_ ;
wire \datapath.idinstr_20_bF$buf9  ;
wire _8365_ ;
wire _3080_ ;
wire _1813_ ;
wire _4285_ ;
wire _724_ ;
wire _304_ ;
wire _6851_ ;
wire _6431_ ;
wire _6011_ ;
wire \datapath.idinstr_22_bF$buf13  ;
wire _7636_ ;
wire _7216_ ;
wire _2771_ ;
wire _2351_ ;
wire _1209__bF$buf0 ;
wire _1209__bF$buf1 ;
wire _1209__bF$buf2 ;
wire _1209__bF$buf3 ;
wire _1209__bF$buf4 ;
wire _3976_ ;
wire _3556_ ;
wire _3136_ ;
wire _5702_ ;
wire _8594_ ;
wire _8174_ ;
wire \datapath.idinstr_16_bF$buf18  ;
wire _6907_ ;
wire _1622_ ;
wire _1202_ ;
wire _4094_ ;
wire \datapath.idinstr_20_bF$buf33  ;
wire _953_ ;
wire _533_ ;
wire _113_ ;
wire _2827_ ;
wire _2407_ ;
wire _5299_ ;
wire _6660_ ;
wire _6240_ ;
wire _7865_ ;
wire _7445_ ;
wire _7025_ ;
wire _2580_ ;
wire _2160_ ;
wire _3785_ ;
wire _3365_ ;
wire \datapath.idinstr_21_bF$buf42  ;
wire _5931_ ;
wire _5511_ ;
wire _6716_ ;
wire \datapath.alu.b_0_bF$buf3  ;
wire _1851_ ;
wire _1431_ ;
wire _1011_ ;
wire _762_ ;
wire _342_ ;
wire _2636_ ;
wire _2216_ ;
wire \datapath.idinstr_15_bF$buf47  ;
wire _7674_ ;
wire _7254_ ;
wire _8459_ ;
wire _8039_ ;
wire _3594_ ;
wire _3174_ ;
wire _1907_ ;
wire _3427__bF$buf0 ;
wire _3427__bF$buf1 ;
wire _3427__bF$buf2 ;
wire _3427__bF$buf3 ;
wire _3427__bF$buf4 ;
wire _4799_ ;
wire _4379_ ;
wire _5740_ ;
wire _5320_ ;
wire _818_ ;
wire _78_ ;
wire _6945_ ;
wire _6525_ ;
wire _6105_ ;
wire _1660_ ;
wire _1240_ ;
wire _991_ ;
wire _571_ ;
wire _151_ ;
wire _2865_ ;
wire _2445_ ;
wire _2025_ ;
wire _7483_ ;
wire _7063_ ;
wire _8268_ ;
wire _1716_ ;
wire _4188_ ;
wire _627_ ;
wire _207_ ;
wire _6754_ ;
wire _6334_ ;
wire _380_ ;
wire _7959_ ;
wire _7539_ ;
wire _7119_ ;
wire _2674_ ;
wire _2254_ ;
wire _3879_ ;
wire _3459_ ;
wire _3039_ ;
wire _4820_ ;
wire _4400_ ;
wire _7292_ ;
wire _5605_ ;
wire _8497_ ;
wire _8077_ ;
wire _1945_ ;
wire _1525_ ;
wire _1105_ ;
wire _856_ ;
wire _436_ ;
wire _6983_ ;
wire _6563_ ;
wire _6143_ ;
wire \datapath.alu.b_3_bF$buf6  ;
wire _7768_ ;
wire _7348_ ;
wire _2483_ ;
wire _2063_ ;
wire _3688_ ;
wire _3268_ ;
wire _5834_ ;
wire _5414_ ;
wire _6619_ ;
wire _1754_ ;
wire _1334_ ;
wire _665_ ;
wire _245_ ;
wire _2959_ ;
wire _2539_ ;
wire _2119_ ;
wire [29:0] \datapath.csr.mepc  ;
wire _3900_ ;
wire _6792_ ;
wire _6372_ ;
wire _7997_ ;
wire _7577_ ;
wire _7157_ ;
wire _2292_ ;
wire _3497_ ;
wire _3077_ ;
wire _5643_ ;
wire _5223_ ;
wire _6848_ ;
wire _6428_ ;
wire _6008_ ;
wire _1983_ ;
wire _1563_ ;
wire _1143_ ;
wire _894_ ;
wire _474_ ;
wire _2768_ ;
wire _2348_ ;
wire _6181_ ;
wire _4914_ ;
wire _7386_ ;
wire _1619_ ;
wire _5872_ ;
wire _5452_ ;
wire _5032_ ;
wire _6657_ ;
wire _6237_ ;
wire _1792_ ;
wire _1372_ ;
wire CLK_hier0_bF$buf0 ;
wire CLK_hier0_bF$buf1 ;
wire CLK_hier0_bF$buf2 ;
wire CLK_hier0_bF$buf3 ;
wire CLK_hier0_bF$buf4 ;
wire CLK_hier0_bF$buf5 ;
wire CLK_hier0_bF$buf6 ;
wire CLK_hier0_bF$buf7 ;
wire CLK_hier0_bF$buf8 ;
wire CLK_hier0_bF$buf9 ;
wire _283_ ;
wire _2997_ ;
wire _2577_ ;
wire _2157_ ;
wire _4723_ ;
wire _4303_ ;
wire _7195_ ;
wire \datapath.idinstr_21_bF$buf39  ;
wire _5928_ ;
wire _5508_ ;
wire _1848_ ;
wire _1428_ ;
wire _1008_ ;
wire _5681_ ;
wire _5261_ ;
wire _759_ ;
wire _339_ ;
wire _6886_ ;
wire _6466_ ;
wire _6046_ ;
wire _1181_ ;
wire \datapath.idinstr_22_hier0_bF$buf5  ;
wire _2386_ ;
wire _8612_ ;
wire _4952_ ;
wire _4532_ ;
wire _4112_ ;
wire _5737_ ;
wire _5317_ ;
wire _1657_ ;
wire _1237_ ;
wire _5490_ ;
wire _5070_ ;
wire _988_ ;
wire _568_ ;
wire _148_ ;
wire _3803_ ;
wire _6695_ ;
wire _6275_ ;
wire _2195_ ;
wire _8421_ ;
wire _8001_ ;
wire _5614__bF$buf0 ;
wire _5614__bF$buf1 ;
wire _5614__bF$buf2 ;
wire _5614__bF$buf3 ;
wire _5614__bF$buf4 ;
wire _4761_ ;
wire _4341_ ;
wire _5966_ ;
wire _5546_ ;
wire _5126_ ;
wire _40_ ;
wire _7095__bF$buf0 ;
wire _7095__bF$buf1 ;
wire _7095__bF$buf2 ;
wire _7095__bF$buf3 ;
wire _7095__bF$buf4 ;
wire _1886_ ;
wire _1466_ ;
wire _1046_ ;
wire _797_ ;
wire _377_ ;
wire _3612_ ;
wire _6084_ ;
wire _4817_ ;
wire _7289_ ;
wire _8650_ ;
wire _8230_ ;
wire _4990_ ;
wire _4570_ ;
wire _4150_ ;
wire _5775_ ;
wire _5355_ ;
wire _1695_ ;
wire _1275_ ;
wire _7921_ ;
wire _7501_ ;
wire _186_ ;
wire _3841_ ;
wire _3421_ ;
wire _3001_ ;
wire _4626_ ;
wire _4206_ ;
wire _7098_ ;
wire \datapath.idinstr_16_hier0_bF$buf2  ;
wire _5584_ ;
wire _5164_ ;
wire _6789_ ;
wire _6369_ ;
wire _1084_ ;
wire _7730_ ;
wire _7310_ ;
wire _2289_ ;
wire _8515_ ;
wire _3650_ ;
wire _3230_ ;
wire _4855_ ;
wire _4435_ ;
wire _4015_ ;
wire _2921_ ;
wire _2501_ ;
wire _5393_ ;
wire _3706_ ;
wire _6598_ ;
wire _6178_ ;
wire _2098_ ;
wire _8324_ ;
wire _4664_ ;
wire _4244_ ;
wire _5869_ ;
wire _5449_ ;
wire _5029_ ;
wire _6810_ ;
wire _1789_ ;
wire _1369_ ;
wire _2730_ ;
wire _2310_ ;
wire _3935_ ;
wire _3515_ ;
wire _5038__bF$buf0 ;
wire _5038__bF$buf1 ;
wire _5038__bF$buf2 ;
wire _5038__bF$buf3 ;
wire \datapath.idinstr_16_bF$buf6  ;
wire _5038__bF$buf4 ;
wire _5038__bF$buf5 ;
wire _8553_ ;
wire _8133_ ;
wire _4893_ ;
wire _4473_ ;
wire _4053_ ;
wire _912_ ;
wire _5678_ ;
wire _5258_ ;
wire \controlunit.mret_bF$buf1  ;
wire _1598_ ;
wire _1178_ ;
wire _7824_ ;
wire _7404_ ;
wire _8609_ ;
wire _3744_ ;
wire _3324_ ;
wire _4949_ ;
wire \datapath.idinstr_20_bF$buf6  ;
wire _4529_ ;
wire _4109_ ;
wire _8362_ ;
wire _1810_ ;
wire _4282_ ;
wire _721_ ;
wire _301_ ;
wire _5487_ ;
wire _5067_ ;
wire \datapath.idinstr_22_bF$buf10  ;
wire _7633_ ;
wire _7213_ ;
wire _8418_ ;
wire _3973_ ;
wire _3553_ ;
wire _3133_ ;
wire _4758_ ;
wire _4338_ ;
wire _8591_ ;
wire _8171_ ;
wire \datapath.idinstr_16_bF$buf15  ;
wire _37_ ;
wire _6904_ ;
wire _4091_ ;
wire \datapath.idinstr_20_bF$buf30  ;
wire _950_ ;
wire _530_ ;
wire _110_ ;
wire _2824_ ;
wire _2404_ ;
wire _5296_ ;
wire \datapath.regisbranch  ;
wire _3609_ ;
wire _7862_ ;
wire _7442_ ;
wire _7022_ ;
wire _8647_ ;
wire _8227_ ;
wire _3782_ ;
wire _3362_ ;
wire _4987_ ;
wire _4567_ ;
wire _4147_ ;
wire _6713_ ;
wire \datapath.alu.b_0_bF$buf0  ;
wire _7918_ ;
wire _2633_ ;
wire _2213_ ;
wire [31:0] \datapath.registers.828[19]  ;
wire \datapath.idinstr_15_bF$buf44  ;
wire _3838_ ;
wire _3418_ ;
wire _7671_ ;
wire _7251_ ;
wire _8456_ ;
wire _8036_ ;
wire _3591_ ;
wire _3171_ ;
wire _1904_ ;
wire _4796_ ;
wire _4376_ ;
wire _815_ ;
wire _75_ ;
wire _6942_ ;
wire _6522_ ;
wire _6102_ ;
wire _7727_ ;
wire _7307_ ;
wire _2862_ ;
wire _2442_ ;
wire _2022_ ;
wire _3647_ ;
wire _3227_ ;
wire _7480_ ;
wire _7060_ ;
wire _4729__bF$buf0 ;
wire _4729__bF$buf1 ;
wire _4729__bF$buf2 ;
wire _4729__bF$buf3 ;
wire _4729__bF$buf4 ;
wire _8265_ ;
wire _1713_ ;
wire _4185_ ;
wire _624_ ;
wire _204_ ;
wire _2918_ ;
wire _6751_ ;
wire _6331_ ;
wire _7956_ ;
wire _7536_ ;
wire _7116_ ;
wire _2671_ ;
wire _2251_ ;
wire _3876_ ;
wire _3456_ ;
wire _3036_ ;
wire _5602_ ;
wire _8494_ ;
wire _8074_ ;
wire _6807_ ;
wire _1942_ ;
wire _1522_ ;
wire _1102_ ;
wire _853_ ;
wire _433_ ;
wire _2727_ ;
wire _2307_ ;
wire _5199_ ;
wire _6980_ ;
wire _6560_ ;
wire _6140_ ;
wire \datapath.alu.b_3_bF$buf3  ;
wire _7765_ ;
wire _7345_ ;
wire _2480_ ;
wire _2060_ ;
wire [31:0] \datapath.programcounter.pc  ;
wire _3685_ ;
wire _3265_ ;
wire _5831_ ;
wire _5411_ ;
wire _1882__bF$buf0 ;
wire _1882__bF$buf1 ;
wire _1882__bF$buf2 ;
wire _909_ ;
wire _1882__bF$buf3 ;
wire _4685__bF$buf0 ;
wire _4685__bF$buf1 ;
wire _4685__bF$buf2 ;
wire _4685__bF$buf3 ;
wire _6616_ ;
wire _1751_ ;
wire _1331_ ;
wire _662_ ;
wire _242_ ;
wire _2956_ ;
wire _2536_ ;
wire _2116_ ;
wire _7994_ ;
wire _7574_ ;
wire _7154_ ;
wire _8359_ ;
wire _3494_ ;
wire _3074_ ;
wire _1807_ ;
wire _4699_ ;
wire _4279_ ;
wire _5640_ ;
wire _5220_ ;
wire _718_ ;
wire _6845_ ;
wire _6425_ ;
wire _6005_ ;
wire _1980_ ;
wire _1560_ ;
wire _1140_ ;
wire _891_ ;
wire _471_ ;
wire _2765_ ;
wire _2345_ ;
wire _4911_ ;
wire _7383_ ;
wire _8588_ ;
wire _8168_ ;
wire _1616_ ;
wire _4088_ ;
wire \datapath.idinstr_20_bF$buf27  ;
wire _947_ ;
wire _527_ ;
wire _107_ ;
wire _6654_ ;
wire _6234_ ;
wire _280_ ;
wire _7859_ ;
wire _7439_ ;
wire _7019_ ;
wire _2994_ ;
wire _2574_ ;
wire _2154_ ;
wire _3779_ ;
wire _3359_ ;
wire _4720_ ;
wire _4300_ ;
wire _7192_ ;
wire \datapath.idinstr_21_bF$buf36  ;
wire _5925_ ;
wire _5505_ ;
wire _8397_ ;
wire _1845_ ;
wire _1425_ ;
wire _1005_ ;
wire _756_ ;
wire _336_ ;
wire _6883_ ;
wire _6463_ ;
wire _6043_ ;
wire _2041__bF$buf0 ;
wire \datapath.idinstr_22_hier0_bF$buf2  ;
wire _2041__bF$buf1 ;
wire _2041__bF$buf2 ;
wire _2041__bF$buf3 ;
wire _7668_ ;
wire _7248_ ;
wire _2383_ ;
wire _3588_ ;
wire _3168_ ;
wire _5734_ ;
wire _5314_ ;
wire _6939_ ;
wire _6519_ ;
wire _1654_ ;
wire _1234_ ;
wire _985_ ;
wire _565_ ;
wire _145_ ;
wire _2859_ ;
wire _2439_ ;
wire _2019_ ;
wire _3800_ ;
wire _6692_ ;
wire _6272_ ;
wire _7897_ ;
wire _7477_ ;
wire _7057_ ;
wire _2192_ ;
wire _3397_ ;
wire _5963_ ;
wire _5543_ ;
wire _5123_ ;
wire _6748_ ;
wire _6328_ ;
wire _1883_ ;
wire _1463_ ;
wire _1043_ ;
wire _794_ ;
wire _374_ ;
wire _2668_ ;
wire _2248_ ;
wire _6081_ ;
wire _4814_ ;
wire _7286_ ;
wire _1939_ ;
wire _1519_ ;
wire _5772_ ;
wire _5352_ ;
wire _6977_ ;
wire _6557_ ;
wire _6137_ ;
wire _1692_ ;
wire _1272_ ;
wire _183_ ;
wire _2897_ ;
wire _2477_ ;
wire _2057_ ;
wire _4623_ ;
wire _4203_ ;
wire _7095_ ;
wire _5828_ ;
wire _5408_ ;
wire _1748_ ;
wire _1328_ ;
wire _5581_ ;
wire _5161_ ;
wire _659_ ;
wire _239_ ;
wire [31:0] \datapath.memoryinterface.data_store  ;
wire _6786_ ;
wire _6366_ ;
wire _1081_ ;
wire _2286_ ;
wire _8512_ ;
wire _4852_ ;
wire _4432_ ;
wire _4012_ ;
wire _5637_ ;
wire _5217_ ;
wire _1977_ ;
wire _1557_ ;
wire _1137_ ;
wire _5390_ ;
wire _888_ ;
wire _468_ ;
wire _3703_ ;
wire _6595_ ;
wire _6175_ ;
wire _4908_ ;
wire _2095_ ;
wire _8321_ ;
wire _4661_ ;
wire _4241_ ;
wire _5866_ ;
wire _5446_ ;
wire _5026_ ;
wire _1786_ ;
wire _1366_ ;
wire _697_ ;
wire _277_ ;
wire _3932_ ;
wire _3512_ ;
wire _4717_ ;
wire _7189_ ;
wire \datapath.idinstr_16_bF$buf3  ;
wire _8550_ ;
wire _8130_ ;
wire _4890_ ;
wire _4470_ ;
wire _4050_ ;
wire _0__0_bF$buf0 ;
wire _5675_ ;
wire _0__0_bF$buf1 ;
wire _5255_ ;
wire _0__0_bF$buf2 ;
wire _0__0_bF$buf3 ;
wire _1595_ ;
wire _1175_ ;
wire _7821_ ;
wire _7401_ ;
wire _4886__bF$buf0 ;
wire _4886__bF$buf1 ;
wire _4886__bF$buf2 ;
wire _4886__bF$buf3 ;
wire _4886__bF$buf4 ;
wire _4886__bF$buf5 ;
wire _4886__bF$buf6 ;
wire _4886__bF$buf7 ;
wire _8606_ ;
wire _3741_ ;
wire _3321_ ;
wire _4946_ ;
wire \datapath.idinstr_20_bF$buf3  ;
wire _4526_ ;
wire _4106_ ;
wire \datapath.allowcsrwrite  ;
wire _5484_ ;
wire _5064_ ;
wire _6689_ ;
wire _6269_ ;
wire _7630_ ;
wire _7210_ ;
wire _2189_ ;
wire _8415_ ;
wire _3970_ ;
wire _3550_ ;
wire _3130_ ;
wire _4755_ ;
wire _4335_ ;
wire \datapath.idinstr_16_bF$buf12  ;
wire _34_ ;
wire _6901_ ;
wire _2821_ ;
wire _2401_ ;
wire _5293_ ;
wire [3:0] \datapath.csr.csr_mcause  ;
wire _3606_ ;
wire _6498_ ;
wire _6078_ ;
wire _8644_ ;
wire _8224_ ;
wire _4984_ ;
wire _4564_ ;
wire _4144_ ;
wire _5769_ ;
wire _5349_ ;
wire _6710_ ;
wire _1689_ ;
wire _1269_ ;
wire _7915_ ;
wire _2630_ ;
wire _2210_ ;
wire _4673__bF$buf0 ;
wire _4673__bF$buf1 ;
wire _4673__bF$buf2 ;
wire _4673__bF$buf3 ;
wire _4673__bF$buf4 ;
wire _4673__bF$buf5 ;
wire _4673__bF$buf6 ;
wire _4673__bF$buf7 ;
wire \datapath.idinstr_15_bF$buf41  ;
wire _3835_ ;
wire _3415_ ;
wire _8453_ ;
wire _8033_ ;
wire _1901_ ;
wire _4793_ ;
wire _4373_ ;
wire \datapath.idinstr_23_bF$buf6  ;
wire _812_ ;
wire _5998_ ;
wire _5578_ ;
wire _5158_ ;
wire _72_ ;
wire _1498_ ;
wire _1078_ ;
wire _7724_ ;
wire _7304_ ;
wire _8509_ ;
wire _3644_ ;
wire _3224_ ;
wire _4849_ ;
wire _4429_ ;
wire _4009_ ;
wire _8262_ ;
wire _1710_ ;
wire _4182_ ;
wire _621_ ;
wire _201_ ;
wire _2915_ ;
wire _5387_ ;
wire _7953_ ;
wire _7533_ ;
wire _7113_ ;
wire _8318_ ;
wire _3873_ ;
wire _3453_ ;
wire _3033_ ;
wire _4658_ ;
wire _4238_ ;
wire _8491_ ;
wire _8071_ ;
wire _6804_ ;
wire _850_ ;
wire _430_ ;
wire _2724_ ;
wire _2304_ ;
wire _5196_ ;
wire _3929_ ;
wire _3509_ ;
wire \datapath.alu.b_3_bF$buf0  ;
wire _7762_ ;
wire _7342_ ;
wire _8547_ ;
wire _8127_ ;
wire _3682_ ;
wire _3262_ ;
wire _4887_ ;
wire _4467_ ;
wire _4047_ ;
wire _906_ ;
wire _6613_ ;
wire _7818_ ;
wire _2953_ ;
wire _2533_ ;
wire _2113_ ;
wire _3738_ ;
wire _3318_ ;
wire _7991_ ;
wire _7571_ ;
wire _7151_ ;
wire _8356_ ;
wire _3491_ ;
wire _3071_ ;
wire _1804_ ;
wire _4696_ ;
wire _4276_ ;
wire _715_ ;
wire _6842_ ;
wire _6422_ ;
wire _6002_ ;
wire _7627_ ;
wire _7207_ ;
wire _2762_ ;
wire _2342_ ;
wire _3967_ ;
wire _3547_ ;
wire _3127_ ;
wire _7380_ ;
wire _8585_ ;
wire _8165_ ;
wire _1613_ ;
wire _4085_ ;
wire \datapath.idinstr_20_bF$buf24  ;
wire _944_ ;
wire _524_ ;
wire _104_ ;
wire _2818_ ;
wire _6651_ ;
wire _6231_ ;
wire _7856_ ;
wire _7436_ ;
wire _7016_ ;
wire _2991_ ;
wire _2571_ ;
wire _2151_ ;
wire _3776_ ;
wire _3356_ ;
wire \datapath.idinstr_21_bF$buf33  ;
wire _5922_ ;
wire _5502_ ;
wire _8394_ ;
wire _6707_ ;
wire _1842_ ;
wire _1422_ ;
wire _1002_ ;
wire _753_ ;
wire _333_ ;
wire _2627_ ;
wire _2207_ ;
wire _5099_ ;
wire _6880_ ;
wire _6460_ ;
wire _6040_ ;
wire \datapath.idinstr_15_bF$buf38  ;
wire \datapath.idinstr_22_bF$buf42  ;
wire _7665_ ;
wire _7245_ ;
wire _2380_ ;
wire _3585_ ;
wire _3165_ ;
wire _5731_ ;
wire _5311_ ;
wire [31:0] \datapath.registers.rega_data  ;
wire _809_ ;
wire _69_ ;
wire _6936_ ;
wire _6516_ ;
wire _1651_ ;
wire _1231_ ;
wire _982_ ;
wire _562_ ;
wire _142_ ;
wire _2856_ ;
wire _2436_ ;
wire _2016_ ;
wire _7894_ ;
wire _7474_ ;
wire _7054_ ;
wire _8259_ ;
wire _3394_ ;
wire _1707_ ;
wire [31:0] \datapath.registers.828[0]  ;
wire _4599_ ;
wire _4179_ ;
wire _5960_ ;
wire _5540_ ;
wire _5120_ ;
wire _618_ ;
wire _6745_ ;
wire _6325_ ;
wire _1880_ ;
wire _1460_ ;
wire _1040_ ;
wire _791_ ;
wire _371_ ;
wire _2665_ ;
wire _2245_ ;
wire _4811_ ;
wire _7283_ ;
wire _8488_ ;
wire _8068_ ;
wire _1936_ ;
wire _1516_ ;
wire _847_ ;
wire _427_ ;
wire _6974_ ;
wire _6554_ ;
wire _6134_ ;
wire _180_ ;
wire _7759_ ;
wire _7339_ ;
wire _2894_ ;
wire _2474_ ;
wire _2054_ ;
wire _3679_ ;
wire _3259_ ;
wire _4620_ ;
wire _4200_ ;
wire _7092_ ;
wire _5825_ ;
wire _5405_ ;
wire _8297_ ;
wire _1745_ ;
wire _4968__bF$buf0 ;
wire _1325_ ;
wire _4968__bF$buf1 ;
wire _4968__bF$buf2 ;
wire _4968__bF$buf3 ;
wire _4968__bF$buf4 ;
wire _4968__bF$buf5 ;
wire _4968__bF$buf6 ;
wire _4968__bF$buf7 ;
wire _656_ ;
wire _236_ ;
wire _6783_ ;
wire _6363_ ;
wire _7988_ ;
wire _7568_ ;
wire _7148_ ;
wire _2283_ ;
wire _3488_ ;
wire _3068_ ;
wire _5634_ ;
wire _5214_ ;
wire _6839_ ;
wire _6419_ ;
wire _1974_ ;
wire _1554_ ;
wire _1134_ ;
wire _885_ ;
wire _465_ ;
wire _2759_ ;
wire _2339_ ;
wire _3700_ ;
wire _6592_ ;
wire _6172_ ;
wire _4905_ ;
wire _7797_ ;
wire _7377_ ;
wire _2092_ ;
wire _3297_ ;
wire _5863_ ;
wire _5443_ ;
wire _5023_ ;
wire _6648_ ;
wire _6228_ ;
wire _1783_ ;
wire _1363_ ;
wire _694_ ;
wire _274_ ;
wire _2988_ ;
wire _2568_ ;
wire _2148_ ;
wire _4714_ ;
wire _7186_ ;
wire \datapath.idinstr_16_bF$buf0  ;
wire _5919_ ;
wire _1839_ ;
wire _1419_ ;
wire _5672_ ;
wire _5252_ ;
wire _6877_ ;
wire _6457_ ;
wire _6037_ ;
wire _1592_ ;
wire _1172_ ;
wire \datapath.idinstr_22_bF$buf39  ;
wire _2797_ ;
wire _2377_ ;
wire _8603_ ;
wire _8498__bF$buf0 ;
wire _8498__bF$buf1 ;
wire _8498__bF$buf2 ;
wire _8498__bF$buf3 ;
wire _8498__bF$buf4 ;
wire _8498__bF$buf5 ;
wire _8498__bF$buf6 ;
wire _8498__bF$buf7 ;
wire _4943_ ;
wire \datapath.idinstr_20_bF$buf0  ;
wire _4523_ ;
wire _4103_ ;
wire _5728_ ;
wire _5308_ ;
wire _1648_ ;
wire _1228_ ;
wire _5481_ ;
wire _5061_ ;
wire _979_ ;
wire _559_ ;
wire _139_ ;
wire _6686_ ;
wire _6266_ ;
wire _2186_ ;
wire _8412_ ;
wire _4752_ ;
wire _4332_ ;
wire _5957_ ;
wire _5537_ ;
wire _5117_ ;
wire _31_ ;
wire _1877_ ;
wire _1457_ ;
wire _1037_ ;
wire _5290_ ;
wire _788_ ;
wire _368_ ;
wire _3603_ ;
wire _6495_ ;
wire _6075_ ;
wire _4808_ ;
wire _8641_ ;
wire _8221_ ;
wire _4981_ ;
wire _4561_ ;
wire _4141_ ;
wire \datapath.idinstr_19_bF$buf3  ;
wire _5766_ ;
wire _5346_ ;
wire _1686_ ;
wire _1266_ ;
wire _7912_ ;
wire _597_ ;
wire _177_ ;
wire _3832_ ;
wire _3412_ ;
wire _4617_ ;
wire [31:0] \datapath._04_  ;
wire _7089_ ;
wire _8450_ ;
wire _8030_ ;
wire _4790_ ;
wire _4370_ ;
wire \datapath.idinstr_23_bF$buf3  ;
wire _5995_ ;
wire _5575_ ;
wire _5155_ ;
wire [31:0] \datapath.registers.828[24]  ;
wire vdd = 1'b1 ;
wire _1495_ ;
wire _1075_ ;
wire _7721_ ;
wire _7301_ ;
wire _8506_ ;
wire _3641_ ;
wire _3221_ ;
wire _4846_ ;
wire _4426_ ;
wire _4006_ ;
wire _2912_ ;
wire _5384_ ;
wire _6589_ ;
wire _6169_ ;
wire _7950_ ;
wire _7530_ ;
wire _7110_ ;
wire _2089_ ;
wire _8315_ ;
wire _3870_ ;
wire _3450_ ;
wire _3030_ ;
wire _4655_ ;
wire _4235_ ;
wire _6801_ ;
wire _2721_ ;
wire _2301_ ;
wire _5193_ ;
wire _3926_ ;
wire _3506_ ;
wire _6398_ ;
wire _8544_ ;
wire _8124_ ;
wire _4884_ ;
wire _4464_ ;
wire _4044_ ;
wire _903_ ;
wire _5669_ ;
wire _5249_ ;
wire _6610_ ;
wire _1589_ ;
wire _1169_ ;
wire _7815_ ;
wire _2950_ ;
wire _2530_ ;
wire _2110_ ;
wire _3735_ ;
wire _3315_ ;
wire \datapath.alu.b_1_bF$buf4  ;
wire _8353_ ;
wire _1801_ ;
wire _4693_ ;
wire _4273_ ;
wire _712_ ;
wire _5898_ ;
wire _5478_ ;
wire _5058_ ;
wire [31:0] \datapath.alu.a  ;
wire _1398_ ;
wire _7624_ ;
wire _7204_ ;
wire _8409_ ;
wire _3964_ ;
wire _3544_ ;
wire _3124_ ;
wire _4749_ ;
wire _4329_ ;
wire _8582_ ;
wire _8162_ ;
wire _28_ ;
wire _1610_ ;
wire _4082_ ;
wire \datapath.idinstr_20_bF$buf21  ;
wire _941_ ;
wire _521_ ;
wire _101_ ;
wire _2815_ ;
wire \controlunit.ebreak  ;
wire _5287_ ;
wire _7853_ ;
wire _7433_ ;
wire _7013_ ;
wire _8638_ ;
wire _8218_ ;
wire _3773_ ;
wire _3353_ ;
wire _4978_ ;
wire _4558_ ;
wire \datapath.idinstr_21_bF$buf30  ;
wire _4138_ ;
wire _8391_ ;
wire _6704_ ;
wire _750_ ;
wire _330_ ;
wire _7909_ ;
wire _2624_ ;
wire _2204_ ;
wire _5096_ ;
wire \datapath.idinstr_15_bF$buf35  ;
wire _3829_ ;
wire _3409_ ;
wire _7662_ ;
wire _7242_ ;
wire _8447_ ;
wire _8027_ ;
wire _3582_ ;
wire _3162_ ;
wire _4787_ ;
wire _4367_ ;
wire _806_ ;
wire \datapath.idinstr_16_bF$buf44  ;
wire _66_ ;
wire _6933_ ;
wire _6513_ ;
wire _7718_ ;
wire _2853_ ;
wire _2433_ ;
wire _2013_ ;
wire _3638_ ;
wire _3218_ ;
wire _7891_ ;
wire _7471_ ;
wire _7051_ ;
wire _8256_ ;
wire _3391_ ;
wire _1704_ ;
wire _4596_ ;
wire _4176_ ;
wire _615_ ;
wire _2909_ ;
wire _6742_ ;
wire _6322_ ;
wire _7947_ ;
wire _7527_ ;
wire _7107_ ;
wire _2662_ ;
wire _2242_ ;
wire _3867_ ;
wire _3447_ ;
wire _3027_ ;
wire _7280_ ;
wire _8485_ ;
wire _8065_ ;
wire _1933_ ;
wire _1513_ ;
wire _844_ ;
wire _424_ ;
wire _2718_ ;
wire _6971_ ;
wire _6551_ ;
wire _6131_ ;
wire _7756_ ;
wire _7336_ ;
wire _2891_ ;
wire _2471_ ;
wire _2051_ ;
wire _3676_ ;
wire _3256_ ;
wire _5822_ ;
wire _5402_ ;
wire _8294_ ;
wire [31:0] \datapath.idinstr  ;
wire _6607_ ;
wire _1742_ ;
wire _1322_ ;
wire _653_ ;
wire _233_ ;
wire _2947_ ;
wire _2527_ ;
wire _2107_ ;
wire _6780_ ;
wire _6360_ ;
wire _7985_ ;
wire _7565_ ;
wire _7145_ ;
wire _2280_ ;
wire _4695__bF$buf0 ;
wire _4695__bF$buf1 ;
wire _4695__bF$buf2 ;
wire _4695__bF$buf3 ;
wire _4695__bF$buf4 ;
wire _3485_ ;
wire _3065_ ;
wire _5631_ ;
wire _5211_ ;
wire _709_ ;
wire _6836_ ;
wire _6416_ ;
wire _1971_ ;
wire _1551_ ;
wire _1131_ ;
wire _882_ ;
wire _462_ ;
wire _2756_ ;
wire _2336_ ;
wire _4902_ ;
wire _7794_ ;
wire _7374_ ;
wire _8579_ ;
wire _8159_ ;
wire _3294_ ;
wire _1607_ ;
wire _4499_ ;
wire _4079_ ;
wire _5860_ ;
wire _5440_ ;
wire _5020_ ;
wire \datapath.idinstr_20_bF$buf18  ;
wire _938_ ;
wire _518_ ;
wire _6645_ ;
wire _6225_ ;
wire _1780_ ;
wire _1360_ ;
wire _691_ ;
wire _271_ ;
wire _2985_ ;
wire _2565_ ;
wire _2145_ ;
wire _4711_ ;
wire _7183_ ;
wire \datapath.idinstr_21_bF$buf27  ;
wire _5916_ ;
wire _8388_ ;
wire _1836_ ;
wire _1416_ ;
wire _418__bF$buf0 ;
wire _418__bF$buf1 ;
wire _418__bF$buf2 ;
wire _418__bF$buf3 ;
wire _418__bF$buf4 ;
wire _747_ ;
wire _327_ ;
wire _6874_ ;
wire _6454_ ;
wire _6034_ ;
wire \datapath.idinstr_22_bF$buf36  ;
wire _7659_ ;
wire _7239_ ;
wire _2794_ ;
wire _2374_ ;
wire _8600_ ;
wire _3999_ ;
wire _3579_ ;
wire _3159_ ;
wire _4940_ ;
wire _4520_ ;
wire _4100_ ;
wire _5725_ ;
wire _5305_ ;
wire _8197_ ;
wire _1645_ ;
wire _1225_ ;
wire _976_ ;
wire _556_ ;
wire _136_ ;
wire _6683_ ;
wire _6263_ ;
wire _7888_ ;
wire _7468_ ;
wire _7048_ ;
wire _2183_ ;
wire _3388_ ;
wire _5954_ ;
wire _5534_ ;
wire _5114_ ;
wire _6739_ ;
wire _6319_ ;
wire _1874_ ;
wire _1454_ ;
wire _1034_ ;
wire _785_ ;
wire _365_ ;
wire _2659_ ;
wire _2239_ ;
wire _3600_ ;
wire _6492_ ;
wire _6072_ ;
wire _4805_ ;
wire _7697_ ;
wire _7277_ ;
wire [31:0] \datapath.regloadwb  ;
wire _3197_ ;
wire \datapath.idinstr_19_bF$buf0  ;
wire _5763_ ;
wire _5343_ ;
wire _6968_ ;
wire _6548_ ;
wire _6128_ ;
wire _1683_ ;
wire _1263_ ;
wire _594_ ;
wire _174_ ;
wire _2888_ ;
wire _2468_ ;
wire _2048_ ;
wire _4614_ ;
wire _7086_ ;
wire _5819_ ;
wire _1739_ ;
wire _1319_ ;
wire \datapath.idinstr_23_bF$buf0  ;
wire _5992_ ;
wire _5572_ ;
wire _5152_ ;
wire _6777_ ;
wire _6357_ ;
wire _1492_ ;
wire _1072_ ;
wire _2697_ ;
wire _2277_ ;
wire _8503_ ;
wire _4843_ ;
wire _4423_ ;
wire _4003_ ;
wire _5628_ ;
wire _5208_ ;
wire _1968_ ;
wire _1548_ ;
wire _1128_ ;
wire _5381_ ;
wire _879_ ;
wire _459_ ;
wire _6586_ ;
wire _6166_ ;
wire _2086_ ;
wire _8312_ ;
wire _4652_ ;
wire _4232_ ;
wire _5857_ ;
wire _5437_ ;
wire _5017_ ;
wire _1777_ ;
wire _1357_ ;
wire [31:0] \datapath.registers.828[7]  ;
wire _5190_ ;
wire _688_ ;
wire _268_ ;
wire _3923_ ;
wire _3503_ ;
wire _6395_ ;
wire _4708_ ;
wire _8541_ ;
wire _8121_ ;
wire _4881_ ;
wire _4461_ ;
wire _4041_ ;
wire _5579__bF$buf0 ;
wire _5579__bF$buf1 ;
wire _900_ ;
wire _5579__bF$buf2 ;
wire _5579__bF$buf3 ;
wire _5579__bF$buf4 ;
wire _5666_ ;
wire _5246_ ;
wire \datapath.idinstr_17_bF$buf9  ;
wire _1586_ ;
wire _1166_ ;
wire _7812_ ;
wire _497_ ;
wire _3732_ ;
wire _3312_ ;
wire \datapath.alu.b_1_bF$buf1  ;
wire _4937_ ;
wire _4517_ ;
wire \datapath._36_  ;
wire _8350_ ;
wire _4690_ ;
wire _4270_ ;
wire \datapath.idinstr_21_bF$buf9  ;
wire _5895_ ;
wire _5475_ ;
wire _5055_ ;
wire [31:0] \datapath.registers.828[14]  ;
wire _1395_ ;
wire _7621_ ;
wire _7201_ ;
wire _8406_ ;
wire _3961_ ;
wire _3541_ ;
wire _3121_ ;
wire _4746_ ;
wire _4326_ ;
wire [2:0] \datapath.aluexecptions  ;
wire _25_ ;
wire _2812_ ;
wire _5284_ ;
wire _6489_ ;
wire _6069_ ;
wire _7850_ ;
wire _7430_ ;
wire _7010_ ;
wire _8635_ ;
wire _8215_ ;
wire _3770_ ;
wire _3350_ ;
wire \datapath.idinstr_17_bF$buf12  ;
wire _4975_ ;
wire _4555_ ;
wire _4135_ ;
wire _6701_ ;
wire _4679__bF$buf0 ;
wire _4679__bF$buf1 ;
wire _4679__bF$buf2 ;
wire _4679__bF$buf3 ;
wire _4679__bF$buf4 ;
wire _7906_ ;
wire _2621_ ;
wire _2201_ ;
wire _5093_ ;
wire \datapath.idinstr_15_bF$buf32  ;
wire _3826_ ;
wire _3406_ ;
wire _6298_ ;
wire _8444_ ;
wire _8024_ ;
wire \datapath.alu.b_4_bF$buf4  ;
wire _4784_ ;
wire _4364_ ;
wire _803_ ;
wire _5989_ ;
wire _4683__bF$buf0 ;
wire _5569_ ;
wire _4683__bF$buf1 ;
wire _5149_ ;
wire _4683__bF$buf2 ;
wire _4683__bF$buf3 ;
wire _4683__bF$buf4 ;
wire \datapath.idinstr_16_bF$buf41  ;
wire _63_ ;
wire _6930_ ;
wire _6510_ ;
wire _1489_ ;
wire _1069_ ;
wire _7715_ ;
wire _2850_ ;
wire _2430_ ;
wire _2010_ ;
wire _3635_ ;
wire _3215_ ;
wire _8253_ ;
wire _1701_ ;
wire _4593_ ;
wire _4173_ ;
wire _612_ ;
wire _2906_ ;
wire _5798_ ;
wire _5378_ ;
wire [1:0] bsel ;
wire _1298_ ;
wire _7944_ ;
wire _7524_ ;
wire _7104_ ;
wire _8309_ ;
wire _3864_ ;
wire _3444_ ;
wire _3024_ ;
wire _4649_ ;
wire _4229_ ;
wire _8482_ ;
wire CLK_bF$buf80 ;
wire _8062_ ;
wire CLK_bF$buf81 ;
wire CLK_bF$buf82 ;
wire CLK_bF$buf83 ;
wire CLK_bF$buf84 ;
wire CLK_bF$buf85 ;
wire CLK_bF$buf86 ;
wire CLK_bF$buf87 ;
wire CLK_bF$buf88 ;
wire CLK_bF$buf89 ;
wire _1930_ ;
wire _1510_ ;
wire _841_ ;
wire _421_ ;
wire _2715_ ;
wire _5187_ ;
wire _7753_ ;
wire _7333_ ;
wire _8538_ ;
wire _8118_ ;
wire _3673_ ;
wire _3253_ ;
wire _4878_ ;
wire _4458_ ;
wire _4038_ ;
wire _8291_ ;
wire _6604_ ;
wire _650_ ;
wire _230_ ;
wire _7809_ ;
wire _2944_ ;
wire _2524_ ;
wire _2104_ ;
wire _3729_ ;
wire _3309_ ;
wire _7982_ ;
wire _7562_ ;
wire _7142_ ;
wire _8347_ ;
wire _3482_ ;
wire _3062_ ;
wire _4687_ ;
wire _4267_ ;
wire _706_ ;
wire _6833_ ;
wire _6413_ ;
wire _7618_ ;
wire _2753_ ;
wire _2333_ ;
wire _3958_ ;
wire _3538_ ;
wire _3118_ ;
wire _7791_ ;
wire _7371_ ;
wire _8576_ ;
wire _8156_ ;
wire \datapath.csr._20_  ;
wire _3291_ ;
wire _1604_ ;
wire _4496_ ;
wire _4076_ ;
wire \datapath.idinstr_20_bF$buf15  ;
wire _935_ ;
wire _515_ ;
wire _2809_ ;
wire _6642_ ;
wire _6222_ ;
wire _7847_ ;
wire _7427_ ;
wire _7007_ ;
wire _2982_ ;
wire _2562_ ;
wire _2142_ ;
wire _3767_ ;
wire _3347_ ;
wire _7180_ ;
wire \datapath.idinstr_21_bF$buf24  ;
wire _5913_ ;
wire _8385_ ;
wire [2:0] \controlunit.imm_sel  ;
wire _1833_ ;
wire _1413_ ;
wire _744_ ;
wire _324_ ;
wire _2618_ ;
wire _6871_ ;
wire _6451_ ;
wire _6031_ ;
wire \datapath.idinstr_15_bF$buf29  ;
wire \datapath.idinstr_22_bF$buf33  ;
wire _7656_ ;
wire _7236_ ;
wire _2791_ ;
wire _2371_ ;
wire _3996_ ;
wire _3576_ ;
wire _3156_ ;
wire _5722_ ;
wire _5302_ ;
wire _8194_ ;
wire \datapath.idinstr_16_bF$buf38  ;
wire _6927_ ;
wire _6507_ ;
wire _1642_ ;
wire _1222_ ;
wire \datapath.idinstr_20_bF$buf53  ;
wire _973_ ;
wire _553_ ;
wire _133_ ;
wire _2847_ ;
wire _2427_ ;
wire _2007_ ;
wire _6680_ ;
wire _6260_ ;
wire _7885_ ;
wire _7465_ ;
wire _7045_ ;
wire _2180_ ;
wire _3385_ ;
wire _1091__bF$buf0 ;
wire _1091__bF$buf1 ;
wire _1091__bF$buf2 ;
wire _1091__bF$buf3 ;
wire _1091__bF$buf4 ;
wire _1091__bF$buf5 ;
wire _1091__bF$buf6 ;
wire _5951_ ;
wire _5531_ ;
wire _5111_ ;
wire _609_ ;
wire _6736_ ;
wire _6316_ ;
wire _1871_ ;
wire _1451_ ;
wire _1031_ ;
wire _782_ ;
wire _362_ ;
wire _2656_ ;
wire _2236_ ;
wire _4802_ ;
wire _7694_ ;
wire _7274_ ;
wire _8479_ ;
wire _8059_ ;
wire _3194_ ;
wire _1927_ ;
wire _1507_ ;
wire _4399_ ;
wire _5760_ ;
wire _5340_ ;
wire _838_ ;
wire _418_ ;
wire _98_ ;
wire _6965_ ;
wire _6545_ ;
wire _6125_ ;
wire _1680_ ;
wire _1260_ ;
wire _591_ ;
wire _171_ ;
wire _2885_ ;
wire _2465_ ;
wire _2045_ ;
wire _4611_ ;
wire _7083_ ;
wire _5816_ ;
wire _8288_ ;
wire _1736_ ;
wire _1316_ ;
wire _647_ ;
wire _227_ ;
wire _6774_ ;
wire _6354_ ;
wire _7979_ ;
wire _5003__bF$buf0 ;
wire _7559_ ;
wire _5003__bF$buf1 ;
wire _7139_ ;
wire _5003__bF$buf2 ;
wire _5003__bF$buf3 ;
wire _5003__bF$buf4 ;
wire _2694_ ;
wire _2274_ ;
wire _8500_ ;
wire _3899_ ;
wire _3479_ ;
wire _3059_ ;
wire _4840_ ;
wire _4420_ ;
wire _4000_ ;
wire _5625_ ;
wire _5205_ ;
wire _8097_ ;
wire _1965_ ;
wire _1545_ ;
wire _1125_ ;
wire [14:0] \datapath.wbinstr  ;
wire _876_ ;
wire _456_ ;
wire _6583_ ;
wire _6163_ ;
wire _7788_ ;
wire _7368_ ;
wire _2083_ ;
wire _3288_ ;
wire _5854_ ;
wire _5434_ ;
wire _5014_ ;
wire [1:0] \datapath.csr._37_  ;
wire _6639_ ;
wire _6219_ ;
wire _1774_ ;
wire _1354_ ;
wire _685_ ;
wire _265_ ;
wire _2979_ ;
wire _2559_ ;
wire _2139_ ;
wire _3920_ ;
wire _3500_ ;
wire _6392_ ;
wire _4705_ ;
wire _7597_ ;
wire _7177_ ;
wire _3097_ ;
wire _5663_ ;
wire _5243_ ;
wire \datapath.idinstr_17_bF$buf6  ;
wire _6868_ ;
wire _6448_ ;
wire _6028_ ;
wire _1583_ ;
wire _1163_ ;
wire _494_ ;
wire _2788_ ;
wire _2368_ ;
wire [31:2] \datapath.nextpc  ;
wire _4934_ ;
wire _4514_ ;
wire _5719_ ;
wire _1639_ ;
wire _1219_ ;
wire \datapath.idinstr_21_bF$buf6  ;
wire _5892_ ;
wire _5472_ ;
wire _5052_ ;
wire _6677_ ;
wire _6257_ ;
wire _1392_ ;
wire _2597_ ;
wire _2177_ ;
wire _8403_ ;
wire _4743_ ;
wire _4323_ ;
wire _5948_ ;
wire _5528_ ;
wire _5108_ ;
wire _22_ ;
wire _1868_ ;
wire _1448_ ;
wire _1028_ ;
wire _5281_ ;
wire _779_ ;
wire _359_ ;
wire _6486_ ;
wire _6066_ ;
wire _8632_ ;
wire _8212_ ;

OAI21X1 _11689_ (
    .A(_1889__bF$buf1),
    .B(\datapath.alu.a [16]),
    .C(_1890__bF$buf2),
    .Y(_1093_)
);

AOI22X1 _11269_ (
    .A(_1996_),
    .B(\datapath.alu.b [6]),
    .C(\datapath.alu.a [6]),
    .D(_2042_),
    .Y(_2234_)
);

OAI21X1 _17915_ (
    .A(_7795_),
    .B(_7786_),
    .C(_7088__bF$buf1),
    .Y(_7796_)
);

OAI21X1 _12630_ (
    .A(_2797__bF$buf1),
    .B(\datapath.csr.csr_wdata [5]),
    .C(_2783__bF$buf0),
    .Y(_2799_)
);

INVX2 _12210_ (
    .A(\datapath.csr.mvect [0]),
    .Y(_2479_)
);

INVX2 _9837_ (
    .A(_694_),
    .Y(_695_)
);

NAND3X1 _9417_ (
    .A(_353_),
    .B(_354_),
    .C(_352_),
    .Y(\datapath.muxbval [11])
);

FILL SFILL23560x44050 (
);

NOR2X1 _13835_ (
    .A(_3601_),
    .B(_3588_),
    .Y(_3609_)
);

OAI21X1 _13415_ (
    .A(_3232_),
    .B(_0__1_bF$buf2),
    .C(_3305_),
    .Y(_3306_)
);

FILL SFILL69000x40050 (
);

NAND2X1 _9590_ (
    .A(\datapath.registers.rega_data [22]),
    .B(_418__bF$buf2),
    .Y(_485_)
);

NAND2X1 _9170_ (
    .A(gnd),
    .B(\datapath.idinstr_23_bF$buf0 ),
    .Y(_165_)
);

NOR2X1 _18873_ (
    .A(\datapath.registers.828[26] [21]),
    .B(_8598__bF$buf1),
    .Y(_8620_)
);

MUX2X1 _18453_ (
    .A(\datapath.registers.828[25] [28]),
    .B(\datapath.registers.828[24] [28]),
    .S(\datapath.idinstr_20_bF$buf39 ),
    .Y(_8321_)
);

NAND2X1 _18033_ (
    .A(\datapath.registers.828[12] [18]),
    .B(_7089__bF$buf9),
    .Y(_7911_)
);

FILL SFILL53720x31050 (
);

NAND3X1 _11901_ (
    .A(_1315_),
    .B(_1319_),
    .C(_1132_),
    .Y(_1320_)
);

DFFPOSX1 _19658_ (
    .Q(\datapath.registers.828[26] [26]),
    .CLK(CLK_bF$buf135),
    .D(_4230_)
);

DFFPOSX1 _19238_ (
    .Q(\datapath.registers.828[20] [22]),
    .CLK(CLK_bF$buf82),
    .D(_4034_)
);

OAI21X1 _14793_ (
    .A(_5165_),
    .B(_5167__bF$buf6),
    .C(_5168_),
    .Y(_3700_)
);

NAND2X1 _14373_ (
    .A(\datapath.rd [7]),
    .B(_4924__bF$buf1),
    .Y(_4934_)
);

NAND2X1 _15998_ (
    .A(_5681__bF$buf2),
    .B(_5920_),
    .Y(_5921_)
);

OAI21X1 _15578_ (
    .A(_5098__bF$buf3),
    .B(_4668__bF$buf1),
    .C(\datapath.registers.828[1] [11]),
    .Y(_5591_)
);

NOR2X1 _15158_ (
    .A(\datapath.registers.828[6] [2]),
    .B(_5369__bF$buf2),
    .Y(_5372_)
);

DFFPOSX1 _10293_ (
    .Q(\datapath.regcsralu [6]),
    .CLK(CLK_bF$buf43),
    .D(\datapath.csr.csr_data [6])
);

FILL SFILL3400x29050 (
);

FILL SFILL43640x36050 (
);

INVX1 _8861_ (
    .A(_66_),
    .Y(_67_)
);

OAI21X1 _11498_ (
    .A(_2430_),
    .B(_2431_),
    .C(_2457_),
    .Y(_2458_)
);

NOR2X1 _11078_ (
    .A(_2046_),
    .B(_1889__bF$buf2),
    .Y(_2047_)
);

INVX1 _17724_ (
    .A(\datapath.registers.828[16] [11]),
    .Y(_7609_)
);

AOI21X1 _17304_ (
    .A(\datapath.idinstr_20_bF$buf21 ),
    .B(_7197_),
    .C(_7092__bF$buf1),
    .Y(_7198_)
);

NAND2X1 _9646_ (
    .A(_525_),
    .B(_526_),
    .Y(_527_)
);

AOI21X1 _9226_ (
    .A(_200_),
    .B(_197_),
    .C(_210_),
    .Y(\datapath.csr.csr_mcause [1])
);

AOI21X1 _18929_ (
    .A(_4705__bF$buf4),
    .B(_8631__bF$buf1),
    .C(_8648_),
    .Y(_4187_)
);

MUX2X1 _18509_ (
    .A(_8375_),
    .B(_8374_),
    .S(\datapath.idinstr_21_bF$buf41 ),
    .Y(_8376_)
);

NAND3X1 _13644_ (
    .A(_3459_),
    .B(_3460_),
    .C(_3458_),
    .Y(\datapath.programcounter.pc_mux [7])
);

NAND3X1 _13224_ (
    .A(\datapath.memoryinterface.byte_size_store.storebyte [23]),
    .B(_3027__bF$buf1),
    .C(_3029__bF$buf3),
    .Y(_3167_)
);

FILL SFILL73800x23050 (
);

FILL SFILL78920x50 (
);

AOI21X1 _14849_ (
    .A(_4721__bF$buf2),
    .B(_5167__bF$buf3),
    .C(_5200_),
    .Y(_3716_)
);

NOR2X1 _14429_ (
    .A(\datapath.registers.828[17] [31]),
    .B(_4924__bF$buf7),
    .Y(_4966_)
);

NOR2X1 _14009_ (
    .A(\datapath.wbinstr [7]),
    .B(_4661_),
    .Y(_4737_)
);

AOI21X1 _18682_ (
    .A(_4719__bF$buf2),
    .B(_8498__bF$buf4),
    .C(_8522_),
    .Y(_4323_)
);

MUX2X1 _18262_ (
    .A(_8134_),
    .B(_8133_),
    .S(_7089__bF$buf1),
    .Y(_8135_)
);

NAND2X1 _10769_ (
    .A(_1738_),
    .B(_1739_),
    .Y(_1740_)
);

DFFPOSX1 _10349_ (
    .Q(\datapath.regrs2alu [30]),
    .CLK(CLK_bF$buf7),
    .D(\datapath.registers.regb_data [30])
);

AOI21X1 _11710_ (
    .A(_1109_),
    .B(_2317_),
    .C(_1114_),
    .Y(_1115_)
);

DFFPOSX1 _19887_ (
    .Q(\datapath.registers.828[1] [31]),
    .CLK(CLK_bF$buf52),
    .D(_4012_)
);

DFFPOSX1 _19467_ (
    .Q(\datapath.registers.828[23] [27]),
    .CLK(CLK_bF$buf149),
    .D(_4135_)
);

DFFPOSX1 _19047_ (
    .Q(\datapath.registers.828[31] [23]),
    .CLK(CLK_bF$buf135),
    .D(_4419_)
);

FILL SFILL23640x32050 (
);

AOI21X1 _14182_ (
    .A(_4711__bF$buf2),
    .B(_4806__bF$buf7),
    .C(_4826_),
    .Y(_4030_)
);

INVX1 _8917_ (
    .A(\datapath.programcounter.pc [3]),
    .Y(_773_)
);

FILL SFILL23560x39050 (
);

DFFPOSX1 _12915_ (
    .Q(\datapath.csr.mepc [9]),
    .CLK(CLK_bF$buf11),
    .D(\datapath.csr._26_ [9])
);

NAND2X1 _15387_ (
    .A(\datapath.registers.828[4] [18]),
    .B(_5470__bF$buf0),
    .Y(_5489_)
);

FILL SFILL84200x10050 (
);

BUFX2 _8670_ (
    .A(_0_[6]),
    .Y(DMEM_ADDR[6])
);

FILL SFILL13640x30050 (
);

BUFX2 BUFX2_insert120 (
    .A(\datapath.idinstr_21_hier0_bF$buf1 ),
    .Y(\datapath.idinstr_21_bF$buf4 )
);

BUFX2 BUFX2_insert121 (
    .A(\datapath.idinstr_21_hier0_bF$buf2 ),
    .Y(\datapath.idinstr_21_bF$buf3 )
);

BUFX2 BUFX2_insert122 (
    .A(\datapath.idinstr_21_hier0_bF$buf3 ),
    .Y(\datapath.idinstr_21_bF$buf2 )
);

BUFX2 BUFX2_insert123 (
    .A(\datapath.idinstr_21_hier0_bF$buf2 ),
    .Y(\datapath.idinstr_21_bF$buf1 )
);

BUFX2 BUFX2_insert124 (
    .A(\datapath.idinstr_21_hier0_bF$buf4 ),
    .Y(\datapath.idinstr_21_bF$buf0 )
);

NAND3X1 _17953_ (
    .A(_7091__bF$buf2),
    .B(_7832_),
    .C(_7829_),
    .Y(_7833_)
);

BUFX2 BUFX2_insert125 (
    .A(_3423_),
    .Y(_3423__bF$buf4)
);

MUX2X1 _17533_ (
    .A(\datapath.registers.828[9] [7]),
    .B(\datapath.registers.828[8] [7]),
    .S(\datapath.idinstr_20_bF$buf21 ),
    .Y(_7422_)
);

BUFX2 BUFX2_insert126 (
    .A(_3423_),
    .Y(_3423__bF$buf3)
);

MUX2X1 _17113_ (
    .A(\datapath.registers.828[5] [30]),
    .B(\datapath.registers.828[4] [30]),
    .S(\datapath.idinstr_15_bF$buf23 ),
    .Y(_7011_)
);

BUFX2 BUFX2_insert127 (
    .A(_3423_),
    .Y(_3423__bF$buf2)
);

FILL SFILL53720x26050 (
);

BUFX2 BUFX2_insert128 (
    .A(_3423_),
    .Y(_3423__bF$buf1)
);

BUFX2 BUFX2_insert129 (
    .A(_3423_),
    .Y(_3423__bF$buf0)
);

FILL SFILL68680x50 (
);

AND2X2 _9875_ (
    .A(\datapath.alupc [29]),
    .B(\datapath.regimmalu [29]),
    .Y(_728_)
);

NAND2X1 _9455_ (
    .A(\datapath.imm [21]),
    .B(_316__bF$buf1),
    .Y(_383_)
);

NAND2X1 _9035_ (
    .A(gnd),
    .B(\datapath.idpc_4 [10]),
    .Y(_852_)
);

NAND2X1 _18738_ (
    .A(\datapath.registers.828[28] [19]),
    .B(_8531__bF$buf1),
    .Y(_8551_)
);

OAI21X1 _18318_ (
    .A(_6775_),
    .B(\datapath.idinstr_22_bF$buf29 ),
    .C(_8189_),
    .Y(_8190_)
);

DFFPOSX1 _13873_ (
    .Q(\datapath.programcounter.pc [5]),
    .CLK(CLK_bF$buf81),
    .D(\datapath.programcounter._1_ [5])
);

NAND3X1 _13453_ (
    .A(_3291__bF$buf1),
    .B(_3332_),
    .C(_3326_),
    .Y(\datapath.memdataload [22])
);

NAND3X1 _13033_ (
    .A(_2986_),
    .B(_2987_),
    .C(_2985_),
    .Y(\datapath.imm [3])
);

FILL SFILL78920x30050 (
);

FILL SFILL43320x55050 (
);

NAND2X1 _14658_ (
    .A(\controlunit.regfile_wen ),
    .B(_4771_),
    .Y(_5098_)
);

OAI21X1 _14238_ (
    .A(_4857_),
    .B(_4842__bF$buf3),
    .C(_4858_),
    .Y(_3958_)
);

MUX2X1 _18491_ (
    .A(_8358_),
    .B(_8357_),
    .S(\datapath.idinstr_21_bF$buf6 ),
    .Y(_8359_)
);

AOI21X1 _18071_ (
    .A(\datapath.registers.828[31] [19]),
    .B(\datapath.idinstr_22_bF$buf12 ),
    .C(_7089__bF$buf4),
    .Y(_7948_)
);

FILL SFILL68760x1050 (
);

NAND2X1 _10998_ (
    .A(\datapath.alu.b_0_bF$buf6 ),
    .B(\datapath.alu.a [12]),
    .Y(_1968_)
);

DFFPOSX1 _10578_ (
    .Q(\datapath.idpc [0]),
    .CLK(CLK_bF$buf0),
    .D(\datapath._03_ [0])
);

DFFPOSX1 _10158_ (
    .Q(\datapath.memexecptions [0]),
    .CLK(CLK_bF$buf0),
    .D(\datapath.aluexecptions [0])
);

OAI21X1 _16804_ (
    .A(_6708_),
    .B(_6699_),
    .C(_5680__bF$buf3),
    .Y(_6709_)
);

DFFPOSX1 _19696_ (
    .Q(\datapath.registers.828[0] [0]),
    .CLK(CLK_bF$buf61),
    .D(_3636_)
);

DFFPOSX1 _19276_ (
    .Q(\datapath.registers.828[22] [28]),
    .CLK(CLK_bF$buf24),
    .D(_4104_)
);

BUFX2 _8726_ (
    .A(_1_[30]),
    .Y(DMEM_DATA_S[30])
);

OAI21X1 _12724_ (
    .A(_2856_),
    .B(_2612_),
    .C(_2614_),
    .Y(_2858_)
);

AOI22X1 _12304_ (
    .A(_2500__bF$buf4),
    .B(\datapath.csr.mvect [18]),
    .C(\datapath.csr.mepc [16]),
    .D(_2507__bF$buf0),
    .Y(_2555_)
);

NOR2X1 _15196_ (
    .A(\datapath.registers.828[6] [21]),
    .B(_5369__bF$buf3),
    .Y(_5391_)
);

FILL SFILL33640x29050 (
);

NOR2X1 _13929_ (
    .A(\datapath.registers.828[23] [5]),
    .B(_4673__bF$buf7),
    .Y(_4684_)
);

INVX1 _13509_ (
    .A(\datapath.programcounter.pc [4]),
    .Y(_3366_)
);

MUX2X1 _17762_ (
    .A(\datapath.registers.828[11] [12]),
    .B(\datapath.registers.828[10] [12]),
    .S(\datapath.idinstr_20_bF$buf37 ),
    .Y(_7646_)
);

MUX2X1 _17342_ (
    .A(\datapath.registers.828[5] [3]),
    .B(\datapath.registers.828[4] [3]),
    .S(\datapath.idinstr_20_bF$buf26 ),
    .Y(_7235_)
);

FILL SFILL23720x20050 (
);

XNOR2X1 _9684_ (
    .A(_558_),
    .B(_559_),
    .Y(\datapath.jumptarget [6])
);

FILL SFILL74040x4050 (
);

AOI22X1 _9264_ (
    .A(_219__bF$buf4),
    .B(\datapath.wbpc_4 [7]),
    .C(\datapath.regcsrwb [7]),
    .D(_216__bF$buf4),
    .Y(_239_)
);

FILL SFILL73720x7050 (
);

FILL SFILL73400x1050 (
);

BUFX2 _18967_ (
    .A(\datapath.registers.828[0] [7]),
    .Y(_3665_)
);

NOR2X1 _18547_ (
    .A(_7003_),
    .B(_7089__bF$buf9),
    .Y(_8413_)
);

AOI21X1 _18127_ (
    .A(\datapath.registers.828[5] [20]),
    .B(\datapath.idinstr_22_bF$buf26 ),
    .C(_7089__bF$buf3),
    .Y(_8003_)
);

FILL SFILL23640x27050 (
);

AOI22X1 _13682_ (
    .A(_3423__bF$buf0),
    .B(\datapath.alu.c [12]),
    .C(\datapath.csr.csr_pcaddr [12]),
    .D(_3429__bF$buf4),
    .Y(_3489_)
);

INVX1 _13262_ (
    .A(DMEM_DATA_L[29]),
    .Y(_3199_)
);

AOI21X1 _14887_ (
    .A(_4687__bF$buf4),
    .B(_5212__bF$buf6),
    .C(_5223_),
    .Y(_3697_)
);

NAND2X1 _14467_ (
    .A(\datapath.registers.828[16] [17]),
    .B(_4968__bF$buf4),
    .Y(_4986_)
);

NOR2X1 _14047_ (
    .A(\datapath.registers.828[22] [18]),
    .B(_4738__bF$buf3),
    .Y(_4757_)
);

FILL SFILL13640x25050 (
);

DFFPOSX1 _10387_ (
    .Q(\datapath.alu.a [4]),
    .CLK(CLK_bF$buf55),
    .D(\datapath.muxaval [4])
);

MUX2X1 _16613_ (
    .A(\datapath.registers.828[29] [19]),
    .B(\datapath.registers.828[28] [19]),
    .S(\datapath.idinstr_15_bF$buf19 ),
    .Y(_6522_)
);

FILL SFILL34120x52050 (
);

DFFPOSX1 _19085_ (
    .Q(\datapath.registers.828[10] [29]),
    .CLK(CLK_bF$buf148),
    .D(_3689_)
);

OAI21X1 _8955_ (
    .A(_797_),
    .B(gnd),
    .C(_798_),
    .Y(\datapath._03_ [15])
);

NAND2X1 _17818_ (
    .A(\datapath.idinstr_22_bF$buf0 ),
    .B(_7700_),
    .Y(_7701_)
);

FILL SFILL43720x6050 (
);

DFFPOSX1 _12953_ (
    .Q(\datapath.csr.mvect [14]),
    .CLK(CLK_bF$buf83),
    .D(\datapath.csr._13_ [14])
);

INVX1 _12533_ (
    .A(\datapath.csr.mepc [16]),
    .Y(_2721_)
);

NAND2X1 _12113_ (
    .A(\datapath.alu.b_0_bF$buf8 ),
    .B(_1738_),
    .Y(_1546_)
);

FILL SFILL78920x25050 (
);

FILL SFILL43800x12050 (
);

NAND2X1 _13738_ (
    .A(_3424__bF$buf3),
    .B(\datapath.nextpc [18]),
    .Y(_3533_)
);

MUX2X1 _13318_ (
    .A(_3076_),
    .B(_3236_),
    .S(_3229_),
    .Y(\datapath.memoryinterface.byte_size_store.storebyte [15])
);

BUFX2 BUFX2_insert500 (
    .A(\datapath.idinstr_20_hier0_bF$buf1 ),
    .Y(\datapath.idinstr_20_bF$buf36 )
);

BUFX2 BUFX2_insert501 (
    .A(\datapath.idinstr_20_hier0_bF$buf0 ),
    .Y(\datapath.idinstr_20_bF$buf35 )
);

BUFX2 BUFX2_insert502 (
    .A(\datapath.idinstr_20_hier0_bF$buf1 ),
    .Y(\datapath.idinstr_20_bF$buf34 )
);

BUFX2 BUFX2_insert503 (
    .A(\datapath.idinstr_20_hier0_bF$buf5 ),
    .Y(\datapath.idinstr_20_bF$buf33 )
);

AOI21X1 _17991_ (
    .A(\datapath.registers.828[13] [17]),
    .B(\datapath.idinstr_20_bF$buf47 ),
    .C(\datapath.idinstr_21_bF$buf21 ),
    .Y(_7870_)
);

BUFX2 BUFX2_insert504 (
    .A(\datapath.idinstr_20_hier0_bF$buf4 ),
    .Y(\datapath.idinstr_20_bF$buf32 )
);

NAND2X1 _17571_ (
    .A(_7456_),
    .B(_7458_),
    .Y(_7459_)
);

BUFX2 BUFX2_insert505 (
    .A(\datapath.idinstr_20_hier0_bF$buf2 ),
    .Y(\datapath.idinstr_20_bF$buf31 )
);

MUX2X1 _17151_ (
    .A(_7047_),
    .B(_7046_),
    .S(\datapath.idinstr_16_bF$buf34 ),
    .Y(_7048_)
);

BUFX2 BUFX2_insert506 (
    .A(\datapath.idinstr_20_hier0_bF$buf5 ),
    .Y(\datapath.idinstr_20_bF$buf30 )
);

BUFX2 BUFX2_insert507 (
    .A(\datapath.idinstr_20_hier0_bF$buf6 ),
    .Y(\datapath.idinstr_20_bF$buf29 )
);

BUFX2 BUFX2_insert508 (
    .A(\datapath.idinstr_20_hier0_bF$buf4 ),
    .Y(\datapath.idinstr_20_bF$buf28 )
);

BUFX2 BUFX2_insert509 (
    .A(\datapath.idinstr_20_hier0_bF$buf3 ),
    .Y(\datapath.idinstr_20_bF$buf27 )
);

NAND3X1 _9493_ (
    .A(_410_),
    .B(_411_),
    .C(_409_),
    .Y(\datapath.muxbval [30])
);

INVX1 _9073_ (
    .A(\datapath.nextpc [23]),
    .Y(_877_)
);

NAND2X1 _18776_ (
    .A(\datapath.rd [5]),
    .B(_8565__bF$buf7),
    .Y(_8571_)
);

MUX2X1 _18356_ (
    .A(\datapath.registers.828[7] [25]),
    .B(\datapath.registers.828[6] [25]),
    .S(\datapath.idinstr_20_bF$buf40 ),
    .Y(_8227_)
);

AOI22X1 _13491_ (
    .A(DMEM_DATA_L[6]),
    .B(_3217_),
    .C(_3229_),
    .D(DMEM_DATA_L[14]),
    .Y(_3355_)
);

NAND2X1 _13071_ (
    .A(_3033__bF$buf5),
    .B(_3036_),
    .Y(_3037_)
);

FILL SFILL33720x17050 (
);

NAND2X1 _11804_ (
    .A(\datapath.alu.b_3_bF$buf1 ),
    .B(_2442_),
    .Y(_1216_)
);

NOR2X1 _14696_ (
    .A(\datapath.registers.828[13] [18]),
    .B(_5099__bF$buf7),
    .Y(_5118_)
);

NOR2X1 _14276_ (
    .A(\datapath.registers.828[19] [28]),
    .B(_4842__bF$buf5),
    .Y(_4880_)
);

FILL SFILL13320x4050 (
);

FILL SFILL58920x21050 (
);

FILL SFILL23320x46050 (
);

DFFPOSX1 _10196_ (
    .Q(\datapath.mempc_4 [3]),
    .CLK(CLK_bF$buf121),
    .D(\datapath.alupc_4 [3])
);

OAI21X1 _16842_ (
    .A(_6744_),
    .B(\datapath.idinstr_17_bF$buf3 ),
    .C(_6745_),
    .Y(_6746_)
);

MUX2X1 _16422_ (
    .A(\datapath.registers.828[3] [14]),
    .B(\datapath.registers.828[2] [14]),
    .S(\datapath.idinstr_15_bF$buf47 ),
    .Y(_6336_)
);

AOI21X1 _16002_ (
    .A(_5919_),
    .B(_5924_),
    .C(\datapath.idinstr_18_bF$buf5 ),
    .Y(_5925_)
);

FILL SFILL23720x15050 (
);

NOR2X1 _8764_ (
    .A(\controlunit.csrfile_trap_wen_bF$buf3 ),
    .B(\datapath.meminstr [4]),
    .Y(_102_)
);

MUX2X1 _17627_ (
    .A(\datapath.registers.828[30] [9]),
    .B(\datapath.registers.828[28] [9]),
    .S(\datapath.idinstr_21_bF$buf7 ),
    .Y(_7514_)
);

NAND2X1 _17207_ (
    .A(\datapath.idinstr_22_bF$buf23 ),
    .B(_7102_),
    .Y(_7103_)
);

OAI21X1 _12762_ (
    .A(_2882_),
    .B(_2887_),
    .C(_2628_),
    .Y(_2889_)
);

INVX1 _12342_ (
    .A(\datapath.csr.mcause [31]),
    .Y(_2580_)
);

DFFPOSX1 _9969_ (
    .Q(\datapath.regloadwb [23]),
    .CLK(CLK_bF$buf1),
    .D(\datapath.memdataload [23])
);

NAND3X1 _9549_ (
    .A(_453_),
    .B(_454_),
    .C(_452_),
    .Y(\datapath.muxaval [11])
);

OAI21X1 _9129_ (
    .A(_136_),
    .B(gnd),
    .C(_137_),
    .Y(\datapath._05_ [9])
);

INVX8 _13967_ (
    .A(\datapath.rd [18]),
    .Y(_4709_)
);

AOI21X1 _13547_ (
    .A(gnd),
    .B(_3390_),
    .C(_3391_),
    .Y(\datapath.programcounter._1_ [16])
);

AOI22X1 _13127_ (
    .A(\datapath.memoryinterface.data_store [8]),
    .B(_3031__bF$buf0),
    .C(_3084_),
    .D(_3033__bF$buf2),
    .Y(_3085_)
);

FILL SFILL48840x26050 (
);

MUX2X1 _17380_ (
    .A(_7271_),
    .B(_7270_),
    .S(\datapath.idinstr_21_bF$buf28 ),
    .Y(_7272_)
);

FILL SFILL23480x6050 (
);

AOI21X1 _18585_ (
    .A(_8446_),
    .B(_8450_),
    .C(_7093__bF$buf2),
    .Y(_8451_)
);

MUX2X1 _18165_ (
    .A(_8039_),
    .B(_8038_),
    .S(\datapath.idinstr_21_bF$buf32 ),
    .Y(_8040_)
);

OAI21X1 _11613_ (
    .A(_1990__bF$buf2),
    .B(_1006_),
    .C(_1886__bF$buf2),
    .Y(_1011_)
);

NOR2X1 _14085_ (
    .A(\datapath.registers.828[21] [4]),
    .B(_4772__bF$buf5),
    .Y(_4777_)
);

OAI21X1 _12818_ (
    .A(_2737_),
    .B(_2585__bF$buf5),
    .C(_2936_),
    .Y(\datapath.csr.csr_pcaddr [22])
);

OAI21X1 _16651_ (
    .A(_6559_),
    .B(_6550_),
    .C(_5680__bF$buf4),
    .Y(_6560_)
);

AOI21X1 _16231_ (
    .A(\datapath.registers.828[12] [10]),
    .B(\datapath.idinstr_17_bF$buf1 ),
    .C(\datapath.idinstr_15_bF$buf21 ),
    .Y(_6149_)
);

NAND2X1 _8993_ (
    .A(gnd),
    .B(\datapath.idpc [28]),
    .Y(_824_)
);

AOI21X1 _17856_ (
    .A(_7733_),
    .B(_7737_),
    .C(\datapath.idinstr_23_bF$buf0 ),
    .Y(_7738_)
);

MUX2X1 _17436_ (
    .A(\datapath.registers.828[1] [5]),
    .B(\datapath.registers.828[0] [5]),
    .S(\datapath.idinstr_20_bF$buf19 ),
    .Y(_7327_)
);

NAND2X1 _17016_ (
    .A(_5684__bF$buf4),
    .B(_6915_),
    .Y(_6916_)
);

NAND2X1 _12991_ (
    .A(_3004_),
    .B(_3013_),
    .Y(_3014_)
);

NAND2X1 _12571_ (
    .A(\controlunit.csrfile_trap_wen_bF$buf7 ),
    .B(\datapath.csr.csr_mepc [25]),
    .Y(_2752_)
);

OAI21X1 _12151_ (
    .A(_1889__bF$buf3),
    .B(\datapath.alu.a [30]),
    .C(_1890__bF$buf1),
    .Y(_1587_)
);

NAND2X1 _9778_ (
    .A(_631_),
    .B(_639_),
    .Y(_642_)
);

NAND2X1 _9358_ (
    .A(\datapath.regcsrwb [30]),
    .B(_216__bF$buf3),
    .Y(_310_)
);

NAND3X1 _13776_ (
    .A(_3561_),
    .B(_3562_),
    .C(_3560_),
    .Y(\datapath.programcounter.pc_mux [22])
);

AOI22X1 _13356_ (
    .A(DMEM_DATA_L[1]),
    .B(_3031__bF$buf4),
    .C(_3256_),
    .D(_3033__bF$buf0),
    .Y(_3257_)
);

OAI21X1 _15922_ (
    .A(_5842_),
    .B(_5843_),
    .C(_5846_),
    .Y(_5847_)
);

OAI21X1 _15502_ (
    .A(_5546__bF$buf4),
    .B(_4683__bF$buf2),
    .C(_5552_),
    .Y(_4367_)
);

AOI21X1 _18394_ (
    .A(\datapath.registers.828[13] [26]),
    .B(\datapath.idinstr_20_bF$buf50 ),
    .C(\datapath.idinstr_21_bF$buf30 ),
    .Y(_8264_)
);

MUX2X1 _16707_ (
    .A(\datapath.registers.828[19] [21]),
    .B(\datapath.registers.828[17] [21]),
    .S(\datapath.idinstr_16_bF$buf16 ),
    .Y(_6614_)
);

NAND2X1 _11842_ (
    .A(\datapath.alu.b_1_bF$buf0 ),
    .B(_1176_),
    .Y(_1257_)
);

NAND2X1 _11422_ (
    .A(_1964_),
    .B(_1653_),
    .Y(_2384_)
);

NAND3X1 _11002_ (
    .A(\datapath.alu.b_3_bF$buf3 ),
    .B(_1963_),
    .C(_1971_),
    .Y(_1972_)
);

DFFPOSX1 _19599_ (
    .Q(\datapath.registers.828[21] [31]),
    .CLK(CLK_bF$buf93),
    .D(_4076_)
);

DFFPOSX1 _19179_ (
    .Q(\datapath.registers.828[15] [27]),
    .CLK(CLK_bF$buf53),
    .D(_3847_)
);

FILL SFILL13320x39050 (
);

NAND3X1 _12627_ (
    .A(_2669_),
    .B(_2779_),
    .C(_2796_),
    .Y(_2797_)
);

NOR3X1 _12207_ (
    .A(_1641_),
    .B(_1643_),
    .C(_1645_),
    .Y(_1646_)
);

OAI21X1 _15099_ (
    .A(_5336__bF$buf0),
    .B(_4840__bF$buf0),
    .C(\datapath.registers.828[7] [5]),
    .Y(_5342_)
);

MUX2X1 _16880_ (
    .A(_6782_),
    .B(_6781_),
    .S(\datapath.idinstr_16_bF$buf36 ),
    .Y(_6783_)
);

AOI21X1 _16460_ (
    .A(_6367_),
    .B(_6372_),
    .C(_5685__bF$buf2),
    .Y(_6373_)
);

MUX2X1 _16040_ (
    .A(_5961_),
    .B(_5960_),
    .S(\datapath.idinstr_16_bF$buf32 ),
    .Y(_5962_)
);

MUX2X1 _17665_ (
    .A(\datapath.registers.828[23] [10]),
    .B(\datapath.registers.828[21] [10]),
    .S(\datapath.idinstr_21_bF$buf2 ),
    .Y(_7551_)
);

MUX2X1 _17245_ (
    .A(_7139_),
    .B(_7138_),
    .S(\datapath.idinstr_21_bF$buf3 ),
    .Y(_7140_)
);

MUX2X1 _12380_ (
    .A(_2610_),
    .B(_2611_),
    .S(_2602__bF$buf1),
    .Y(\datapath.csr._13_ [5])
);

NAND2X1 _9587_ (
    .A(\datapath.idpc [21]),
    .B(_416__bF$buf2),
    .Y(_483_)
);

NAND2X1 _9167_ (
    .A(gnd),
    .B(\datapath.idinstr_22_bF$buf10 ),
    .Y(_163_)
);

NOR2X1 _13585_ (
    .A(gnd),
    .B(\datapath.programcounter.pc_mux [29]),
    .Y(_3417_)
);

INVX1 _13165_ (
    .A(\datapath.memoryinterface.byte_size_store.storebyte [15]),
    .Y(_3116_)
);

FILL SFILL3080x49050 (
);

FILL SFILL3560x11050 (
);

DFFPOSX1 _19811_ (
    .Q(\datapath.registers.828[13] [19]),
    .CLK(CLK_bF$buf95),
    .D(_3774_)
);

FILL SFILL28520x41050 (
);

FILL SFILL83880x14050 (
);

FILL SFILL3480x18050 (
);

FILL SFILL73960x50050 (
);

FILL SFILL28440x48050 (
);

AOI21X1 _15731_ (
    .A(_4715__bF$buf4),
    .B(_5647__bF$buf4),
    .C(_5669_),
    .Y(_4385_)
);

OAI21X1 _15311_ (
    .A(_4697__bF$buf1),
    .B(_5437__bF$buf2),
    .C(_5450_),
    .Y(_4151_)
);

BUFX2 BUFX2_insert30 (
    .A(\controlunit.mret ),
    .Y(\controlunit.mret_bF$buf0 )
);

BUFX2 BUFX2_insert31 (
    .A(_218_),
    .Y(_218__bF$buf4)
);

BUFX2 BUFX2_insert32 (
    .A(_218_),
    .Y(_218__bF$buf3)
);

BUFX2 BUFX2_insert33 (
    .A(_218_),
    .Y(_218__bF$buf2)
);

BUFX2 BUFX2_insert34 (
    .A(_218_),
    .Y(_218__bF$buf1)
);

BUFX2 BUFX2_insert35 (
    .A(_218_),
    .Y(_218__bF$buf0)
);

BUFX2 BUFX2_insert36 (
    .A(_4772_),
    .Y(_4772__bF$buf7)
);

BUFX2 BUFX2_insert37 (
    .A(_4772_),
    .Y(_4772__bF$buf6)
);

BUFX2 BUFX2_insert38 (
    .A(_4772_),
    .Y(_4772__bF$buf5)
);

BUFX2 BUFX2_insert39 (
    .A(_4772_),
    .Y(_4772__bF$buf4)
);

MUX2X1 _16936_ (
    .A(\datapath.registers.828[5] [26]),
    .B(\datapath.registers.828[4] [26]),
    .S(\datapath.idinstr_15_bF$buf43 ),
    .Y(_6838_)
);

MUX2X1 _16516_ (
    .A(\datapath.registers.828[11] [17]),
    .B(\datapath.registers.828[10] [17]),
    .S(\datapath.idinstr_15_bF$buf11 ),
    .Y(_6427_)
);

AOI21X1 _11651_ (
    .A(_1091__bF$buf3),
    .B(_2280_),
    .C(_1051_),
    .Y(_1052_)
);

AOI21X1 _11231_ (
    .A(_1962_),
    .B(_1959_),
    .C(\datapath.alu.b_2_bF$buf3 ),
    .Y(_2197_)
);

FILL SFILL73880x12050 (
);

NAND3X1 _8858_ (
    .A(_59_),
    .B(_63_),
    .C(_61_),
    .Y(_64_)
);

NAND2X1 _12856_ (
    .A(\datapath.csr.mvect [28]),
    .B(\datapath.csr.mvect [29]),
    .Y(_2967_)
);

INVX1 _12436_ (
    .A(\datapath.csr.csr_wdata [24]),
    .Y(_2649_)
);

INVX4 _12016_ (
    .A(_1441_),
    .Y(_1442_)
);

FILL SFILL63880x55050 (
);

FILL SFILL79080x26050 (
);

OAI21X1 _17894_ (
    .A(_7763_),
    .B(_7774_),
    .C(\datapath.idinstr_24_bF$buf0 ),
    .Y(_7775_)
);

MUX2X1 _17474_ (
    .A(_7363_),
    .B(_7362_),
    .S(\datapath.idinstr_21_bF$buf34 ),
    .Y(_7364_)
);

AOI21X1 _17054_ (
    .A(_6949_),
    .B(_6953_),
    .C(\datapath.idinstr_18_bF$buf6 ),
    .Y(_6954_)
);

FILL SFILL74360x2050 (
);

NAND2X1 _9396_ (
    .A(\datapath.csr.csr_data [6]),
    .B(_317__bF$buf4),
    .Y(_339_)
);

NOR2X1 _10922_ (
    .A(\datapath.alu.b_1_bF$buf3 ),
    .B(_1861_),
    .Y(_1893_)
);

DFFPOSX1 _10502_ (
    .Q(\datapath.alupc [20]),
    .CLK(CLK_bF$buf110),
    .D(\datapath.idpc [20])
);

NOR2X1 _18679_ (
    .A(\datapath.registers.828[29] [22]),
    .B(_8498__bF$buf2),
    .Y(_8521_)
);

NAND2X1 _18259_ (
    .A(\datapath.idinstr_22_bF$buf35 ),
    .B(_8131_),
    .Y(_8132_)
);

NAND3X1 _13394_ (
    .A(_3284_),
    .B(_3283_),
    .C(_3288_),
    .Y(\datapath.memdataload [7])
);

DFFPOSX1 _19620_ (
    .Q(\datapath.registers.828[9] [20]),
    .CLK(CLK_bF$buf56),
    .D(_4640_)
);

DFFPOSX1 _19200_ (
    .Q(\datapath.registers.828[19] [16]),
    .CLK(CLK_bF$buf31),
    .D(_3963_)
);

FILL SFILL69080x24050 (
);

OAI21X1 _11707_ (
    .A(_1434_),
    .B(_1412_),
    .C(_1110_),
    .Y(_1111_)
);

INVX2 _14599_ (
    .A(\datapath.registers.828[14] [12]),
    .Y(_5059_)
);

NOR2X1 _14179_ (
    .A(\datapath.registers.828[20] [18]),
    .B(_4806__bF$buf2),
    .Y(_4825_)
);

NAND2X1 _15960_ (
    .A(\datapath.registers.828[26] [4]),
    .B(_5684__bF$buf9),
    .Y(_5884_)
);

OAI21X1 _15540_ (
    .A(_5546__bF$buf0),
    .B(_4721__bF$buf1),
    .C(_5571_),
    .Y(_4356_)
);

OAI21X1 _15120_ (
    .A(_5335__bF$buf3),
    .B(_4703__bF$buf2),
    .C(_5352_),
    .Y(_4570_)
);

FILL SFILL43880x51050 (
);

DFFPOSX1 _10099_ (
    .Q(\datapath.memoryinterface.data_store [9]),
    .CLK(CLK_bF$buf30),
    .D(\datapath.regrs2alu [9])
);

FILL SFILL3240x30050 (
);

MUX2X1 _16745_ (
    .A(\datapath.registers.828[31] [22]),
    .B(\datapath.registers.828[30] [22]),
    .S(\datapath.idinstr_15_bF$buf19 ),
    .Y(_6651_)
);

AOI21X1 _16325_ (
    .A(_6240_),
    .B(_6239_),
    .C(_5684__bF$buf2),
    .Y(_6241_)
);

INVX1 _11880_ (
    .A(_1297_),
    .Y(\datapath.alu.c [21])
);

OAI21X1 _11460_ (
    .A(_1990__bF$buf2),
    .B(_2420_),
    .C(_1886__bF$buf0),
    .Y(_2421_)
);

AOI21X1 _11040_ (
    .A(_2005_),
    .B(_2008_),
    .C(_1091__bF$buf3),
    .Y(_2009_)
);

BUFX2 _8667_ (
    .A(_0_[3]),
    .Y(DMEM_ADDR[3])
);

AOI21X1 _12665_ (
    .A(_2558_),
    .B(_2797__bF$buf5),
    .C(_2818_),
    .Y(\datapath.csr._32_ [20])
);

AND2X2 _12245_ (
    .A(_2495_),
    .B(_2486_),
    .Y(_2511_)
);

FILL SFILL28120x22050 (
);

INVX1 _14811_ (
    .A(\datapath.registers.828[11] [8]),
    .Y(_5179_)
);

NAND2X1 _17283_ (
    .A(\datapath.idinstr_22_bF$buf0 ),
    .B(_7177_),
    .Y(_7178_)
);

INVX2 _10731_ (
    .A(\datapath.alu.a [19]),
    .Y(_1702_)
);

DFFPOSX1 _10311_ (
    .Q(\datapath.regcsralu [24]),
    .CLK(CLK_bF$buf38),
    .D(\datapath.csr.csr_data [24])
);

NAND2X1 _18488_ (
    .A(\datapath.idinstr_22_bF$buf15 ),
    .B(_8355_),
    .Y(_8356_)
);

AOI21X1 _18068_ (
    .A(_7940_),
    .B(_7944_),
    .C(\datapath.idinstr_23_bF$buf4 ),
    .Y(_7945_)
);

FILL SFILL18520x34050 (
);

FILL SFILL18120x20050 (
);

OAI21X1 _11936_ (
    .A(_1680_),
    .B(_1878_),
    .C(_1356_),
    .Y(_1357_)
);

OAI21X1 _11516_ (
    .A(_1540_),
    .B(_906_),
    .C(_907_),
    .Y(_908_)
);

FILL SFILL78920x2050 (
);

FILL SFILL79080x9050 (
);

MUX2X1 _16974_ (
    .A(\datapath.registers.828[29] [27]),
    .B(\datapath.registers.828[28] [27]),
    .S(\datapath.idinstr_15_bF$buf9 ),
    .Y(_6875_)
);

MUX2X1 _16554_ (
    .A(_6464_),
    .B(_6463_),
    .S(\datapath.idinstr_16_bF$buf21 ),
    .Y(_6465_)
);

AOI21X1 _16134_ (
    .A(\datapath.idinstr_15_bF$buf40 ),
    .B(_6053_),
    .C(_5684__bF$buf7),
    .Y(_6054_)
);

FILL SFILL48600x28050 (
);

FILL SFILL84360x32050 (
);

NOR2X1 _8896_ (
    .A(_78_),
    .B(_77_),
    .Y(asel[1])
);

AOI21X1 _17759_ (
    .A(_7637_),
    .B(_7642_),
    .C(\datapath.idinstr_23_bF$buf3 ),
    .Y(_7643_)
);

AOI21X1 _17339_ (
    .A(_7231_),
    .B(_7230_),
    .C(_7092__bF$buf2),
    .Y(_7232_)
);

DFFPOSX1 _12894_ (
    .Q(\datapath.csr.mcause [20]),
    .CLK(CLK_bF$buf100),
    .D(\datapath.csr._32_ [20])
);

MUX2X1 _12474_ (
    .A(\datapath.csr.mepc [1]),
    .B(\datapath.csr.csr_wdata [3]),
    .S(_2672__bF$buf5),
    .Y(_2677_)
);

NAND2X1 _12054_ (
    .A(\datapath.alu.b_2_bF$buf6 ),
    .B(_1349_),
    .Y(_1483_)
);

NAND2X1 _18700_ (
    .A(\datapath.registers.828[28] [0]),
    .B(_8531__bF$buf2),
    .Y(_8532_)
);

FILL SFILL69080x19050 (
);

XNOR2X1 _13679_ (
    .A(_3486_),
    .B(\datapath.programcounter.pc [12]),
    .Y(\datapath.nextpc [12])
);

NAND3X1 _13259_ (
    .A(\datapath.memoryinterface.byte_size_store.storebyte [28]),
    .B(_3027__bF$buf2),
    .C(_3029__bF$buf2),
    .Y(_3197_)
);

DFFPOSX1 _19905_ (
    .Q(\datapath.registers.828[29] [17]),
    .CLK(CLK_bF$buf120),
    .D(_4316_)
);

INVX1 _14620_ (
    .A(\datapath.registers.828[14] [19]),
    .Y(_5073_)
);

AOI21X1 _14200_ (
    .A(_4729__bF$buf3),
    .B(_4806__bF$buf6),
    .C(_4835_),
    .Y(_4040_)
);

MUX2X1 _17092_ (
    .A(_6990_),
    .B(_6989_),
    .S(\datapath.idinstr_16_bF$buf32 ),
    .Y(_6991_)
);

FILL SFILL3240x25050 (
);

MUX2X1 _15825_ (
    .A(\datapath.registers.828[9] [1]),
    .B(\datapath.registers.828[8] [1]),
    .S(\datapath.idinstr_15_bF$buf36 ),
    .Y(_5752_)
);

NAND2X1 _15405_ (
    .A(\datapath.registers.828[4] [27]),
    .B(_5470__bF$buf5),
    .Y(_5498_)
);

MUX2X1 _10960_ (
    .A(_1929_),
    .B(_1928_),
    .S(_994__bF$buf3),
    .Y(_1930_)
);

DFFPOSX1 _10540_ (
    .Q(\datapath.idinstr [26]),
    .CLK(CLK_bF$buf6),
    .D(\datapath._05_ [26])
);

DFFPOSX1 _10120_ (
    .Q(\datapath.memoryinterface.data_store [30]),
    .CLK(CLK_bF$buf147),
    .D(\datapath.regrs2alu [30])
);

OAI21X1 _18297_ (
    .A(_6753_),
    .B(\datapath.idinstr_22_bF$buf2 ),
    .C(_8168_),
    .Y(_8169_)
);

FILL SFILL28600x24050 (
);

OAI21X1 _11745_ (
    .A(_1942_),
    .B(\datapath.alu.b_4_bF$buf0 ),
    .C(_1152_),
    .Y(_1153_)
);

OR2X2 _11325_ (
    .A(_2288_),
    .B(_2283_),
    .Y(_2289_)
);

FILL SFILL73560x26050 (
);

AOI21X1 _16783_ (
    .A(_6666_),
    .B(_6688_),
    .C(_5687__bF$buf0),
    .Y(\datapath.registers.rega_data [22])
);

NAND2X1 _16363_ (
    .A(\datapath.registers.828[18] [13]),
    .B(_5684__bF$buf9),
    .Y(_6278_)
);

BUFX2 BUFX2_insert470 (
    .A(_8498_),
    .Y(_8498__bF$buf1)
);

BUFX2 BUFX2_insert471 (
    .A(_8498_),
    .Y(_8498__bF$buf0)
);

BUFX2 BUFX2_insert472 (
    .A(_0_[1]),
    .Y(_0__1_bF$buf9)
);

BUFX2 BUFX2_insert473 (
    .A(_0_[1]),
    .Y(_0__1_bF$buf8)
);

BUFX2 BUFX2_insert474 (
    .A(_0_[1]),
    .Y(_0__1_bF$buf7)
);

NOR2X1 _17988_ (
    .A(_6430_),
    .B(_7089__bF$buf9),
    .Y(_7867_)
);

BUFX2 BUFX2_insert475 (
    .A(_0_[1]),
    .Y(_0__1_bF$buf6)
);

NAND2X1 _17568_ (
    .A(_7089__bF$buf7),
    .B(_7455_),
    .Y(_7456_)
);

BUFX2 BUFX2_insert476 (
    .A(_0_[1]),
    .Y(_0__1_bF$buf5)
);

AOI21X1 _17148_ (
    .A(_7045_),
    .B(_7020_),
    .C(_5687__bF$buf3),
    .Y(\datapath.registers.rega_data [30])
);

BUFX2 BUFX2_insert477 (
    .A(_0_[1]),
    .Y(_0__1_bF$buf4)
);

BUFX2 BUFX2_insert478 (
    .A(_0_[1]),
    .Y(_0__1_bF$buf3)
);

BUFX2 BUFX2_insert479 (
    .A(_0_[1]),
    .Y(_0__1_bF$buf2)
);

FILL SFILL18520x29050 (
);

AOI22X1 _12283_ (
    .A(\datapath.csr.mvect [11]),
    .B(_2500__bF$buf0),
    .C(_2491_),
    .D(\datapath.csr.mcause [11]),
    .Y(_2541_)
);

FILL SFILL63960x38050 (
);

FILL SFILL18440x4050 (
);

FILL SFILL58680x2050 (
);

FILL FILL83080x21050 (
);

AOI22X1 _13488_ (
    .A(DMEM_DATA_L[5]),
    .B(_3217_),
    .C(_3229_),
    .D(DMEM_DATA_L[13]),
    .Y(_3353_)
);

INVX2 _13068_ (
    .A(\datapath.memoryinterface.data_store [0]),
    .Y(_3034_)
);

DFFPOSX1 _19714_ (
    .Q(\datapath.registers.828[0] [18]),
    .CLK(CLK_bF$buf5),
    .D(_3645_)
);

FILL FILL83080x4050 (
);

FILL SFILL13880x40050 (
);

OAI21X1 _15634_ (
    .A(_5614__bF$buf2),
    .B(_4683__bF$buf0),
    .C(_5620_),
    .Y(_4431_)
);

NOR2X1 _15214_ (
    .A(\datapath.registers.828[6] [30]),
    .B(_5369__bF$buf7),
    .Y(_5400_)
);

FILL SFILL8360x32050 (
);

AOI21X1 _16839_ (
    .A(_6738_),
    .B(_6742_),
    .C(_5685__bF$buf1),
    .Y(_6743_)
);

MUX2X1 _16419_ (
    .A(_6332_),
    .B(_6331_),
    .S(\datapath.idinstr_16_bF$buf12 ),
    .Y(_6333_)
);

OAI21X1 _11974_ (
    .A(_1397_),
    .B(_1899_),
    .C(_1393_),
    .Y(_1398_)
);

NOR2X1 _11554_ (
    .A(_2178_),
    .B(_2368_),
    .Y(_947_)
);

AOI21X1 _11134_ (
    .A(_1908__bF$buf3),
    .B(_2088_),
    .C(_2101_),
    .Y(_2102_)
);

XOR2X1 _9702_ (
    .A(\datapath.alupc [8]),
    .B(\datapath.regimmalu [8]),
    .Y(_576_)
);

NAND2X1 _12759_ (
    .A(\datapath.csr.mvect [12]),
    .B(\datapath.csr.mvect [13]),
    .Y(_2887_)
);

AOI21X1 _12339_ (
    .A(\datapath.csr.mvect [30]),
    .B(_2500__bF$buf0),
    .C(_2527_),
    .Y(_2578_)
);

FILL SFILL3400x1050 (
);

FILL SFILL3320x6050 (
);

NAND2X1 _13700_ (
    .A(\datapath.alu.c [14]),
    .B(_3423__bF$buf0),
    .Y(_3503_)
);

OAI21X1 _16592_ (
    .A(_4948_),
    .B(\datapath.idinstr_17_bF$buf14 ),
    .C(_6501_),
    .Y(_6502_)
);

MUX2X1 _16172_ (
    .A(\datapath.registers.828[19] [9]),
    .B(\datapath.registers.828[17] [9]),
    .S(\datapath.idinstr_16_bF$buf42 ),
    .Y(_6091_)
);

INVX1 _14905_ (
    .A(\datapath.registers.828[10] [15]),
    .Y(_5234_)
);

MUX2X1 _17797_ (
    .A(\datapath.registers.828[22] [13]),
    .B(\datapath.registers.828[20] [13]),
    .S(\datapath.idinstr_21_bF$buf28 ),
    .Y(_7680_)
);

AOI21X1 _17377_ (
    .A(_7269_),
    .B(_7244_),
    .C(_7095__bF$buf2),
    .Y(\datapath.registers.regb_data [3])
);

OAI21X1 _12092_ (
    .A(\datapath.alu.b_4_bF$buf3 ),
    .B(_1899_),
    .C(_924_),
    .Y(_1524_)
);

NAND3X1 _9299_ (
    .A(_264_),
    .B(_265_),
    .C(_263_),
    .Y(\datapath.rd [15])
);

NOR2X1 _10825_ (
    .A(\datapath.alu.b [21]),
    .B(_1795_),
    .Y(_1796_)
);

DFFPOSX1 _10405_ (
    .Q(\datapath.alu.a [22]),
    .CLK(CLK_bF$buf37),
    .D(\datapath.muxaval [22])
);

OAI21X1 _13297_ (
    .A(_0__1_bF$buf9),
    .B(_0__0_bF$buf3),
    .C(DMEM_DATA_L[6]),
    .Y(_3225_)
);

DFFPOSX1 _19943_ (
    .Q(\datapath.registers.828[28] [23]),
    .CLK(CLK_bF$buf111),
    .D(_4291_)
);

DFFPOSX1 _19523_ (
    .Q(\datapath.registers.828[11] [19]),
    .CLK(CLK_bF$buf16),
    .D(_3710_)
);

DFFPOSX1 _19103_ (
    .Q(\datapath.registers.828[14] [15]),
    .CLK(CLK_bF$buf95),
    .D(_3802_)
);

FILL SFILL33480x25050 (
);

MUX2X1 _15863_ (
    .A(\datapath.registers.828[23] [2]),
    .B(\datapath.registers.828[21] [2]),
    .S(\datapath.idinstr_16_bF$buf5 ),
    .Y(_5789_)
);

AOI21X1 _15443_ (
    .A(_4695__bF$buf4),
    .B(_5503__bF$buf6),
    .C(_5519_),
    .Y(_4438_)
);

NAND2X1 _15023_ (
    .A(\datapath.registers.828[8] [1]),
    .B(_5300__bF$buf6),
    .Y(_5302_)
);

FILL FILL83160x54050 (
);

FILL SFILL33400x23050 (
);

MUX2X1 _16648_ (
    .A(_6556_),
    .B(_6555_),
    .S(\datapath.idinstr_16_bF$buf43 ),
    .Y(_6557_)
);

AOI21X1 _16228_ (
    .A(\datapath.registers.828[13] [10]),
    .B(\datapath.idinstr_17_bF$buf1 ),
    .C(_5681__bF$buf8),
    .Y(_6146_)
);

INVX1 _11783_ (
    .A(_1705_),
    .Y(_1193_)
);

OAI21X1 _11363_ (
    .A(_2320_),
    .B(_2324_),
    .C(_2325_),
    .Y(_2326_)
);

FILL SFILL23480x23050 (
);

DFFPOSX1 _9931_ (
    .Q(\datapath.regcsrwb [17]),
    .CLK(CLK_bF$buf51),
    .D(\datapath.csr.csr_wdata [17])
);

NAND2X1 _9511_ (
    .A(\datapath.idpc [2]),
    .B(_416__bF$buf4),
    .Y(_426_)
);

FILL FILL83080x16050 (
);

OAI21X1 _12988_ (
    .A(_3005_),
    .B(_3002_),
    .C(\datapath.idinstr [31]),
    .Y(_3012_)
);

INVX1 _12568_ (
    .A(\datapath.csr.mepc [23]),
    .Y(_2749_)
);

AOI21X1 _12148_ (
    .A(_1123__bF$buf3),
    .B(_1582_),
    .C(_1580_),
    .Y(_1584_)
);

FILL SFILL8440x20050 (
);

BUFX2 BUFX2_insert1030 (
    .A(_5167_),
    .Y(_5167__bF$buf2)
);

BUFX2 BUFX2_insert1031 (
    .A(_5167_),
    .Y(_5167__bF$buf1)
);

BUFX2 BUFX2_insert1032 (
    .A(_5167_),
    .Y(_5167__bF$buf0)
);

BUFX2 BUFX2_insert1033 (
    .A(\datapath.idinstr [19]),
    .Y(\datapath.idinstr_19_bF$buf5 )
);

BUFX2 BUFX2_insert1034 (
    .A(\datapath.idinstr [19]),
    .Y(\datapath.idinstr_19_bF$buf4 )
);

BUFX2 BUFX2_insert1035 (
    .A(\datapath.idinstr [19]),
    .Y(\datapath.idinstr_19_bF$buf3 )
);

BUFX2 BUFX2_insert1036 (
    .A(\datapath.idinstr [19]),
    .Y(\datapath.idinstr_19_bF$buf2 )
);

BUFX2 BUFX2_insert1037 (
    .A(\datapath.idinstr [19]),
    .Y(\datapath.idinstr_19_bF$buf1 )
);

BUFX2 BUFX2_insert1038 (
    .A(\datapath.idinstr [19]),
    .Y(\datapath.idinstr_19_bF$buf0 )
);

BUFX2 BUFX2_insert1039 (
    .A(_0_[0]),
    .Y(_0__0_bF$buf3)
);

NOR2X1 _14714_ (
    .A(\datapath.registers.828[13] [27]),
    .B(_5099__bF$buf0),
    .Y(_5127_)
);

BUFX2 BUFX2_insert850 (
    .A(_316_),
    .Y(_316__bF$buf4)
);

BUFX2 BUFX2_insert851 (
    .A(_316_),
    .Y(_316__bF$buf3)
);

FILL SFILL8360x27050 (
);

BUFX2 BUFX2_insert852 (
    .A(_316_),
    .Y(_316__bF$buf2)
);

BUFX2 BUFX2_insert853 (
    .A(_316_),
    .Y(_316__bF$buf1)
);

BUFX2 BUFX2_insert854 (
    .A(_316_),
    .Y(_316__bF$buf0)
);

BUFX2 BUFX2_insert855 (
    .A(_2783_),
    .Y(_2783__bF$buf4)
);

BUFX2 BUFX2_insert856 (
    .A(_2783_),
    .Y(_2783__bF$buf3)
);

MUX2X1 _17186_ (
    .A(\datapath.registers.828[3] [31]),
    .B(\datapath.registers.828[2] [31]),
    .S(\datapath.idinstr_15_bF$buf18 ),
    .Y(_7083_)
);

BUFX2 BUFX2_insert857 (
    .A(_2783_),
    .Y(_2783__bF$buf2)
);

BUFX2 BUFX2_insert858 (
    .A(_2783_),
    .Y(_2783__bF$buf1)
);

BUFX2 BUFX2_insert859 (
    .A(_2783_),
    .Y(_2783__bF$buf0)
);

NAND2X1 _15919_ (
    .A(\datapath.registers.828[12] [3]),
    .B(_5681__bF$buf8),
    .Y(_5844_)
);

FILL SFILL74040x44050 (
);

NOR2X1 _10634_ (
    .A(_1166_),
    .B(_1177_),
    .Y(_1188_)
);

DFFPOSX1 _10214_ (
    .Q(\datapath.mempc_4 [21]),
    .CLK(CLK_bF$buf66),
    .D(\datapath.alupc_4 [21])
);

DFFPOSX1 _19752_ (
    .Q(\datapath.registers.828[16] [24]),
    .CLK(CLK_bF$buf127),
    .D(_3876_)
);

DFFPOSX1 _19332_ (
    .Q(\datapath.registers.828[4] [20]),
    .CLK(CLK_bF$buf40),
    .D(_4480_)
);

OAI21X1 _11839_ (
    .A(_1209__bF$buf1),
    .B(_1065_),
    .C(_1253_),
    .Y(_1254_)
);

AOI22X1 _11419_ (
    .A(_1655_),
    .B(_1888_),
    .C(_2041__bF$buf3),
    .D(_2380_),
    .Y(_2381_)
);

OAI21X1 _15672_ (
    .A(_5614__bF$buf4),
    .B(_4721__bF$buf3),
    .C(_5639_),
    .Y(_4420_)
);

AOI21X1 _15252_ (
    .A(_4705__bF$buf1),
    .B(_5402__bF$buf0),
    .C(_5419_),
    .Y(_4507_)
);

AOI21X1 _16877_ (
    .A(_6758_),
    .B(_6780_),
    .C(_5687__bF$buf2),
    .Y(\datapath.registers.rega_data [24])
);

AOI21X1 _16457_ (
    .A(\datapath.registers.828[14] [15]),
    .B(\datapath.idinstr_17_bF$buf3 ),
    .C(\datapath.idinstr_15_bF$buf41 ),
    .Y(_6370_)
);

AOI21X1 _16037_ (
    .A(_5958_),
    .B(_5952_),
    .C(_5685__bF$buf2),
    .Y(_5959_)
);

INVX2 _11592_ (
    .A(_987_),
    .Y(_988_)
);

OAI21X1 _11172_ (
    .A(_1155_),
    .B(_1252_),
    .C(_2138_),
    .Y(_2139_)
);

OR2X2 _8799_ (
    .A(_11_),
    .B(_3_),
    .Y(\controlunit.wb_sel [0])
);

XOR2X1 _9740_ (
    .A(\datapath.alupc [13]),
    .B(\datapath.regimmalu [13]),
    .Y(_609_)
);

AOI22X1 _9320_ (
    .A(_219__bF$buf0),
    .B(\datapath.wbpc_4 [21]),
    .C(\datapath.regcsrwb [21]),
    .D(_216__bF$buf0),
    .Y(_281_)
);

OAI22X1 _12797_ (
    .A(_2725_),
    .B(_2585__bF$buf1),
    .C(_2918_),
    .D(_2915_),
    .Y(\datapath.csr.csr_pcaddr [19])
);

MUX2X1 _12377_ (
    .A(_2608_),
    .B(_2609_),
    .S(_2602__bF$buf1),
    .Y(\datapath.csr._13_ [4])
);

NAND2X1 _18603_ (
    .A(_7089__bF$buf7),
    .B(_8467_),
    .Y(_8468_)
);

FILL SFILL54040x40050 (
);

DFFPOSX1 _19808_ (
    .Q(\datapath.registers.828[13] [16]),
    .CLK(CLK_bF$buf92),
    .D(_3771_)
);

INVX1 _14943_ (
    .A(\datapath.registers.828[9] [0]),
    .Y(_5255_)
);

OAI21X1 _14523_ (
    .A(_5004__bF$buf3),
    .B(_4840__bF$buf4),
    .C(\datapath.registers.828[15] [11]),
    .Y(_5016_)
);

NOR2X1 _14103_ (
    .A(\datapath.registers.828[21] [13]),
    .B(_4772__bF$buf3),
    .Y(_4786_)
);

FILL FILL83160x49050 (
);

FILL SFILL58280x55050 (
);

FILL SFILL33400x18050 (
);

NOR2X1 _15728_ (
    .A(\datapath.registers.828[30] [20]),
    .B(_5647__bF$buf7),
    .Y(_5668_)
);

NAND2X1 _15308_ (
    .A(\datapath.registers.828[24] [11]),
    .B(_5437__bF$buf3),
    .Y(_5449_)
);

FILL SFILL8520x53050 (
);

NAND2X1 _10863_ (
    .A(_994__bF$buf0),
    .B(_1833_),
    .Y(_1834_)
);

DFFPOSX1 _10443_ (
    .Q(\datapath.aluinstr [25]),
    .CLK(CLK_bF$buf6),
    .D(\datapath.idinstr [25])
);

DFFPOSX1 _10023_ (
    .Q(\datapath.wbinstr [12]),
    .CLK(CLK_bF$buf94),
    .D(\datapath.meminstr [12])
);

DFFPOSX1 _19981_ (
    .Q(\datapath.registers.828[6] [29]),
    .CLK(CLK_bF$buf136),
    .D(_4553_)
);

FILL SFILL84120x34050 (
);

DFFPOSX1 _19561_ (
    .Q(\datapath.registers.828[12] [25]),
    .CLK(CLK_bF$buf90),
    .D(_3749_)
);

DFFPOSX1 _19141_ (
    .Q(\datapath.registers.828[17] [21]),
    .CLK(CLK_bF$buf49),
    .D(_3905_)
);

FILL SFILL23000x47050 (
);

NOR2X1 _11648_ (
    .A(_1044_),
    .B(_1047_),
    .Y(_1049_)
);

OAI21X1 _11228_ (
    .A(_2193_),
    .B(_2189_),
    .C(_2155_),
    .Y(_2194_)
);

FILL SFILL8040x46050 (
);

FILL SFILL23400x16050 (
);

NOR2X1 _15481_ (
    .A(\datapath.registers.828[3] [28]),
    .B(_5503__bF$buf0),
    .Y(_5541_)
);

NAND2X1 _15061_ (
    .A(\datapath.registers.828[8] [20]),
    .B(_5300__bF$buf3),
    .Y(_5321_)
);

FILL SFILL48680x22050 (
);

FILL SFILL13400x59050 (
);

FILL SFILL78840x54050 (
);

MUX2X1 _16686_ (
    .A(\datapath.registers.828[7] [20]),
    .B(\datapath.registers.828[6] [20]),
    .S(\datapath.idinstr_15_bF$buf13 ),
    .Y(_6594_)
);

NAND2X1 _16266_ (
    .A(_5681__bF$buf8),
    .B(_6182_),
    .Y(_6183_)
);

FILL SFILL13480x16050 (
);

FILL SFILL13400x14050 (
);

NOR2X1 _12186_ (
    .A(_1623_),
    .B(_1616_),
    .Y(_1624_)
);

AOI21X1 _18832_ (
    .A(_4660__bF$buf3),
    .B(_8598__bF$buf6),
    .C(_8599_),
    .Y(_4212_)
);

NAND2X1 _18412_ (
    .A(_7092__bF$buf8),
    .B(_8280_),
    .Y(_8281_)
);

FILL SFILL38680x20050 (
);

FILL SFILL78760x16050 (
);

NAND2X1 _10919_ (
    .A(_1881_),
    .B(_1885_),
    .Y(_1890_)
);

DFFPOSX1 _19617_ (
    .Q(\datapath.registers.828[9] [17]),
    .CLK(CLK_bF$buf50),
    .D(_4636_)
);

OAI21X1 _14752_ (
    .A(_4699__bF$buf2),
    .B(_5132__bF$buf7),
    .C(_5146_),
    .Y(_3736_)
);

AOI21X1 _14332_ (
    .A(_4715__bF$buf0),
    .B(_4886__bF$buf6),
    .C(_4910_),
    .Y(_3937_)
);

FILL SFILL84520x3050 (
);

FILL SFILL68760x59050 (
);

FILL SFILL84120x2050 (
);

INVX1 _15957_ (
    .A(\datapath.registers.828[27] [4]),
    .Y(_5881_)
);

OAI21X1 _15537_ (
    .A(_5038__bF$buf2),
    .B(_4668__bF$buf4),
    .C(\datapath.registers.828[2] [23]),
    .Y(_5570_)
);

OAI21X1 _15117_ (
    .A(_5336__bF$buf1),
    .B(_4840__bF$buf2),
    .C(\datapath.registers.828[7] [14]),
    .Y(_5351_)
);

XNOR2X1 _10672_ (
    .A(\datapath.alu.a [8]),
    .B(\datapath.alu.b [8]),
    .Y(_1594_)
);

DFFPOSX1 _10252_ (
    .Q(\datapath.csr.csr_mepc [29]),
    .CLK(CLK_bF$buf19),
    .D(\datapath.alupc [29])
);

FILL SFILL68760x14050 (
);

DFFPOSX1 _19790_ (
    .Q(\datapath.registers.828[30] [30]),
    .CLK(CLK_bF$buf112),
    .D(_4395_)
);

DFFPOSX1 _19370_ (
    .Q(\datapath.registers.828[7] [26]),
    .CLK(CLK_bF$buf17),
    .D(_4582_)
);

NOR2X1 _8820_ (
    .A(\datapath.aluinstr [4]),
    .B(_30_),
    .Y(_31_)
);

OAI21X1 _11877_ (
    .A(\datapath.alu.b_4_bF$buf0 ),
    .B(_2180_),
    .C(_1293_),
    .Y(_1294_)
);

OAI22X1 _11457_ (
    .A(_1851_),
    .B(_1882__bF$buf0),
    .C(_1890__bF$buf3),
    .D(_1664_),
    .Y(_2418_)
);

NOR2X1 _11037_ (
    .A(_994__bF$buf6),
    .B(_940_),
    .Y(_2006_)
);

NAND2X1 _15290_ (
    .A(\datapath.registers.828[24] [2]),
    .B(_5437__bF$buf4),
    .Y(_5440_)
);

NAND3X1 _9605_ (
    .A(_495_),
    .B(_496_),
    .C(_494_),
    .Y(\datapath.muxaval [25])
);

AOI22X1 _13603_ (
    .A(\datapath.programcounter.pc [1]),
    .B(_3424__bF$buf1),
    .C(_3423__bF$buf3),
    .D(\datapath.alu.c [1]),
    .Y(_3431_)
);

FILL SFILL58760x12050 (
);

MUX2X1 _16495_ (
    .A(_6406_),
    .B(_6405_),
    .S(\datapath.idinstr_16_bF$buf41 ),
    .Y(_6407_)
);

NAND2X1 _16075_ (
    .A(_5684__bF$buf8),
    .B(_5995_),
    .Y(_5996_)
);

OAI21X1 _14808_ (
    .A(_5176_),
    .B(_5167__bF$buf2),
    .C(_5177_),
    .Y(_3728_)
);

FILL SFILL48760x55050 (
);

FILL SFILL53800x4050 (
);

FILL SFILL53720x9050 (
);

NOR2X1 _18641_ (
    .A(\datapath.registers.828[29] [3]),
    .B(_8498__bF$buf2),
    .Y(_8502_)
);

MUX2X1 _18221_ (
    .A(\datapath.registers.828[17] [22]),
    .B(\datapath.registers.828[16] [22]),
    .S(\datapath.idinstr_20_bF$buf11 ),
    .Y(_8095_)
);

NOR2X1 _10728_ (
    .A(_1698_),
    .B(_1690_),
    .Y(_1699_)
);

DFFPOSX1 _10308_ (
    .Q(\datapath.regcsralu [21]),
    .CLK(CLK_bF$buf71),
    .D(\datapath.csr.csr_data [21])
);

FILL SFILL48760x10050 (
);

DFFPOSX1 _19846_ (
    .Q(\datapath.registers.828[3] [22]),
    .CLK(CLK_bF$buf52),
    .D(_4450_)
);

DFFPOSX1 _19426_ (
    .Q(\datapath.registers.828[24] [18]),
    .CLK(CLK_bF$buf91),
    .D(_4157_)
);

DFFPOSX1 _19006_ (
    .Q(\datapath.registers.828[18] [14]),
    .CLK(CLK_bF$buf92),
    .D(_3929_)
);

OAI21X1 _14981_ (
    .A(_5277_),
    .B(_5257__bF$buf6),
    .C(_5278_),
    .Y(_4633_)
);

OAI21X1 _14561_ (
    .A(_5004__bF$buf1),
    .B(_4840__bF$buf1),
    .C(\datapath.registers.828[15] [30]),
    .Y(_5035_)
);

OR2X2 _14141_ (
    .A(_4671_),
    .B(_4664_),
    .Y(_4805_)
);

FILL SFILL48680x17050 (
);

FILL SFILL38760x53050 (
);

MUX2X1 _15766_ (
    .A(_5693_),
    .B(_5692_),
    .S(\datapath.idinstr_16_bF$buf31 ),
    .Y(_5694_)
);

NAND2X1 _15346_ (
    .A(\datapath.registers.828[24] [30]),
    .B(_5437__bF$buf6),
    .Y(_5468_)
);

DFFPOSX1 _10481_ (
    .Q(\datapath.alupc_4 [31]),
    .CLK(CLK_bF$buf9),
    .D(\datapath.idpc_4 [31])
);

DFFPOSX1 _10061_ (
    .Q(\datapath.csr.csr_wdata [3]),
    .CLK(CLK_bF$buf7),
    .D(\datapath.regcsralu [3])
);

INVX1 _11686_ (
    .A(_1720_),
    .Y(_1089_)
);

OAI21X1 _11266_ (
    .A(_1990__bF$buf1),
    .B(_2230_),
    .C(_1886__bF$buf3),
    .Y(_2231_)
);

MUX2X1 _17912_ (
    .A(_7792_),
    .B(_7791_),
    .S(\datapath.idinstr_21_bF$buf12 ),
    .Y(_7793_)
);

FILL SFILL23720x8050 (
);

INVX1 _9834_ (
    .A(\datapath.alupc [24]),
    .Y(_692_)
);

NAND2X1 _9414_ (
    .A(\datapath.registers.regb_data [11]),
    .B(_318__bF$buf2),
    .Y(_352_)
);

NAND2X1 _13832_ (
    .A(\datapath.jumptarget [28]),
    .B(_3427__bF$buf1),
    .Y(_3607_)
);

NAND3X1 _13412_ (
    .A(_3300_),
    .B(_3303_),
    .C(_3291__bF$buf1),
    .Y(\datapath.memdataload [10])
);

INVX2 _14617_ (
    .A(\datapath.registers.828[14] [18]),
    .Y(_5071_)
);

AOI21X1 _17089_ (
    .A(_6987_),
    .B(_6980_),
    .C(_5685__bF$buf0),
    .Y(_6988_)
);

AOI21X1 _18870_ (
    .A(_4711__bF$buf0),
    .B(_8598__bF$buf6),
    .C(_8618_),
    .Y(_4222_)
);

AOI21X1 _18450_ (
    .A(_8314_),
    .B(_8318_),
    .C(\datapath.idinstr_23_bF$buf3 ),
    .Y(_8319_)
);

NAND2X1 _18030_ (
    .A(_7092__bF$buf3),
    .B(_7907_),
    .Y(_7908_)
);

FILL SFILL73640x51050 (
);

MUX2X1 _10957_ (
    .A(_1926_),
    .B(_1923_),
    .S(_1123__bF$buf6),
    .Y(_1927_)
);

DFFPOSX1 _10537_ (
    .Q(\datapath.idinstr [23]),
    .CLK(CLK_bF$buf109),
    .D(\datapath._05_ [23])
);

DFFPOSX1 _10117_ (
    .Q(\datapath.memoryinterface.data_store [27]),
    .CLK(CLK_bF$buf11),
    .D(\datapath.regrs2alu [27])
);

DFFPOSX1 _19655_ (
    .Q(\datapath.registers.828[26] [23]),
    .CLK(CLK_bF$buf111),
    .D(_4227_)
);

DFFPOSX1 _19235_ (
    .Q(\datapath.registers.828[20] [19]),
    .CLK(CLK_bF$buf131),
    .D(_4030_)
);

NOR2X1 _14790_ (
    .A(\datapath.wbinstr [9]),
    .B(_5001_),
    .Y(_5166_)
);

NAND2X1 _14370_ (
    .A(\datapath.rd [6]),
    .B(_4924__bF$buf5),
    .Y(_4932_)
);

CLKBUF1 CLKBUF1_insert770 (
    .A(CLK_hier0_bF$buf7),
    .Y(CLK_bF$buf16)
);

FILL SFILL58360x38050 (
);

CLKBUF1 CLKBUF1_insert771 (
    .A(CLK_hier0_bF$buf6),
    .Y(CLK_bF$buf15)
);

CLKBUF1 CLKBUF1_insert772 (
    .A(CLK_hier0_bF$buf2),
    .Y(CLK_bF$buf14)
);

CLKBUF1 CLKBUF1_insert773 (
    .A(CLK_hier0_bF$buf4),
    .Y(CLK_bF$buf13)
);

CLKBUF1 CLKBUF1_insert774 (
    .A(CLK_hier0_bF$buf5),
    .Y(CLK_bF$buf12)
);

CLKBUF1 CLKBUF1_insert775 (
    .A(CLK_hier0_bF$buf10),
    .Y(CLK_bF$buf11)
);

CLKBUF1 CLKBUF1_insert776 (
    .A(CLK_hier0_bF$buf8),
    .Y(CLK_bF$buf10)
);

CLKBUF1 CLKBUF1_insert777 (
    .A(CLK_hier0_bF$buf3),
    .Y(CLK_bF$buf9)
);

CLKBUF1 CLKBUF1_insert778 (
    .A(CLK_hier0_bF$buf5),
    .Y(CLK_bF$buf8)
);

CLKBUF1 CLKBUF1_insert779 (
    .A(CLK_hier0_bF$buf10),
    .Y(CLK_bF$buf7)
);

AOI21X1 _15995_ (
    .A(\datapath.idinstr_15_bF$buf16 ),
    .B(_5917_),
    .C(\datapath.idinstr_17_bF$buf9 ),
    .Y(_5918_)
);

OAI21X1 _15575_ (
    .A(_5579__bF$buf3),
    .B(_4691__bF$buf3),
    .C(_5589_),
    .Y(_4019_)
);

AOI21X1 _15155_ (
    .A(_4660__bF$buf3),
    .B(_5369__bF$buf5),
    .C(_5370_),
    .Y(_4532_)
);

DFFPOSX1 _10290_ (
    .Q(\datapath.regcsralu [3]),
    .CLK(CLK_bF$buf141),
    .D(\datapath.csr.csr_data [3])
);

AOI21X1 _11495_ (
    .A(_2453_),
    .B(_2454_),
    .C(_2452_),
    .Y(_2455_)
);

INVX2 _11075_ (
    .A(_2043_),
    .Y(_2044_)
);

NAND2X1 _17721_ (
    .A(_7602_),
    .B(_7605_),
    .Y(_7606_)
);

MUX2X1 _17301_ (
    .A(\datapath.registers.828[22] [2]),
    .B(\datapath.registers.828[20] [2]),
    .S(\datapath.idinstr_21_bF$buf32 ),
    .Y(_7195_)
);

AND2X2 _9643_ (
    .A(\datapath.alupc [0]),
    .B(\datapath.regimmalu [0]),
    .Y(_524_)
);

NOR2X1 _9223_ (
    .A(\datapath.memexecptions [0]),
    .B(\datapath.memexecptions [2]),
    .Y(_208_)
);

NOR2X1 _18926_ (
    .A(\datapath.registers.828[25] [15]),
    .B(_8631__bF$buf7),
    .Y(_8647_)
);

AOI21X1 _18506_ (
    .A(_8372_),
    .B(_8366_),
    .C(_7093__bF$buf6),
    .Y(_8373_)
);

NAND2X1 _13641_ (
    .A(_3424__bF$buf4),
    .B(\datapath.nextpc [7]),
    .Y(_3458_)
);

NAND2X1 _13221_ (
    .A(_0__1_bF$buf5),
    .B(\datapath.memoryinterface.data_store [7]),
    .Y(_3164_)
);

FILL SFILL38760x48050 (
);

FILL SFILL69160x39050 (
);

NOR2X1 _14846_ (
    .A(\datapath.registers.828[11] [23]),
    .B(_5167__bF$buf1),
    .Y(_5199_)
);

INVX1 _14426_ (
    .A(\datapath.registers.828[17] [30]),
    .Y(_4964_)
);

INVX8 _14006_ (
    .A(\datapath.rd [31]),
    .Y(_4735_)
);

FILL SFILL38360x34050 (
);

FILL SFILL28600x5050 (
);

NOR2X1 _10766_ (
    .A(_1736_),
    .B(_1735_),
    .Y(_1737_)
);

DFFPOSX1 _10346_ (
    .Q(\datapath.regrs2alu [27]),
    .CLK(CLK_bF$buf141),
    .D(\datapath.registers.regb_data [27])
);

FILL SFILL59240x30050 (
);

DFFPOSX1 _19884_ (
    .Q(\datapath.registers.828[1] [28]),
    .CLK(CLK_bF$buf103),
    .D(_4008_)
);

DFFPOSX1 _19464_ (
    .Q(\datapath.registers.828[23] [24]),
    .CLK(CLK_bF$buf127),
    .D(_4132_)
);

DFFPOSX1 _19044_ (
    .Q(\datapath.registers.828[31] [20]),
    .CLK(CLK_bF$buf143),
    .D(_4416_)
);

FILL SFILL28760x46050 (
);

FILL SFILL59160x37050 (
);

INVX1 _8914_ (
    .A(\datapath.programcounter.pc [2]),
    .Y(_771_)
);

FILL SFILL28360x32050 (
);

DFFPOSX1 _12912_ (
    .Q(\datapath.csr.mepc [6]),
    .CLK(CLK_bF$buf83),
    .D(\datapath.csr._26_ [6])
);

OAI21X1 _15384_ (
    .A(_4705__bF$buf1),
    .B(_5470__bF$buf0),
    .C(_5487_),
    .Y(_4475_)
);

AOI21X1 _16589_ (
    .A(_6498_),
    .B(_6497_),
    .C(_5683__bF$buf2),
    .Y(_6499_)
);

AOI21X1 _16169_ (
    .A(_6083_),
    .B(_6087_),
    .C(_5685__bF$buf4),
    .Y(_6088_)
);

INVX1 _17950_ (
    .A(\datapath.registers.828[0] [16]),
    .Y(_7830_)
);

NAND2X1 _17530_ (
    .A(_7416_),
    .B(_7418_),
    .Y(_7419_)
);

AOI21X1 _17110_ (
    .A(_7007_),
    .B(_7006_),
    .C(_5684__bF$buf0),
    .Y(_7008_)
);

FILL SFILL54120x18050 (
);

FILL SFILL18360x30050 (
);

FILL SFILL38760x7050 (
);

NOR2X1 _9872_ (
    .A(_725_),
    .B(_724_),
    .Y(_726_)
);

NAND2X1 _9452_ (
    .A(\datapath.csr.csr_data [20]),
    .B(_317__bF$buf2),
    .Y(_381_)
);

NAND2X1 _9032_ (
    .A(gnd),
    .B(\datapath.idpc_4 [9]),
    .Y(_850_)
);

NOR2X1 _12089_ (
    .A(\datapath.alu.b_3_bF$buf2 ),
    .B(_1520_),
    .Y(_1521_)
);

FILL SFILL63960x50 (
);

OAI21X1 _18735_ (
    .A(_4707__bF$buf4),
    .B(_8531__bF$buf5),
    .C(_8549_),
    .Y(_4284_)
);

AOI21X1 _18315_ (
    .A(\datapath.registers.828[21] [24]),
    .B(\datapath.idinstr_22_bF$buf29 ),
    .C(_7089__bF$buf1),
    .Y(_8187_)
);

DFFPOSX1 _13870_ (
    .Q(\datapath.programcounter.pc [2]),
    .CLK(CLK_bF$buf122),
    .D(\datapath.programcounter._1_ [2])
);

NAND2X1 _13450_ (
    .A(DMEM_DATA_L[21]),
    .B(_3031__bF$buf0),
    .Y(_3331_)
);

NAND3X1 _13030_ (
    .A(\datapath.idinstr [10]),
    .B(_3003_),
    .C(_2977_),
    .Y(_2985_)
);

INVX1 _14655_ (
    .A(\datapath.registers.828[14] [31]),
    .Y(_5096_)
);

AOI21X1 _14235_ (
    .A(_4693__bF$buf1),
    .B(_4842__bF$buf6),
    .C(_4856_),
    .Y(_3957_)
);

NAND2X1 _10995_ (
    .A(\datapath.alu.b_0_bF$buf5 ),
    .B(\datapath.alu.a [10]),
    .Y(_1965_)
);

DFFPOSX1 _10575_ (
    .Q(\datapath.idpc_4 [29]),
    .CLK(CLK_bF$buf122),
    .D(\datapath._04_ [29])
);

DFFPOSX1 _10155_ (
    .Q(\datapath.regjmpalign [1]),
    .CLK(CLK_bF$buf48),
    .D(\datapath.jumptarget [1])
);

MUX2X1 _16801_ (
    .A(_6705_),
    .B(_6704_),
    .S(\datapath.idinstr_16_bF$buf22 ),
    .Y(_6706_)
);

DFFPOSX1 _19693_ (
    .Q(\datapath.registers.828[27] [29]),
    .CLK(CLK_bF$buf117),
    .D(_4265_)
);

DFFPOSX1 _19273_ (
    .Q(\datapath.registers.828[22] [25]),
    .CLK(CLK_bF$buf136),
    .D(_4101_)
);

BUFX2 _8723_ (
    .A(_1_[27]),
    .Y(DMEM_DATA_S[27])
);

NAND2X1 _12721_ (
    .A(_2840_),
    .B(_2854_),
    .Y(_2856_)
);

AOI22X1 _12301_ (
    .A(_2500__bF$buf1),
    .B(\datapath.csr.mvect [17]),
    .C(\datapath.csr.mepc [15]),
    .D(_2507__bF$buf3),
    .Y(_2553_)
);

AOI21X1 _15193_ (
    .A(_4711__bF$buf0),
    .B(_5369__bF$buf7),
    .C(_5389_),
    .Y(_4542_)
);

DFFPOSX1 _9928_ (
    .Q(\datapath.regcsrwb [14]),
    .CLK(CLK_bF$buf1),
    .D(\datapath.csr.csr_wdata [14])
);

NAND2X1 _9508_ (
    .A(\datapath.csr.csr_data [1]),
    .B(_417__bF$buf2),
    .Y(_424_)
);

NOR2X1 _13926_ (
    .A(\datapath.registers.828[23] [4]),
    .B(_4673__bF$buf0),
    .Y(_4682_)
);

INVX1 _13506_ (
    .A(\datapath.programcounter.pc [3]),
    .Y(_3364_)
);

NAND2X1 _16398_ (
    .A(_6309_),
    .B(_6311_),
    .Y(_6312_)
);

FILL SFILL3800x47050 (
);

FILL SFILL3400x33050 (
);

NAND2X1 _9681_ (
    .A(_555_),
    .B(_556_),
    .Y(_557_)
);

NAND2X1 _9261_ (
    .A(\datapath.regloadwb [6]),
    .B(_213__bF$buf4),
    .Y(_237_)
);

BUFX2 _18964_ (
    .A(\datapath.registers.828[0] [4]),
    .Y(_3662_)
);

MUX2X1 _18544_ (
    .A(\datapath.registers.828[11] [30]),
    .B(\datapath.registers.828[10] [30]),
    .S(\datapath.idinstr_20_bF$buf7 ),
    .Y(_8410_)
);

NAND2X1 _18124_ (
    .A(\datapath.idinstr_22_bF$buf9 ),
    .B(_7999_),
    .Y(_8000_)
);

FILL SFILL43560x47050 (
);

DFFPOSX1 _19749_ (
    .Q(\datapath.registers.828[16] [21]),
    .CLK(CLK_bF$buf49),
    .D(_3873_)
);

DFFPOSX1 _19329_ (
    .Q(\datapath.registers.828[4] [17]),
    .CLK(CLK_bF$buf128),
    .D(_4476_)
);

NAND2X1 _14884_ (
    .A(\datapath.rd [6]),
    .B(_5212__bF$buf0),
    .Y(_5222_)
);

OAI21X1 _14464_ (
    .A(_4703__bF$buf3),
    .B(_4968__bF$buf6),
    .C(_4984_),
    .Y(_3866_)
);

AOI21X1 _14044_ (
    .A(_4705__bF$buf3),
    .B(_4738__bF$buf2),
    .C(_4755_),
    .Y(_4091_)
);

OAI21X1 _15669_ (
    .A(_4840__bF$buf7),
    .B(_5612__bF$buf0),
    .C(\datapath.registers.828[31] [23]),
    .Y(_5638_)
);

NOR2X1 _15249_ (
    .A(\datapath.registers.828[5] [15]),
    .B(_5402__bF$buf7),
    .Y(_5418_)
);

DFFPOSX1 _10384_ (
    .Q(\datapath.alu.a [1]),
    .CLK(CLK_bF$buf86),
    .D(\datapath.muxaval [1])
);

MUX2X1 _16610_ (
    .A(\datapath.registers.828[27] [19]),
    .B(\datapath.registers.828[26] [19]),
    .S(\datapath.idinstr_15_bF$buf35 ),
    .Y(_6519_)
);

DFFPOSX1 _19082_ (
    .Q(\datapath.registers.828[10] [26]),
    .CLK(CLK_bF$buf59),
    .D(_3686_)
);

FILL SFILL18360x25050 (
);

OAI21X1 _8952_ (
    .A(_795_),
    .B(gnd),
    .C(_796_),
    .Y(\datapath._03_ [14])
);

AOI21X1 _11589_ (
    .A(_900_),
    .B(_981_),
    .C(_984_),
    .Y(_985_)
);

OAI21X1 _11169_ (
    .A(_2131_),
    .B(_2135_),
    .C(_1919_),
    .Y(_2136_)
);

MUX2X1 _17815_ (
    .A(\datapath.registers.828[5] [13]),
    .B(\datapath.registers.828[4] [13]),
    .S(\datapath.idinstr_20_bF$buf26 ),
    .Y(_7698_)
);

DFFPOSX1 _12950_ (
    .Q(\datapath.csr.mvect [11]),
    .CLK(CLK_bF$buf87),
    .D(\datapath.csr._13_ [11])
);

OAI21X1 _12530_ (
    .A(\datapath.csr.csr_wdata [17]),
    .B(_2672__bF$buf4),
    .C(_2718_),
    .Y(_2719_)
);

NAND2X1 _12110_ (
    .A(_1769_),
    .B(_1908__bF$buf1),
    .Y(_1543_)
);

XNOR2X1 _9737_ (
    .A(_603_),
    .B(_606_),
    .Y(\datapath.jumptarget [12])
);

NAND2X1 _9317_ (
    .A(\datapath.regcwb [20]),
    .B(_218__bF$buf4),
    .Y(_279_)
);

FILL SFILL23560x43050 (
);

OAI21X1 _13735_ (
    .A(_3529_),
    .B(_3530_),
    .C(_3394_),
    .Y(_3531_)
);

INVX1 _13315_ (
    .A(DMEM_DATA_L[14]),
    .Y(_3235_)
);

NAND2X1 _9490_ (
    .A(\datapath.registers.regb_data [30]),
    .B(_318__bF$buf0),
    .Y(_409_)
);

INVX1 _9070_ (
    .A(\datapath.nextpc [22]),
    .Y(_875_)
);

OAI21X1 _18773_ (
    .A(_7245_),
    .B(_8565__bF$buf4),
    .C(_8569_),
    .Y(_4269_)
);

OAI21X1 _18353_ (
    .A(_8219_),
    .B(_8220_),
    .C(_8223_),
    .Y(_8224_)
);

FILL SFILL53720x30050 (
);

FILL SFILL53640x37050 (
);

OAI21X1 _11801_ (
    .A(_1212_),
    .B(\datapath.alu.b_1_bF$buf0 ),
    .C(_1211_),
    .Y(_1213_)
);

DFFPOSX1 _19978_ (
    .Q(\datapath.registers.828[6] [26]),
    .CLK(CLK_bF$buf58),
    .D(_4550_)
);

DFFPOSX1 _19558_ (
    .Q(\datapath.registers.828[12] [22]),
    .CLK(CLK_bF$buf18),
    .D(_3746_)
);

DFFPOSX1 _19138_ (
    .Q(\datapath.registers.828[17] [18]),
    .CLK(CLK_bF$buf89),
    .D(_3901_)
);

AOI21X1 _14693_ (
    .A(_4705__bF$buf3),
    .B(_5099__bF$buf7),
    .C(_5116_),
    .Y(_3771_)
);

OAI21X1 _14273_ (
    .A(_4877_),
    .B(_4842__bF$buf0),
    .C(_4878_),
    .Y(_3974_)
);

NAND2X1 _15898_ (
    .A(\datapath.idinstr_17_bF$buf0 ),
    .B(_5822_),
    .Y(_5823_)
);

AOI21X1 _15478_ (
    .A(_4725__bF$buf2),
    .B(_5503__bF$buf0),
    .C(_5539_),
    .Y(_4454_)
);

OAI21X1 _15058_ (
    .A(_4709__bF$buf1),
    .B(_5300__bF$buf2),
    .C(_5319_),
    .Y(_4605_)
);

DFFPOSX1 _10193_ (
    .Q(\datapath.mempc_4 [0]),
    .CLK(CLK_bF$buf6),
    .D(\datapath.alupc_4 [0])
);

FILL SFILL83800x24050 (
);

FILL SFILL3400x28050 (
);

NOR2X1 _8761_ (
    .A(\datapath.meminstr [3]),
    .B(\datapath.meminstr [2]),
    .Y(_99_)
);

NAND3X1 _11398_ (
    .A(_2103__bF$buf3),
    .B(_2357_),
    .C(_2359_),
    .Y(_2360_)
);

AOI21X1 _17624_ (
    .A(_7505_),
    .B(_7510_),
    .C(\datapath.idinstr_23_bF$buf6 ),
    .Y(_7511_)
);

MUX2X1 _17204_ (
    .A(\datapath.registers.828[29] [0]),
    .B(\datapath.registers.828[28] [0]),
    .S(\datapath.idinstr_20_bF$buf39 ),
    .Y(_7100_)
);

DFFPOSX1 _9966_ (
    .Q(\datapath.regloadwb [20]),
    .CLK(CLK_bF$buf1),
    .D(\datapath.memdataload [20])
);

NAND2X1 _9546_ (
    .A(\datapath.registers.rega_data [11]),
    .B(_418__bF$buf0),
    .Y(_452_)
);

OAI21X1 _9126_ (
    .A(_134_),
    .B(gnd),
    .C(_135_),
    .Y(\datapath._05_ [8])
);

AOI21X1 _18829_ (
    .A(_4735__bF$buf4),
    .B(_8565__bF$buf6),
    .C(_8597_),
    .Y(_4268_)
);

MUX2X1 _18409_ (
    .A(\datapath.registers.828[25] [27]),
    .B(\datapath.registers.828[24] [27]),
    .S(\datapath.idinstr_20_bF$buf53 ),
    .Y(_8278_)
);

INVX8 _13964_ (
    .A(\datapath.rd [17]),
    .Y(_4707_)
);

AOI21X1 _13544_ (
    .A(gnd),
    .B(_3388_),
    .C(_3389_),
    .Y(\datapath.programcounter._1_ [15])
);

INVX1 _13124_ (
    .A(\datapath.memoryinterface.data_store [8]),
    .Y(_3082_)
);

FILL SFILL73800x22050 (
);

FILL SFILL33640x33050 (
);

NAND2X1 _14749_ (
    .A(\datapath.registers.828[12] [12]),
    .B(_5132__bF$buf2),
    .Y(_5145_)
);

NOR2X1 _14329_ (
    .A(\datapath.registers.828[18] [20]),
    .B(_4886__bF$buf5),
    .Y(_4909_)
);

MUX2X1 _18582_ (
    .A(\datapath.registers.828[26] [30]),
    .B(\datapath.registers.828[24] [30]),
    .S(\datapath.idinstr_21_bF$buf28 ),
    .Y(_8448_)
);

OAI21X1 _18162_ (
    .A(_8025_),
    .B(_8036_),
    .C(\datapath.idinstr_24_bF$buf0 ),
    .Y(_8037_)
);

INVX1 _10669_ (
    .A(_1551_),
    .Y(_1562_)
);

DFFPOSX1 _10249_ (
    .Q(\datapath.csr.csr_mepc [26]),
    .CLK(CLK_bF$buf115),
    .D(\datapath.alupc [26])
);

FILL SFILL63800x20050 (
);

OAI22X1 _11610_ (
    .A(_1878_),
    .B(_1007_),
    .C(_1889__bF$buf1),
    .D(_1498_),
    .Y(_1008_)
);

DFFPOSX1 _19787_ (
    .Q(\datapath.registers.828[30] [27]),
    .CLK(CLK_bF$buf133),
    .D(_4391_)
);

DFFPOSX1 _19367_ (
    .Q(\datapath.registers.828[7] [23]),
    .CLK(CLK_bF$buf116),
    .D(_4579_)
);

AOI21X1 _14082_ (
    .A(_4677__bF$buf4),
    .B(_4772__bF$buf6),
    .C(_4775_),
    .Y(_4074_)
);

OAI21X1 _8817_ (
    .A(_26_),
    .B(_28_),
    .C(_25_),
    .Y(_29_)
);

FILL SFILL63720x27050 (
);

FILL SFILL23560x38050 (
);

NOR2X1 _12815_ (
    .A(_2867_),
    .B(_2933_),
    .Y(_2934_)
);

OAI21X1 _15287_ (
    .A(_4660__bF$buf3),
    .B(_5437__bF$buf4),
    .C(_5438_),
    .Y(_4148_)
);

FILL SFILL13240x60050 (
);

NAND2X1 _8990_ (
    .A(gnd),
    .B(\datapath.idpc [27]),
    .Y(_822_)
);

MUX2X1 _17853_ (
    .A(\datapath.registers.828[23] [14]),
    .B(\datapath.registers.828[22] [14]),
    .S(\datapath.idinstr_20_bF$buf8 ),
    .Y(_7735_)
);

MUX2X1 _17433_ (
    .A(\datapath.registers.828[7] [5]),
    .B(\datapath.registers.828[6] [5]),
    .S(\datapath.idinstr_20_bF$buf51 ),
    .Y(_7324_)
);

MUX2X1 _17013_ (
    .A(\datapath.registers.828[25] [28]),
    .B(\datapath.registers.828[24] [28]),
    .S(\datapath.idinstr_15_bF$buf51 ),
    .Y(_6913_)
);

FILL SFILL13560x36050 (
);

XNOR2X1 _9775_ (
    .A(_634_),
    .B(_639_),
    .Y(\datapath.jumptarget [17])
);

NAND3X1 _9355_ (
    .A(_306_),
    .B(_307_),
    .C(_305_),
    .Y(\datapath.rd [29])
);

AOI21X1 _18638_ (
    .A(_4675__bF$buf1),
    .B(_8498__bF$buf7),
    .C(_8500_),
    .Y(_4319_)
);

OAI21X1 _18218_ (
    .A(_8090_),
    .B(\datapath.idinstr_22_bF$buf6 ),
    .C(_8091_),
    .Y(_8092_)
);

NAND3X1 _13773_ (
    .A(_3424__bF$buf0),
    .B(_3557_),
    .C(_3559_),
    .Y(_3560_)
);

INVX1 _13353_ (
    .A(DMEM_DATA_L[1]),
    .Y(_3254_)
);

AOI21X1 _14978_ (
    .A(_4699__bF$buf2),
    .B(_5257__bF$buf2),
    .C(_5276_),
    .Y(_4632_)
);

OAI21X1 _14558_ (
    .A(_5003__bF$buf3),
    .B(_4729__bF$buf4),
    .C(_5033_),
    .Y(_3848_)
);

AOI21X1 _14138_ (
    .A(_4733__bF$buf0),
    .B(_4772__bF$buf4),
    .C(_4803_),
    .Y(_4075_)
);

FILL SFILL43720x23050 (
);

FILL SFILL64200x50050 (
);

NOR2X1 _18391_ (
    .A(_6830_),
    .B(_7089__bF$buf5),
    .Y(_8261_)
);

NAND2X1 _10898_ (
    .A(\datapath.alu.b_2_bF$buf7 ),
    .B(_1868_),
    .Y(_1869_)
);

DFFPOSX1 _10478_ (
    .Q(\datapath.alupc_4 [28]),
    .CLK(CLK_bF$buf38),
    .D(\datapath.idpc_4 [28])
);

DFFPOSX1 _10058_ (
    .Q(\datapath.csr.csr_wdata [0]),
    .CLK(CLK_bF$buf44),
    .D(\datapath.regcsralu [0])
);

AOI21X1 _16704_ (
    .A(_6606_),
    .B(_6610_),
    .C(_5685__bF$buf7),
    .Y(_6611_)
);

DFFPOSX1 _19596_ (
    .Q(\datapath.registers.828[21] [28]),
    .CLK(CLK_bF$buf4),
    .D(_4072_)
);

DFFPOSX1 _19176_ (
    .Q(\datapath.registers.828[15] [24]),
    .CLK(CLK_bF$buf75),
    .D(_3844_)
);

NAND2X1 _17909_ (
    .A(\datapath.idinstr_22_bF$buf0 ),
    .B(_7789_),
    .Y(_7790_)
);

NAND3X1 _12624_ (
    .A(\datapath.meminstr [29]),
    .B(_2588_),
    .C(_2592_),
    .Y(_2794_)
);

NAND3X1 _12204_ (
    .A(_2459_),
    .B(_977_),
    .C(_1642_),
    .Y(_1643_)
);

FILL SFILL73800x17050 (
);

OAI21X1 _15096_ (
    .A(_5335__bF$buf1),
    .B(_4679__bF$buf2),
    .C(_5340_),
    .Y(_4589_)
);

NAND2X1 _13829_ (
    .A(\datapath.programcounter.pc [28]),
    .B(_3604_),
    .Y(_3605_)
);

NAND2X1 _13409_ (
    .A(_0__1_bF$buf6),
    .B(DMEM_DATA_L[26]),
    .Y(_3301_)
);

FILL SFILL23320x50050 (
);

NAND2X1 _17662_ (
    .A(_7545_),
    .B(_7547_),
    .Y(_7548_)
);

AOI21X1 _17242_ (
    .A(_7116_),
    .B(_7137_),
    .C(_7095__bF$buf3),
    .Y(\datapath.registers.regb_data [0])
);

NAND2X1 _9584_ (
    .A(\datapath.csr.csr_data [20]),
    .B(_417__bF$buf2),
    .Y(_481_)
);

FILL SFILL74040x3050 (
);

NAND2X1 _9164_ (
    .A(gnd),
    .B(\datapath.idinstr_21_bF$buf34 ),
    .Y(_161_)
);

FILL SFILL63800x15050 (
);

NOR2X1 _18867_ (
    .A(\datapath.registers.828[26] [18]),
    .B(_8598__bF$buf0),
    .Y(_8617_)
);

MUX2X1 _18447_ (
    .A(\datapath.registers.828[7] [27]),
    .B(\datapath.registers.828[6] [27]),
    .S(\datapath.idinstr_20_bF$buf30 ),
    .Y(_8316_)
);

MUX2X1 _18027_ (
    .A(\datapath.registers.828[9] [18]),
    .B(\datapath.registers.828[8] [18]),
    .S(\datapath.idinstr_20_bF$buf42 ),
    .Y(_7905_)
);

FILL SFILL23640x26050 (
);

NOR2X1 _13582_ (
    .A(gnd),
    .B(\datapath.programcounter.pc_mux [28]),
    .Y(_3415_)
);

OAI21X1 _13162_ (
    .A(_3112_),
    .B(_0__1_bF$buf6),
    .C(_3113_),
    .Y(_3114_)
);

FILL SFILL53800x58050 (
);

FILL SFILL84200x49050 (
);

FILL SFILL8280x11050 (
);

NAND2X1 _14787_ (
    .A(\datapath.registers.828[12] [31]),
    .B(_5132__bF$buf5),
    .Y(_5164_)
);

NOR2X1 _14367_ (
    .A(\datapath.registers.828[17] [5]),
    .B(_4924__bF$buf0),
    .Y(_4930_)
);

FILL SFILL69000x29050 (
);

FILL SFILL23160x19050 (
);

FILL SFILL13240x55050 (
);

DFFPOSX1 _10287_ (
    .Q(\datapath.regcsralu [0]),
    .CLK(CLK_bF$buf44),
    .D(\datapath.csr.csr_data [0])
);

AOI21X1 _16933_ (
    .A(_6834_),
    .B(_6833_),
    .C(_5684__bF$buf2),
    .Y(_6835_)
);

OAI21X1 _16513_ (
    .A(_6424_),
    .B(_6415_),
    .C(_5680__bF$buf1),
    .Y(_6425_)
);

FILL SFILL43800x56050 (
);

INVX1 _8855_ (
    .A(_60_),
    .Y(_61_)
);

NAND2X1 _17718_ (
    .A(\datapath.registers.828[18] [11]),
    .B(_7092__bF$buf9),
    .Y(_7603_)
);

FILL SFILL69000x9050 (
);

FILL SFILL43720x5050 (
);

NAND2X1 _12853_ (
    .A(\datapath.csr.mvect [28]),
    .B(_2959_),
    .Y(_2965_)
);

INVX1 _12433_ (
    .A(\datapath.csr.csr_wdata [23]),
    .Y(_2647_)
);

AOI21X1 _12013_ (
    .A(_1416_),
    .B(_1419_),
    .C(_1439_),
    .Y(_1440_)
);

FILL SFILL78920x24050 (
);

FILL SFILL43800x11050 (
);

FILL SFILL43240x9050 (
);

OAI21X1 _13638_ (
    .A(_3441_),
    .B(_3450_),
    .C(_3372_),
    .Y(_3456_)
);

NAND2X1 _13218_ (
    .A(\datapath.memoryinterface.data_store [22]),
    .B(_3031__bF$buf3),
    .Y(_3162_)
);

FILL SFILL33800x54050 (
);

FILL SFILL64200x45050 (
);

AOI21X1 _17891_ (
    .A(\datapath.idinstr_20_bF$buf30 ),
    .B(_7771_),
    .C(_7092__bF$buf0),
    .Y(_7772_)
);

NAND2X1 _17471_ (
    .A(_7092__bF$buf0),
    .B(_7360_),
    .Y(_7361_)
);

MUX2X1 _17051_ (
    .A(\datapath.registers.828[7] [28]),
    .B(\datapath.registers.828[6] [28]),
    .S(\datapath.idinstr_15_bF$buf29 ),
    .Y(_6951_)
);

NAND3X1 _9393_ (
    .A(_335_),
    .B(_336_),
    .C(_334_),
    .Y(\datapath.muxbval [5])
);

FILL SFILL68920x22050 (
);

AOI21X1 _18676_ (
    .A(_4713__bF$buf3),
    .B(_8498__bF$buf1),
    .C(_8519_),
    .Y(_4320_)
);

MUX2X1 _18256_ (
    .A(\datapath.registers.828[31] [23]),
    .B(\datapath.registers.828[29] [23]),
    .S(\datapath.idinstr_21_bF$buf35 ),
    .Y(_8129_)
);

NAND2X1 _13391_ (
    .A(_0__1_bF$buf4),
    .B(DMEM_DATA_L[23]),
    .Y(_3286_)
);

NAND2X1 _11704_ (
    .A(_991_),
    .B(_1107_),
    .Y(_1108_)
);

INVX2 _14596_ (
    .A(\datapath.registers.828[14] [11]),
    .Y(_5057_)
);

AOI21X1 _14176_ (
    .A(_4705__bF$buf3),
    .B(_4806__bF$buf6),
    .C(_4823_),
    .Y(_4027_)
);

FILL SFILL13640x9050 (
);

FILL FILL83000x31050 (
);

DFFPOSX1 _12909_ (
    .Q(\datapath.csr.mepc [3]),
    .CLK(CLK_bF$buf43),
    .D(\datapath.csr._26_ [3])
);

FILL SFILL53480x6050 (
);

FILL SFILL58920x20050 (
);

FILL SFILL23320x45050 (
);

DFFPOSX1 _10096_ (
    .Q(\datapath.memoryinterface.data_store [6]),
    .CLK(CLK_bF$buf147),
    .D(\datapath.regrs2alu [6])
);

MUX2X1 _16742_ (
    .A(_6647_),
    .B(_6646_),
    .S(\datapath.idinstr_16_bF$buf30 ),
    .Y(_6648_)
);

OAI21X1 _16322_ (
    .A(_5059_),
    .B(\datapath.idinstr_15_bF$buf17 ),
    .C(\datapath.idinstr_16_bF$buf23 ),
    .Y(_6238_)
);

FILL SFILL23720x14050 (
);

BUFX2 _8664_ (
    .A(_0__0_bF$buf0),
    .Y(DMEM_ADDR[0])
);

INVX1 _17947_ (
    .A(\datapath.registers.828[1] [16]),
    .Y(_7827_)
);

NAND2X1 _17527_ (
    .A(_7089__bF$buf8),
    .B(_7415_),
    .Y(_7416_)
);

OAI21X1 _17107_ (
    .A(_5094_),
    .B(\datapath.idinstr_15_bF$buf15 ),
    .C(\datapath.idinstr_16_bF$buf7 ),
    .Y(_7005_)
);

OAI21X1 _12662_ (
    .A(_2797__bF$buf4),
    .B(\datapath.csr.csr_wdata [19]),
    .C(_2783__bF$buf1),
    .Y(_2817_)
);

OAI21X1 _12242_ (
    .A(_2504_),
    .B(_2490__bF$buf3),
    .C(_2508_),
    .Y(\datapath.csr.csr_data [2])
);

NAND2X1 _9869_ (
    .A(\datapath.alupc [28]),
    .B(\datapath.regimmalu [28]),
    .Y(_723_)
);

NAND3X1 _9449_ (
    .A(_377_),
    .B(_378_),
    .C(_376_),
    .Y(\datapath.muxbval [19])
);

NAND2X1 _9029_ (
    .A(gnd),
    .B(\datapath.idpc_4 [8]),
    .Y(_848_)
);

NAND2X1 _13867_ (
    .A(_3635_),
    .B(_3631_),
    .Y(\datapath.programcounter.pc_mux [31])
);

NAND3X1 _13447_ (
    .A(_3291__bF$buf2),
    .B(_3329_),
    .C(_3326_),
    .Y(\datapath.memdataload [19])
);

NAND2X1 _13027_ (
    .A(\datapath.idinstr_22_bF$buf33 ),
    .B(_2973_),
    .Y(_2983_)
);

FILL SFILL8600x18050 (
);

FILL SFILL48840x25050 (
);

MUX2X1 _17280_ (
    .A(\datapath.registers.828[5] [1]),
    .B(\datapath.registers.828[4] [1]),
    .S(\datapath.idinstr_20_bF$buf14 ),
    .Y(_7175_)
);

FILL SFILL48440x11050 (
);

FILL SFILL13640x19050 (
);

FILL SFILL78600x43050 (
);

MUX2X1 _18485_ (
    .A(\datapath.registers.828[5] [28]),
    .B(\datapath.registers.828[4] [28]),
    .S(\datapath.idinstr_20_bF$buf43 ),
    .Y(_8353_)
);

MUX2X1 _18065_ (
    .A(\datapath.registers.828[3] [19]),
    .B(\datapath.registers.828[2] [19]),
    .S(\datapath.idinstr_20_bF$buf16 ),
    .Y(_7942_)
);

OAI21X1 _11933_ (
    .A(\datapath.alu.b_3_bF$buf2 ),
    .B(_1351_),
    .C(_1353_),
    .Y(_1354_)
);

NAND3X1 _11513_ (
    .A(_2103__bF$buf3),
    .B(_903_),
    .C(_904_),
    .Y(_905_)
);

OAI21X1 _12718_ (
    .A(_2852_),
    .B(\controlunit.mret_bF$buf1 ),
    .C(_2853_),
    .Y(\datapath.csr.csr_pcaddr [5])
);

FILL SFILL33800x49050 (
);

MUX2X1 _16971_ (
    .A(\datapath.registers.828[27] [27]),
    .B(\datapath.registers.828[26] [27]),
    .S(\datapath.idinstr_15_bF$buf32 ),
    .Y(_6872_)
);

AOI21X1 _16551_ (
    .A(_6454_),
    .B(_6461_),
    .C(_5685__bF$buf5),
    .Y(_6462_)
);

MUX2X1 _16131_ (
    .A(\datapath.registers.828[22] [8]),
    .B(\datapath.registers.828[20] [8]),
    .S(\datapath.idinstr_16_bF$buf6 ),
    .Y(_6051_)
);

NOR2X1 _8893_ (
    .A(\datapath.idinstr [14]),
    .B(_77_),
    .Y(bsel[1])
);

MUX2X1 _17756_ (
    .A(\datapath.registers.828[23] [12]),
    .B(\datapath.registers.828[21] [12]),
    .S(\datapath.idinstr_21_bF$buf2 ),
    .Y(_7640_)
);

OAI21X1 _17336_ (
    .A(_5044_),
    .B(\datapath.idinstr_20_bF$buf50 ),
    .C(\datapath.idinstr_21_bF$buf9 ),
    .Y(_7229_)
);

DFFPOSX1 _12891_ (
    .Q(\datapath.csr.mcause [17]),
    .CLK(CLK_bF$buf74),
    .D(\datapath.csr._32_ [17])
);

OAI21X1 _12471_ (
    .A(\datapath.csr.csr_wdata [2]),
    .B(_2672__bF$buf5),
    .C(_2674_),
    .Y(_2675_)
);

AND2X2 _12051_ (
    .A(_1479_),
    .B(_1478_),
    .Y(_1480_)
);

AND2X2 _9678_ (
    .A(_553_),
    .B(_551_),
    .Y(_554_)
);

NAND2X1 _9258_ (
    .A(\datapath.regloadwb [5]),
    .B(_213__bF$buf3),
    .Y(_235_)
);

NAND2X1 _13676_ (
    .A(\datapath.programcounter.pc [10]),
    .B(\datapath.programcounter.pc [11]),
    .Y(_3484_)
);

NAND2X1 _13256_ (
    .A(_0__1_bF$buf3),
    .B(\datapath.memoryinterface.data_store [12]),
    .Y(_3194_)
);

FILL SFILL18440x50050 (
);

DFFPOSX1 _19902_ (
    .Q(\datapath.registers.828[29] [14]),
    .CLK(CLK_bF$buf117),
    .D(_4313_)
);

NAND2X1 _15822_ (
    .A(_5746_),
    .B(_5748_),
    .Y(_5749_)
);

OAI21X1 _15402_ (
    .A(_4723__bF$buf2),
    .B(_5470__bF$buf7),
    .C(_5496_),
    .Y(_4485_)
);

AOI21X1 _18294_ (
    .A(\datapath.registers.828[7] [24]),
    .B(\datapath.idinstr_22_bF$buf2 ),
    .C(_7089__bF$buf3),
    .Y(_8166_)
);

OAI21X1 _16607_ (
    .A(_6516_),
    .B(_6507_),
    .C(\datapath.idinstr_19_bF$buf5 ),
    .Y(_6517_)
);

NAND2X1 _11742_ (
    .A(_1986_),
    .B(_2032_),
    .Y(_1150_)
);

FILL SFILL48520x44050 (
);

OAI21X1 _11322_ (
    .A(_994__bF$buf5),
    .B(_2205_),
    .C(_2285_),
    .Y(_2286_)
);

DFFPOSX1 _19499_ (
    .Q(\datapath.registers.828[5] [27]),
    .CLK(CLK_bF$buf136),
    .D(_4519_)
);

DFFPOSX1 _19079_ (
    .Q(\datapath.registers.828[10] [23]),
    .CLK(CLK_bF$buf101),
    .D(_3683_)
);

OAI21X1 _8949_ (
    .A(_793_),
    .B(gnd),
    .C(_794_),
    .Y(\datapath._03_ [13])
);

DFFPOSX1 _12947_ (
    .Q(\datapath.csr.mvect [8]),
    .CLK(CLK_bF$buf83),
    .D(\datapath.csr._13_ [8])
);

OAI21X1 _12527_ (
    .A(_2715_),
    .B(\controlunit.csrfile_trap_wen_bF$buf2 ),
    .C(_2716_),
    .Y(\datapath.csr._26_ [14])
);

INVX2 _12107_ (
    .A(_1737_),
    .Y(_1539_)
);

NAND2X1 _16780_ (
    .A(_5684__bF$buf5),
    .B(_6685_),
    .Y(_6686_)
);

OAI21X1 _16360_ (
    .A(_6274_),
    .B(_6265_),
    .C(_5680__bF$buf1),
    .Y(_6275_)
);

BUFX2 BUFX2_insert440 (
    .A(\datapath.idinstr [23]),
    .Y(\datapath.idinstr_23_bF$buf7 )
);

BUFX2 BUFX2_insert441 (
    .A(\datapath.idinstr [23]),
    .Y(\datapath.idinstr_23_bF$buf6 )
);

BUFX2 BUFX2_insert442 (
    .A(\datapath.idinstr [23]),
    .Y(\datapath.idinstr_23_bF$buf5 )
);

BUFX2 BUFX2_insert443 (
    .A(\datapath.idinstr [23]),
    .Y(\datapath.idinstr_23_bF$buf4 )
);

MUX2X1 _17985_ (
    .A(\datapath.registers.828[11] [17]),
    .B(\datapath.registers.828[10] [17]),
    .S(\datapath.idinstr_20_bF$buf42 ),
    .Y(_7864_)
);

BUFX2 BUFX2_insert444 (
    .A(\datapath.idinstr [23]),
    .Y(\datapath.idinstr_23_bF$buf3 )
);

BUFX2 BUFX2_insert445 (
    .A(\datapath.idinstr [23]),
    .Y(\datapath.idinstr_23_bF$buf2 )
);

NAND2X1 _17565_ (
    .A(\datapath.idinstr_22_bF$buf24 ),
    .B(_7452_),
    .Y(_7453_)
);

NAND2X1 _17145_ (
    .A(\datapath.idinstr_17_bF$buf14 ),
    .B(_7042_),
    .Y(_7043_)
);

BUFX2 BUFX2_insert446 (
    .A(\datapath.idinstr [23]),
    .Y(\datapath.idinstr_23_bF$buf1 )
);

BUFX2 BUFX2_insert447 (
    .A(\datapath.idinstr [23]),
    .Y(\datapath.idinstr_23_bF$buf0 )
);

BUFX2 BUFX2_insert448 (
    .A(_4668_),
    .Y(_4668__bF$buf7)
);

BUFX2 BUFX2_insert449 (
    .A(_4668_),
    .Y(_4668__bF$buf6)
);

NAND3X1 _12280_ (
    .A(_2497_),
    .B(\datapath.idinstr_22_bF$buf1 ),
    .C(_2510_),
    .Y(_2538_)
);

FILL SFILL38440x49050 (
);

NAND2X1 _9487_ (
    .A(\datapath.imm [29]),
    .B(_316__bF$buf2),
    .Y(_407_)
);

INVX1 _9067_ (
    .A(\datapath.nextpc [21]),
    .Y(_873_)
);

FILL SFILL83880x58050 (
);

FILL SFILL38840x18050 (
);

AOI22X1 _13485_ (
    .A(DMEM_DATA_L[4]),
    .B(_3217_),
    .C(_3229_),
    .D(DMEM_DATA_L[12]),
    .Y(_3351_)
);

NOR2X1 _13065_ (
    .A(\datapath.meminstr [12]),
    .B(_3028_),
    .Y(_3031_)
);

DFFPOSX1 _19711_ (
    .Q(\datapath.registers.828[0] [15]),
    .CLK(CLK_bF$buf8),
    .D(_3642_)
);

FILL SFILL3480x17050 (
);

OAI21X1 _15631_ (
    .A(_4840__bF$buf7),
    .B(_5612__bF$buf0),
    .C(\datapath.registers.828[31] [4]),
    .Y(_5619_)
);

AOI21X1 _15211_ (
    .A(_4729__bF$buf2),
    .B(_5369__bF$buf7),
    .C(_5398_),
    .Y(_4552_)
);

FILL SFILL73880x56050 (
);

MUX2X1 _16836_ (
    .A(\datapath.registers.828[15] [24]),
    .B(\datapath.registers.828[14] [24]),
    .S(\datapath.idinstr_15_bF$buf5 ),
    .Y(_6740_)
);

AOI21X1 _16416_ (
    .A(_6329_),
    .B(_6323_),
    .C(_5685__bF$buf1),
    .Y(_6330_)
);

MUX2X1 _11971_ (
    .A(_1394_),
    .B(_1323_),
    .S(_994__bF$buf7),
    .Y(_1395_)
);

OAI21X1 _11551_ (
    .A(_942_),
    .B(_1530_),
    .C(_1908__bF$buf2),
    .Y(_944_)
);

OAI21X1 _11131_ (
    .A(_1990__bF$buf1),
    .B(_2094_),
    .C(_1886__bF$buf0),
    .Y(_2099_)
);

BUFX2 _8758_ (
    .A(\datapath.programcounter.pc [29]),
    .Y(IMEM_ADDR[29])
);

OAI21X1 _12756_ (
    .A(_2883_),
    .B(\controlunit.mret_bF$buf4 ),
    .C(_2884_),
    .Y(\datapath.csr.csr_pcaddr [12])
);

INVX1 _12336_ (
    .A(\datapath.csr.mcause [29]),
    .Y(_2576_)
);

INVX1 _14902_ (
    .A(\datapath.registers.828[10] [14]),
    .Y(_5232_)
);

MUX2X1 _17794_ (
    .A(\datapath.registers.828[19] [13]),
    .B(\datapath.registers.828[17] [13]),
    .S(\datapath.idinstr_21_bF$buf40 ),
    .Y(_7677_)
);

NAND2X1 _17374_ (
    .A(\datapath.idinstr_22_bF$buf16 ),
    .B(_7266_),
    .Y(_7267_)
);

FILL SFILL48600x32050 (
);

AOI22X1 _9296_ (
    .A(_219__bF$buf0),
    .B(\datapath.wbpc_4 [15]),
    .C(\datapath.regcsrwb [15]),
    .D(_216__bF$buf0),
    .Y(_263_)
);

FILL SFILL73960x9050 (
);

OAI21X1 _10822_ (
    .A(_1705_),
    .B(_1791_),
    .C(_1792_),
    .Y(_1793_)
);

DFFPOSX1 _10402_ (
    .Q(\datapath.alu.a [19]),
    .CLK(CLK_bF$buf139),
    .D(\datapath.muxaval [19])
);

FILL SFILL53880x52050 (
);

DFFPOSX1 _18999_ (
    .Q(\datapath.registers.828[18] [7]),
    .CLK(CLK_bF$buf13),
    .D(_3953_)
);

MUX2X1 _18579_ (
    .A(_8444_),
    .B(_8443_),
    .S(_7089__bF$buf0),
    .Y(_8445_)
);

AOI21X1 _18159_ (
    .A(\datapath.idinstr_20_bF$buf30 ),
    .B(_8033_),
    .C(_7092__bF$buf0),
    .Y(_8034_)
);

OAI21X1 _13294_ (
    .A(_3218_),
    .B(_3058_),
    .C(_3223_),
    .Y(\datapath.memoryinterface.byte_size_store.storebyte [4])
);

DFFPOSX1 _19940_ (
    .Q(\datapath.registers.828[28] [20]),
    .CLK(CLK_bF$buf143),
    .D(_4288_)
);

DFFPOSX1 _19520_ (
    .Q(\datapath.registers.828[11] [16]),
    .CLK(CLK_bF$buf101),
    .D(_3707_)
);

DFFPOSX1 _19100_ (
    .Q(\datapath.registers.828[14] [12]),
    .CLK(CLK_bF$buf16),
    .D(_3799_)
);

AND2X2 _11607_ (
    .A(_1002_),
    .B(_1003_),
    .Y(_1004_)
);

NAND2X1 _14499_ (
    .A(_5002_),
    .B(_4841_),
    .Y(_5003_)
);

NOR2X1 _14079_ (
    .A(\datapath.registers.828[21] [1]),
    .B(_4772__bF$buf2),
    .Y(_4774_)
);

NAND2X1 _15860_ (
    .A(_5783_),
    .B(_5785_),
    .Y(_5786_)
);

NAND2X1 _15440_ (
    .A(\datapath.rd [10]),
    .B(_5503__bF$buf1),
    .Y(_5518_)
);

NAND2X1 _15020_ (
    .A(_5166_),
    .B(_4967_),
    .Y(_5300_)
);

FILL SFILL3640x43050 (
);

NAND2X1 _16645_ (
    .A(_5684__bF$buf5),
    .B(_6553_),
    .Y(_6554_)
);

NAND2X1 _16225_ (
    .A(_6140_),
    .B(_6142_),
    .Y(_6143_)
);

FILL SFILL59080x21050 (
);

AOI21X1 _11780_ (
    .A(_1156_),
    .B(_1083_),
    .C(_1158_),
    .Y(_1190_)
);

NOR2X1 _11360_ (
    .A(\datapath.alu.b_4_bF$buf4 ),
    .B(_1230_),
    .Y(_2323_)
);

NAND2X1 _8987_ (
    .A(gnd),
    .B(\datapath.idpc [26]),
    .Y(_820_)
);

NOR2X1 _12985_ (
    .A(_3010_),
    .B(_3006_),
    .Y(\datapath.imm [9])
);

OAI21X1 _12565_ (
    .A(\datapath.csr.csr_wdata [24]),
    .B(_2672__bF$buf3),
    .C(_2746_),
    .Y(_2747_)
);

NOR2X1 _12145_ (
    .A(_1123__bF$buf3),
    .B(_1458_),
    .Y(_1580_)
);

BUFX2 BUFX2_insert1000 (
    .A(\datapath.idinstr_22_hier0_bF$buf1 ),
    .Y(\datapath.idinstr_22_bF$buf15 )
);

BUFX2 BUFX2_insert1001 (
    .A(\datapath.idinstr_22_hier0_bF$buf4 ),
    .Y(\datapath.idinstr_22_bF$buf14 )
);

FILL SFILL73960x44050 (
);

BUFX2 BUFX2_insert1002 (
    .A(\datapath.idinstr_22_hier0_bF$buf3 ),
    .Y(\datapath.idinstr_22_bF$buf13 )
);

BUFX2 BUFX2_insert1003 (
    .A(\datapath.idinstr_22_hier0_bF$buf0 ),
    .Y(\datapath.idinstr_22_bF$buf12 )
);

BUFX2 BUFX2_insert1004 (
    .A(\datapath.idinstr_22_hier0_bF$buf5 ),
    .Y(\datapath.idinstr_22_bF$buf11 )
);

BUFX2 BUFX2_insert1005 (
    .A(\datapath.idinstr_22_hier0_bF$buf4 ),
    .Y(\datapath.idinstr_22_bF$buf10 )
);

BUFX2 BUFX2_insert1006 (
    .A(\datapath.idinstr_22_hier0_bF$buf5 ),
    .Y(\datapath.idinstr_22_bF$buf9 )
);

BUFX2 BUFX2_insert1007 (
    .A(\datapath.idinstr_22_hier0_bF$buf2 ),
    .Y(\datapath.idinstr_22_bF$buf8 )
);

BUFX2 BUFX2_insert1008 (
    .A(\datapath.idinstr_22_hier0_bF$buf5 ),
    .Y(\datapath.idinstr_22_bF$buf7 )
);

BUFX2 BUFX2_insert1009 (
    .A(\datapath.idinstr_22_hier0_bF$buf0 ),
    .Y(\datapath.idinstr_22_bF$buf6 )
);

AOI21X1 _14711_ (
    .A(_4723__bF$buf2),
    .B(_5099__bF$buf5),
    .C(_5125_),
    .Y(_3781_)
);

BUFX2 BUFX2_insert820 (
    .A(_5470_),
    .Y(_5470__bF$buf3)
);

BUFX2 BUFX2_insert821 (
    .A(_5470_),
    .Y(_5470__bF$buf2)
);

BUFX2 BUFX2_insert822 (
    .A(_5470_),
    .Y(_5470__bF$buf1)
);

BUFX2 BUFX2_insert823 (
    .A(_5470_),
    .Y(_5470__bF$buf0)
);

BUFX2 BUFX2_insert824 (
    .A(_5335_),
    .Y(_5335__bF$buf4)
);

BUFX2 BUFX2_insert825 (
    .A(_5335_),
    .Y(_5335__bF$buf3)
);

BUFX2 BUFX2_insert826 (
    .A(_5335_),
    .Y(_5335__bF$buf2)
);

MUX2X1 _17183_ (
    .A(_7079_),
    .B(_7078_),
    .S(\datapath.idinstr_16_bF$buf22 ),
    .Y(_7080_)
);

BUFX2 BUFX2_insert827 (
    .A(_5335_),
    .Y(_5335__bF$buf1)
);

BUFX2 BUFX2_insert828 (
    .A(_5335_),
    .Y(_5335__bF$buf0)
);

BUFX2 BUFX2_insert829 (
    .A(_4738_),
    .Y(_4738__bF$buf7)
);

INVX1 _15916_ (
    .A(\datapath.registers.828[15] [3]),
    .Y(_5841_)
);

AOI21X1 _10631_ (
    .A(_1080_),
    .B(_1048_),
    .C(_1145_),
    .Y(_1155_)
);

DFFPOSX1 _10211_ (
    .Q(\datapath.mempc_4 [18]),
    .CLK(CLK_bF$buf21),
    .D(\datapath.alupc_4 [18])
);

MUX2X1 _18388_ (
    .A(\datapath.registers.828[11] [26]),
    .B(\datapath.registers.828[10] [26]),
    .S(\datapath.idinstr_20_bF$buf50 ),
    .Y(_8258_)
);

FILL SFILL18520x33050 (
);

FILL SFILL58600x29050 (
);

FILL SFILL63960x42050 (
);

FILL SFILL39000x60050 (
);

OAI21X1 _11836_ (
    .A(_1810_),
    .B(_1880_),
    .C(_1249_),
    .Y(_1250_)
);

AOI21X1 _11416_ (
    .A(\datapath.alu.b_3_bF$buf3 ),
    .B(_1927_),
    .C(_1871_),
    .Y(_2378_)
);

NAND3X1 _16874_ (
    .A(_5683__bF$buf3),
    .B(_6777_),
    .C(_6774_),
    .Y(_6778_)
);

NAND2X1 _16454_ (
    .A(_6363_),
    .B(_6366_),
    .Y(_6367_)
);

AOI21X1 _16034_ (
    .A(\datapath.registers.828[13] [6]),
    .B(\datapath.idinstr_15_bF$buf42 ),
    .C(\datapath.idinstr_16_bF$buf33 ),
    .Y(_5956_)
);

AOI22X1 _8796_ (
    .A(_3_),
    .B(_6_),
    .C(_121_),
    .D(_9_),
    .Y(_10_)
);

NAND2X1 _17659_ (
    .A(_7089__bF$buf8),
    .B(_7544_),
    .Y(_7545_)
);

NAND2X1 _17239_ (
    .A(_7092__bF$buf10),
    .B(_7134_),
    .Y(_7135_)
);

AND2X2 _12794_ (
    .A(\datapath.csr.mvect [18]),
    .B(\datapath.csr.mvect [19]),
    .Y(_2916_)
);

MUX2X1 _12374_ (
    .A(_2606_),
    .B(_2607_),
    .S(_2602__bF$buf2),
    .Y(\datapath.csr._13_ [3])
);

AOI21X1 _18600_ (
    .A(\datapath.idinstr_20_bF$buf13 ),
    .B(_8464_),
    .C(\datapath.idinstr_22_bF$buf20 ),
    .Y(_8465_)
);

AOI21X1 _13999_ (
    .A(_4729__bF$buf4),
    .B(_4673__bF$buf7),
    .C(_4730_),
    .Y(_4136_)
);

NOR2X1 _13579_ (
    .A(gnd),
    .B(\datapath.programcounter.pc_mux [27]),
    .Y(_3413_)
);

INVX1 _13159_ (
    .A(\datapath.memoryinterface.byte_size_store.storebyte [14]),
    .Y(_3111_)
);

DFFPOSX1 _19805_ (
    .Q(\datapath.registers.828[13] [13]),
    .CLK(CLK_bF$buf60),
    .D(_3768_)
);

AOI21X1 _14940_ (
    .A(_4733__bF$buf2),
    .B(_5212__bF$buf0),
    .C(_5253_),
    .Y(_3691_)
);

OAI21X1 _14520_ (
    .A(_5003__bF$buf1),
    .B(_4691__bF$buf3),
    .C(_5014_),
    .Y(_3859_)
);

AOI21X1 _14100_ (
    .A(_4695__bF$buf3),
    .B(_4772__bF$buf7),
    .C(_4784_),
    .Y(_4054_)
);

FILL SFILL43880x45050 (
);

FILL SFILL7960x46050 (
);

AOI21X1 _15725_ (
    .A(_4709__bF$buf4),
    .B(_5647__bF$buf5),
    .C(_5666_),
    .Y(_4381_)
);

OAI21X1 _15305_ (
    .A(_4691__bF$buf1),
    .B(_5437__bF$buf1),
    .C(_5447_),
    .Y(_4179_)
);

OAI21X1 _10860_ (
    .A(\datapath.alu.b_0_bF$buf2 ),
    .B(\datapath.alu.a [18]),
    .C(_1830_),
    .Y(_1831_)
);

DFFPOSX1 _10440_ (
    .Q(\datapath.aluinstr [22]),
    .CLK(CLK_bF$buf109),
    .D(\datapath.idinstr_22_bF$buf1 )
);

DFFPOSX1 _10020_ (
    .Q(\datapath.wbinstr [9]),
    .CLK(CLK_bF$buf58),
    .D(\datapath.meminstr [9])
);

MUX2X1 _18197_ (
    .A(\datapath.registers.828[7] [22]),
    .B(\datapath.registers.828[6] [22]),
    .S(\datapath.idinstr_20_bF$buf33 ),
    .Y(_8071_)
);

FILL SFILL28200x54050 (
);

FILL SFILL59000x14050 (
);

OAI21X1 _11645_ (
    .A(_1990__bF$buf2),
    .B(_1042_),
    .C(_1886__bF$buf2),
    .Y(_1045_)
);

AOI22X1 _11225_ (
    .A(_1102_),
    .B(_2093_),
    .C(_1134_),
    .D(_2046_),
    .Y(_2191_)
);

FILL SFILL28120x16050 (
);

OAI21X1 _16683_ (
    .A(_6586_),
    .B(_6587_),
    .C(_6590_),
    .Y(_6591_)
);

AOI21X1 _16263_ (
    .A(\datapath.idinstr_15_bF$buf37 ),
    .B(_6179_),
    .C(\datapath.idinstr_17_bF$buf6 ),
    .Y(_6180_)
);

MUX2X1 _17888_ (
    .A(\datapath.registers.828[22] [15]),
    .B(\datapath.registers.828[20] [15]),
    .S(\datapath.idinstr_21_bF$buf34 ),
    .Y(_7769_)
);

MUX2X1 _17468_ (
    .A(\datapath.registers.828[1] [6]),
    .B(\datapath.registers.828[0] [6]),
    .S(\datapath.idinstr_20_bF$buf14 ),
    .Y(_7358_)
);

MUX2X1 _17048_ (
    .A(_6947_),
    .B(_6946_),
    .S(\datapath.idinstr_16_bF$buf18 ),
    .Y(_6948_)
);

FILL SFILL18520x28050 (
);

AOI21X1 _12183_ (
    .A(\datapath.alu.a [31]),
    .B(_2042_),
    .C(_1620_),
    .Y(_1621_)
);

FILL SFILL63960x37050 (
);

AOI21X1 _10916_ (
    .A(_1875_),
    .B(_1016_),
    .C(_1886__bF$buf0),
    .Y(_1887_)
);

FILL FILL83080x20050 (
);

NAND3X1 _13388_ (
    .A(\datapath.memoryinterface.byte_size_load.byteval [7]),
    .B(_3027__bF$buf4),
    .C(_3029__bF$buf0),
    .Y(_3283_)
);

DFFPOSX1 _19614_ (
    .Q(\datapath.registers.828[9] [14]),
    .CLK(CLK_bF$buf2),
    .D(_4633_)
);

FILL FILL83080x3050 (
);

NAND2X1 _15954_ (
    .A(_5684__bF$buf5),
    .B(_5877_),
    .Y(_5878_)
);

OAI21X1 _15534_ (
    .A(_5546__bF$buf1),
    .B(_4715__bF$buf2),
    .C(_5568_),
    .Y(_4353_)
);

OAI21X1 _15114_ (
    .A(_5335__bF$buf2),
    .B(_4697__bF$buf2),
    .C(_5349_),
    .Y(_4567_)
);

FILL SFILL8360x31050 (
);

AOI21X1 _16739_ (
    .A(_6623_),
    .B(_6645_),
    .C(_5687__bF$buf0),
    .Y(\datapath.registers.rega_data [21])
);

NAND2X1 _16319_ (
    .A(_5684__bF$buf2),
    .B(_6234_),
    .Y(_6235_)
);

OAI21X1 _11874_ (
    .A(\datapath.alu.b_3_bF$buf5 ),
    .B(_1289_),
    .C(_1290_),
    .Y(_1291_)
);

NAND3X1 _11454_ (
    .A(_1851_),
    .B(\datapath.alu.b [10]),
    .C(_1888_),
    .Y(_2415_)
);

NOR2X1 _11034_ (
    .A(\datapath.alu.b_3_bF$buf5 ),
    .B(_2002_),
    .Y(_2003_)
);

NAND2X1 _9602_ (
    .A(\datapath.registers.rega_data [25]),
    .B(_418__bF$buf4),
    .Y(_494_)
);

AOI21X1 _12659_ (
    .A(_2552_),
    .B(_2797__bF$buf2),
    .C(_2815_),
    .Y(\datapath.csr._32_ [17])
);

NOR2X1 _12239_ (
    .A(_2496_),
    .B(_2505_),
    .Y(_2506_)
);

FILL SFILL3320x5050 (
);

NOR2X1 _13600_ (
    .A(_3426_),
    .B(_3422_),
    .Y(_3429_)
);

OAI21X1 _16492_ (
    .A(_6392_),
    .B(_6403_),
    .C(\datapath.idinstr_19_bF$buf5 ),
    .Y(_6404_)
);

MUX2X1 _16072_ (
    .A(\datapath.registers.828[9] [7]),
    .B(\datapath.registers.828[8] [7]),
    .S(\datapath.idinstr_15_bF$buf30 ),
    .Y(_5993_)
);

FILL SFILL3240x19050 (
);

AOI21X1 _14805_ (
    .A(_4683__bF$buf4),
    .B(_5167__bF$buf5),
    .C(_5175_),
    .Y(_3727_)
);

MUX2X1 _17697_ (
    .A(_7581_),
    .B(_7580_),
    .S(\datapath.idinstr_21_bF$buf17 ),
    .Y(_7582_)
);

MUX2X1 _17277_ (
    .A(\datapath.registers.828[3] [1]),
    .B(\datapath.registers.828[2] [1]),
    .S(\datapath.idinstr_20_bF$buf52 ),
    .Y(_7172_)
);

INVX1 _9199_ (
    .A(\datapath.meminstr [6]),
    .Y(_185_)
);

INVX1 _10725_ (
    .A(\datapath.alu.b [20]),
    .Y(_1696_)
);

DFFPOSX1 _10305_ (
    .Q(\datapath.regcsralu [18]),
    .CLK(CLK_bF$buf51),
    .D(\datapath.csr.csr_data [18])
);

NAND2X1 _13197_ (
    .A(\datapath.memoryinterface.data_store [19]),
    .B(_3031__bF$buf1),
    .Y(_3144_)
);

DFFPOSX1 _19843_ (
    .Q(\datapath.registers.828[3] [19]),
    .CLK(CLK_bF$buf52),
    .D(_4446_)
);

DFFPOSX1 _19423_ (
    .Q(\datapath.registers.828[24] [15]),
    .CLK(CLK_bF$buf41),
    .D(_4154_)
);

DFFPOSX1 _19003_ (
    .Q(\datapath.registers.828[18] [11]),
    .CLK(CLK_bF$buf29),
    .D(_3926_)
);

NAND2X1 _15763_ (
    .A(_5684__bF$buf8),
    .B(_5690_),
    .Y(_5691_)
);

OAI21X1 _15343_ (
    .A(_4729__bF$buf1),
    .B(_5437__bF$buf1),
    .C(_5466_),
    .Y(_4168_)
);

FILL FILL83160x53050 (
);

OAI21X1 _16968_ (
    .A(_6869_),
    .B(_6860_),
    .C(\datapath.idinstr_19_bF$buf5 ),
    .Y(_6870_)
);

AOI21X1 _16548_ (
    .A(\datapath.idinstr_17_bF$buf13 ),
    .B(\datapath.registers.828[28] [17]),
    .C(\datapath.idinstr_15_bF$buf53 ),
    .Y(_6459_)
);

MUX2X1 _16128_ (
    .A(\datapath.registers.828[19] [8]),
    .B(\datapath.registers.828[17] [8]),
    .S(\datapath.idinstr_16_bF$buf6 ),
    .Y(_6048_)
);

AOI21X1 _11683_ (
    .A(_1722_),
    .B(_1679_),
    .C(_1907_),
    .Y(_1086_)
);

INVX2 _11263_ (
    .A(\datapath.alu.b [6]),
    .Y(_2228_)
);

OAI21X1 _9831_ (
    .A(_682_),
    .B(_671_),
    .C(_688_),
    .Y(_689_)
);

NAND2X1 _9411_ (
    .A(\datapath.imm [10]),
    .B(_316__bF$buf3),
    .Y(_350_)
);

FILL FILL83080x15050 (
);

DFFPOSX1 _12888_ (
    .Q(\datapath.csr.mcause [14]),
    .CLK(CLK_bF$buf74),
    .D(\datapath.csr._32_ [14])
);

NAND2X1 _12468_ (
    .A(_2587_),
    .B(_2671_),
    .Y(_2672_)
);

AOI21X1 _12048_ (
    .A(_1474_),
    .B(_1475_),
    .C(_1906_),
    .Y(_1477_)
);

FILL SFILL8040x50050 (
);

INVX2 _14614_ (
    .A(\datapath.registers.828[14] [17]),
    .Y(_5069_)
);

AOI21X1 _17086_ (
    .A(\datapath.registers.828[13] [29]),
    .B(\datapath.idinstr_15_bF$buf15 ),
    .C(\datapath.idinstr_16_bF$buf1 ),
    .Y(_6985_)
);

NAND2X1 _15819_ (
    .A(_5681__bF$buf2),
    .B(_5745_),
    .Y(_5746_)
);

FILL SFILL74040x43050 (
);

MUX2X1 _10954_ (
    .A(\datapath.alu.a [20]),
    .B(\datapath.alu.a [19]),
    .S(\datapath.alu.b_0_bF$buf4 ),
    .Y(_1924_)
);

DFFPOSX1 _10534_ (
    .Q(\datapath.idinstr [20]),
    .CLK(CLK_bF$buf148),
    .D(\datapath._05_ [20])
);

DFFPOSX1 _10114_ (
    .Q(\datapath.memoryinterface.data_store [24]),
    .CLK(CLK_bF$buf97),
    .D(\datapath.regrs2alu [24])
);

DFFPOSX1 _19652_ (
    .Q(\datapath.registers.828[26] [20]),
    .CLK(CLK_bF$buf125),
    .D(_4224_)
);

DFFPOSX1 _19232_ (
    .Q(\datapath.registers.828[20] [16]),
    .CLK(CLK_bF$buf24),
    .D(_4027_)
);

CLKBUF1 CLKBUF1_insert740 (
    .A(CLK_hier0_bF$buf9),
    .Y(CLK_bF$buf46)
);

CLKBUF1 CLKBUF1_insert741 (
    .A(CLK_hier0_bF$buf4),
    .Y(CLK_bF$buf45)
);

CLKBUF1 CLKBUF1_insert742 (
    .A(CLK_hier0_bF$buf10),
    .Y(CLK_bF$buf44)
);

CLKBUF1 CLKBUF1_insert743 (
    .A(CLK_hier0_bF$buf10),
    .Y(CLK_bF$buf43)
);

CLKBUF1 CLKBUF1_insert744 (
    .A(CLK_hier0_bF$buf4),
    .Y(CLK_bF$buf42)
);

CLKBUF1 CLKBUF1_insert745 (
    .A(CLK_hier0_bF$buf8),
    .Y(CLK_bF$buf41)
);

NAND3X1 _11739_ (
    .A(\datapath.alu.b_2_bF$buf3 ),
    .B(_959_),
    .C(_960_),
    .Y(_1147_)
);

CLKBUF1 CLKBUF1_insert746 (
    .A(CLK_hier0_bF$buf2),
    .Y(CLK_bF$buf40)
);

INVX1 _11319_ (
    .A(_1987_),
    .Y(_2283_)
);

CLKBUF1 CLKBUF1_insert747 (
    .A(CLK_hier0_bF$buf7),
    .Y(CLK_bF$buf39)
);

CLKBUF1 CLKBUF1_insert748 (
    .A(CLK_hier0_bF$buf7),
    .Y(CLK_bF$buf38)
);

CLKBUF1 CLKBUF1_insert749 (
    .A(CLK_hier0_bF$buf5),
    .Y(CLK_bF$buf37)
);

MUX2X1 _15992_ (
    .A(\datapath.registers.828[18] [5]),
    .B(\datapath.registers.828[16] [5]),
    .S(\datapath.idinstr_16_bF$buf15 ),
    .Y(_5915_)
);

OAI21X1 _15572_ (
    .A(_5098__bF$buf4),
    .B(_4668__bF$buf6),
    .C(\datapath.registers.828[1] [8]),
    .Y(_5588_)
);

OAI21X1 _15152_ (
    .A(_5335__bF$buf3),
    .B(_4735__bF$buf2),
    .C(_5368_),
    .Y(_4588_)
);

FILL SFILL78680x27050 (
);

FILL SFILL64040x41050 (
);

MUX2X1 _16777_ (
    .A(\datapath.registers.828[1] [22]),
    .B(\datapath.registers.828[0] [22]),
    .S(\datapath.idinstr_15_bF$buf20 ),
    .Y(_6683_)
);

MUX2X1 _16357_ (
    .A(_6271_),
    .B(_6270_),
    .S(\datapath.idinstr_16_bF$buf44 ),
    .Y(_6272_)
);

NAND2X1 _11492_ (
    .A(_2449_),
    .B(_2451_),
    .Y(_2452_)
);

NOR2X1 _11072_ (
    .A(_1816_),
    .B(_1909_),
    .Y(_2041_)
);

BUFX2 _8699_ (
    .A(_1_[3]),
    .Y(DMEM_DATA_S[3])
);

NAND3X1 _9640_ (
    .A(_521_),
    .B(_522_),
    .C(_520_),
    .Y(\datapath._34_ )
);

OAI21X1 _9220_ (
    .A(_193_),
    .B(_204_),
    .C(_203_),
    .Y(_205_)
);

AOI21X1 _12697_ (
    .A(_2585__bF$buf3),
    .B(_2836_),
    .C(_2837_),
    .Y(\datapath.csr._37_ [0])
);

NOR2X1 _12277_ (
    .A(_2534_),
    .B(_2484_),
    .Y(_2535_)
);

AOI21X1 _18923_ (
    .A(_4699__bF$buf4),
    .B(_8631__bF$buf3),
    .C(_8645_),
    .Y(_4184_)
);

AOI21X1 _18503_ (
    .A(\datapath.registers.828[13] [29]),
    .B(\datapath.idinstr_20_bF$buf47 ),
    .C(\datapath.idinstr_21_bF$buf21 ),
    .Y(_8370_)
);

FILL SFILL33480x19050 (
);

DFFPOSX1 _19708_ (
    .Q(\datapath.registers.828[0] [12]),
    .CLK(CLK_bF$buf14),
    .D(_3639_)
);

AOI21X1 _14843_ (
    .A(_4715__bF$buf3),
    .B(_5167__bF$buf4),
    .C(_5197_),
    .Y(_3713_)
);

AOI21X1 _14423_ (
    .A(_4729__bF$buf3),
    .B(_4924__bF$buf3),
    .C(_4962_),
    .Y(_3912_)
);

INVX8 _14003_ (
    .A(\datapath.rd [30]),
    .Y(_4733_)
);

FILL FILL83160x48050 (
);

FILL SFILL58680x23050 (
);

OAI21X1 _15628_ (
    .A(_5614__bF$buf1),
    .B(_4677__bF$buf0),
    .C(_5617_),
    .Y(_4426_)
);

NOR2X1 _15208_ (
    .A(\datapath.registers.828[6] [27]),
    .B(_5369__bF$buf1),
    .Y(_5397_)
);

FILL SFILL8520x52050 (
);

INVX1 _10763_ (
    .A(\datapath.alu.b [29]),
    .Y(_1734_)
);

DFFPOSX1 _10343_ (
    .Q(\datapath.regrs2alu [24]),
    .CLK(CLK_bF$buf51),
    .D(\datapath.registers.regb_data [24])
);

DFFPOSX1 _19881_ (
    .Q(\datapath.registers.828[1] [25]),
    .CLK(CLK_bF$buf88),
    .D(_4005_)
);

DFFPOSX1 _19461_ (
    .Q(\datapath.registers.828[23] [21]),
    .CLK(CLK_bF$buf63),
    .D(_4129_)
);

DFFPOSX1 _19041_ (
    .Q(\datapath.registers.828[31] [17]),
    .CLK(CLK_bF$buf120),
    .D(_4412_)
);

FILL SFILL8440x59050 (
);

INVX1 _8911_ (
    .A(\datapath.programcounter.pc [1]),
    .Y(_769_)
);

OAI21X1 _11968_ (
    .A(_1370_),
    .B(_1389_),
    .C(_1390_),
    .Y(_1392_)
);

AOI21X1 _11548_ (
    .A(_937_),
    .B(_1402_),
    .C(_939_),
    .Y(_941_)
);

OAI22X1 _11128_ (
    .A(_1878_),
    .B(_2095_),
    .C(_1889__bF$buf2),
    .D(_2093_),
    .Y(_2096_)
);

NAND2X1 _15381_ (
    .A(\datapath.registers.828[4] [15]),
    .B(_5470__bF$buf3),
    .Y(_5486_)
);

FILL SFILL8440x14050 (
);

FILL SFILL13400x58050 (
);

OAI21X1 _16586_ (
    .A(_4866_),
    .B(\datapath.idinstr_17_bF$buf14 ),
    .C(_6495_),
    .Y(_6496_)
);

MUX2X1 _16166_ (
    .A(\datapath.registers.828[31] [9]),
    .B(\datapath.registers.828[30] [9]),
    .S(\datapath.idinstr_15_bF$buf51 ),
    .Y(_6085_)
);

FILL SFILL13480x15050 (
);

FILL SFILL74040x38050 (
);

NAND2X1 _12086_ (
    .A(\datapath.alu.b_1_bF$buf0 ),
    .B(_1457_),
    .Y(_1517_)
);

NAND2X1 _18732_ (
    .A(\datapath.registers.828[28] [16]),
    .B(_8531__bF$buf4),
    .Y(_8548_)
);

AOI21X1 _18312_ (
    .A(\datapath.registers.828[22] [24]),
    .B(\datapath.idinstr_22_bF$buf30 ),
    .C(\datapath.idinstr_20_bF$buf54 ),
    .Y(_8184_)
);

OAI21X1 _10819_ (
    .A(_1786_),
    .B(\datapath.alu.b [17]),
    .C(_1789_),
    .Y(_1790_)
);

DFFPOSX1 _19937_ (
    .Q(\datapath.registers.828[28] [17]),
    .CLK(CLK_bF$buf111),
    .D(_4284_)
);

DFFPOSX1 _19517_ (
    .Q(\datapath.registers.828[11] [13]),
    .CLK(CLK_bF$buf123),
    .D(_3704_)
);

INVX2 _14652_ (
    .A(\datapath.registers.828[14] [30]),
    .Y(_5094_)
);

NAND2X1 _14232_ (
    .A(\datapath.rd [9]),
    .B(_4842__bF$buf7),
    .Y(_4855_)
);

FILL SFILL84120x1050 (
);

FILL SFILL83720x9050 (
);

NAND2X1 _15857_ (
    .A(_5681__bF$buf8),
    .B(_5782_),
    .Y(_5783_)
);

NAND2X1 _15437_ (
    .A(\datapath.rd [9]),
    .B(_5503__bF$buf6),
    .Y(_5516_)
);

AOI21X1 _15017_ (
    .A(_4733__bF$buf2),
    .B(_5257__bF$buf2),
    .C(_5298_),
    .Y(_4651_)
);

NAND3X1 _10992_ (
    .A(\datapath.alu.b_1_bF$buf1 ),
    .B(_1960_),
    .C(_1961_),
    .Y(_1962_)
);

DFFPOSX1 _10572_ (
    .Q(\datapath.idpc_4 [26]),
    .CLK(CLK_bF$buf84),
    .D(\datapath._04_ [26])
);

DFFPOSX1 _10152_ (
    .Q(_0_[30]),
    .CLK(CLK_bF$buf9),
    .D(\datapath.alu.c [30])
);

FILL SFILL68760x13050 (
);

DFFPOSX1 _19690_ (
    .Q(\datapath.registers.828[27] [26]),
    .CLK(CLK_bF$buf91),
    .D(_4262_)
);

DFFPOSX1 _19270_ (
    .Q(\datapath.registers.828[22] [22]),
    .CLK(CLK_bF$buf82),
    .D(_4098_)
);

BUFX2 _8720_ (
    .A(_1_[24]),
    .Y(DMEM_DATA_S[24])
);

NOR2X1 _11777_ (
    .A(_1162_),
    .B(_1186_),
    .Y(_1187_)
);

NAND2X1 _11357_ (
    .A(_2255_),
    .B(_2310_),
    .Y(_2320_)
);

FILL SFILL18680x60050 (
);

NOR2X1 _15190_ (
    .A(\datapath.registers.828[6] [18]),
    .B(_5369__bF$buf4),
    .Y(_5388_)
);

DFFPOSX1 _9925_ (
    .Q(\datapath.regcsrwb [11]),
    .CLK(CLK_bF$buf83),
    .D(\datapath.csr.csr_wdata [11])
);

NAND3X1 _9505_ (
    .A(_420_),
    .B(_421_),
    .C(_419_),
    .Y(\datapath.muxaval [0])
);

NOR2X1 _13923_ (
    .A(\datapath.registers.828[23] [3]),
    .B(_4673__bF$buf3),
    .Y(_4680_)
);

INVX2 _13503_ (
    .A(\datapath.programcounter.pc [2]),
    .Y(\datapath.nextpc [2])
);

FILL SFILL58760x11050 (
);

NAND2X1 _16395_ (
    .A(_5681__bF$buf2),
    .B(_6308_),
    .Y(_6309_)
);

NOR2X1 _14708_ (
    .A(\datapath.registers.828[13] [24]),
    .B(_5099__bF$buf2),
    .Y(_5124_)
);

BUFX2 BUFX2_insert790 (
    .A(_4685_),
    .Y(_4685__bF$buf0)
);

BUFX2 BUFX2_insert791 (
    .A(_5300_),
    .Y(_5300__bF$buf7)
);

BUFX2 BUFX2_insert792 (
    .A(_5300_),
    .Y(_5300__bF$buf6)
);

BUFX2 BUFX2_insert793 (
    .A(_5300_),
    .Y(_5300__bF$buf5)
);

BUFX2 BUFX2_insert794 (
    .A(_5300_),
    .Y(_5300__bF$buf4)
);

FILL SFILL48760x54050 (
);

BUFX2 BUFX2_insert795 (
    .A(_5300_),
    .Y(_5300__bF$buf3)
);

BUFX2 BUFX2_insert796 (
    .A(_5300_),
    .Y(_5300__bF$buf2)
);

BUFX2 BUFX2_insert797 (
    .A(_5300_),
    .Y(_5300__bF$buf1)
);

FILL SFILL53800x3050 (
);

BUFX2 BUFX2_insert798 (
    .A(_5300_),
    .Y(_5300__bF$buf0)
);

BUFX2 BUFX2_insert799 (
    .A(_416_),
    .Y(_416__bF$buf4)
);

FILL SFILL8120x33050 (
);

BUFX2 _18961_ (
    .A(\datapath.registers.828[0] [1]),
    .Y(_3647_)
);

OAI21X1 _18541_ (
    .A(_8407_),
    .B(_8398_),
    .C(\datapath.idinstr_24_bF$buf1 ),
    .Y(_8408_)
);

MUX2X1 _18121_ (
    .A(\datapath.registers.828[13] [20]),
    .B(\datapath.registers.828[12] [20]),
    .S(\datapath.idinstr_20_bF$buf46 ),
    .Y(_7997_)
);

INVX8 _10628_ (
    .A(\datapath.alu.b_2_bF$buf1 ),
    .Y(_1123_)
);

DFFPOSX1 _10208_ (
    .Q(\datapath.mempc_4 [15]),
    .CLK(CLK_bF$buf119),
    .D(\datapath.alupc_4 [15])
);

DFFPOSX1 _19746_ (
    .Q(\datapath.registers.828[16] [18]),
    .CLK(CLK_bF$buf78),
    .D(_3869_)
);

DFFPOSX1 _19326_ (
    .Q(\datapath.registers.828[4] [14]),
    .CLK(CLK_bF$buf58),
    .D(_4473_)
);

NOR2X1 _14881_ (
    .A(\datapath.registers.828[10] [5]),
    .B(_5212__bF$buf4),
    .Y(_5220_)
);

NAND2X1 _14461_ (
    .A(\datapath.registers.828[16] [14]),
    .B(_4968__bF$buf5),
    .Y(_4983_)
);

NOR2X1 _14041_ (
    .A(\datapath.registers.828[22] [15]),
    .B(_4738__bF$buf0),
    .Y(_4754_)
);

FILL SFILL38760x52050 (
);

FILL SFILL69160x43050 (
);

FILL SFILL78840x48050 (
);

OAI21X1 _15666_ (
    .A(_5614__bF$buf0),
    .B(_4715__bF$buf4),
    .C(_5636_),
    .Y(_4417_)
);

AOI21X1 _15246_ (
    .A(_4699__bF$buf3),
    .B(_5402__bF$buf7),
    .C(_5416_),
    .Y(_4504_)
);

DFFPOSX1 _10381_ (
    .Q(\datapath.alu.b [30]),
    .CLK(CLK_bF$buf37),
    .D(\datapath.muxbval [30])
);

OAI21X1 _11586_ (
    .A(_979_),
    .B(_2302_),
    .C(_980_),
    .Y(_981_)
);

AOI21X1 _11166_ (
    .A(_2075_),
    .B(_2132_),
    .C(_1091__bF$buf6),
    .Y(_2133_)
);

AOI21X1 _17812_ (
    .A(_7694_),
    .B(_7693_),
    .C(_7092__bF$buf4),
    .Y(_7695_)
);

FILL SFILL38680x14050 (
);

FILL SFILL23720x7050 (
);

AND2X2 _9734_ (
    .A(\datapath.alupc [12]),
    .B(\datapath.regimmalu [12]),
    .Y(_604_)
);

NAND2X1 _9314_ (
    .A(\datapath.regloadwb [19]),
    .B(_213__bF$buf0),
    .Y(_277_)
);

AND2X2 _13732_ (
    .A(_3485_),
    .B(_3442_),
    .Y(_3528_)
);

MUX2X1 _13312_ (
    .A(_3058_),
    .B(_3233_),
    .S(_3229_),
    .Y(\datapath.memoryinterface.byte_size_store.storebyte [12])
);

NOR2X1 _14937_ (
    .A(\datapath.registers.828[10] [29]),
    .B(_5212__bF$buf3),
    .Y(_5252_)
);

OAI21X1 _14517_ (
    .A(_5004__bF$buf4),
    .B(_4840__bF$buf4),
    .C(\datapath.registers.828[15] [8]),
    .Y(_5013_)
);

NOR2X1 _18770_ (
    .A(\datapath.registers.828[27] [2]),
    .B(_8565__bF$buf3),
    .Y(_8568_)
);

NAND2X1 _18350_ (
    .A(\datapath.registers.828[12] [25]),
    .B(_7089__bF$buf5),
    .Y(_8221_)
);

FILL SFILL58840x44050 (
);

FILL SFILL8360x50 (
);

OAI21X1 _10857_ (
    .A(\datapath.alu.b_0_bF$buf2 ),
    .B(\datapath.alu.a [20]),
    .C(_1827_),
    .Y(_1828_)
);

DFFPOSX1 _10437_ (
    .Q(\datapath.aluinstr [19]),
    .CLK(CLK_bF$buf21),
    .D(\datapath.idinstr_19_bF$buf0 )
);

DFFPOSX1 _10017_ (
    .Q(\datapath.wbinstr [6]),
    .CLK(CLK_bF$buf94),
    .D(\datapath.meminstr [6])
);

FILL SFILL18680x55050 (
);

FILL SFILL54040x29050 (
);

DFFPOSX1 _19975_ (
    .Q(\datapath.registers.828[6] [23]),
    .CLK(CLK_bF$buf116),
    .D(_4547_)
);

DFFPOSX1 _19555_ (
    .Q(\datapath.registers.828[12] [19]),
    .CLK(CLK_bF$buf95),
    .D(_3742_)
);

DFFPOSX1 _19135_ (
    .Q(\datapath.registers.828[17] [15]),
    .CLK(CLK_bF$buf63),
    .D(_3898_)
);

FILL SFILL18280x41050 (
);

NOR2X1 _14690_ (
    .A(\datapath.registers.828[13] [15]),
    .B(_5099__bF$buf5),
    .Y(_5115_)
);

AOI21X1 _14270_ (
    .A(_4723__bF$buf4),
    .B(_4842__bF$buf2),
    .C(_4876_),
    .Y(_3973_)
);

FILL SFILL58600x5050 (
);

MUX2X1 _15895_ (
    .A(\datapath.registers.828[29] [3]),
    .B(\datapath.registers.828[28] [3]),
    .S(\datapath.idinstr_15_bF$buf19 ),
    .Y(_5820_)
);

NAND2X1 _15475_ (
    .A(\datapath.rd [25]),
    .B(_5503__bF$buf7),
    .Y(_5538_)
);

NAND2X1 _15055_ (
    .A(\datapath.registers.828[8] [17]),
    .B(_5300__bF$buf2),
    .Y(_5318_)
);

DFFPOSX1 _10190_ (
    .Q(\datapath.meminstr [29]),
    .CLK(CLK_bF$buf34),
    .D(\datapath.aluinstr [29])
);

OAI21X1 _11395_ (
    .A(_2304_),
    .B(_2341_),
    .C(_2356_),
    .Y(_2357_)
);

AOI21X1 _17621_ (
    .A(\datapath.registers.828[6] [9]),
    .B(\datapath.idinstr_22_bF$buf25 ),
    .C(\datapath.idinstr_20_bF$buf40 ),
    .Y(_7508_)
);

MUX2X1 _17201_ (
    .A(\datapath.registers.828[27] [0]),
    .B(\datapath.registers.828[26] [0]),
    .S(\datapath.idinstr_20_bF$buf31 ),
    .Y(_7097_)
);

DFFPOSX1 _9963_ (
    .Q(\datapath.regloadwb [17]),
    .CLK(CLK_bF$buf30),
    .D(\datapath.memdataload [17])
);

NAND2X1 _9543_ (
    .A(\datapath.idpc [10]),
    .B(_416__bF$buf0),
    .Y(_450_)
);

OAI21X1 _9123_ (
    .A(_132_),
    .B(gnd),
    .C(_133_),
    .Y(\datapath._05_ [7])
);

NAND2X1 _18826_ (
    .A(\datapath.rd [30]),
    .B(_8565__bF$buf1),
    .Y(_8596_)
);

AOI21X1 _18406_ (
    .A(_8271_),
    .B(_8275_),
    .C(\datapath.idinstr_23_bF$buf6 ),
    .Y(_8276_)
);

INVX8 _13961_ (
    .A(\datapath.rd [16]),
    .Y(_4705_)
);

AOI21X1 _13541_ (
    .A(gnd),
    .B(_3386_),
    .C(_3387_),
    .Y(\datapath.programcounter._1_ [14])
);

NAND3X1 _13121_ (
    .A(_3075_),
    .B(_3074_),
    .C(_3079_),
    .Y(_1_[7])
);

FILL SFILL38760x47050 (
);

OAI21X1 _14746_ (
    .A(_4693__bF$buf3),
    .B(_5132__bF$buf0),
    .C(_5143_),
    .Y(_3733_)
);

AOI21X1 _14326_ (
    .A(_4709__bF$buf3),
    .B(_4886__bF$buf0),
    .C(_4907_),
    .Y(_3933_)
);

FILL SFILL69080x4050 (
);

FILL SFILL8440x5050 (
);

XNOR2X1 _10666_ (
    .A(\datapath.alu.a [13]),
    .B(\datapath.alu.b [13]),
    .Y(_1530_)
);

DFFPOSX1 _10246_ (
    .Q(\datapath.csr.csr_mepc [23]),
    .CLK(CLK_bF$buf115),
    .D(\datapath.alupc [23])
);

DFFPOSX1 _19784_ (
    .Q(\datapath.registers.828[30] [24]),
    .CLK(CLK_bF$buf137),
    .D(_4388_)
);

DFFPOSX1 _19364_ (
    .Q(\datapath.registers.828[7] [20]),
    .CLK(CLK_bF$buf40),
    .D(_4576_)
);

NOR3X1 _8814_ (
    .A(\datapath.aluinstr [6]),
    .B(\datapath.aluinstr [5]),
    .C(_17_),
    .Y(_26_)
);

FILL SFILL83640x47050 (
);

NAND2X1 _12812_ (
    .A(\datapath.csr.mvect [20]),
    .B(\datapath.csr.mvect [21]),
    .Y(_2931_)
);

NOR2X1 _15284_ (
    .A(\datapath.wbinstr [9]),
    .B(_5435_),
    .Y(_5436_)
);

AOI21X1 _16489_ (
    .A(\datapath.idinstr_15_bF$buf54 ),
    .B(_6400_),
    .C(_5684__bF$buf9),
    .Y(_6401_)
);

AOI21X1 _16069_ (
    .A(_5986_),
    .B(_5990_),
    .C(_5685__bF$buf3),
    .Y(_5991_)
);

MUX2X1 _17850_ (
    .A(_7731_),
    .B(_7730_),
    .S(\datapath.idinstr_21_bF$buf8 ),
    .Y(_7732_)
);

OAI21X1 _17430_ (
    .A(_7316_),
    .B(_7317_),
    .C(_7320_),
    .Y(_7321_)
);

AOI21X1 _17010_ (
    .A(_6906_),
    .B(_6910_),
    .C(\datapath.idinstr_18_bF$buf2 ),
    .Y(_6911_)
);

FILL SFILL58840x39050 (
);

NOR2X1 _9772_ (
    .A(_635_),
    .B(_636_),
    .Y(_637_)
);

AOI22X1 _9352_ (
    .A(_219__bF$buf4),
    .B(\datapath.wbpc_4 [29]),
    .C(\datapath.regcsrwb [29]),
    .D(_216__bF$buf4),
    .Y(_305_)
);

NOR2X1 _18635_ (
    .A(\datapath.registers.828[29] [0]),
    .B(_8498__bF$buf5),
    .Y(_8499_)
);

OAI21X1 _18215_ (
    .A(_8087_),
    .B(\datapath.idinstr_22_bF$buf6 ),
    .C(_8088_),
    .Y(_8089_)
);

NOR3X1 _13770_ (
    .A(_3402_),
    .B(_3551_),
    .C(_3545_),
    .Y(_3558_)
);

AOI22X1 _13350_ (
    .A(DMEM_DATA_L[0]),
    .B(_3031__bF$buf2),
    .C(_3251_),
    .D(_3033__bF$buf6),
    .Y(_3252_)
);

NOR2X1 _14975_ (
    .A(\datapath.registers.828[9] [12]),
    .B(_5257__bF$buf0),
    .Y(_5275_)
);

OAI21X1 _14555_ (
    .A(_5004__bF$buf4),
    .B(_4840__bF$buf8),
    .C(\datapath.registers.828[15] [27]),
    .Y(_5032_)
);

NOR2X1 _14135_ (
    .A(\datapath.registers.828[21] [29]),
    .B(_4772__bF$buf2),
    .Y(_4802_)
);

OAI21X1 _10895_ (
    .A(_1230_),
    .B(\datapath.alu.b_0_bF$buf7 ),
    .C(_1865_),
    .Y(_1866_)
);

DFFPOSX1 _10475_ (
    .Q(\datapath.alupc_4 [25]),
    .CLK(CLK_bF$buf80),
    .D(\datapath.idpc_4 [25])
);

DFFPOSX1 _10055_ (
    .Q(\datapath.wbpc_4 [29]),
    .CLK(CLK_bF$buf94),
    .D(\datapath.mempc_4 [29])
);

MUX2X1 _16701_ (
    .A(\datapath.registers.828[31] [21]),
    .B(\datapath.registers.828[30] [21]),
    .S(\datapath.idinstr_15_bF$buf52 ),
    .Y(_6608_)
);

DFFPOSX1 _19593_ (
    .Q(\datapath.registers.828[21] [25]),
    .CLK(CLK_bF$buf63),
    .D(_4069_)
);

DFFPOSX1 _19173_ (
    .Q(\datapath.registers.828[15] [21]),
    .CLK(CLK_bF$buf18),
    .D(_3841_)
);

FILL SFILL58840x50 (
);

MUX2X1 _17906_ (
    .A(\datapath.registers.828[5] [15]),
    .B(\datapath.registers.828[4] [15]),
    .S(\datapath.idinstr_20_bF$buf2 ),
    .Y(_7787_)
);

FILL SFILL53640x41050 (
);

NOR2X1 _12621_ (
    .A(\datapath.csr.mcause [3]),
    .B(_2781_),
    .Y(_2792_)
);

NOR2X1 _12201_ (
    .A(_1638_),
    .B(_1639_),
    .Y(_1640_)
);

OAI21X1 _15093_ (
    .A(_5336__bF$buf3),
    .B(_4840__bF$buf6),
    .C(\datapath.registers.828[7] [2]),
    .Y(_5339_)
);

OR2X2 _9828_ (
    .A(_669_),
    .B(_682_),
    .Y(_686_)
);

NAND2X1 _9408_ (
    .A(\datapath.csr.csr_data [9]),
    .B(_317__bF$buf4),
    .Y(_348_)
);

OR2X2 _13826_ (
    .A(_3588_),
    .B(_3601_),
    .Y(_3602_)
);

NAND2X1 _13406_ (
    .A(_3033__bF$buf0),
    .B(_3298_),
    .Y(_3299_)
);

NAND2X1 _16298_ (
    .A(_5684__bF$buf10),
    .B(_6213_),
    .Y(_6214_)
);

FILL SFILL3400x32050 (
);

NAND3X1 _9581_ (
    .A(_477_),
    .B(_478_),
    .C(_476_),
    .Y(\datapath.muxaval [19])
);

FILL SFILL59240x24050 (
);

NAND2X1 _9161_ (
    .A(gnd),
    .B(\datapath.idinstr_20_bF$buf42 ),
    .Y(_159_)
);

AOI21X1 _18864_ (
    .A(_4705__bF$buf4),
    .B(_8598__bF$buf5),
    .C(_8615_),
    .Y(_4219_)
);

MUX2X1 _18444_ (
    .A(_8312_),
    .B(_8311_),
    .S(\datapath.idinstr_21_bF$buf12 ),
    .Y(_8313_)
);

FILL SFILL3320x39050 (
);

NAND2X1 _18024_ (
    .A(_7899_),
    .B(_7901_),
    .Y(_7902_)
);

DFFPOSX1 _19649_ (
    .Q(\datapath.registers.828[26] [17]),
    .CLK(CLK_bF$buf112),
    .D(_4220_)
);

DFFPOSX1 _19229_ (
    .Q(\datapath.registers.828[20] [13]),
    .CLK(CLK_bF$buf142),
    .D(_4024_)
);

OAI21X1 _14784_ (
    .A(_4731__bF$buf4),
    .B(_5132__bF$buf4),
    .C(_5162_),
    .Y(_3753_)
);

AOI21X1 _14364_ (
    .A(_4679__bF$buf4),
    .B(_4924__bF$buf1),
    .C(_4928_),
    .Y(_3917_)
);

FILL SFILL33960x58050 (
);

MUX2X1 _15989_ (
    .A(_5911_),
    .B(_5910_),
    .S(\datapath.idinstr_16_bF$buf28 ),
    .Y(_5912_)
);

OAI21X1 _15569_ (
    .A(_5579__bF$buf1),
    .B(_4685__bF$buf0),
    .C(_5586_),
    .Y(_4016_)
);

OAI21X1 _15149_ (
    .A(_5336__bF$buf2),
    .B(_4840__bF$buf0),
    .C(\datapath.registers.828[7] [30]),
    .Y(_5367_)
);

DFFPOSX1 _10284_ (
    .Q(\datapath.regimmalu [29]),
    .CLK(CLK_bF$buf144),
    .D(\datapath.imm [29])
);

FILL SFILL18760x38050 (
);

FILL SFILL33560x44050 (
);

OAI21X1 _16930_ (
    .A(_5086_),
    .B(\datapath.idinstr_15_bF$buf38 ),
    .C(\datapath.idinstr_16_bF$buf24 ),
    .Y(_6832_)
);

MUX2X1 _16510_ (
    .A(_6421_),
    .B(_6420_),
    .S(\datapath.idinstr_16_bF$buf22 ),
    .Y(_6422_)
);

FILL SFILL79000x40050 (
);

FILL SFILL18360x24050 (
);

AOI21X1 _8852_ (
    .A(\datapath.idinstr [4]),
    .B(_57_),
    .C(_56_),
    .Y(_58_)
);

AOI22X1 _11489_ (
    .A(_1663_),
    .B(_1888_),
    .C(_1996_),
    .D(\datapath.alu.b [11]),
    .Y(_2449_)
);

OAI21X1 _11069_ (
    .A(_2035_),
    .B(_2036_),
    .C(_2037_),
    .Y(_2038_)
);

OAI21X1 _17715_ (
    .A(_7599_),
    .B(_7590_),
    .C(_7088__bF$buf3),
    .Y(_7600_)
);

OAI21X1 _12850_ (
    .A(_2962_),
    .B(_2656_),
    .C(_2585__bF$buf5),
    .Y(_2963_)
);

INVX1 _12430_ (
    .A(\datapath.csr.csr_wdata [22]),
    .Y(_2645_)
);

NAND3X1 _12010_ (
    .A(_1432_),
    .B(_1132_),
    .C(_1436_),
    .Y(_1437_)
);

INVX1 _9637_ (
    .A(\controlunit.csrfile_trap_wen_bF$buf7 ),
    .Y(_520_)
);

NOR2X1 _9217_ (
    .A(\datapath.meminstr [4]),
    .B(\datapath.meminstr [6]),
    .Y(_202_)
);

FILL SFILL23560x42050 (
);

NAND2X1 _13635_ (
    .A(\datapath.jumptarget [6]),
    .B(_3427__bF$buf4),
    .Y(_3454_)
);

OAI21X1 _13215_ (
    .A(_3157_),
    .B(_0__1_bF$buf9),
    .C(_3158_),
    .Y(_3159_)
);

NAND2X1 _9390_ (
    .A(\datapath.registers.regb_data [5]),
    .B(_318__bF$buf0),
    .Y(_334_)
);

NOR2X1 _18673_ (
    .A(\datapath.registers.828[29] [19]),
    .B(_8498__bF$buf2),
    .Y(_8518_)
);

NAND3X1 _18253_ (
    .A(\datapath.idinstr_21_bF$buf26 ),
    .B(_8125_),
    .C(_8122_),
    .Y(_8126_)
);

FILL SFILL53640x36050 (
);

AND2X2 _11701_ (
    .A(_1105_),
    .B(_1096_),
    .Y(_1106_)
);

DFFPOSX1 _19878_ (
    .Q(\datapath.registers.828[1] [22]),
    .CLK(CLK_bF$buf145),
    .D(_4002_)
);

DFFPOSX1 _19458_ (
    .Q(\datapath.registers.828[23] [18]),
    .CLK(CLK_bF$buf78),
    .D(_4125_)
);

DFFPOSX1 _19038_ (
    .Q(\datapath.registers.828[31] [14]),
    .CLK(CLK_bF$buf64),
    .D(_4409_)
);

AOI21X1 _14593_ (
    .A(_4691__bF$buf2),
    .B(_5039__bF$buf0),
    .C(_5055_),
    .Y(_3827_)
);

NOR2X1 _14173_ (
    .A(\datapath.registers.828[20] [15]),
    .B(_4806__bF$buf0),
    .Y(_4822_)
);

INVX1 _8908_ (
    .A(\datapath.programcounter.pc [0]),
    .Y(_767_)
);

DFFPOSX1 _12906_ (
    .Q(\datapath.csr.mepc [0]),
    .CLK(CLK_bF$buf35),
    .D(\datapath.csr._26_ [0])
);

MUX2X1 _15798_ (
    .A(\datapath.registers.828[7] [0]),
    .B(\datapath.registers.828[6] [0]),
    .S(\datapath.idinstr_15_bF$buf29 ),
    .Y(_5726_)
);

OAI21X1 _15378_ (
    .A(_4699__bF$buf3),
    .B(_5470__bF$buf5),
    .C(_5484_),
    .Y(_4472_)
);

DFFPOSX1 _10093_ (
    .Q(\datapath.memoryinterface.data_store [3]),
    .CLK(CLK_bF$buf141),
    .D(\datapath.regrs2alu [3])
);

NOR2X1 _11298_ (
    .A(\datapath.alu.a [7]),
    .B(_1337_),
    .Y(_2262_)
);

MUX2X1 _17944_ (
    .A(_7823_),
    .B(_7822_),
    .S(\datapath.idinstr_21_bF$buf21 ),
    .Y(_7824_)
);

AOI21X1 _17524_ (
    .A(\datapath.idinstr_20_bF$buf18 ),
    .B(_7412_),
    .C(\datapath.idinstr_22_bF$buf16 ),
    .Y(_7413_)
);

NAND2X1 _17104_ (
    .A(_5684__bF$buf0),
    .B(_7001_),
    .Y(_7002_)
);

OAI21X1 _9866_ (
    .A(_705_),
    .B(_716_),
    .C(_719_),
    .Y(_720_)
);

NAND2X1 _9446_ (
    .A(\datapath.registers.regb_data [19]),
    .B(_318__bF$buf0),
    .Y(_376_)
);

NAND2X1 _9026_ (
    .A(gnd),
    .B(\datapath.idpc_4 [7]),
    .Y(_846_)
);

OAI21X1 _18729_ (
    .A(_4701__bF$buf3),
    .B(_8531__bF$buf7),
    .C(_8546_),
    .Y(_4281_)
);

AOI21X1 _18309_ (
    .A(_8176_),
    .B(_8180_),
    .C(_7093__bF$buf3),
    .Y(_8181_)
);

NAND2X1 _13864_ (
    .A(\datapath.csr.csr_pcaddr [31]),
    .B(_3429__bF$buf0),
    .Y(_3633_)
);

NAND2X1 _13444_ (
    .A(DMEM_DATA_L[18]),
    .B(_3031__bF$buf0),
    .Y(_3328_)
);

NAND3X1 _13024_ (
    .A(\controlunit.imm_sel [2]),
    .B(\datapath.idinstr_16_bF$buf0 ),
    .C(_2980_),
    .Y(_2981_)
);

FILL SFILL73800x21050 (
);

FILL SFILL33640x32050 (
);

INVX2 _14649_ (
    .A(\datapath.registers.828[14] [29]),
    .Y(_5092_)
);

NOR2X1 _14229_ (
    .A(\datapath.registers.828[19] [8]),
    .B(_4842__bF$buf4),
    .Y(_4853_)
);

FILL SFILL33560x39050 (
);

AOI21X1 _18482_ (
    .A(_8349_),
    .B(_8348_),
    .C(_7092__bF$buf7),
    .Y(_8350_)
);

MUX2X1 _18062_ (
    .A(_7938_),
    .B(_7937_),
    .S(\datapath.idinstr_21_bF$buf26 ),
    .Y(_7939_)
);

FILL SFILL79000x35050 (
);

NAND2X1 _10989_ (
    .A(_994__bF$buf4),
    .B(_1958_),
    .Y(_1959_)
);

DFFPOSX1 _10569_ (
    .Q(\datapath.idpc_4 [23]),
    .CLK(CLK_bF$buf84),
    .D(\datapath._04_ [23])
);

DFFPOSX1 _10149_ (
    .Q(_0_[27]),
    .CLK(CLK_bF$buf122),
    .D(\datapath.alu.c [27])
);

OAI21X1 _11930_ (
    .A(\datapath.alu.b_2_bF$buf6 ),
    .B(_1349_),
    .C(_1350_),
    .Y(_1351_)
);

OAI21X1 _11510_ (
    .A(_2303_),
    .B(_901_),
    .C(_900_),
    .Y(_902_)
);

DFFPOSX1 _19687_ (
    .Q(\datapath.registers.828[27] [23]),
    .CLK(CLK_bF$buf111),
    .D(_4259_)
);

DFFPOSX1 _19267_ (
    .Q(\datapath.registers.828[22] [19]),
    .CLK(CLK_bF$buf131),
    .D(_4094_)
);

BUFX2 _8717_ (
    .A(_1_[21]),
    .Y(DMEM_DATA_S[21])
);

FILL SFILL63720x26050 (
);

FILL SFILL23560x37050 (
);

OAI21X1 _12715_ (
    .A(_2608_),
    .B(_2846_),
    .C(_2840_),
    .Y(_2851_)
);

FILL SFILL84280x10050 (
);

AOI21X1 _15187_ (
    .A(_4705__bF$buf1),
    .B(_5369__bF$buf2),
    .C(_5386_),
    .Y(_4539_)
);

FILL SFILL69000x33050 (
);

NAND2X1 _8890_ (
    .A(\datapath.idinstr [5]),
    .B(\datapath.idinstr [4]),
    .Y(_92_)
);

NAND2X1 _17753_ (
    .A(_7634_),
    .B(_7636_),
    .Y(_7637_)
);

MUX2X1 _17333_ (
    .A(_7225_),
    .B(_7224_),
    .S(\datapath.idinstr_21_bF$buf21 ),
    .Y(_7226_)
);

NAND2X1 _9675_ (
    .A(\datapath.alupc [5]),
    .B(\datapath.regimmalu [5]),
    .Y(_551_)
);

NAND3X1 _9255_ (
    .A(_231_),
    .B(_232_),
    .C(_230_),
    .Y(\datapath.rd [4])
);

NOR2X1 _18958_ (
    .A(\datapath.registers.828[25] [31]),
    .B(_8631__bF$buf2),
    .Y(_8663_)
);

MUX2X1 _18538_ (
    .A(_8404_),
    .B(_8403_),
    .S(\datapath.idinstr_21_bF$buf8 ),
    .Y(_8405_)
);

MUX2X1 _18118_ (
    .A(\datapath.registers.828[11] [20]),
    .B(\datapath.registers.828[10] [20]),
    .S(\datapath.idinstr_20_bF$buf4 ),
    .Y(_7994_)
);

NAND2X1 _13673_ (
    .A(\datapath.programcounter.pc [4]),
    .B(\datapath.programcounter.pc [5]),
    .Y(_3481_)
);

NAND2X1 _13253_ (
    .A(\datapath.memoryinterface.data_store [27]),
    .B(_3031__bF$buf1),
    .Y(_3192_)
);

AOI21X1 _14878_ (
    .A(_4679__bF$buf1),
    .B(_5212__bF$buf0),
    .C(_5218_),
    .Y(_3693_)
);

OAI21X1 _14458_ (
    .A(_4697__bF$buf3),
    .B(_4968__bF$buf2),
    .C(_4981_),
    .Y(_3863_)
);

AOI21X1 _14038_ (
    .A(_4699__bF$buf1),
    .B(_4738__bF$buf4),
    .C(_4752_),
    .Y(_4088_)
);

FILL SFILL83800x18050 (
);

AOI21X1 _18291_ (
    .A(\datapath.registers.828[4] [24]),
    .B(\datapath.idinstr_22_bF$buf21 ),
    .C(\datapath.idinstr_20_bF$buf34 ),
    .Y(_8163_)
);

FILL SFILL43640x29050 (
);

OAI21X1 _10798_ (
    .A(_1735_),
    .B(_1736_),
    .C(_1768_),
    .Y(_1769_)
);

DFFPOSX1 _10378_ (
    .Q(\datapath.alu.b [27]),
    .CLK(CLK_bF$buf37),
    .D(\datapath.muxbval [27])
);

MUX2X1 _16604_ (
    .A(_6513_),
    .B(_6512_),
    .S(_5681__bF$buf7),
    .Y(_6514_)
);

DFFPOSX1 _19496_ (
    .Q(\datapath.registers.828[5] [24]),
    .CLK(CLK_bF$buf88),
    .D(_4516_)
);

DFFPOSX1 _19076_ (
    .Q(\datapath.registers.828[10] [20]),
    .CLK(CLK_bF$buf56),
    .D(_3680_)
);

OAI21X1 _8946_ (
    .A(_791_),
    .B(gnd),
    .C(_792_),
    .Y(\datapath._03_ [12])
);

OAI21X1 _17809_ (
    .A(_5061_),
    .B(\datapath.idinstr_20_bF$buf0 ),
    .C(\datapath.idinstr_21_bF$buf24 ),
    .Y(_7692_)
);

DFFPOSX1 _12944_ (
    .Q(\datapath.csr.mvect [5]),
    .CLK(CLK_bF$buf43),
    .D(\datapath.csr._13_ [5])
);

NAND2X1 _12524_ (
    .A(_2713_),
    .B(_2672__bF$buf1),
    .Y(_2714_)
);

AND2X2 _12104_ (
    .A(_1535_),
    .B(_1737_),
    .Y(_1536_)
);

FILL SFILL33640x27050 (
);

NAND3X1 _13729_ (
    .A(_3524_),
    .B(_3525_),
    .C(_3523_),
    .Y(\datapath.programcounter.pc_mux [17])
);

INVX1 _13309_ (
    .A(DMEM_DATA_L[11]),
    .Y(_3232_)
);

FILL SFILL63800x59050 (
);

BUFX2 BUFX2_insert410 (
    .A(_1091_),
    .Y(_1091__bF$buf3)
);

BUFX2 BUFX2_insert411 (
    .A(_1091_),
    .Y(_1091__bF$buf2)
);

BUFX2 BUFX2_insert412 (
    .A(_1091_),
    .Y(_1091__bF$buf1)
);

BUFX2 BUFX2_insert413 (
    .A(_1091_),
    .Y(_1091__bF$buf0)
);

AOI21X1 _17982_ (
    .A(_7855_),
    .B(_7860_),
    .C(\datapath.idinstr_23_bF$buf5 ),
    .Y(_7861_)
);

BUFX2 BUFX2_insert414 (
    .A(_5647_),
    .Y(_5647__bF$buf7)
);

MUX2X1 _17562_ (
    .A(\datapath.registers.828[29] [8]),
    .B(\datapath.registers.828[28] [8]),
    .S(\datapath.idinstr_20_bF$buf20 ),
    .Y(_7450_)
);

BUFX2 BUFX2_insert415 (
    .A(_5647_),
    .Y(_5647__bF$buf6)
);

MUX2X1 _17142_ (
    .A(\datapath.registers.828[21] [30]),
    .B(\datapath.registers.828[20] [30]),
    .S(\datapath.idinstr_15_bF$buf45 ),
    .Y(_7040_)
);

BUFX2 BUFX2_insert416 (
    .A(_5647_),
    .Y(_5647__bF$buf5)
);

BUFX2 BUFX2_insert417 (
    .A(_5647_),
    .Y(_5647__bF$buf4)
);

BUFX2 BUFX2_insert418 (
    .A(_5647_),
    .Y(_5647__bF$buf3)
);

BUFX2 BUFX2_insert419 (
    .A(_5647_),
    .Y(_5647__bF$buf2)
);

NAND2X1 _9484_ (
    .A(\datapath.csr.csr_data [28]),
    .B(_317__bF$buf0),
    .Y(_405_)
);

INVX1 _9064_ (
    .A(\datapath.nextpc [20]),
    .Y(_871_)
);

AOI21X1 _18767_ (
    .A(_4660__bF$buf3),
    .B(_8565__bF$buf4),
    .C(_8566_),
    .Y(_4244_)
);

NAND2X1 _18347_ (
    .A(_7092__bF$buf7),
    .B(_8217_),
    .Y(_8218_)
);

AOI22X1 _13482_ (
    .A(DMEM_DATA_L[3]),
    .B(_3217_),
    .C(_3229_),
    .D(DMEM_DATA_L[11]),
    .Y(_3349_)
);

INVX1 _13062_ (
    .A(\datapath.meminstr [13]),
    .Y(_3028_)
);

FILL SFILL53800x57050 (
);

FILL SFILL48440x60050 (
);

AOI21X1 _14687_ (
    .A(_4699__bF$buf1),
    .B(_5099__bF$buf3),
    .C(_5113_),
    .Y(_3768_)
);

NAND2X1 _14267_ (
    .A(\datapath.rd [24]),
    .B(_4842__bF$buf1),
    .Y(_4875_)
);

FILL SFILL69000x28050 (
);

FILL SFILL23160x18050 (
);

FILL SFILL53800x12050 (
);

FILL SFILL74280x48050 (
);

FILL SFILL13640x23050 (
);

DFFPOSX1 _10187_ (
    .Q(\datapath.meminstr [26]),
    .CLK(CLK_bF$buf34),
    .D(\datapath.aluinstr [26])
);

MUX2X1 _16833_ (
    .A(_6736_),
    .B(_6735_),
    .S(\datapath.idinstr_16_bF$buf29 ),
    .Y(_6737_)
);

AOI21X1 _16413_ (
    .A(\datapath.registers.828[13] [14]),
    .B(\datapath.idinstr_15_bF$buf36 ),
    .C(\datapath.idinstr_16_bF$buf35 ),
    .Y(_6327_)
);

FILL SFILL74200x46050 (
);

BUFX2 _8755_ (
    .A(\datapath.programcounter.pc [26]),
    .Y(IMEM_ADDR[26])
);

FILL SFILL43400x41050 (
);

NAND2X1 _17618_ (
    .A(_7501_),
    .B(_7504_),
    .Y(_7505_)
);

FILL SFILL69000x8050 (
);

FILL SFILL43720x4050 (
);

NAND3X1 _12753_ (
    .A(_2840_),
    .B(_2881_),
    .C(_2862_),
    .Y(_2882_)
);

INVX1 _12333_ (
    .A(\datapath.csr.mcause [28]),
    .Y(_2574_)
);

FILL SFILL43800x10050 (
);

INVX8 _13958_ (
    .A(\datapath.rd [15]),
    .Y(_4703_)
);

AOI21X1 _13538_ (
    .A(gnd),
    .B(_3384_),
    .C(_3385_),
    .Y(\datapath.programcounter._1_ [13])
);

NAND2X1 _13118_ (
    .A(_0__1_bF$buf8),
    .B(DMEM_DATA_L[7]),
    .Y(_3077_)
);

AOI21X1 _17791_ (
    .A(_7669_),
    .B(_7673_),
    .C(_7093__bF$buf1),
    .Y(_7674_)
);

MUX2X1 _17371_ (
    .A(\datapath.registers.828[21] [3]),
    .B(\datapath.registers.828[20] [3]),
    .S(\datapath.idinstr_20_bF$buf31 ),
    .Y(_7264_)
);

NAND2X1 _9293_ (
    .A(\datapath.regloadwb [14]),
    .B(_213__bF$buf3),
    .Y(_261_)
);

DFFPOSX1 _18996_ (
    .Q(\datapath.registers.828[18] [4]),
    .CLK(CLK_bF$buf24),
    .D(_3950_)
);

AOI21X1 _18576_ (
    .A(_8435_),
    .B(_8441_),
    .C(\datapath.idinstr_23_bF$buf5 ),
    .Y(_8442_)
);

MUX2X1 _18156_ (
    .A(\datapath.registers.828[22] [21]),
    .B(\datapath.registers.828[20] [21]),
    .S(\datapath.idinstr_21_bF$buf25 ),
    .Y(_8031_)
);

OAI21X1 _13291_ (
    .A(_0__1_bF$buf2),
    .B(_0__0_bF$buf2),
    .C(DMEM_DATA_L[3]),
    .Y(_3222_)
);

FILL SFILL33720x15050 (
);

OAI21X1 _11604_ (
    .A(_1091__bF$buf6),
    .B(_940_),
    .C(_1000_),
    .Y(_1001_)
);

OAI21X1 _14496_ (
    .A(_4735__bF$buf1),
    .B(_4968__bF$buf7),
    .C(_5000_),
    .Y(_3884_)
);

AND2X2 _14076_ (
    .A(_4672_),
    .B(_4771_),
    .Y(_4772_)
);

FILL SFILL13720x3050 (
);

FILL SFILL13640x8050 (
);

FILL SFILL13320x2050 (
);

OAI21X1 _12809_ (
    .A(_2905_),
    .B(_2928_),
    .C(_2585__bF$buf1),
    .Y(_2929_)
);

FILL SFILL13240x7050 (
);

MUX2X1 _16642_ (
    .A(\datapath.registers.828[1] [19]),
    .B(\datapath.registers.828[0] [19]),
    .S(\datapath.idinstr_15_bF$buf20 ),
    .Y(_6551_)
);

NAND2X1 _16222_ (
    .A(_5681__bF$buf6),
    .B(_6139_),
    .Y(_6140_)
);

NAND2X1 _8984_ (
    .A(gnd),
    .B(\datapath.idpc [25]),
    .Y(_818_)
);

OAI21X1 _17847_ (
    .A(_7716_),
    .B(_7728_),
    .C(_7088__bF$buf0),
    .Y(_7729_)
);

NAND2X1 _17427_ (
    .A(\datapath.registers.828[12] [5]),
    .B(_7089__bF$buf9),
    .Y(_7318_)
);

MUX2X1 _17007_ (
    .A(\datapath.registers.828[3] [27]),
    .B(\datapath.registers.828[2] [27]),
    .S(\datapath.idinstr_15_bF$buf48 ),
    .Y(_6908_)
);

INVX1 _12982_ (
    .A(\datapath.idinstr [28]),
    .Y(_3009_)
);

OAI21X1 _12562_ (
    .A(_2743_),
    .B(\controlunit.csrfile_trap_wen_bF$buf1 ),
    .C(_2744_),
    .Y(\datapath.csr._26_ [21])
);

AOI21X1 _12142_ (
    .A(_1744_),
    .B(_1513_),
    .C(_1770_),
    .Y(_1577_)
);

AOI21X1 _9769_ (
    .A(_630_),
    .B(_628_),
    .C(_633_),
    .Y(_634_)
);

NAND2X1 _9349_ (
    .A(\datapath.regcwb [28]),
    .B(_218__bF$buf4),
    .Y(_303_)
);

AOI22X1 _13767_ (
    .A(_3423__bF$buf4),
    .B(\datapath.alu.c [21]),
    .C(\datapath.csr.csr_pcaddr [21]),
    .D(_3429__bF$buf2),
    .Y(_3556_)
);

INVX1 _13347_ (
    .A(DMEM_DATA_L[0]),
    .Y(_3249_)
);

FILL SFILL48840x24050 (
);

AOI21X1 _17180_ (
    .A(_7076_),
    .B(_7070_),
    .C(_5685__bF$buf0),
    .Y(_7077_)
);

FILL SFILL13640x18050 (
);

MUX2X1 _15913_ (
    .A(\datapath.registers.828[11] [3]),
    .B(\datapath.registers.828[10] [3]),
    .S(\datapath.idinstr_15_bF$buf39 ),
    .Y(_5838_)
);

FILL SFILL23480x4050 (
);

AOI21X1 _18385_ (
    .A(_8249_),
    .B(_8254_),
    .C(\datapath.idinstr_23_bF$buf2 ),
    .Y(_8255_)
);

FILL SFILL78520x49050 (
);

INVX2 _11833_ (
    .A(_1697_),
    .Y(_1247_)
);

NAND2X1 _11413_ (
    .A(_1091__bF$buf2),
    .B(_2374_),
    .Y(_2375_)
);

OAI21X1 _12618_ (
    .A(_2780_),
    .B(\datapath.csr.csr_wdata [2]),
    .C(_2783__bF$buf2),
    .Y(_2790_)
);

FILL SFILL3480x21050 (
);

INVX1 _16871_ (
    .A(\datapath.registers.828[16] [24]),
    .Y(_6775_)
);

FILL SFILL28440x51050 (
);

NAND2X1 _16451_ (
    .A(\datapath.registers.828[8] [15]),
    .B(_5684__bF$buf2),
    .Y(_6364_)
);

AND2X2 _16031_ (
    .A(\datapath.registers.828[15] [6]),
    .B(\datapath.idinstr_15_bF$buf3 ),
    .Y(_5953_)
);

NAND2X1 _8793_ (
    .A(\datapath.wbinstr [5]),
    .B(_117_),
    .Y(_7_)
);

FILL SFILL28840x20050 (
);

NAND2X1 _17656_ (
    .A(\datapath.idinstr_22_bF$buf27 ),
    .B(_7541_),
    .Y(_7542_)
);

MUX2X1 _17236_ (
    .A(\datapath.registers.828[1] [0]),
    .B(\datapath.registers.828[0] [0]),
    .S(\datapath.idinstr_20_bF$buf19 ),
    .Y(_7132_)
);

OAI22X1 _12791_ (
    .A(_2721_),
    .B(_2585__bF$buf5),
    .C(_2913_),
    .D(_2911_),
    .Y(\datapath.csr.csr_pcaddr [18])
);

MUX2X1 _12371_ (
    .A(_2604_),
    .B(_2605_),
    .S(_2602__bF$buf2),
    .Y(\datapath.csr._13_ [2])
);

DFFPOSX1 _9998_ (
    .Q(\datapath.regcwb [20]),
    .CLK(CLK_bF$buf108),
    .D(_0_[20])
);

NAND2X1 _9578_ (
    .A(\datapath.registers.rega_data [19]),
    .B(_418__bF$buf0),
    .Y(_476_)
);

NAND2X1 _9158_ (
    .A(gnd),
    .B(\datapath.idinstr_19_bF$buf0 ),
    .Y(_157_)
);

AOI21X1 _13996_ (
    .A(_4727__bF$buf0),
    .B(_4673__bF$buf5),
    .C(_4728_),
    .Y(_4135_)
);

NOR2X1 _13576_ (
    .A(gnd),
    .B(\datapath.programcounter.pc_mux [26]),
    .Y(_3411_)
);

OAI21X1 _13156_ (
    .A(_3107_),
    .B(_0__1_bF$buf8),
    .C(_3108_),
    .Y(_3109_)
);

DFFPOSX1 _19802_ (
    .Q(\datapath.registers.828[13] [10]),
    .CLK(CLK_bF$buf18),
    .D(_3765_)
);

FILL SFILL58920x14050 (
);

NOR2X1 _15722_ (
    .A(\datapath.registers.828[30] [17]),
    .B(_5647__bF$buf6),
    .Y(_5665_)
);

NAND2X1 _15302_ (
    .A(\datapath.registers.828[24] [8]),
    .B(_5437__bF$buf5),
    .Y(_5446_)
);

OAI21X1 _18194_ (
    .A(_8063_),
    .B(_8064_),
    .C(_8067_),
    .Y(_8068_)
);

FILL SFILL44200x35050 (
);

NAND2X1 _16927_ (
    .A(_5684__bF$buf2),
    .B(_6828_),
    .Y(_6829_)
);

NAND2X1 _16507_ (
    .A(\datapath.idinstr_17_bF$buf12 ),
    .B(_6418_),
    .Y(_6419_)
);

NOR2X1 _11642_ (
    .A(_1434_),
    .B(_1412_),
    .Y(_1042_)
);

OAI21X1 _11222_ (
    .A(_2180_),
    .B(_1209__bF$buf4),
    .C(_2187_),
    .Y(_2188_)
);

DFFPOSX1 _19399_ (
    .Q(\datapath.registers.828[8] [23]),
    .CLK(CLK_bF$buf101),
    .D(_4611_)
);

AND2X2 _8849_ (
    .A(_33_),
    .B(_31_),
    .Y(\controlunit.pc_sel [1])
);

FILL SFILL13320x37050 (
);

NOR2X1 _12847_ (
    .A(\datapath.csr.mvect [28]),
    .B(_2959_),
    .Y(_2960_)
);

INVX1 _12427_ (
    .A(\datapath.csr.csr_wdata [21]),
    .Y(_2643_)
);

OAI21X1 _12007_ (
    .A(_1889__bF$buf0),
    .B(\datapath.alu.a [25]),
    .C(_1890__bF$buf0),
    .Y(_1433_)
);

FILL SFILL48840x19050 (
);

NAND2X1 _16680_ (
    .A(\datapath.registers.828[12] [20]),
    .B(_5681__bF$buf3),
    .Y(_6588_)
);

MUX2X1 _16260_ (
    .A(\datapath.registers.828[18] [11]),
    .B(\datapath.registers.828[16] [11]),
    .S(\datapath.idinstr_16_bF$buf10 ),
    .Y(_6177_)
);

FILL SFILL83960x50050 (
);

MUX2X1 _17885_ (
    .A(\datapath.registers.828[19] [15]),
    .B(\datapath.registers.828[17] [15]),
    .S(\datapath.idinstr_21_bF$buf34 ),
    .Y(_7766_)
);

AOI21X1 _17465_ (
    .A(_7351_),
    .B(_7355_),
    .C(\datapath.idinstr_23_bF$buf0 ),
    .Y(_7356_)
);

AOI21X1 _17045_ (
    .A(_6939_),
    .B(_6944_),
    .C(_5685__bF$buf1),
    .Y(_6945_)
);

OAI21X1 _12180_ (
    .A(_930_),
    .B(_1886__bF$buf1),
    .C(_1617_),
    .Y(_1618_)
);

NAND2X1 _9387_ (
    .A(\datapath.imm [4]),
    .B(_316__bF$buf4),
    .Y(_332_)
);

INVX1 _10913_ (
    .A(_1883_),
    .Y(_1884_)
);

OAI21X1 _13385_ (
    .A(_3279_),
    .B(_0__1_bF$buf6),
    .C(_3280_),
    .Y(_3281_)
);

DFFPOSX1 _19611_ (
    .Q(\datapath.registers.828[9] [11]),
    .CLK(CLK_bF$buf101),
    .D(_4630_)
);

FILL SFILL83880x12050 (
);

MUX2X1 _15951_ (
    .A(\datapath.registers.828[1] [4]),
    .B(\datapath.registers.828[0] [4]),
    .S(\datapath.idinstr_15_bF$buf18 ),
    .Y(_5875_)
);

OAI21X1 _15531_ (
    .A(_5038__bF$buf5),
    .B(_4668__bF$buf6),
    .C(\datapath.registers.828[2] [20]),
    .Y(_5567_)
);

OAI21X1 _15111_ (
    .A(_5336__bF$buf2),
    .B(_4840__bF$buf0),
    .C(\datapath.registers.828[7] [11]),
    .Y(_5348_)
);

FILL SFILL73880x55050 (
);

NAND2X1 _16736_ (
    .A(_5684__bF$buf3),
    .B(_6642_),
    .Y(_6643_)
);

MUX2X1 _16316_ (
    .A(\datapath.registers.828[9] [12]),
    .B(\datapath.registers.828[8] [12]),
    .S(\datapath.idinstr_15_bF$buf41 ),
    .Y(_6232_)
);

NAND3X1 _11871_ (
    .A(\datapath.alu.b_2_bF$buf0 ),
    .B(_1142_),
    .C(_1144_),
    .Y(_1288_)
);

MUX2X1 _11451_ (
    .A(_2411_),
    .B(_2249_),
    .S(_1123__bF$buf2),
    .Y(_2412_)
);

MUX2X1 _11031_ (
    .A(_1826_),
    .B(_1823_),
    .S(_994__bF$buf6),
    .Y(_2000_)
);

FILL SFILL18840x58050 (
);

OAI21X1 _12656_ (
    .A(_2797__bF$buf5),
    .B(\datapath.csr.csr_wdata [16]),
    .C(_2783__bF$buf4),
    .Y(_2814_)
);

FILL SFILL18440x44050 (
);

OAI21X1 _12236_ (
    .A(_2502_),
    .B(_2501_),
    .C(_2503_),
    .Y(\datapath.csr.csr_data [1])
);

FILL SFILL63880x53050 (
);

FILL SFILL79080x24050 (
);

NOR2X1 _14802_ (
    .A(\datapath.registers.828[11] [4]),
    .B(_5167__bF$buf3),
    .Y(_5174_)
);

AOI21X1 _17694_ (
    .A(_7555_),
    .B(_7579_),
    .C(_7095__bF$buf2),
    .Y(\datapath.registers.regb_data [10])
);

NAND3X1 _17274_ (
    .A(\datapath.idinstr_21_bF$buf17 ),
    .B(_7168_),
    .C(_7166_),
    .Y(_7169_)
);

FILL SFILL48600x31050 (
);

INVX1 _9196_ (
    .A(\datapath.memexecptions [0]),
    .Y(_182_)
);

NAND2X1 _10722_ (
    .A(_1691_),
    .B(_1692_),
    .Y(_1693_)
);

DFFPOSX1 _10302_ (
    .Q(\datapath.regcsralu [15]),
    .CLK(CLK_bF$buf100),
    .D(\datapath.csr.csr_data [15])
);

FILL SFILL53880x51050 (
);

AOI21X1 _18899_ (
    .A(_4675__bF$buf2),
    .B(_8631__bF$buf1),
    .C(_8633_),
    .Y(_4191_)
);

OAI21X1 _18479_ (
    .A(_5090_),
    .B(\datapath.idinstr_20_bF$buf27 ),
    .C(\datapath.idinstr_21_bF$buf33 ),
    .Y(_8347_)
);

AOI21X1 _18059_ (
    .A(_7935_),
    .B(_7929_),
    .C(_7093__bF$buf5),
    .Y(_7936_)
);

OAI21X1 _13194_ (
    .A(_3139_),
    .B(_0__1_bF$buf0),
    .C(_3140_),
    .Y(_3141_)
);

DFFPOSX1 _19840_ (
    .Q(\datapath.registers.828[3] [16]),
    .CLK(CLK_bF$buf85),
    .D(_4443_)
);

DFFPOSX1 _19420_ (
    .Q(\datapath.registers.828[24] [12]),
    .CLK(CLK_bF$buf125),
    .D(_4151_)
);

DFFPOSX1 _19000_ (
    .Q(\datapath.registers.828[18] [8]),
    .CLK(CLK_bF$buf93),
    .D(_3954_)
);

NAND2X1 _11927_ (
    .A(_994__bF$buf7),
    .B(_1346_),
    .Y(_1347_)
);

INVX1 _11507_ (
    .A(_2465_),
    .Y(_2466_)
);

NAND2X1 _14399_ (
    .A(\datapath.rd [18]),
    .B(_4924__bF$buf4),
    .Y(_4949_)
);

MUX2X1 _15760_ (
    .A(\datapath.registers.828[25] [0]),
    .B(\datapath.registers.828[24] [0]),
    .S(\datapath.idinstr_15_bF$buf35 ),
    .Y(_5688_)
);

NAND2X1 _15340_ (
    .A(\datapath.registers.828[24] [27]),
    .B(_5437__bF$buf2),
    .Y(_5465_)
);

FILL SFILL7960x50050 (
);

MUX2X1 _16965_ (
    .A(_6866_),
    .B(_6865_),
    .S(_5681__bF$buf7),
    .Y(_6867_)
);

AOI21X1 _16545_ (
    .A(\datapath.idinstr_17_bF$buf11 ),
    .B(\datapath.registers.828[29] [17]),
    .C(_5681__bF$buf7),
    .Y(_6456_)
);

AOI21X1 _16125_ (
    .A(_6040_),
    .B(_6044_),
    .C(_5685__bF$buf3),
    .Y(_6045_)
);

OAI21X1 _11680_ (
    .A(_2303_),
    .B(_1075_),
    .C(_1082_),
    .Y(_1083_)
);

NAND2X1 _11260_ (
    .A(\datapath.alu.b_3_bF$buf4 ),
    .B(_2222_),
    .Y(_2225_)
);

OAI21X1 _8887_ (
    .A(_91_),
    .B(_87_),
    .C(_89_),
    .Y(\controlunit.imm_sel [0])
);

DFFPOSX1 _12885_ (
    .Q(\datapath.csr.mcause [11]),
    .CLK(CLK_bF$buf74),
    .D(\datapath.csr._32_ [11])
);

NOR2X1 _12465_ (
    .A(\datapath.meminstr [23]),
    .B(\datapath.meminstr [22]),
    .Y(_2669_)
);

OAI21X1 _12045_ (
    .A(_1448_),
    .B(_1749_),
    .C(_1750_),
    .Y(_1473_)
);

FILL SFILL28520x34050 (
);

FILL SFILL73960x43050 (
);

INVX1 _14611_ (
    .A(\datapath.registers.828[14] [16]),
    .Y(_5067_)
);

NOR2X1 _17083_ (
    .A(_6981_),
    .B(_5681__bF$buf0),
    .Y(_6982_)
);

AOI21X1 _15816_ (
    .A(\datapath.idinstr_15_bF$buf16 ),
    .B(_5742_),
    .C(\datapath.idinstr_17_bF$buf9 ),
    .Y(_5743_)
);

MUX2X1 _10951_ (
    .A(\datapath.alu.a [24]),
    .B(\datapath.alu.a [23]),
    .S(\datapath.alu.b_0_bF$buf0 ),
    .Y(_1921_)
);

DFFPOSX1 _10531_ (
    .Q(\datapath.idinstr [17]),
    .CLK(CLK_bF$buf92),
    .D(\datapath._05_ [17])
);

DFFPOSX1 _10111_ (
    .Q(\datapath.memoryinterface.data_store [21]),
    .CLK(CLK_bF$buf97),
    .D(\datapath.regrs2alu [21])
);

AOI21X1 _18288_ (
    .A(\datapath.registers.828[5] [24]),
    .B(\datapath.idinstr_22_bF$buf21 ),
    .C(_7089__bF$buf3),
    .Y(_8160_)
);

FILL SFILL63960x41050 (
);

CLKBUF1 CLKBUF1_insert710 (
    .A(CLK_hier0_bF$buf4),
    .Y(CLK_bF$buf76)
);

CLKBUF1 CLKBUF1_insert711 (
    .A(CLK_hier0_bF$buf9),
    .Y(CLK_bF$buf75)
);

CLKBUF1 CLKBUF1_insert712 (
    .A(CLK_hier0_bF$buf10),
    .Y(CLK_bF$buf74)
);

CLKBUF1 CLKBUF1_insert713 (
    .A(CLK_hier0_bF$buf5),
    .Y(CLK_bF$buf73)
);

CLKBUF1 CLKBUF1_insert714 (
    .A(CLK_hier0_bF$buf8),
    .Y(CLK_bF$buf72)
);

CLKBUF1 CLKBUF1_insert715 (
    .A(CLK_hier0_bF$buf7),
    .Y(CLK_bF$buf71)
);

MUX2X1 _11736_ (
    .A(_1717_),
    .B(_1786_),
    .S(\datapath.alu.b_0_bF$buf2 ),
    .Y(_1143_)
);

CLKBUF1 CLKBUF1_insert716 (
    .A(CLK_hier0_bF$buf8),
    .Y(CLK_bF$buf70)
);

MUX2X1 _11316_ (
    .A(_2108_),
    .B(_2279_),
    .S(_1123__bF$buf6),
    .Y(_2280_)
);

CLKBUF1 CLKBUF1_insert717 (
    .A(CLK_hier0_bF$buf3),
    .Y(CLK_bF$buf69)
);

CLKBUF1 CLKBUF1_insert718 (
    .A(CLK_hier0_bF$buf3),
    .Y(CLK_bF$buf68)
);

CLKBUF1 CLKBUF1_insert719 (
    .A(CLK_hier0_bF$buf2),
    .Y(CLK_bF$buf67)
);

FILL SFILL63880x48050 (
);

FILL SFILL79480x8050 (
);

FILL SFILL79080x7050 (
);

MUX2X1 _16774_ (
    .A(\datapath.registers.828[7] [22]),
    .B(\datapath.registers.828[6] [22]),
    .S(\datapath.idinstr_15_bF$buf43 ),
    .Y(_6680_)
);

NAND2X1 _16354_ (
    .A(\datapath.idinstr_17_bF$buf12 ),
    .B(_6268_),
    .Y(_6269_)
);

BUFX2 _8696_ (
    .A(_1_[0]),
    .Y(DMEM_DATA_S[0])
);

BUFX2 BUFX2_insert380 (
    .A(_5039_),
    .Y(_5039__bF$buf4)
);

BUFX2 BUFX2_insert381 (
    .A(_5039_),
    .Y(_5039__bF$buf3)
);

FILL SFILL53880x46050 (
);

BUFX2 BUFX2_insert382 (
    .A(_5039_),
    .Y(_5039__bF$buf2)
);

BUFX2 BUFX2_insert383 (
    .A(_5039_),
    .Y(_5039__bF$buf1)
);

MUX2X1 _17979_ (
    .A(\datapath.registers.828[23] [17]),
    .B(\datapath.registers.828[21] [17]),
    .S(\datapath.idinstr_21_bF$buf15 ),
    .Y(_7858_)
);

BUFX2 BUFX2_insert384 (
    .A(_5039_),
    .Y(_5039__bF$buf0)
);

MUX2X1 _17559_ (
    .A(\datapath.registers.828[27] [8]),
    .B(\datapath.registers.828[26] [8]),
    .S(\datapath.idinstr_20_bF$buf25 ),
    .Y(_7447_)
);

BUFX2 BUFX2_insert385 (
    .A(_5612_),
    .Y(_5612__bF$buf4)
);

MUX2X1 _17139_ (
    .A(\datapath.registers.828[19] [30]),
    .B(\datapath.registers.828[18] [30]),
    .S(\datapath.idinstr_15_bF$buf37 ),
    .Y(_7037_)
);

BUFX2 BUFX2_insert386 (
    .A(_5612_),
    .Y(_5612__bF$buf3)
);

BUFX2 BUFX2_insert387 (
    .A(_5612_),
    .Y(_5612__bF$buf2)
);

BUFX2 BUFX2_insert388 (
    .A(_5612_),
    .Y(_5612__bF$buf1)
);

NAND2X1 _12694_ (
    .A(_2509_),
    .B(_2834_),
    .Y(_2835_)
);

BUFX2 BUFX2_insert389 (
    .A(_5612_),
    .Y(_5612__bF$buf0)
);

OAI21X1 _12274_ (
    .A(_2531_),
    .B(_2490__bF$buf1),
    .C(_2532_),
    .Y(\datapath.csr.csr_data [10])
);

NOR2X1 _18920_ (
    .A(\datapath.registers.828[25] [12]),
    .B(_8631__bF$buf0),
    .Y(_8644_)
);

NOR2X1 _18500_ (
    .A(_6981_),
    .B(_7089__bF$buf9),
    .Y(_8367_)
);

FILL SFILL53480x32050 (
);

DFFPOSX1 _13899_ (
    .Q(\datapath.programcounter.pc [31]),
    .CLK(CLK_bF$buf9),
    .D(\datapath.programcounter._1_ [31])
);

AOI22X1 _13479_ (
    .A(DMEM_DATA_L[2]),
    .B(_3217_),
    .C(_3229_),
    .D(DMEM_DATA_L[10]),
    .Y(_3347_)
);

OAI21X1 _13059_ (
    .A(_3011_),
    .B(_2996_),
    .C(_2995_),
    .Y(\datapath.imm [30])
);

FILL SFILL38600x24050 (
);

DFFPOSX1 _19705_ (
    .Q(\datapath.registers.828[0] [9]),
    .CLK(CLK_bF$buf58),
    .D(_3667_)
);

NOR2X1 _14840_ (
    .A(\datapath.registers.828[11] [20]),
    .B(_5167__bF$buf3),
    .Y(_5196_)
);

NOR2X1 _14420_ (
    .A(\datapath.registers.828[17] [27]),
    .B(_4924__bF$buf5),
    .Y(_4961_)
);

INVX8 _14000_ (
    .A(\datapath.rd [29]),
    .Y(_4731_)
);

FILL SFILL48760x9050 (
);

OAI21X1 _15625_ (
    .A(_4840__bF$buf5),
    .B(_5612__bF$buf4),
    .C(\datapath.registers.828[31] [1]),
    .Y(_5616_)
);

AOI21X1 _15205_ (
    .A(_4723__bF$buf2),
    .B(_5369__bF$buf6),
    .C(_5395_),
    .Y(_4549_)
);

OAI21X1 _10760_ (
    .A(_930_),
    .B(_962_),
    .C(_1730_),
    .Y(_1731_)
);

DFFPOSX1 _10340_ (
    .Q(\datapath.regrs2alu [21]),
    .CLK(CLK_bF$buf119),
    .D(\datapath.registers.regb_data [21])
);

MUX2X1 _18097_ (
    .A(\datapath.registers.828[27] [20]),
    .B(\datapath.registers.828[26] [20]),
    .S(\datapath.idinstr_20_bF$buf24 ),
    .Y(_7973_)
);

FILL SFILL59000x13050 (
);

NAND3X1 _11965_ (
    .A(_2103__bF$buf0),
    .B(_1382_),
    .C(_1387_),
    .Y(_1388_)
);

NOR2X1 _11545_ (
    .A(_1604_),
    .B(_1636_),
    .Y(_937_)
);

NAND2X1 _11125_ (
    .A(\datapath.alu.b_3_bF$buf6 ),
    .B(_1946_),
    .Y(_2093_)
);

FILL SFILL28520x29050 (
);

FILL SFILL73960x38050 (
);

FILL SFILL49000x56050 (
);

AOI21X1 _16583_ (
    .A(_6488_),
    .B(_6492_),
    .C(\datapath.idinstr_18_bF$buf4 ),
    .Y(_6493_)
);

MUX2X1 _16163_ (
    .A(_6081_),
    .B(_6080_),
    .S(\datapath.idinstr_16_bF$buf11 ),
    .Y(_6082_)
);

MUX2X1 _17788_ (
    .A(\datapath.registers.828[31] [13]),
    .B(\datapath.registers.828[30] [13]),
    .S(\datapath.idinstr_20_bF$buf32 ),
    .Y(_7671_)
);

MUX2X1 _17368_ (
    .A(\datapath.registers.828[19] [3]),
    .B(\datapath.registers.828[18] [3]),
    .S(\datapath.idinstr_20_bF$buf18 ),
    .Y(_7261_)
);

FILL SFILL18520x27050 (
);

AOI21X1 _12083_ (
    .A(_1742_),
    .B(_1513_),
    .C(_1907_),
    .Y(_1514_)
);

FILL SFILL23880x40050 (
);

INVX1 _10816_ (
    .A(_1712_),
    .Y(_1787_)
);

OAI21X1 _13288_ (
    .A(_3218_),
    .B(_3040_),
    .C(_3220_),
    .Y(\datapath.memoryinterface.byte_size_store.storebyte [1])
);

DFFPOSX1 _19934_ (
    .Q(\datapath.registers.828[28] [14]),
    .CLK(CLK_bF$buf64),
    .D(_4281_)
);

DFFPOSX1 _19514_ (
    .Q(\datapath.registers.828[11] [10]),
    .CLK(CLK_bF$buf114),
    .D(_3701_)
);

FILL FILL83080x2050 (
);

NAND2X1 _15854_ (
    .A(\datapath.idinstr_17_bF$buf8 ),
    .B(_5779_),
    .Y(_5780_)
);

NAND2X1 _15434_ (
    .A(\datapath.rd [8]),
    .B(_5503__bF$buf7),
    .Y(_5514_)
);

NOR2X1 _15014_ (
    .A(\datapath.registers.828[9] [29]),
    .B(_5257__bF$buf4),
    .Y(_5297_)
);

FILL SFILL8360x30050 (
);

FILL SFILL84360x25050 (
);

OAI21X1 _16639_ (
    .A(_5239_),
    .B(\datapath.idinstr_17_bF$buf2 ),
    .C(_6547_),
    .Y(_6548_)
);

AOI21X1 _16219_ (
    .A(\datapath.idinstr_15_bF$buf49 ),
    .B(_6136_),
    .C(\datapath.idinstr_17_bF$buf4 ),
    .Y(_6137_)
);

OAI21X1 _11774_ (
    .A(_1182_),
    .B(_1183_),
    .C(_1173_),
    .Y(_1184_)
);

OAI21X1 _11354_ (
    .A(_2193_),
    .B(_2312_),
    .C(_2316_),
    .Y(_2317_)
);

DFFPOSX1 _9922_ (
    .Q(\datapath.regcsrwb [8]),
    .CLK(CLK_bF$buf1),
    .D(\datapath.csr.csr_wdata [8])
);

NAND2X1 _9502_ (
    .A(\datapath.registers.rega_data [0]),
    .B(_418__bF$buf4),
    .Y(_419_)
);

NOR2X1 _12979_ (
    .A(_3007_),
    .B(_3006_),
    .Y(\datapath.imm [6])
);

NAND2X1 _12559_ (
    .A(_2741_),
    .B(_2672__bF$buf0),
    .Y(_2742_)
);

AND2X2 _12139_ (
    .A(_1569_),
    .B(_1570_),
    .Y(_1574_)
);

FILL SFILL38600x19050 (
);

NOR2X1 _13920_ (
    .A(\datapath.registers.828[23] [2]),
    .B(_4673__bF$buf2),
    .Y(_4678_)
);

INVX1 _13500_ (
    .A(\datapath.programcounter.pc_mux [1]),
    .Y(_3361_)
);

NAND2X1 _16392_ (
    .A(\datapath.idinstr_17_bF$buf0 ),
    .B(_6305_),
    .Y(_6306_)
);

FILL SFILL78680x31050 (
);

AOI21X1 _14705_ (
    .A(_4717__bF$buf0),
    .B(_5099__bF$buf6),
    .C(_5122_),
    .Y(_3778_)
);

FILL SFILL43480x25050 (
);

INVX1 _17597_ (
    .A(\datapath.registers.828[2] [8]),
    .Y(_7485_)
);

AOI21X1 _17177_ (
    .A(\datapath.registers.828[13] [31]),
    .B(\datapath.idinstr_15_bF$buf39 ),
    .C(\datapath.idinstr_16_bF$buf35 ),
    .Y(_7074_)
);

OAI21X1 _9099_ (
    .A(_893_),
    .B(gnd),
    .C(_894_),
    .Y(\datapath._04_ [31])
);

FILL SFILL28600x17050 (
);

INVX8 _10625_ (
    .A(\datapath.alu.b_3_bF$buf1 ),
    .Y(_1091_)
);

DFFPOSX1 _10205_ (
    .Q(\datapath.mempc_4 [12]),
    .CLK(CLK_bF$buf129),
    .D(\datapath.alupc_4 [12])
);

NAND2X1 _13097_ (
    .A(_0__1_bF$buf9),
    .B(DMEM_DATA_L[4]),
    .Y(_3059_)
);

DFFPOSX1 _19743_ (
    .Q(\datapath.registers.828[16] [15]),
    .CLK(CLK_bF$buf63),
    .D(_3866_)
);

DFFPOSX1 _19323_ (
    .Q(\datapath.registers.828[4] [11]),
    .CLK(CLK_bF$buf99),
    .D(_4470_)
);

FILL SFILL33880x37050 (
);

FILL SFILL33480x23050 (
);

OAI21X1 _15663_ (
    .A(_4840__bF$buf3),
    .B(_5612__bF$buf3),
    .C(\datapath.registers.828[31] [20]),
    .Y(_5635_)
);

NOR2X1 _15243_ (
    .A(\datapath.registers.828[5] [12]),
    .B(_5402__bF$buf3),
    .Y(_5415_)
);

FILL FILL83160x52050 (
);

FILL FILL83080x59050 (
);

NAND3X1 _16868_ (
    .A(\datapath.idinstr_16_bF$buf28 ),
    .B(_6771_),
    .C(_6769_),
    .Y(_6772_)
);

OAI21X1 _16448_ (
    .A(_6349_),
    .B(_6360_),
    .C(\datapath.idinstr_19_bF$buf2 ),
    .Y(_6361_)
);

MUX2X1 _16028_ (
    .A(\datapath.registers.828[11] [6]),
    .B(\datapath.registers.828[10] [6]),
    .S(\datapath.idinstr_15_bF$buf14 ),
    .Y(_5950_)
);

OAI21X1 _11583_ (
    .A(_1981_),
    .B(_1992_),
    .C(_2191_),
    .Y(_978_)
);

NAND2X1 _11163_ (
    .A(\datapath.alu.b_2_bF$buf0 ),
    .B(_1824_),
    .Y(_2130_)
);

INVX1 _9731_ (
    .A(_600_),
    .Y(_601_)
);

NAND3X1 _9311_ (
    .A(_273_),
    .B(_274_),
    .C(_272_),
    .Y(\datapath.rd [18])
);

AOI21X1 _12788_ (
    .A(_2910_),
    .B(_2903_),
    .C(\datapath.csr.mvect [18]),
    .Y(_2911_)
);

MUX2X1 _12368_ (
    .A(_2502_),
    .B(_2603_),
    .S(_2602__bF$buf2),
    .Y(\datapath.csr._13_ [1])
);

FILL SFILL84040x44050 (
);

INVX1 _14934_ (
    .A(\datapath.registers.828[10] [28]),
    .Y(_5250_)
);

OAI21X1 _14514_ (
    .A(_5003__bF$buf4),
    .B(_4685__bF$buf3),
    .C(_5011_),
    .Y(_3856_)
);

FILL SFILL53960x29050 (
);

FILL SFILL53560x15050 (
);

AOI21X1 _15719_ (
    .A(_4703__bF$buf4),
    .B(_5647__bF$buf3),
    .C(_5663_),
    .Y(_4378_)
);

MUX2X1 _10854_ (
    .A(_1824_),
    .B(_1821_),
    .S(_1123__bF$buf4),
    .Y(_1825_)
);

DFFPOSX1 _10434_ (
    .Q(\datapath.aluinstr [16]),
    .CLK(CLK_bF$buf56),
    .D(\datapath.idinstr_16_bF$buf29 )
);

DFFPOSX1 _10014_ (
    .Q(\datapath.wbinstr [3]),
    .CLK(CLK_bF$buf121),
    .D(\datapath.meminstr [3])
);

DFFPOSX1 _19972_ (
    .Q(\datapath.registers.828[6] [20]),
    .CLK(CLK_bF$buf103),
    .D(_4544_)
);

DFFPOSX1 _19552_ (
    .Q(\datapath.registers.828[12] [16]),
    .CLK(CLK_bF$buf4),
    .D(_3739_)
);

DFFPOSX1 _19132_ (
    .Q(\datapath.registers.828[17] [12]),
    .CLK(CLK_bF$buf13),
    .D(_3895_)
);

NAND3X1 _11639_ (
    .A(_1455_),
    .B(_1476_),
    .C(_1038_),
    .Y(_1039_)
);

AOI22X1 _11219_ (
    .A(_2168_),
    .B(_1888_),
    .C(_2042_),
    .D(\datapath.alu.a [5]),
    .Y(_2185_)
);

MUX2X1 _15892_ (
    .A(\datapath.registers.828[27] [3]),
    .B(\datapath.registers.828[26] [3]),
    .S(\datapath.idinstr_15_bF$buf35 ),
    .Y(_5817_)
);

NAND2X1 _15472_ (
    .A(\datapath.rd [24]),
    .B(_5503__bF$buf7),
    .Y(_5536_)
);

OAI21X1 _15052_ (
    .A(_4703__bF$buf2),
    .B(_5300__bF$buf5),
    .C(_5316_),
    .Y(_4602_)
);

NAND2X1 _16677_ (
    .A(_5684__bF$buf6),
    .B(_6584_),
    .Y(_6585_)
);

MUX2X1 _16257_ (
    .A(_6173_),
    .B(_6172_),
    .S(\datapath.idinstr_16_bF$buf34 ),
    .Y(_6174_)
);

INVX1 _11392_ (
    .A(_2354_),
    .Y(\datapath.alu.c [8])
);

DFFPOSX1 _9960_ (
    .Q(\datapath.regloadwb [14]),
    .CLK(CLK_bF$buf97),
    .D(\datapath.memdataload [14])
);

NAND2X1 _9540_ (
    .A(\datapath.csr.csr_data [9]),
    .B(_417__bF$buf1),
    .Y(_448_)
);

OAI21X1 _9120_ (
    .A(_130_),
    .B(gnd),
    .C(_131_),
    .Y(\datapath._05_ [6])
);

OAI21X1 _12597_ (
    .A(_2771_),
    .B(\controlunit.csrfile_trap_wen_bF$buf6 ),
    .C(_2772_),
    .Y(\datapath.csr._26_ [28])
);

OAI21X1 _12177_ (
    .A(_1607_),
    .B(_1613_),
    .C(_1900_),
    .Y(_1614_)
);

AOI21X1 _18823_ (
    .A(_4729__bF$buf1),
    .B(_8565__bF$buf3),
    .C(_8594_),
    .Y(_4264_)
);

MUX2X1 _18403_ (
    .A(\datapath.registers.828[3] [26]),
    .B(\datapath.registers.828[2] [26]),
    .S(\datapath.idinstr_20_bF$buf10 ),
    .Y(_8273_)
);

FILL SFILL33480x18050 (
);

DFFPOSX1 _19608_ (
    .Q(\datapath.registers.828[9] [8]),
    .CLK(CLK_bF$buf90),
    .D(_4658_)
);

NAND2X1 _14743_ (
    .A(\datapath.registers.828[12] [9]),
    .B(_5132__bF$buf5),
    .Y(_5142_)
);

NOR2X1 _14323_ (
    .A(\datapath.registers.828[18] [17]),
    .B(_4886__bF$buf2),
    .Y(_4906_)
);

FILL FILL83160x47050 (
);

FILL SFILL33400x16050 (
);

FILL SFILL58680x22050 (
);

FILL SFILL23080x47050 (
);

MUX2X1 _15948_ (
    .A(\datapath.registers.828[7] [4]),
    .B(\datapath.registers.828[6] [4]),
    .S(\datapath.idinstr_15_bF$buf29 ),
    .Y(_5872_)
);

OAI21X1 _15528_ (
    .A(_5546__bF$buf4),
    .B(_4709__bF$buf2),
    .C(_5565_),
    .Y(_4349_)
);

OAI21X1 _15108_ (
    .A(_5335__bF$buf4),
    .B(_4691__bF$buf4),
    .C(_5346_),
    .Y(_4595_)
);

FILL SFILL8520x51050 (
);

NAND2X1 _10663_ (
    .A(\datapath.alu.b [14]),
    .B(_1487_),
    .Y(_1498_)
);

DFFPOSX1 _10243_ (
    .Q(\datapath.csr.csr_mepc [20]),
    .CLK(CLK_bF$buf115),
    .D(\datapath.alupc [20])
);

DFFPOSX1 _19781_ (
    .Q(\datapath.registers.828[30] [21]),
    .CLK(CLK_bF$buf130),
    .D(_4385_)
);

DFFPOSX1 _19361_ (
    .Q(\datapath.registers.828[7] [17]),
    .CLK(CLK_bF$buf128),
    .D(_4572_)
);

FILL SFILL8440x58050 (
);

NOR3X1 _8811_ (
    .A(_22_),
    .B(_20_),
    .C(_21_),
    .Y(_23_)
);

NAND3X1 _11868_ (
    .A(_1280_),
    .B(_1283_),
    .C(_1132_),
    .Y(_1285_)
);

OAI21X1 _11448_ (
    .A(_1851_),
    .B(\datapath.alu.b_0_bF$buf5 ),
    .C(_2408_),
    .Y(_2409_)
);

NAND2X1 _11028_ (
    .A(_1997_),
    .B(_1995_),
    .Y(_1998_)
);

FILL SFILL84040x39050 (
);

NOR2X1 _15281_ (
    .A(\datapath.registers.828[5] [31]),
    .B(_5402__bF$buf0),
    .Y(_5434_)
);

FILL SFILL8440x13050 (
);

FILL SFILL13400x57050 (
);

FILL SFILL78840x52050 (
);

MUX2X1 _16486_ (
    .A(\datapath.registers.828[22] [16]),
    .B(\datapath.registers.828[20] [16]),
    .S(\datapath.idinstr_16_bF$buf6 ),
    .Y(_6398_)
);

MUX2X1 _16066_ (
    .A(\datapath.registers.828[26] [6]),
    .B(\datapath.registers.828[24] [6]),
    .S(\datapath.idinstr_16_bF$buf19 ),
    .Y(_5988_)
);

FILL SFILL13480x14050 (
);

FILL SFILL74040x37050 (
);

FILL SFILL13400x12050 (
);

OAI21X1 _18632_ (
    .A(_8482_),
    .B(_8496_),
    .C(_7088__bF$buf3),
    .Y(_8497_)
);

NAND2X1 _18212_ (
    .A(_8082_),
    .B(_8085_),
    .Y(_8086_)
);

FILL SFILL78760x14050 (
);

NAND2X1 _10719_ (
    .A(_1684_),
    .B(_1689_),
    .Y(_1690_)
);

FILL SFILL68840x50050 (
);

DFFPOSX1 _19837_ (
    .Q(\datapath.registers.828[3] [13]),
    .CLK(CLK_bF$buf126),
    .D(_4440_)
);

DFFPOSX1 _19417_ (
    .Q(\datapath.registers.828[24] [9]),
    .CLK(CLK_bF$buf64),
    .D(_4179_)
);

OAI21X1 _14972_ (
    .A(_5272_),
    .B(_5257__bF$buf5),
    .C(_5273_),
    .Y(_4629_)
);

OAI21X1 _14552_ (
    .A(_5003__bF$buf0),
    .B(_4723__bF$buf2),
    .C(_5030_),
    .Y(_3845_)
);

AOI21X1 _14132_ (
    .A(_4727__bF$buf0),
    .B(_4772__bF$buf7),
    .C(_4800_),
    .Y(_4071_)
);

FILL SFILL68760x57050 (
);

FILL SFILL64040x35050 (
);

FILL SFILL84440x6050 (
);

INVX8 _15757_ (
    .A(\datapath.idinstr_18_bF$buf0 ),
    .Y(_5685_)
);

OAI21X1 _15337_ (
    .A(_4723__bF$buf3),
    .B(_5437__bF$buf2),
    .C(_5463_),
    .Y(_4165_)
);

AOI21X1 _10892_ (
    .A(\datapath.alu.b_1_bF$buf3 ),
    .B(_1859_),
    .C(_1862_),
    .Y(_1863_)
);

DFFPOSX1 _10472_ (
    .Q(\datapath.alupc_4 [22]),
    .CLK(CLK_bF$buf77),
    .D(\datapath.idpc_4 [22])
);

DFFPOSX1 _10052_ (
    .Q(\datapath.wbpc_4 [26]),
    .CLK(CLK_bF$buf129),
    .D(\datapath.mempc_4 [26])
);

DFFPOSX1 _19590_ (
    .Q(\datapath.registers.828[21] [22]),
    .CLK(CLK_bF$buf20),
    .D(_4066_)
);

DFFPOSX1 _19170_ (
    .Q(\datapath.registers.828[15] [18]),
    .CLK(CLK_bF$buf53),
    .D(_3837_)
);

AOI21X1 _11677_ (
    .A(_1006_),
    .B(_1455_),
    .C(_1042_),
    .Y(_1079_)
);

NOR3X1 _11257_ (
    .A(\datapath.alu.b_2_bF$buf2 ),
    .B(\datapath.alu.b_1_bF$buf2 ),
    .C(_1819_),
    .Y(_2222_)
);

AOI21X1 _17903_ (
    .A(_7783_),
    .B(_7782_),
    .C(_7092__bF$buf7),
    .Y(_7784_)
);

OAI21X1 _15090_ (
    .A(_5335__bF$buf4),
    .B(_4660__bF$buf3),
    .C(_5337_),
    .Y(_4564_)
);

NOR2X1 _9825_ (
    .A(_682_),
    .B(_669_),
    .Y(_683_)
);

NAND3X1 _9405_ (
    .A(_344_),
    .B(_345_),
    .C(_343_),
    .Y(\datapath.muxbval [8])
);

AOI22X1 _13823_ (
    .A(_3423__bF$buf4),
    .B(\datapath.alu.c [27]),
    .C(\datapath.jumptarget [27]),
    .D(_3427__bF$buf1),
    .Y(_3600_)
);

NAND2X1 _13403_ (
    .A(DMEM_DATA_L[9]),
    .B(_3031__bF$buf4),
    .Y(_3296_)
);

MUX2X1 _16295_ (
    .A(\datapath.registers.828[25] [12]),
    .B(\datapath.registers.828[24] [12]),
    .S(\datapath.idinstr_15_bF$buf27 ),
    .Y(_6211_)
);

INVX1 _14608_ (
    .A(\datapath.registers.828[14] [15]),
    .Y(_5065_)
);

FILL SFILL53800x2050 (
);

FILL SFILL53720x7050 (
);

FILL SFILL84120x27050 (
);

NOR2X1 _18861_ (
    .A(\datapath.registers.828[26] [15]),
    .B(_8598__bF$buf1),
    .Y(_8614_)
);

AOI21X1 _18441_ (
    .A(_8304_),
    .B(_8309_),
    .C(_7093__bF$buf6),
    .Y(_8310_)
);

NAND2X1 _18021_ (
    .A(_7089__bF$buf7),
    .B(_7898_),
    .Y(_7899_)
);

INVX1 _10948_ (
    .A(_1918_),
    .Y(\datapath.alu.condtrue )
);

DFFPOSX1 _10528_ (
    .Q(\datapath.idinstr [14]),
    .CLK(CLK_bF$buf8),
    .D(\datapath._05_ [14])
);

DFFPOSX1 _10108_ (
    .Q(\datapath.memoryinterface.data_store [18]),
    .CLK(CLK_bF$buf146),
    .D(\datapath.regrs2alu [18])
);

DFFPOSX1 _19646_ (
    .Q(\datapath.registers.828[26] [14]),
    .CLK(CLK_bF$buf117),
    .D(_4217_)
);

DFFPOSX1 _19226_ (
    .Q(\datapath.registers.828[20] [10]),
    .CLK(CLK_bF$buf136),
    .D(_4021_)
);

NAND2X1 _14781_ (
    .A(\datapath.registers.828[12] [28]),
    .B(_5132__bF$buf1),
    .Y(_5161_)
);

NOR2X1 _14361_ (
    .A(\datapath.registers.828[17] [2]),
    .B(_4924__bF$buf6),
    .Y(_4927_)
);

CLKBUF1 CLKBUF1_insert680 (
    .A(CLK_hier0_bF$buf8),
    .Y(CLK_bF$buf106)
);

CLKBUF1 CLKBUF1_insert681 (
    .A(CLK_hier0_bF$buf9),
    .Y(CLK_bF$buf105)
);

CLKBUF1 CLKBUF1_insert682 (
    .A(CLK_hier0_bF$buf3),
    .Y(CLK_bF$buf104)
);

CLKBUF1 CLKBUF1_insert683 (
    .A(CLK_hier0_bF$buf5),
    .Y(CLK_bF$buf103)
);

FILL SFILL48680x15050 (
);

CLKBUF1 CLKBUF1_insert684 (
    .A(CLK_hier0_bF$buf6),
    .Y(CLK_bF$buf102)
);

CLKBUF1 CLKBUF1_insert685 (
    .A(CLK_hier0_bF$buf9),
    .Y(CLK_bF$buf101)
);

CLKBUF1 CLKBUF1_insert686 (
    .A(CLK_hier0_bF$buf9),
    .Y(CLK_bF$buf100)
);

CLKBUF1 CLKBUF1_insert687 (
    .A(CLK_hier0_bF$buf0),
    .Y(CLK_bF$buf99)
);

CLKBUF1 CLKBUF1_insert688 (
    .A(CLK_hier0_bF$buf2),
    .Y(CLK_bF$buf98)
);

CLKBUF1 CLKBUF1_insert689 (
    .A(CLK_hier0_bF$buf3),
    .Y(CLK_bF$buf97)
);

FILL SFILL69160x42050 (
);

NAND2X1 _15986_ (
    .A(_5684__bF$buf8),
    .B(_5908_),
    .Y(_5909_)
);

OAI21X1 _15566_ (
    .A(_5098__bF$buf3),
    .B(_4668__bF$buf3),
    .C(\datapath.registers.828[1] [5]),
    .Y(_5585_)
);

OAI21X1 _15146_ (
    .A(_5335__bF$buf0),
    .B(_4729__bF$buf2),
    .C(_5365_),
    .Y(_4584_)
);

DFFPOSX1 _10281_ (
    .Q(\datapath.regimmalu [26]),
    .CLK(CLK_bF$buf38),
    .D(\datapath.imm [26])
);

FILL SFILL38280x44050 (
);

NOR2X1 _11486_ (
    .A(_1091__bF$buf1),
    .B(_2445_),
    .Y(_2446_)
);

XNOR2X1 _11066_ (
    .A(\datapath.alu.b_2_bF$buf7 ),
    .B(\datapath.alu.a [2]),
    .Y(_2035_)
);

MUX2X1 _17712_ (
    .A(_7596_),
    .B(_7595_),
    .S(\datapath.idinstr_21_bF$buf6 ),
    .Y(_7597_)
);

FILL SFILL38680x13050 (
);

FILL SFILL63960x4050 (
);

AND2X2 _9634_ (
    .A(_517_),
    .B(_518_),
    .Y(_519_)
);

NOR2X1 _9214_ (
    .A(\datapath.memexecptions [1]),
    .B(\datapath.csr.csr_irq ),
    .Y(_200_)
);

FILL SFILL63880x9050 (
);

AOI21X1 _18917_ (
    .A(_4693__bF$buf4),
    .B(_8631__bF$buf7),
    .C(_8642_),
    .Y(_4181_)
);

AOI21X1 _13632_ (
    .A(\datapath.programcounter.pc [5]),
    .B(_3442_),
    .C(\datapath.programcounter.pc [6]),
    .Y(_3452_)
);

NAND3X1 _13212_ (
    .A(_3156_),
    .B(_3155_),
    .C(_3154_),
    .Y(_1_[21])
);

FILL SFILL28680x56050 (
);

INVX1 _14837_ (
    .A(\datapath.registers.828[11] [19]),
    .Y(_5194_)
);

INVX1 _14417_ (
    .A(\datapath.registers.828[17] [26]),
    .Y(_4959_)
);

AOI21X1 _18670_ (
    .A(_4707__bF$buf2),
    .B(_8498__bF$buf0),
    .C(_8516_),
    .Y(_4316_)
);

INVX1 _18250_ (
    .A(\datapath.registers.828[2] [23]),
    .Y(_8123_)
);

FILL SFILL58840x43050 (
);

NAND2X1 _10757_ (
    .A(_1726_),
    .B(_1727_),
    .Y(_1728_)
);

DFFPOSX1 _10337_ (
    .Q(\datapath.regrs2alu [18]),
    .CLK(CLK_bF$buf146),
    .D(\datapath.registers.regb_data [18])
);

DFFPOSX1 _20015_ (
    .Q(\datapath.registers.828[25] [31]),
    .CLK(CLK_bF$buf111),
    .D(_4204_)
);

FILL SFILL54040x28050 (
);

DFFPOSX1 _19875_ (
    .Q(\datapath.registers.828[1] [19]),
    .CLK(CLK_bF$buf52),
    .D(_3998_)
);

DFFPOSX1 _19455_ (
    .Q(\datapath.registers.828[23] [15]),
    .CLK(CLK_bF$buf76),
    .D(_4122_)
);

DFFPOSX1 _19035_ (
    .Q(\datapath.registers.828[31] [11]),
    .CLK(CLK_bF$buf64),
    .D(_4406_)
);

NOR2X1 _14590_ (
    .A(\datapath.registers.828[14] [8]),
    .B(_5039__bF$buf5),
    .Y(_5054_)
);

AOI21X1 _14170_ (
    .A(_4699__bF$buf1),
    .B(_4806__bF$buf2),
    .C(_4820_),
    .Y(_4024_)
);

NOR2X1 _8905_ (
    .A(\datapath.aluinstr [3]),
    .B(\datapath.aluinstr [2]),
    .Y(_765_)
);

DFFPOSX1 _12903_ (
    .Q(\datapath.csr.mcause [29]),
    .CLK(CLK_bF$buf100),
    .D(\datapath.csr._32_ [29])
);

MUX2X1 _15795_ (
    .A(_5722_),
    .B(_5721_),
    .S(\datapath.idinstr_16_bF$buf18 ),
    .Y(_5723_)
);

NAND2X1 _15375_ (
    .A(\datapath.registers.828[4] [12]),
    .B(_5470__bF$buf4),
    .Y(_5483_)
);

DFFPOSX1 _10090_ (
    .Q(\datapath.memoryinterface.data_store [0]),
    .CLK(CLK_bF$buf97),
    .D(\datapath.regrs2alu [0])
);

FILL SFILL48760x48050 (
);

OAI21X1 _11295_ (
    .A(_2242_),
    .B(_2230_),
    .C(_1166_),
    .Y(_2259_)
);

NAND2X1 _17941_ (
    .A(_7092__bF$buf3),
    .B(_7820_),
    .Y(_7821_)
);

MUX2X1 _17521_ (
    .A(\datapath.registers.828[18] [7]),
    .B(\datapath.registers.828[16] [7]),
    .S(\datapath.idinstr_21_bF$buf2 ),
    .Y(_7410_)
);

MUX2X1 _17101_ (
    .A(\datapath.registers.828[9] [30]),
    .B(\datapath.registers.828[8] [30]),
    .S(\datapath.idinstr_15_bF$buf22 ),
    .Y(_6999_)
);

FILL FILL83000x6050 (
);

NOR2X1 _9863_ (
    .A(_716_),
    .B(_706_),
    .Y(_717_)
);

NAND2X1 _9443_ (
    .A(\datapath.imm [18]),
    .B(_316__bF$buf4),
    .Y(_374_)
);

NAND2X1 _9023_ (
    .A(gnd),
    .B(\datapath.idpc_4 [6]),
    .Y(_844_)
);

NAND2X1 _18726_ (
    .A(\datapath.registers.828[28] [13]),
    .B(_8531__bF$buf0),
    .Y(_8545_)
);

MUX2X1 _18306_ (
    .A(\datapath.registers.828[26] [24]),
    .B(\datapath.registers.828[24] [24]),
    .S(\datapath.idinstr_21_bF$buf39 ),
    .Y(_8178_)
);

AND2X2 _13861_ (
    .A(_3630_),
    .B(_3628_),
    .Y(\datapath.nextpc [31])
);

NAND3X1 _13441_ (
    .A(_3291__bF$buf3),
    .B(_3324_),
    .C(_3326_),
    .Y(\datapath.memdataload [16])
);

NAND3X1 _13021_ (
    .A(\datapath.idinstr [8]),
    .B(_3003_),
    .C(_2977_),
    .Y(_2978_)
);

FILL SFILL38760x46050 (
);

INVX1 _14646_ (
    .A(\datapath.registers.828[14] [28]),
    .Y(_5090_)
);

INVX1 _14226_ (
    .A(\datapath.registers.828[19] [7]),
    .Y(_4851_)
);

FILL SFILL28600x3050 (
);

FILL SFILL28520x8050 (
);

FILL SFILL8440x4050 (
);

NAND2X1 _10986_ (
    .A(_1091__bF$buf2),
    .B(_1955_),
    .Y(_1956_)
);

DFFPOSX1 _10566_ (
    .Q(\datapath.idpc_4 [20]),
    .CLK(CLK_bF$buf38),
    .D(\datapath._04_ [20])
);

FILL SFILL8360x9050 (
);

DFFPOSX1 _10146_ (
    .Q(_0_[24]),
    .CLK(CLK_bF$buf104),
    .D(\datapath.alu.c [24])
);

DFFPOSX1 _19684_ (
    .Q(\datapath.registers.828[27] [20]),
    .CLK(CLK_bF$buf125),
    .D(_4256_)
);

DFFPOSX1 _19264_ (
    .Q(\datapath.registers.828[22] [16]),
    .CLK(CLK_bF$buf24),
    .D(_4091_)
);

FILL SFILL28760x44050 (
);

BUFX2 _8714_ (
    .A(_1_[18]),
    .Y(DMEM_DATA_S[18])
);

FILL SFILL83640x46050 (
);

OAI21X1 _12712_ (
    .A(_2842_),
    .B(_2848_),
    .C(_2847_),
    .Y(_2849_)
);

NOR2X1 _15184_ (
    .A(\datapath.registers.828[6] [15]),
    .B(_5369__bF$buf3),
    .Y(_5385_)
);

DFFPOSX1 _9919_ (
    .Q(\datapath.regcsrwb [5]),
    .CLK(CLK_bF$buf30),
    .D(\datapath.csr.csr_wdata [5])
);

NOR2X1 _13917_ (
    .A(\datapath.registers.828[23] [1]),
    .B(_4673__bF$buf7),
    .Y(_4676_)
);

MUX2X1 _16389_ (
    .A(\datapath.registers.828[29] [14]),
    .B(\datapath.registers.828[28] [14]),
    .S(\datapath.idinstr_15_bF$buf30 ),
    .Y(_6303_)
);

NAND2X1 _17750_ (
    .A(_7089__bF$buf8),
    .B(_7633_),
    .Y(_7634_)
);

AOI21X1 _17330_ (
    .A(_7201_),
    .B(_7223_),
    .C(_7095__bF$buf3),
    .Y(\datapath.registers.regb_data [2])
);

FILL SFILL38760x5050 (
);

OAI21X1 _9672_ (
    .A(_547_),
    .B(_546_),
    .C(_548_),
    .Y(_549_)
);

AOI22X1 _9252_ (
    .A(_219__bF$buf3),
    .B(\datapath.wbpc_4 [4]),
    .C(\datapath.regcsrwb [4]),
    .D(_216__bF$buf2),
    .Y(_230_)
);

FILL SFILL18680x49050 (
);

OAI21X1 _18955_ (
    .A(_8391_),
    .B(_8631__bF$buf6),
    .C(_8661_),
    .Y(_4201_)
);

FILL SFILL38360x4050 (
);

NAND2X1 _18535_ (
    .A(_7092__bF$buf4),
    .B(_8401_),
    .Y(_8402_)
);

AOI21X1 _18115_ (
    .A(_7985_),
    .B(_7990_),
    .C(\datapath.idinstr_23_bF$buf2 ),
    .Y(_7991_)
);

NAND2X1 _13670_ (
    .A(\datapath.jumptarget [11]),
    .B(_3427__bF$buf4),
    .Y(_3479_)
);

OAI21X1 _13250_ (
    .A(_3187_),
    .B(_0__1_bF$buf2),
    .C(_3188_),
    .Y(_3189_)
);

NAND2X1 _14875_ (
    .A(\datapath.rd [2]),
    .B(_5212__bF$buf2),
    .Y(_5217_)
);

NAND2X1 _14455_ (
    .A(\datapath.registers.828[16] [11]),
    .B(_4968__bF$buf0),
    .Y(_4980_)
);

NOR2X1 _14035_ (
    .A(\datapath.registers.828[22] [12]),
    .B(_4738__bF$buf1),
    .Y(_4751_)
);

NOR2X1 _10795_ (
    .A(_1679_),
    .B(_1765_),
    .Y(_1766_)
);

DFFPOSX1 _10375_ (
    .Q(\datapath.alu.b [24]),
    .CLK(CLK_bF$buf73),
    .D(\datapath.muxbval [24])
);

NAND2X1 _16601_ (
    .A(\datapath.idinstr_17_bF$buf11 ),
    .B(_6510_),
    .Y(_6511_)
);

DFFPOSX1 _19493_ (
    .Q(\datapath.registers.828[5] [21]),
    .CLK(CLK_bF$buf23),
    .D(_4513_)
);

DFFPOSX1 _19073_ (
    .Q(\datapath.registers.828[10] [17]),
    .CLK(CLK_bF$buf50),
    .D(_3676_)
);

OAI21X1 _8943_ (
    .A(_789_),
    .B(gnd),
    .C(_790_),
    .Y(\datapath._03_ [11])
);

MUX2X1 _17806_ (
    .A(_7688_),
    .B(_7687_),
    .S(\datapath.idinstr_21_bF$buf42 ),
    .Y(_7689_)
);

DFFPOSX1 _12941_ (
    .Q(\datapath.csr.mvect [2]),
    .CLK(CLK_bF$buf35),
    .D(\datapath.csr._13_ [2])
);

NAND2X1 _12521_ (
    .A(\controlunit.csrfile_trap_wen_bF$buf0 ),
    .B(\datapath.csr.csr_mepc [15]),
    .Y(_2712_)
);

AOI21X1 _12101_ (
    .A(_1523_),
    .B(_1524_),
    .C(_1533_),
    .Y(_1534_)
);

AOI21X1 _9728_ (
    .A(_593_),
    .B(_595_),
    .C(_597_),
    .Y(_598_)
);

AOI22X1 _9308_ (
    .A(_219__bF$buf2),
    .B(\datapath.wbpc_4 [18]),
    .C(\datapath.regcsrwb [18]),
    .D(_216__bF$buf1),
    .Y(_272_)
);

NAND2X1 _13726_ (
    .A(_3424__bF$buf3),
    .B(\datapath.nextpc [17]),
    .Y(_3523_)
);

MUX2X1 _13306_ (
    .A(_3040_),
    .B(_3230_),
    .S(_3229_),
    .Y(\datapath.memoryinterface.byte_size_store.storebyte [9])
);

AOI21X1 _16198_ (
    .A(\datapath.registers.828[7] [9]),
    .B(\datapath.idinstr_17_bF$buf1 ),
    .C(_5681__bF$buf1),
    .Y(_6117_)
);

FILL SFILL3400x31050 (
);

NAND3X1 _9481_ (
    .A(_401_),
    .B(_402_),
    .C(_400_),
    .Y(\datapath.muxbval [27])
);

INVX1 _9061_ (
    .A(\datapath.nextpc [19]),
    .Y(_869_)
);

INVX2 _18764_ (
    .A(_5436_),
    .Y(_8564_)
);

MUX2X1 _18344_ (
    .A(\datapath.registers.828[9] [25]),
    .B(\datapath.registers.828[8] [25]),
    .S(\datapath.idinstr_20_bF$buf48 ),
    .Y(_8215_)
);

DFFPOSX1 _19969_ (
    .Q(\datapath.registers.828[6] [17]),
    .CLK(CLK_bF$buf99),
    .D(_4540_)
);

DFFPOSX1 _19549_ (
    .Q(\datapath.registers.828[12] [13]),
    .CLK(CLK_bF$buf138),
    .D(_3736_)
);

DFFPOSX1 _19129_ (
    .Q(\datapath.registers.828[17] [9]),
    .CLK(CLK_bF$buf31),
    .D(_3923_)
);

NOR2X1 _14684_ (
    .A(\datapath.registers.828[13] [12]),
    .B(_5099__bF$buf5),
    .Y(_5112_)
);

NAND2X1 _14264_ (
    .A(\datapath.rd [23]),
    .B(_4842__bF$buf0),
    .Y(_4873_)
);

OAI21X1 _15889_ (
    .A(_5814_),
    .B(_5805_),
    .C(_5680__bF$buf0),
    .Y(_5815_)
);

NAND2X1 _15469_ (
    .A(\datapath.rd [23]),
    .B(_5503__bF$buf6),
    .Y(_5534_)
);

NAND2X1 _15049_ (
    .A(\datapath.registers.828[8] [14]),
    .B(_5300__bF$buf6),
    .Y(_5315_)
);

DFFPOSX1 _10184_ (
    .Q(\datapath.meminstr [23]),
    .CLK(CLK_bF$buf109),
    .D(\datapath.aluinstr [23])
);

AOI21X1 _16830_ (
    .A(_6734_),
    .B(_6709_),
    .C(_5687__bF$buf3),
    .Y(\datapath.registers.rega_data [23])
);

AND2X2 _16410_ (
    .A(\datapath.registers.828[15] [14]),
    .B(\datapath.idinstr_15_bF$buf26 ),
    .Y(_6324_)
);

BUFX2 _8752_ (
    .A(\datapath.programcounter.pc [23]),
    .Y(IMEM_ADDR[23])
);

FILL SFILL33960x12050 (
);

AOI21X1 _11389_ (
    .A(_1900_),
    .B(_2351_),
    .C(_2346_),
    .Y(_2352_)
);

NAND2X1 _17615_ (
    .A(\datapath.registers.828[0] [9]),
    .B(_7092__bF$buf5),
    .Y(_7502_)
);

NAND2X1 _12750_ (
    .A(\datapath.csr.mepc [9]),
    .B(\controlunit.mret_bF$buf1 ),
    .Y(_2880_)
);

INVX1 _12330_ (
    .A(\datapath.csr.mcause [27]),
    .Y(_2572_)
);

DFFPOSX1 _9957_ (
    .Q(\datapath.regloadwb [11]),
    .CLK(CLK_bF$buf147),
    .D(\datapath.memdataload [11])
);

NAND3X1 _9537_ (
    .A(_444_),
    .B(_445_),
    .C(_443_),
    .Y(\datapath.muxaval [8])
);

OAI21X1 _9117_ (
    .A(_128_),
    .B(gnd),
    .C(_129_),
    .Y(\datapath._05_ [5])
);

FILL SFILL23560x41050 (
);

INVX8 _13955_ (
    .A(\datapath.rd [14]),
    .Y(_4701_)
);

AOI21X1 _13535_ (
    .A(gnd),
    .B(_3382_),
    .C(_3383_),
    .Y(\datapath.programcounter._1_ [12])
);

NAND3X1 _13115_ (
    .A(\datapath.memoryinterface.byte_size_store.storebyte [7]),
    .B(_3027__bF$buf1),
    .C(_3029__bF$buf3),
    .Y(_3074_)
);

NAND2X1 _9290_ (
    .A(\datapath.regloadwb [13]),
    .B(_213__bF$buf4),
    .Y(_259_)
);

DFFPOSX1 _18993_ (
    .Q(\datapath.registers.828[18] [1]),
    .CLK(CLK_bF$buf24),
    .D(_3935_)
);

AOI21X1 _18573_ (
    .A(\datapath.registers.828[20] [30]),
    .B(\datapath.idinstr_22_bF$buf8 ),
    .C(\datapath.idinstr_20_bF$buf1 ),
    .Y(_8439_)
);

MUX2X1 _18153_ (
    .A(\datapath.registers.828[19] [21]),
    .B(\datapath.registers.828[17] [21]),
    .S(\datapath.idinstr_21_bF$buf19 ),
    .Y(_8028_)
);

FILL SFILL53640x35050 (
);

AOI21X1 _11601_ (
    .A(_1562_),
    .B(_906_),
    .C(_1674_),
    .Y(_998_)
);

DFFPOSX1 _19778_ (
    .Q(\datapath.registers.828[30] [18]),
    .CLK(CLK_bF$buf64),
    .D(_4381_)
);

DFFPOSX1 _19358_ (
    .Q(\datapath.registers.828[7] [14]),
    .CLK(CLK_bF$buf17),
    .D(_4569_)
);

NAND2X1 _14493_ (
    .A(\datapath.registers.828[16] [30]),
    .B(_4968__bF$buf5),
    .Y(_4999_)
);

NOR2X1 _14073_ (
    .A(\datapath.registers.828[22] [31]),
    .B(_4738__bF$buf2),
    .Y(_4770_)
);

NAND2X1 _8808_ (
    .A(\datapath.aluinstr [1]),
    .B(\datapath.aluinstr [0]),
    .Y(_20_)
);

AOI21X1 _12806_ (
    .A(_2925_),
    .B(_2924_),
    .C(\datapath.csr.mvect [21]),
    .Y(_2926_)
);

NOR2X1 _15698_ (
    .A(\datapath.registers.828[30] [5]),
    .B(_5647__bF$buf6),
    .Y(_5653_)
);

AOI21X1 _15278_ (
    .A(_4731__bF$buf3),
    .B(_5402__bF$buf2),
    .C(_5432_),
    .Y(_4521_)
);

FILL SFILL3400x26050 (
);

NAND2X1 _8981_ (
    .A(gnd),
    .B(\datapath.idpc [24]),
    .Y(_816_)
);

FILL SFILL83720x29050 (
);

NAND3X1 _11198_ (
    .A(_2145_),
    .B(_2139_),
    .C(_2164_),
    .Y(_2165_)
);

OAI21X1 _17844_ (
    .A(_5232_),
    .B(\datapath.idinstr_22_bF$buf1 ),
    .C(_7725_),
    .Y(_7726_)
);

NAND2X1 _17424_ (
    .A(_7092__bF$buf3),
    .B(_7314_),
    .Y(_7315_)
);

MUX2X1 _17004_ (
    .A(_6904_),
    .B(_6903_),
    .S(\datapath.idinstr_16_bF$buf32 ),
    .Y(_6905_)
);

INVX1 _9766_ (
    .A(_631_),
    .Y(_632_)
);

NAND2X1 _9346_ (
    .A(\datapath.regloadwb [27]),
    .B(_213__bF$buf3),
    .Y(_301_)
);

OAI21X1 _18629_ (
    .A(_8492_),
    .B(\datapath.idinstr_22_bF$buf28 ),
    .C(_8493_),
    .Y(_8494_)
);

NAND2X1 _18209_ (
    .A(\datapath.registers.828[26] [22]),
    .B(_7092__bF$buf6),
    .Y(_8083_)
);

AND2X2 _13764_ (
    .A(_3553_),
    .B(_3549_),
    .Y(\datapath.nextpc [21])
);

NAND2X1 _13344_ (
    .A(\datapath.memoryinterface.data_store [7]),
    .B(_3239__bF$buf1),
    .Y(_3247_)
);

FILL SFILL73800x20050 (
);

FILL SFILL33640x31050 (
);

AOI21X1 _14969_ (
    .A(_4691__bF$buf2),
    .B(_5257__bF$buf6),
    .C(_5271_),
    .Y(_4659_)
);

OAI21X1 _14549_ (
    .A(_5004__bF$buf3),
    .B(_4840__bF$buf1),
    .C(\datapath.registers.828[15] [24]),
    .Y(_5029_)
);

NOR2X1 _14129_ (
    .A(\datapath.registers.828[21] [26]),
    .B(_4772__bF$buf3),
    .Y(_4799_)
);

AOI21X1 _15910_ (
    .A(_5829_),
    .B(_5834_),
    .C(\datapath.idinstr_18_bF$buf3 ),
    .Y(_5835_)
);

MUX2X1 _18382_ (
    .A(\datapath.registers.828[23] [26]),
    .B(\datapath.registers.828[21] [26]),
    .S(\datapath.idinstr_21_bF$buf36 ),
    .Y(_8252_)
);

FILL SFILL79000x34050 (
);

FILL SFILL23240x60050 (
);

NAND2X1 _10889_ (
    .A(\datapath.alu.b_0_bF$buf7 ),
    .B(\datapath.alu.a [1]),
    .Y(_1860_)
);

DFFPOSX1 _10469_ (
    .Q(\datapath.alupc_4 [19]),
    .CLK(CLK_bF$buf28),
    .D(\datapath.idpc_4 [19])
);

DFFPOSX1 _10049_ (
    .Q(\datapath.wbpc_4 [23]),
    .CLK(CLK_bF$buf147),
    .D(\datapath.mempc_4 [23])
);

AOI21X1 _11830_ (
    .A(_1225_),
    .B(_1243_),
    .C(_1907_),
    .Y(_1244_)
);

OR2X2 _11410_ (
    .A(_2284_),
    .B(_994__bF$buf5),
    .Y(_2372_)
);

DFFPOSX1 _19587_ (
    .Q(\datapath.registers.828[21] [19]),
    .CLK(CLK_bF$buf149),
    .D(_4062_)
);

DFFPOSX1 _19167_ (
    .Q(\datapath.registers.828[15] [15]),
    .CLK(CLK_bF$buf95),
    .D(_3834_)
);

FILL SFILL23560x36050 (
);

OAI21X1 _12615_ (
    .A(_2786_),
    .B(_2787_),
    .C(_2785_),
    .Y(\datapath.csr._32_ [1])
);

NAND2X1 _15087_ (
    .A(_5334_),
    .B(_4841_),
    .Y(_5335_)
);

FILL SFILL69000x32050 (
);

INVX1 _8790_ (
    .A(\datapath.wbinstr [12]),
    .Y(_4_)
);

MUX2X1 _17653_ (
    .A(\datapath.registers.828[29] [10]),
    .B(\datapath.registers.828[28] [10]),
    .S(\datapath.idinstr_20_bF$buf22 ),
    .Y(_7539_)
);

FILL SFILL13960x48050 (
);

MUX2X1 _17233_ (
    .A(\datapath.registers.828[7] [0]),
    .B(\datapath.registers.828[6] [0]),
    .S(\datapath.idinstr_20_bF$buf40 ),
    .Y(_7129_)
);

DFFPOSX1 _9995_ (
    .Q(\datapath.regcwb [17]),
    .CLK(CLK_bF$buf7),
    .D(_0_[17])
);

NAND2X1 _9575_ (
    .A(\datapath.idpc [18]),
    .B(_416__bF$buf4),
    .Y(_474_)
);

NAND2X1 _9155_ (
    .A(gnd),
    .B(\datapath.idinstr_18_bF$buf3 ),
    .Y(_155_)
);

AOI21X1 _18858_ (
    .A(_4699__bF$buf4),
    .B(_8598__bF$buf5),
    .C(_8612_),
    .Y(_4216_)
);

AOI21X1 _18438_ (
    .A(\datapath.registers.828[14] [27]),
    .B(\datapath.idinstr_22_bF$buf11 ),
    .C(\datapath.idinstr_20_bF$buf47 ),
    .Y(_8307_)
);

AOI21X1 _18018_ (
    .A(\datapath.idinstr_20_bF$buf35 ),
    .B(_7895_),
    .C(\datapath.idinstr_22_bF$buf34 ),
    .Y(_7896_)
);

AOI21X1 _13993_ (
    .A(_4725__bF$buf1),
    .B(_4673__bF$buf6),
    .C(_4726_),
    .Y(_4134_)
);

NOR2X1 _13573_ (
    .A(gnd),
    .B(\datapath.programcounter.pc_mux [25]),
    .Y(_3409_)
);

INVX1 _13153_ (
    .A(\datapath.memoryinterface.byte_size_store.storebyte [13]),
    .Y(_3106_)
);

FILL SFILL64280x50050 (
);

OAI21X1 _14778_ (
    .A(_4725__bF$buf4),
    .B(_5132__bF$buf2),
    .C(_5159_),
    .Y(_3750_)
);

AOI21X1 _14358_ (
    .A(_4660__bF$buf4),
    .B(_4924__bF$buf6),
    .C(_4925_),
    .Y(_3892_)
);

NAND2X1 _18191_ (
    .A(\datapath.registers.828[12] [22]),
    .B(_7089__bF$buf3),
    .Y(_8065_)
);

FILL SFILL43640x28050 (
);

NOR2X1 _10698_ (
    .A(\datapath.alu.b [13]),
    .B(_1668_),
    .Y(_1669_)
);

DFFPOSX1 _10278_ (
    .Q(\datapath.regimmalu [23]),
    .CLK(CLK_bF$buf144),
    .D(\datapath.imm [23])
);

MUX2X1 _16924_ (
    .A(\datapath.registers.828[9] [26]),
    .B(\datapath.registers.828[8] [26]),
    .S(\datapath.idinstr_15_bF$buf41 ),
    .Y(_6826_)
);

MUX2X1 _16504_ (
    .A(\datapath.registers.828[5] [16]),
    .B(\datapath.registers.828[4] [16]),
    .S(\datapath.idinstr_15_bF$buf34 ),
    .Y(_6416_)
);

DFFPOSX1 _19396_ (
    .Q(\datapath.registers.828[8] [20]),
    .CLK(CLK_bF$buf56),
    .D(_4608_)
);

FILL SFILL33320x50050 (
);

NAND3X1 _8846_ (
    .A(_54_),
    .B(_37_),
    .C(_49_),
    .Y(alusel[3])
);

FILL SFILL33240x57050 (
);

NAND2X1 _17709_ (
    .A(\datapath.idinstr_22_bF$buf39 ),
    .B(_7593_),
    .Y(_7594_)
);

NOR3X1 _12844_ (
    .A(_2940_),
    .B(_2946_),
    .C(_2953_),
    .Y(_2957_)
);

INVX1 _12424_ (
    .A(\datapath.csr.csr_wdata [20]),
    .Y(_2641_)
);

NOR2X1 _12004_ (
    .A(_1429_),
    .B(_2376_),
    .Y(_1430_)
);

FILL SFILL33640x26050 (
);

NAND3X1 _13629_ (
    .A(_3448_),
    .B(_3449_),
    .C(_3447_),
    .Y(\datapath.programcounter.pc_mux [5])
);

NAND2X1 _13209_ (
    .A(_3033__bF$buf5),
    .B(_3153_),
    .Y(_3154_)
);

AOI21X1 _17882_ (
    .A(_7758_),
    .B(_7762_),
    .C(_7093__bF$buf7),
    .Y(_7763_)
);

MUX2X1 _17462_ (
    .A(\datapath.registers.828[23] [5]),
    .B(\datapath.registers.828[22] [5]),
    .S(\datapath.idinstr_20_bF$buf8 ),
    .Y(_7353_)
);

FILL SFILL79000x29050 (
);

AOI21X1 _17042_ (
    .A(\datapath.registers.828[14] [28]),
    .B(\datapath.idinstr_17_bF$buf5 ),
    .C(\datapath.idinstr_15_bF$buf5 ),
    .Y(_6942_)
);

NAND2X1 _9384_ (
    .A(\datapath.csr.csr_data [3]),
    .B(_317__bF$buf1),
    .Y(_330_)
);

FILL SFILL63800x13050 (
);

FILL SFILL8280x54050 (
);

FILL SFILL84280x49050 (
);

INVX1 _10910_ (
    .A(_1880_),
    .Y(_1881_)
);

NOR2X1 _18667_ (
    .A(\datapath.registers.828[29] [16]),
    .B(_8498__bF$buf3),
    .Y(_8515_)
);

NAND2X1 _18247_ (
    .A(_8116_),
    .B(_8119_),
    .Y(_8120_)
);

FILL SFILL23640x24050 (
);

INVX1 _13382_ (
    .A(\datapath.memoryinterface.byte_size_load.byteval [6]),
    .Y(_3278_)
);

INVX1 _14587_ (
    .A(\datapath.registers.828[14] [7]),
    .Y(_5052_)
);

NOR2X1 _14167_ (
    .A(\datapath.registers.828[20] [12]),
    .B(_4806__bF$buf3),
    .Y(_4819_)
);

FILL SFILL53800x11050 (
);

FILL SFILL13640x22050 (
);

DFFPOSX1 _10087_ (
    .Q(\datapath.csr.csr_wdata [29]),
    .CLK(CLK_bF$buf48),
    .D(\datapath.regcsralu [29])
);

MUX2X1 _16733_ (
    .A(\datapath.registers.828[1] [21]),
    .B(\datapath.registers.828[0] [21]),
    .S(\datapath.idinstr_15_bF$buf1 ),
    .Y(_6640_)
);

NAND2X1 _16313_ (
    .A(_6226_),
    .B(_6228_),
    .Y(_6229_)
);

FILL SFILL74200x45050 (
);

MUX2X1 _17938_ (
    .A(\datapath.registers.828[9] [16]),
    .B(\datapath.registers.828[8] [16]),
    .S(\datapath.idinstr_20_bF$buf42 ),
    .Y(_7818_)
);

MUX2X1 _17518_ (
    .A(_7406_),
    .B(_7405_),
    .S(\datapath.idinstr_21_bF$buf22 ),
    .Y(_7407_)
);

FILL SFILL69000x7050 (
);

AOI21X1 _12653_ (
    .A(_2546_),
    .B(_2797__bF$buf2),
    .C(_2812_),
    .Y(\datapath.csr._32_ [14])
);

OAI21X1 _12233_ (
    .A(_2479_),
    .B(_2501_),
    .C(_2492_),
    .Y(\datapath.csr.csr_data [0])
);

FILL SFILL43640x8050 (
);

FILL SFILL43320x2050 (
);

FILL SFILL64280x45050 (
);

OAI21X1 _13858_ (
    .A(_3627_),
    .B(_3418_),
    .C(_3420_),
    .Y(_3628_)
);

NAND2X1 _13438_ (
    .A(DMEM_DATA_L[16]),
    .B(_3031__bF$buf6),
    .Y(_3324_)
);

NAND3X1 _13018_ (
    .A(_3002_),
    .B(\datapath.idinstr [7]),
    .C(_2975_),
    .Y(_2976_)
);

FILL SFILL43720x16050 (
);

NAND3X1 _17691_ (
    .A(\datapath.idinstr_21_bF$buf20 ),
    .B(_7576_),
    .C(_7573_),
    .Y(_7577_)
);

OAI21X1 _17271_ (
    .A(_5169_),
    .B(\datapath.idinstr_22_bF$buf37 ),
    .C(_7165_),
    .Y(_7166_)
);

INVX1 _9193_ (
    .A(IMEM_DATA[31]),
    .Y(_180_)
);

NOR2X1 _18896_ (
    .A(\datapath.registers.828[25] [0]),
    .B(_8631__bF$buf4),
    .Y(_8632_)
);

MUX2X1 _18476_ (
    .A(_8343_),
    .B(_8342_),
    .S(\datapath.idinstr_21_bF$buf33 ),
    .Y(_8344_)
);

AOI21X1 _18056_ (
    .A(\datapath.registers.828[13] [19]),
    .B(\datapath.idinstr_20_bF$buf5 ),
    .C(\datapath.idinstr_21_bF$buf30 ),
    .Y(_7933_)
);

NAND3X1 _13191_ (
    .A(_3138_),
    .B(_3137_),
    .C(_3136_),
    .Y(_1_[18])
);

AND2X2 _11924_ (
    .A(_1343_),
    .B(_1338_),
    .Y(_1344_)
);

NAND2X1 _11504_ (
    .A(_2461_),
    .B(_2462_),
    .Y(_2463_)
);

NOR2X1 _14396_ (
    .A(\datapath.registers.828[17] [17]),
    .B(_4924__bF$buf3),
    .Y(_4947_)
);

FILL SFILL23720x57050 (
);

NOR2X1 _12709_ (
    .A(\datapath.csr.mvect [2]),
    .B(\datapath.csr.mvect [3]),
    .Y(_2846_)
);

NAND2X1 _16962_ (
    .A(\datapath.idinstr_17_bF$buf0 ),
    .B(_6863_),
    .Y(_6864_)
);

AOI21X1 _16542_ (
    .A(_6452_),
    .B(_6451_),
    .C(_5683__bF$buf1),
    .Y(_6453_)
);

MUX2X1 _16122_ (
    .A(\datapath.registers.828[31] [8]),
    .B(\datapath.registers.828[30] [8]),
    .S(\datapath.idinstr_15_bF$buf25 ),
    .Y(_6042_)
);

FILL SFILL23720x12050 (
);

OAI21X1 _8884_ (
    .A(_88_),
    .B(_75_),
    .C(_76_),
    .Y(_89_)
);

NAND2X1 _17747_ (
    .A(\datapath.idinstr_22_bF$buf19 ),
    .B(_7630_),
    .Y(_7631_)
);

NAND2X1 _17327_ (
    .A(\datapath.idinstr_22_bF$buf0 ),
    .B(_7220_),
    .Y(_7221_)
);

DFFPOSX1 _12882_ (
    .Q(\datapath.csr.mcause [8]),
    .CLK(CLK_bF$buf74),
    .D(\datapath.csr._32_ [8])
);

NAND2X1 _12462_ (
    .A(_2666_),
    .B(_2601_),
    .Y(_2667_)
);

NAND2X1 _12042_ (
    .A(_1462_),
    .B(_1470_),
    .Y(_1471_)
);

XNOR2X1 _9669_ (
    .A(_545_),
    .B(_546_),
    .Y(\datapath.jumptarget [4])
);

NAND2X1 _9249_ (
    .A(\datapath.regcwb [3]),
    .B(_218__bF$buf1),
    .Y(_228_)
);

NAND3X1 _13667_ (
    .A(_3476_),
    .B(_3477_),
    .C(_3475_),
    .Y(\datapath.programcounter.pc_mux [10])
);

NAND3X1 _13247_ (
    .A(_3186_),
    .B(_3185_),
    .C(_3184_),
    .Y(_1_[26])
);

MUX2X1 _17080_ (
    .A(_6978_),
    .B(_6977_),
    .S(\datapath.idinstr_16_bF$buf41 ),
    .Y(_6979_)
);

MUX2X1 _15813_ (
    .A(\datapath.registers.828[18] [1]),
    .B(\datapath.registers.828[16] [1]),
    .S(\datapath.idinstr_16_bF$buf6 ),
    .Y(_5740_)
);

FILL SFILL23480x3050 (
);

MUX2X1 _18285_ (
    .A(_8156_),
    .B(_8155_),
    .S(\datapath.idinstr_21_bF$buf38 ),
    .Y(_8157_)
);

FILL SFILL43800x49050 (
);

NAND3X1 _11733_ (
    .A(\datapath.alu.b_2_bF$buf1 ),
    .B(_2206_),
    .C(_1139_),
    .Y(_1140_)
);

NOR2X1 _11313_ (
    .A(\datapath.alu.b_2_bF$buf1 ),
    .B(_2119_),
    .Y(_2277_)
);

FILL SFILL78920x17050 (
);

DFFPOSX1 _12938_ (
    .Q(\datapath.csr.mie ),
    .CLK(CLK_bF$buf7),
    .D(\datapath.csr._20_ )
);

NAND2X1 _12518_ (
    .A(\controlunit.csrfile_trap_wen_bF$buf0 ),
    .B(\datapath.csr.csr_mepc [14]),
    .Y(_2710_)
);

FILL SFILL3480x20050 (
);

OAI21X1 _16771_ (
    .A(_6672_),
    .B(_6673_),
    .C(_6676_),
    .Y(_6677_)
);

MUX2X1 _16351_ (
    .A(\datapath.registers.828[5] [13]),
    .B(\datapath.registers.828[4] [13]),
    .S(\datapath.idinstr_15_bF$buf23 ),
    .Y(_6266_)
);

BUFX2 _8693_ (
    .A(_0_[29]),
    .Y(DMEM_ADDR[29])
);

BUFX2 BUFX2_insert350 (
    .A(_4677_),
    .Y(_4677__bF$buf3)
);

BUFX2 BUFX2_insert351 (
    .A(_4677_),
    .Y(_4677__bF$buf2)
);

BUFX2 BUFX2_insert352 (
    .A(_4677_),
    .Y(_4677__bF$buf1)
);

BUFX2 BUFX2_insert353 (
    .A(_4677_),
    .Y(_4677__bF$buf0)
);

FILL SFILL68920x15050 (
);

NAND2X1 _17976_ (
    .A(_7852_),
    .B(_7854_),
    .Y(_7855_)
);

BUFX2 BUFX2_insert354 (
    .A(_5004_),
    .Y(_5004__bF$buf4)
);

BUFX2 BUFX2_insert355 (
    .A(_5004_),
    .Y(_5004__bF$buf3)
);

OAI21X1 _17556_ (
    .A(_7430_),
    .B(_7444_),
    .C(_7088__bF$buf1),
    .Y(_7445_)
);

NAND3X1 _17136_ (
    .A(_5683__bF$buf0),
    .B(_7033_),
    .C(_7030_),
    .Y(_7034_)
);

BUFX2 BUFX2_insert356 (
    .A(_5004_),
    .Y(_5004__bF$buf2)
);

BUFX2 BUFX2_insert357 (
    .A(_5004_),
    .Y(_5004__bF$buf1)
);

BUFX2 BUFX2_insert358 (
    .A(_5004_),
    .Y(_5004__bF$buf0)
);

INVX1 _12691_ (
    .A(\datapath.allowcsrwrite ),
    .Y(_2832_)
);

BUFX2 BUFX2_insert359 (
    .A(_4924_),
    .Y(_4924__bF$buf7)
);

OAI21X1 _12271_ (
    .A(_2529_),
    .B(_2490__bF$buf1),
    .C(_2530_),
    .Y(\datapath.csr.csr_data [9])
);

OAI21X1 _9898_ (
    .A(_747_),
    .B(_748_),
    .C(_749_),
    .Y(_750_)
);

NAND2X1 _9478_ (
    .A(\datapath.registers.regb_data [27]),
    .B(_318__bF$buf0),
    .Y(_400_)
);

INVX1 _9058_ (
    .A(\datapath.nextpc [18]),
    .Y(_867_)
);

DFFPOSX1 _13896_ (
    .Q(\datapath.programcounter.pc [28]),
    .CLK(CLK_bF$buf77),
    .D(\datapath.programcounter._1_ [28])
);

AOI22X1 _13476_ (
    .A(DMEM_DATA_L[1]),
    .B(_3217_),
    .C(_3229_),
    .D(DMEM_DATA_L[9]),
    .Y(_3345_)
);

OAI21X1 _13056_ (
    .A(_3008_),
    .B(_2996_),
    .C(_2995_),
    .Y(\datapath.imm [27])
);

DFFPOSX1 _19702_ (
    .Q(\datapath.registers.828[0] [6]),
    .CLK(CLK_bF$buf134),
    .D(_3664_)
);

FILL SFILL58920x13050 (
);

NAND2X1 _15622_ (
    .A(_5613_),
    .B(_4841_),
    .Y(_5614_)
);

NOR2X1 _15202_ (
    .A(\datapath.registers.828[6] [24]),
    .B(_5369__bF$buf6),
    .Y(_5394_)
);

OAI21X1 _18094_ (
    .A(_7970_),
    .B(_7961_),
    .C(\datapath.idinstr_24_bF$buf5 ),
    .Y(_7971_)
);

FILL SFILL48920x56050 (
);

NAND2X1 _16827_ (
    .A(\datapath.idinstr_17_bF$buf14 ),
    .B(_6731_),
    .Y(_6732_)
);

MUX2X1 _16407_ (
    .A(\datapath.registers.828[11] [14]),
    .B(\datapath.registers.828[10] [14]),
    .S(\datapath.idinstr_15_bF$buf26 ),
    .Y(_6321_)
);

NOR2X1 _11962_ (
    .A(_1231_),
    .B(_1384_),
    .Y(_1385_)
);

NAND3X1 _11542_ (
    .A(_905_),
    .B(_908_),
    .C(_934_),
    .Y(\datapath.alu.c [12])
);

NAND2X1 _11122_ (
    .A(\datapath.alu.b_1_bF$buf6 ),
    .B(_1984_),
    .Y(_2090_)
);

DFFPOSX1 _19299_ (
    .Q(\datapath.registers.828[2] [19]),
    .CLK(CLK_bF$buf52),
    .D(_4350_)
);

BUFX2 _8749_ (
    .A(\datapath.programcounter.pc [20]),
    .Y(IMEM_ADDR[20])
);

NAND2X1 _12747_ (
    .A(\datapath.csr.mvect [10]),
    .B(\datapath.csr.mvect [11]),
    .Y(_2877_)
);

INVX1 _12327_ (
    .A(\datapath.csr.mcause [26]),
    .Y(_2570_)
);

MUX2X1 _16580_ (
    .A(\datapath.registers.828[3] [18]),
    .B(\datapath.registers.828[2] [18]),
    .S(\datapath.idinstr_15_bF$buf2 ),
    .Y(_6490_)
);

AOI21X1 _16160_ (
    .A(_6057_),
    .B(_6079_),
    .C(_5687__bF$buf2),
    .Y(\datapath.registers.rega_data [8])
);

FILL SFILL8440x50 (
);

MUX2X1 _17785_ (
    .A(_7667_),
    .B(_7666_),
    .S(\datapath.idinstr_21_bF$buf1 ),
    .Y(_7668_)
);

NAND3X1 _17365_ (
    .A(_7091__bF$buf3),
    .B(_7257_),
    .C(_7254_),
    .Y(_7258_)
);

FILL SFILL3560x53050 (
);

OAI21X1 _12080_ (
    .A(_1742_),
    .B(_1509_),
    .C(_1510_),
    .Y(_1511_)
);

NAND3X1 _9287_ (
    .A(_255_),
    .B(_256_),
    .C(_254_),
    .Y(\datapath.rd [12])
);

FILL SFILL83880x56050 (
);

OAI21X1 _10813_ (
    .A(_1778_),
    .B(_1752_),
    .C(_1783_),
    .Y(_1784_)
);

FILL SFILL83480x42050 (
);

OAI21X1 _13285_ (
    .A(_0__1_bF$buf6),
    .B(_0__0_bF$buf0),
    .C(DMEM_DATA_L[0]),
    .Y(_3219_)
);

DFFPOSX1 _19931_ (
    .Q(\datapath.registers.828[28] [11]),
    .CLK(CLK_bF$buf64),
    .D(_4278_)
);

DFFPOSX1 _19511_ (
    .Q(\datapath.registers.828[11] [7]),
    .CLK(CLK_bF$buf114),
    .D(_3729_)
);

FILL SFILL83880x11050 (
);

FILL SFILL28440x45050 (
);

MUX2X1 _15851_ (
    .A(\datapath.registers.828[29] [2]),
    .B(\datapath.registers.828[28] [2]),
    .S(\datapath.idinstr_15_bF$buf9 ),
    .Y(_5777_)
);

NAND2X1 _15431_ (
    .A(\datapath.rd [7]),
    .B(_5503__bF$buf5),
    .Y(_5512_)
);

INVX1 _15011_ (
    .A(\datapath.registers.828[9] [28]),
    .Y(_5295_)
);

FILL SFILL73880x54050 (
);

AOI21X1 _16636_ (
    .A(\datapath.registers.828[15] [19]),
    .B(\datapath.idinstr_17_bF$buf3 ),
    .C(_5681__bF$buf5),
    .Y(_6545_)
);

MUX2X1 _16216_ (
    .A(\datapath.registers.828[18] [10]),
    .B(\datapath.registers.828[16] [10]),
    .S(\datapath.idinstr_16_bF$buf16 ),
    .Y(_6134_)
);

OAI21X1 _11771_ (
    .A(_2412_),
    .B(_1091__bF$buf1),
    .C(_1209__bF$buf3),
    .Y(_1181_)
);

OAI21X1 _11351_ (
    .A(_2308_),
    .B(_2155_),
    .C(_2313_),
    .Y(_2314_)
);

NAND2X1 _8978_ (
    .A(gnd),
    .B(\datapath.idpc [23]),
    .Y(_814_)
);

OAI21X1 _12976_ (
    .A(_3005_),
    .B(_3002_),
    .C(_3003_),
    .Y(_3006_)
);

NAND2X1 _12556_ (
    .A(\controlunit.csrfile_trap_wen_bF$buf0 ),
    .B(\datapath.csr.csr_mepc [22]),
    .Y(_2740_)
);

NOR2X1 _12136_ (
    .A(_1742_),
    .B(_1539_),
    .Y(_1570_)
);

FILL SFILL79480x37050 (
);

FILL FILL83000x19050 (
);

FILL SFILL79080x23050 (
);

NOR2X1 _14702_ (
    .A(\datapath.registers.828[13] [21]),
    .B(_5099__bF$buf6),
    .Y(_5121_)
);

NAND3X1 _17594_ (
    .A(_7091__bF$buf4),
    .B(_7481_),
    .C(_7478_),
    .Y(_7482_)
);

AND2X2 _17174_ (
    .A(\datapath.registers.828[15] [31]),
    .B(\datapath.idinstr_15_bF$buf44 ),
    .Y(_7071_)
);

FILL SFILL48600x30050 (
);

OAI21X1 _9096_ (
    .A(_891_),
    .B(gnd),
    .C(_892_),
    .Y(\datapath._04_ [30])
);

MUX2X1 _15907_ (
    .A(\datapath.registers.828[23] [3]),
    .B(\datapath.registers.828[21] [3]),
    .S(\datapath.idinstr_16_bF$buf30 ),
    .Y(_5832_)
);

XOR2X1 _10622_ (
    .A(\datapath.alu.b_3_bF$buf6 ),
    .B(\datapath.alu.a [3]),
    .Y(_1059_)
);

DFFPOSX1 _10202_ (
    .Q(\datapath.mempc_4 [9]),
    .CLK(CLK_bF$buf81),
    .D(\datapath.alupc_4 [9])
);

AOI21X1 _18799_ (
    .A(_4705__bF$buf4),
    .B(_8565__bF$buf2),
    .C(_8582_),
    .Y(_4251_)
);

NAND2X1 _18379_ (
    .A(_8246_),
    .B(_8248_),
    .Y(_8249_)
);

NAND3X1 _13094_ (
    .A(\datapath.memoryinterface.byte_size_store.storebyte [4]),
    .B(_3027__bF$buf0),
    .C(_3029__bF$buf2),
    .Y(_3056_)
);

DFFPOSX1 _19740_ (
    .Q(\datapath.registers.828[16] [12]),
    .CLK(CLK_bF$buf13),
    .D(_3863_)
);

DFFPOSX1 _19320_ (
    .Q(\datapath.registers.828[4] [8]),
    .CLK(CLK_bF$buf88),
    .D(_4498_)
);

INVX1 _11827_ (
    .A(_1794_),
    .Y(_1240_)
);

OAI22X1 _11407_ (
    .A(_1940_),
    .B(_2368_),
    .C(_2366_),
    .D(_2055_),
    .Y(_2369_)
);

INVX1 _14299_ (
    .A(\datapath.registers.828[18] [6]),
    .Y(_4893_)
);

OAI21X1 _15660_ (
    .A(_5614__bF$buf2),
    .B(_4709__bF$buf0),
    .C(_5633_),
    .Y(_4413_)
);

AOI21X1 _15240_ (
    .A(_4693__bF$buf0),
    .B(_5402__bF$buf7),
    .C(_5413_),
    .Y(_4501_)
);

OAI21X1 _16865_ (
    .A(_4874_),
    .B(\datapath.idinstr_17_bF$buf6 ),
    .C(_6768_),
    .Y(_6769_)
);

AOI21X1 _16445_ (
    .A(\datapath.idinstr_15_bF$buf49 ),
    .B(_6357_),
    .C(_5684__bF$buf3),
    .Y(_6358_)
);

OAI21X1 _16025_ (
    .A(_5947_),
    .B(_5938_),
    .C(_5680__bF$buf3),
    .Y(_5948_)
);

OAI21X1 _11580_ (
    .A(_943_),
    .B(_944_),
    .C(_975_),
    .Y(_976_)
);

OAI21X1 _11160_ (
    .A(_2126_),
    .B(_1252_),
    .C(_2103__bF$buf2),
    .Y(_2127_)
);

INVX1 _8787_ (
    .A(_113_),
    .Y(_121_)
);

OAI21X1 _12785_ (
    .A(_2905_),
    .B(_2908_),
    .C(_2585__bF$buf4),
    .Y(_2909_)
);

NAND2X1 _12365_ (
    .A(_2587_),
    .B(_2601_),
    .Y(_2602_)
);

FILL SFILL28520x33050 (
);

FILL SFILL73960x42050 (
);

INVX1 _14931_ (
    .A(\datapath.registers.828[10] [27]),
    .Y(_5248_)
);

OAI21X1 _14511_ (
    .A(_5004__bF$buf2),
    .B(_4840__bF$buf8),
    .C(\datapath.registers.828[15] [5]),
    .Y(_5010_)
);

FILL SFILL58920x50 (
);

FILL SFILL39080x60050 (
);

NOR2X1 _15716_ (
    .A(\datapath.registers.828[30] [14]),
    .B(_5647__bF$buf0),
    .Y(_5662_)
);

FILL SFILL79160x56050 (
);

MUX2X1 _10851_ (
    .A(\datapath.alu.a [27]),
    .B(\datapath.alu.a [26]),
    .S(\datapath.alu.b_0_bF$buf4 ),
    .Y(_1822_)
);

DFFPOSX1 _10431_ (
    .Q(\datapath.aluinstr [13]),
    .CLK(CLK_bF$buf67),
    .D(\datapath.idinstr [13])
);

DFFPOSX1 _10011_ (
    .Q(\datapath.wbinstr [0]),
    .CLK(CLK_bF$buf16),
    .D(\datapath.meminstr [0])
);

NAND2X1 _18188_ (
    .A(_7092__bF$buf5),
    .B(_8061_),
    .Y(_8062_)
);

FILL SFILL18520x31050 (
);

NAND3X1 _11636_ (
    .A(_1034_),
    .B(_1007_),
    .C(_989_),
    .Y(_1035_)
);

OAI21X1 _11216_ (
    .A(_1284_),
    .B(_2181_),
    .C(_1911_),
    .Y(_2182_)
);

FILL SFILL79160x11050 (
);

FILL SFILL63880x47050 (
);

FILL SFILL79080x18050 (
);

FILL SFILL78840x4050 (
);

FILL SFILL79080x6050 (
);

MUX2X1 _16674_ (
    .A(\datapath.registers.828[9] [20]),
    .B(\datapath.registers.828[8] [20]),
    .S(\datapath.idinstr_15_bF$buf24 ),
    .Y(_6582_)
);

NAND2X1 _16254_ (
    .A(_5684__bF$buf8),
    .B(_6170_),
    .Y(_6171_)
);

MUX2X1 _17879_ (
    .A(\datapath.registers.828[31] [15]),
    .B(\datapath.registers.828[30] [15]),
    .S(\datapath.idinstr_20_bF$buf22 ),
    .Y(_7760_)
);

MUX2X1 _17459_ (
    .A(_7349_),
    .B(_7348_),
    .S(\datapath.idinstr_21_bF$buf8 ),
    .Y(_7350_)
);

NAND2X1 _17039_ (
    .A(_6935_),
    .B(_6938_),
    .Y(_6939_)
);

NAND2X1 _12594_ (
    .A(_2769_),
    .B(_2672__bF$buf5),
    .Y(_2770_)
);

NAND2X1 _12174_ (
    .A(\datapath.alu.b_2_bF$buf6 ),
    .B(_1488_),
    .Y(_1611_)
);

NOR2X1 _18820_ (
    .A(\datapath.registers.828[27] [27]),
    .B(_8565__bF$buf0),
    .Y(_8593_)
);

MUX2X1 _18400_ (
    .A(_8269_),
    .B(_8268_),
    .S(\datapath.idinstr_21_bF$buf31 ),
    .Y(_8270_)
);

NAND2X1 _10907_ (
    .A(_1817_),
    .B(_1877_),
    .Y(_1878_)
);

NAND2X1 _13799_ (
    .A(_3544_),
    .B(_3570_),
    .Y(_3581_)
);

OAI21X1 _13379_ (
    .A(_3274_),
    .B(_0__1_bF$buf8),
    .C(_3275_),
    .Y(_3276_)
);

DFFPOSX1 _19605_ (
    .Q(\datapath.registers.828[9] [5]),
    .CLK(CLK_bF$buf123),
    .D(_4655_)
);

OAI21X1 _14740_ (
    .A(_4687__bF$buf4),
    .B(_5132__bF$buf0),
    .C(_5140_),
    .Y(_3761_)
);

AOI21X1 _14320_ (
    .A(_4703__bF$buf3),
    .B(_4886__bF$buf6),
    .C(_4904_),
    .Y(_3930_)
);

FILL SFILL83960x39050 (
);

FILL SFILL59000x57050 (
);

OAI21X1 _15945_ (
    .A(_5864_),
    .B(_5865_),
    .C(_5868_),
    .Y(_5869_)
);

OAI21X1 _15525_ (
    .A(_5038__bF$buf4),
    .B(_4668__bF$buf1),
    .C(\datapath.registers.828[2] [17]),
    .Y(_5564_)
);

OAI21X1 _15105_ (
    .A(_5336__bF$buf1),
    .B(_4840__bF$buf2),
    .C(\datapath.registers.828[7] [8]),
    .Y(_5345_)
);

INVX2 _10660_ (
    .A(\datapath.alu.b [14]),
    .Y(_1466_)
);

DFFPOSX1 _10240_ (
    .Q(\datapath.csr.csr_mepc [17]),
    .CLK(CLK_bF$buf68),
    .D(\datapath.alupc [17])
);

OAI21X1 _11865_ (
    .A(_1889__bF$buf3),
    .B(\datapath.alu.a [21]),
    .C(_1890__bF$buf1),
    .Y(_1281_)
);

NAND2X1 _11445_ (
    .A(_1872_),
    .B(_2405_),
    .Y(_2406_)
);

OAI21X1 _11025_ (
    .A(_1994_),
    .B(_1993_),
    .C(\datapath.alu.a [1]),
    .Y(_1995_)
);

FILL SFILL73960x37050 (
);

MUX2X1 _16483_ (
    .A(\datapath.registers.828[19] [16]),
    .B(\datapath.registers.828[17] [16]),
    .S(\datapath.idinstr_16_bF$buf6 ),
    .Y(_6395_)
);

MUX2X1 _16063_ (
    .A(_5984_),
    .B(_5983_),
    .S(_5681__bF$buf9),
    .Y(_5985_)
);

FILL SFILL18120x57050 (
);

INVX1 _17688_ (
    .A(\datapath.registers.828[2] [10]),
    .Y(_7574_)
);

AOI21X1 _17268_ (
    .A(_7162_),
    .B(_7161_),
    .C(\datapath.idinstr_21_bF$buf17 ),
    .Y(_7163_)
);

FILL SFILL63960x35050 (
);

NAND2X1 _10716_ (
    .A(_1685_),
    .B(_1686_),
    .Y(_1687_)
);

NAND2X1 _13188_ (
    .A(_3033__bF$buf3),
    .B(_3135_),
    .Y(_3136_)
);

DFFPOSX1 _19834_ (
    .Q(\datapath.registers.828[3] [10]),
    .CLK(CLK_bF$buf85),
    .D(_4437_)
);

DFFPOSX1 _19414_ (
    .Q(\datapath.registers.828[24] [6]),
    .CLK(CLK_bF$buf70),
    .D(_4176_)
);

FILL SFILL63480x28050 (
);

FILL FILL83080x1050 (
);

NAND2X1 _15754_ (
    .A(_5680__bF$buf0),
    .B(_5681__bF$buf1),
    .Y(_5682_)
);

NAND2X1 _15334_ (
    .A(\datapath.registers.828[24] [24]),
    .B(_5437__bF$buf7),
    .Y(_5462_)
);

MUX2X1 _16959_ (
    .A(\datapath.registers.828[31] [26]),
    .B(\datapath.registers.828[29] [26]),
    .S(\datapath.idinstr_16_bF$buf39 ),
    .Y(_6861_)
);

OAI21X1 _16539_ (
    .A(\datapath.idinstr_17_bF$buf11 ),
    .B(_6448_),
    .C(_6449_),
    .Y(_6450_)
);

MUX2X1 _16119_ (
    .A(_6038_),
    .B(_6037_),
    .S(\datapath.idinstr_16_bF$buf19 ),
    .Y(_6039_)
);

AOI21X1 _11674_ (
    .A(_2384_),
    .B(_2341_),
    .C(_2380_),
    .Y(_1076_)
);

AOI21X1 _11254_ (
    .A(_1177_),
    .B(_2217_),
    .C(_2218_),
    .Y(_2219_)
);

OAI21X1 _17900_ (
    .A(_5065_),
    .B(\datapath.idinstr_20_bF$buf45 ),
    .C(\datapath.idinstr_21_bF$buf30 ),
    .Y(_7781_)
);

AND2X2 _9822_ (
    .A(_623_),
    .B(_600_),
    .Y(_680_)
);

NAND2X1 _9402_ (
    .A(\datapath.registers.regb_data [8]),
    .B(_318__bF$buf2),
    .Y(_343_)
);

DFFPOSX1 _12879_ (
    .Q(\datapath.csr.mcause [5]),
    .CLK(CLK_bF$buf35),
    .D(\datapath.csr._32_ [5])
);

INVX1 _12459_ (
    .A(\datapath.meminstr [20]),
    .Y(_2664_)
);

NOR2X1 _12039_ (
    .A(_1467_),
    .B(_1465_),
    .Y(_1468_)
);

FILL SFILL3320x3050 (
);

AND2X2 _13820_ (
    .A(_3597_),
    .B(_3596_),
    .Y(\datapath.nextpc [27])
);

OAI21X1 _13400_ (
    .A(_3227_),
    .B(_0__1_bF$buf7),
    .C(_3293_),
    .Y(_3294_)
);

AOI21X1 _16292_ (
    .A(_6204_),
    .B(_6208_),
    .C(\datapath.idinstr_18_bF$buf6 ),
    .Y(_6209_)
);

FILL SFILL43880x38050 (
);

INVX1 _14605_ (
    .A(\datapath.registers.828[14] [14]),
    .Y(_5063_)
);

NAND2X1 _17497_ (
    .A(_7092__bF$buf6),
    .B(_7386_),
    .Y(_7387_)
);

OAI21X1 _17077_ (
    .A(_6964_),
    .B(_6975_),
    .C(\datapath.idinstr_19_bF$buf4 ),
    .Y(_6976_)
);

NOR3X1 _10945_ (
    .A(_1874_),
    .B(_1843_),
    .C(_1915_),
    .Y(_1916_)
);

DFFPOSX1 _10525_ (
    .Q(\datapath.idinstr [11]),
    .CLK(CLK_bF$buf8),
    .D(\datapath._05_ [11])
);

DFFPOSX1 _10105_ (
    .Q(\datapath.memoryinterface.data_store [15]),
    .CLK(CLK_bF$buf43),
    .D(\datapath.regrs2alu [15])
);

FILL SFILL33080x53050 (
);

DFFPOSX1 _19643_ (
    .Q(\datapath.registers.828[26] [11]),
    .CLK(CLK_bF$buf120),
    .D(_4214_)
);

DFFPOSX1 _19223_ (
    .Q(\datapath.registers.828[20] [7]),
    .CLK(CLK_bF$buf20),
    .D(_4049_)
);

CLKBUF1 CLKBUF1_insert650 (
    .A(CLK_hier0_bF$buf4),
    .Y(CLK_bF$buf136)
);

CLKBUF1 CLKBUF1_insert651 (
    .A(CLK_hier0_bF$buf8),
    .Y(CLK_bF$buf135)
);

CLKBUF1 CLKBUF1_insert652 (
    .A(CLK_hier0_bF$buf5),
    .Y(CLK_bF$buf134)
);

CLKBUF1 CLKBUF1_insert653 (
    .A(CLK_hier0_bF$buf8),
    .Y(CLK_bF$buf133)
);

CLKBUF1 CLKBUF1_insert654 (
    .A(CLK_hier0_bF$buf4),
    .Y(CLK_bF$buf132)
);

CLKBUF1 CLKBUF1_insert655 (
    .A(CLK_hier0_bF$buf11),
    .Y(CLK_bF$buf131)
);

CLKBUF1 CLKBUF1_insert656 (
    .A(CLK_hier0_bF$buf4),
    .Y(CLK_bF$buf130)
);

CLKBUF1 CLKBUF1_insert657 (
    .A(CLK_hier0_bF$buf3),
    .Y(CLK_bF$buf129)
);

CLKBUF1 CLKBUF1_insert658 (
    .A(CLK_hier0_bF$buf0),
    .Y(CLK_bF$buf128)
);

FILL SFILL33480x22050 (
);

CLKBUF1 CLKBUF1_insert659 (
    .A(CLK_hier0_bF$buf0),
    .Y(CLK_bF$buf127)
);

MUX2X1 _15983_ (
    .A(\datapath.registers.828[25] [5]),
    .B(\datapath.registers.828[24] [5]),
    .S(\datapath.idinstr_15_bF$buf7 ),
    .Y(_5906_)
);

OAI21X1 _15563_ (
    .A(_5579__bF$buf4),
    .B(_4679__bF$buf2),
    .C(_5583_),
    .Y(_4013_)
);

OAI21X1 _15143_ (
    .A(_5336__bF$buf3),
    .B(_4840__bF$buf5),
    .C(\datapath.registers.828[7] [27]),
    .Y(_5364_)
);

FILL FILL83160x51050 (
);

FILL SFILL18600x14050 (
);

FILL FILL83080x58050 (
);

NAND2X1 _16768_ (
    .A(\datapath.registers.828[12] [22]),
    .B(_5681__bF$buf8),
    .Y(_6674_)
);

AOI21X1 _16348_ (
    .A(_6262_),
    .B(_6261_),
    .C(_5684__bF$buf0),
    .Y(_6263_)
);

MUX2X1 _11483_ (
    .A(_2442_),
    .B(_2436_),
    .S(_1091__bF$buf1),
    .Y(_2443_)
);

NOR2X1 _11063_ (
    .A(\datapath.alu.b_3_bF$buf0 ),
    .B(_1899_),
    .Y(_2032_)
);

NOR2X1 _9631_ (
    .A(\datapath.meminstr [18]),
    .B(_203_),
    .Y(_516_)
);

NAND2X1 _9211_ (
    .A(_196_),
    .B(_191_),
    .Y(_197_)
);

FILL FILL83080x13050 (
);

INVX1 _12688_ (
    .A(_2830_),
    .Y(\datapath.csr.csr_irq )
);

NAND2X1 _12268_ (
    .A(_2528_),
    .B(_2526_),
    .Y(\datapath.csr.csr_data [8])
);

FILL SFILL84040x43050 (
);

NOR2X1 _18914_ (
    .A(\datapath.registers.828[25] [9]),
    .B(_8631__bF$buf3),
    .Y(_8641_)
);

AOI21X1 _14834_ (
    .A(_4707__bF$buf1),
    .B(_5167__bF$buf7),
    .C(_5192_),
    .Y(_3708_)
);

OAI21X1 _14414_ (
    .A(_4956_),
    .B(_4924__bF$buf6),
    .C(_4957_),
    .Y(_3908_)
);

FILL SFILL53960x28050 (
);

FILL SFILL53560x14050 (
);

OAI21X1 _15619_ (
    .A(_5579__bF$buf1),
    .B(_4735__bF$buf2),
    .C(_5611_),
    .Y(_4012_)
);

FILL SFILL74040x41050 (
);

NOR2X1 _10754_ (
    .A(_1700_),
    .B(_1724_),
    .Y(_1725_)
);

DFFPOSX1 _10334_ (
    .Q(\datapath.regrs2alu [15]),
    .CLK(CLK_bF$buf15),
    .D(\datapath.registers.regb_data [15])
);

DFFPOSX1 _20012_ (
    .Q(\datapath.registers.828[25] [28]),
    .CLK(CLK_bF$buf33),
    .D(_4200_)
);

DFFPOSX1 _19872_ (
    .Q(\datapath.registers.828[1] [16]),
    .CLK(CLK_bF$buf52),
    .D(_3995_)
);

DFFPOSX1 _19452_ (
    .Q(\datapath.registers.828[23] [12]),
    .CLK(CLK_bF$buf20),
    .D(_4119_)
);

DFFPOSX1 _19032_ (
    .Q(\datapath.registers.828[31] [8]),
    .CLK(CLK_bF$buf135),
    .D(_4434_)
);

NOR2X1 _8902_ (
    .A(_98_),
    .B(_96_),
    .Y(\controlunit.ecall )
);

OAI21X1 _11959_ (
    .A(_1375_),
    .B(_1381_),
    .C(_1370_),
    .Y(_1382_)
);

AOI21X1 _11539_ (
    .A(_926_),
    .B(_1911_),
    .C(_2154_),
    .Y(_932_)
);

OAI21X1 _11119_ (
    .A(_2086_),
    .B(_1070_),
    .C(_1134_),
    .Y(_2087_)
);

DFFPOSX1 _12900_ (
    .Q(\datapath.csr.mcause [26]),
    .CLK(CLK_bF$buf108),
    .D(\datapath.csr._32_ [26])
);

AOI21X1 _15792_ (
    .A(_5714_),
    .B(_5719_),
    .C(_5685__bF$buf1),
    .Y(_5720_)
);

OAI21X1 _15372_ (
    .A(_4693__bF$buf3),
    .B(_5470__bF$buf0),
    .C(_5481_),
    .Y(_4469_)
);

NAND2X1 _16997_ (
    .A(\datapath.registers.828[12] [27]),
    .B(_5681__bF$buf0),
    .Y(_6898_)
);

MUX2X1 _16577_ (
    .A(_6486_),
    .B(_6485_),
    .S(\datapath.idinstr_16_bF$buf32 ),
    .Y(_6487_)
);

NAND2X1 _16157_ (
    .A(\datapath.idinstr_17_bF$buf3 ),
    .B(_6076_),
    .Y(_6077_)
);

OAI21X1 _11292_ (
    .A(_1359_),
    .B(_2232_),
    .C(_2241_),
    .Y(_2256_)
);

FILL SFILL3320x50 (
);

NOR2X1 _9860_ (
    .A(_714_),
    .B(_713_),
    .Y(_715_)
);

NAND2X1 _9440_ (
    .A(\datapath.csr.csr_data [17]),
    .B(_317__bF$buf4),
    .Y(_372_)
);

NAND2X1 _9020_ (
    .A(gnd),
    .B(\datapath.idpc_4 [5]),
    .Y(_842_)
);

NAND2X1 _12497_ (
    .A(_2693_),
    .B(_2672__bF$buf4),
    .Y(_2694_)
);

INVX1 _12077_ (
    .A(_1506_),
    .Y(_1507_)
);

OAI21X1 _18723_ (
    .A(_4695__bF$buf1),
    .B(_8531__bF$buf7),
    .C(_8543_),
    .Y(_4278_)
);

MUX2X1 _18303_ (
    .A(_8174_),
    .B(_8173_),
    .S(_7089__bF$buf1),
    .Y(_8175_)
);

DFFPOSX1 _19928_ (
    .Q(\datapath.registers.828[28] [8]),
    .CLK(CLK_bF$buf135),
    .D(_4306_)
);

DFFPOSX1 _19508_ (
    .Q(\datapath.registers.828[11] [4]),
    .CLK(CLK_bF$buf56),
    .D(_3726_)
);

INVX1 _14643_ (
    .A(\datapath.registers.828[14] [27]),
    .Y(_5088_)
);

INVX2 _14223_ (
    .A(\datapath.registers.828[19] [6]),
    .Y(_4849_)
);

MUX2X1 _15848_ (
    .A(\datapath.registers.828[27] [2]),
    .B(\datapath.registers.828[26] [2]),
    .S(\datapath.idinstr_15_bF$buf9 ),
    .Y(_5774_)
);

NOR2X1 _15428_ (
    .A(\datapath.registers.828[3] [6]),
    .B(_5503__bF$buf1),
    .Y(_5510_)
);

INVX1 _15008_ (
    .A(\datapath.registers.828[9] [27]),
    .Y(_5293_)
);

OAI21X1 _10983_ (
    .A(_1284_),
    .B(\datapath.alu.b_0_bF$buf3 ),
    .C(_1952_),
    .Y(_1953_)
);

DFFPOSX1 _10563_ (
    .Q(\datapath.idpc_4 [17]),
    .CLK(CLK_bF$buf15),
    .D(\datapath._04_ [17])
);

DFFPOSX1 _10143_ (
    .Q(_0_[21]),
    .CLK(CLK_bF$buf104),
    .D(\datapath.alu.c [21])
);

FILL SFILL23400x58050 (
);

DFFPOSX1 _19681_ (
    .Q(\datapath.registers.828[27] [17]),
    .CLK(CLK_bF$buf112),
    .D(_4252_)
);

DFFPOSX1 _19261_ (
    .Q(\datapath.registers.828[22] [13]),
    .CLK(CLK_bF$buf142),
    .D(_4088_)
);

FILL SFILL8440x57050 (
);

BUFX2 _8711_ (
    .A(_1_[15]),
    .Y(DMEM_DATA_S[15])
);

OAI21X1 _11768_ (
    .A(_1176_),
    .B(\datapath.alu.b_1_bF$buf1 ),
    .C(_1174_),
    .Y(_1178_)
);

NOR2X1 _11348_ (
    .A(_2255_),
    .B(_2310_),
    .Y(_2311_)
);

FILL SFILL23400x13050 (
);

FILL SFILL13480x58050 (
);

AOI21X1 _15181_ (
    .A(_4699__bF$buf0),
    .B(_5369__bF$buf3),
    .C(_5383_),
    .Y(_4536_)
);

DFFPOSX1 _9916_ (
    .Q(\datapath.regcsrwb [2]),
    .CLK(CLK_bF$buf44),
    .D(\datapath.csr.csr_wdata [2])
);

FILL SFILL8440x12050 (
);

NOR2X1 _13914_ (
    .A(\datapath.registers.828[23] [0]),
    .B(_4673__bF$buf2),
    .Y(_4674_)
);

FILL SFILL8360x19050 (
);

FILL SFILL13400x56050 (
);

MUX2X1 _16386_ (
    .A(\datapath.registers.828[27] [14]),
    .B(\datapath.registers.828[26] [14]),
    .S(\datapath.idinstr_15_bF$buf6 ),
    .Y(_6300_)
);

FILL SFILL13480x13050 (
);

FILL SFILL13400x11050 (
);

NOR2X1 _18952_ (
    .A(\datapath.registers.828[25] [28]),
    .B(_8631__bF$buf3),
    .Y(_8660_)
);

MUX2X1 _18532_ (
    .A(\datapath.registers.828[17] [29]),
    .B(\datapath.registers.828[16] [29]),
    .S(\datapath.idinstr_20_bF$buf42 ),
    .Y(_8399_)
);

MUX2X1 _18112_ (
    .A(\datapath.registers.828[23] [20]),
    .B(\datapath.registers.828[21] [20]),
    .S(\datapath.idinstr_21_bF$buf44 ),
    .Y(_7988_)
);

NOR2X1 _10619_ (
    .A(\datapath.alu.a [0]),
    .B(_1016_),
    .Y(_1027_)
);

DFFPOSX1 _19737_ (
    .Q(\datapath.registers.828[16] [9]),
    .CLK(CLK_bF$buf31),
    .D(_3891_)
);

DFFPOSX1 _19317_ (
    .Q(\datapath.registers.828[4] [5]),
    .CLK(CLK_bF$buf128),
    .D(_4495_)
);

NAND2X1 _14872_ (
    .A(\datapath.rd [1]),
    .B(_5212__bF$buf7),
    .Y(_5215_)
);

OAI21X1 _14452_ (
    .A(_4691__bF$buf0),
    .B(_4968__bF$buf4),
    .C(_4978_),
    .Y(_3891_)
);

AOI21X1 _14032_ (
    .A(_4693__bF$buf1),
    .B(_4738__bF$buf0),
    .C(_4749_),
    .Y(_4085_)
);

FILL SFILL68760x56050 (
);

FILL SFILL64040x34050 (
);

FILL SFILL84040x4050 (
);

OAI21X1 _15657_ (
    .A(_4840__bF$buf7),
    .B(_5612__bF$buf1),
    .C(\datapath.registers.828[31] [17]),
    .Y(_5632_)
);

NOR2X1 _15237_ (
    .A(\datapath.registers.828[5] [9]),
    .B(_5402__bF$buf4),
    .Y(_5412_)
);

OR2X2 _10792_ (
    .A(_1762_),
    .B(_1752_),
    .Y(_1763_)
);

DFFPOSX1 _10372_ (
    .Q(\datapath.alu.b [21]),
    .CLK(CLK_bF$buf37),
    .D(\datapath.muxbval [21])
);

DFFPOSX1 _19490_ (
    .Q(\datapath.registers.828[5] [18]),
    .CLK(CLK_bF$buf136),
    .D(_4509_)
);

DFFPOSX1 _19070_ (
    .Q(\datapath.registers.828[10] [14]),
    .CLK(CLK_bF$buf118),
    .D(_3673_)
);

OAI21X1 _8940_ (
    .A(_787_),
    .B(gnd),
    .C(_788_),
    .Y(\datapath._03_ [10])
);

NAND2X1 _11997_ (
    .A(_1123__bF$buf3),
    .B(_1421_),
    .Y(_1422_)
);

AND2X2 _11577_ (
    .A(_971_),
    .B(_968_),
    .Y(_972_)
);

OAI21X1 _11157_ (
    .A(_2123_),
    .B(_1112_),
    .C(_1070_),
    .Y(_2124_)
);

FILL SFILL68680x18050 (
);

OAI21X1 _17803_ (
    .A(_7674_),
    .B(_7685_),
    .C(\datapath.idinstr_24_bF$buf2 ),
    .Y(_7686_)
);

FILL SFILL58760x54050 (
);

XNOR2X1 _9725_ (
    .A(_594_),
    .B(_595_),
    .Y(\datapath.jumptarget [11])
);

NAND2X1 _9305_ (
    .A(\datapath.regcwb [17]),
    .B(_218__bF$buf3),
    .Y(_270_)
);

AOI22X1 _13723_ (
    .A(_3423__bF$buf4),
    .B(\datapath.alu.c [16]),
    .C(\datapath.csr.csr_pcaddr [16]),
    .D(_3429__bF$buf4),
    .Y(_3522_)
);

NOR2X1 _13303_ (
    .A(_0__1_bF$buf4),
    .B(_3228_),
    .Y(_3229_)
);

AOI21X1 _16195_ (
    .A(\datapath.registers.828[4] [9]),
    .B(\datapath.idinstr_17_bF$buf1 ),
    .C(\datapath.idinstr_15_bF$buf21 ),
    .Y(_6114_)
);

AOI21X1 _14928_ (
    .A(_4723__bF$buf0),
    .B(_5212__bF$buf7),
    .C(_5246_),
    .Y(_3685_)
);

OAI21X1 _14508_ (
    .A(_5003__bF$buf4),
    .B(_4679__bF$buf3),
    .C(_5008_),
    .Y(_3853_)
);

FILL SFILL8520x45050 (
);

FILL SFILL48760x52050 (
);

FILL SFILL53800x1050 (
);

FILL SFILL53800x50 (
);

OAI21X1 _18761_ (
    .A(_4733__bF$buf4),
    .B(_8531__bF$buf6),
    .C(_8562_),
    .Y(_4299_)
);

NAND2X1 _18341_ (
    .A(_8209_),
    .B(_8211_),
    .Y(_8212_)
);

FILL SFILL48680x59050 (
);

MUX2X1 _10848_ (
    .A(\datapath.alu.a [31]),
    .B(\datapath.alu.a [30]),
    .S(\datapath.alu.b_0_bF$buf8 ),
    .Y(_1819_)
);

DFFPOSX1 _10428_ (
    .Q(\datapath.aluinstr [10]),
    .CLK(CLK_bF$buf73),
    .D(\datapath.idinstr [10])
);

DFFPOSX1 _10008_ (
    .Q(\datapath.regcwb [30]),
    .CLK(CLK_bF$buf27),
    .D(_0_[30])
);

DFFPOSX1 _19966_ (
    .Q(\datapath.registers.828[6] [14]),
    .CLK(CLK_bF$buf58),
    .D(_4537_)
);

DFFPOSX1 _19546_ (
    .Q(\datapath.registers.828[12] [10]),
    .CLK(CLK_bF$buf25),
    .D(_3733_)
);

DFFPOSX1 _19126_ (
    .Q(\datapath.registers.828[17] [6]),
    .CLK(CLK_bF$buf22),
    .D(_3920_)
);

AOI21X1 _14681_ (
    .A(_4693__bF$buf3),
    .B(_5099__bF$buf6),
    .C(_5110_),
    .Y(_3765_)
);

NOR2X1 _14261_ (
    .A(\datapath.registers.828[19] [22]),
    .B(_4842__bF$buf6),
    .Y(_4871_)
);

FILL SFILL83880x50 (
);

FILL SFILL48680x14050 (
);

FILL SFILL78840x46050 (
);

MUX2X1 _15886_ (
    .A(_5811_),
    .B(_5810_),
    .S(\datapath.idinstr_16_bF$buf44 ),
    .Y(_5812_)
);

NOR2X1 _15466_ (
    .A(\datapath.registers.828[3] [22]),
    .B(_5503__bF$buf2),
    .Y(_5532_)
);

OAI21X1 _15046_ (
    .A(_4697__bF$buf4),
    .B(_5300__bF$buf5),
    .C(_5313_),
    .Y(_4599_)
);

DFFPOSX1 _10181_ (
    .Q(\datapath.meminstr [20]),
    .CLK(CLK_bF$buf34),
    .D(\datapath.aluinstr [20])
);

MUX2X1 _11386_ (
    .A(_2348_),
    .B(_2248_),
    .S(_994__bF$buf2),
    .Y(_2349_)
);

AOI21X1 _17612_ (
    .A(_7494_),
    .B(_7498_),
    .C(_7093__bF$buf0),
    .Y(_7499_)
);

FILL SFILL38680x12050 (
);

FILL SFILL23720x5050 (
);

DFFPOSX1 _9954_ (
    .Q(\datapath.regloadwb [8]),
    .CLK(CLK_bF$buf97),
    .D(\datapath.memdataload [8])
);

NAND2X1 _9534_ (
    .A(\datapath.registers.rega_data [8]),
    .B(_418__bF$buf4),
    .Y(_443_)
);

OAI21X1 _9114_ (
    .A(_126_),
    .B(gnd),
    .C(_127_),
    .Y(\datapath._05_ [4])
);

FILL SFILL68840x44050 (
);

AOI21X1 _18817_ (
    .A(_4723__bF$buf3),
    .B(_8565__bF$buf0),
    .C(_8591_),
    .Y(_4261_)
);

INVX8 _13952_ (
    .A(\datapath.rd [13]),
    .Y(_4699_)
);

OAI21X1 _13532_ (
    .A(_3380_),
    .B(gnd),
    .C(_3381_),
    .Y(\datapath.programcounter._1_ [11])
);

OAI21X1 _13112_ (
    .A(_3070_),
    .B(_0__1_bF$buf9),
    .C(_3071_),
    .Y(_3072_)
);

FILL SFILL28680x55050 (
);

BUFX2 BUFX2_insert1264 (
    .A(\datapath.idinstr [22]),
    .Y(\datapath.idinstr_22_hier0_bF$buf5 )
);

BUFX2 BUFX2_insert1265 (
    .A(\datapath.idinstr [22]),
    .Y(\datapath.idinstr_22_hier0_bF$buf4 )
);

BUFX2 BUFX2_insert1266 (
    .A(\datapath.idinstr [22]),
    .Y(\datapath.idinstr_22_hier0_bF$buf3 )
);

BUFX2 BUFX2_insert1267 (
    .A(\datapath.idinstr [22]),
    .Y(\datapath.idinstr_22_hier0_bF$buf2 )
);

BUFX2 BUFX2_insert1268 (
    .A(\datapath.idinstr [22]),
    .Y(\datapath.idinstr_22_hier0_bF$buf1 )
);

BUFX2 BUFX2_insert1269 (
    .A(\datapath.idinstr [22]),
    .Y(\datapath.idinstr_22_hier0_bF$buf0 )
);

FILL SFILL68360x37050 (
);

NAND2X1 _14737_ (
    .A(\datapath.registers.828[12] [6]),
    .B(_5132__bF$buf7),
    .Y(_5139_)
);

NOR2X1 _14317_ (
    .A(\datapath.registers.828[18] [14]),
    .B(_4886__bF$buf1),
    .Y(_4903_)
);

BUFX2 _18990_ (
    .A(\datapath.registers.828[0] [30]),
    .Y(_3659_)
);

AOI21X1 _18570_ (
    .A(\datapath.registers.828[21] [30]),
    .B(\datapath.idinstr_22_bF$buf8 ),
    .C(_7089__bF$buf2),
    .Y(_8436_)
);

AOI21X1 _18150_ (
    .A(_8020_),
    .B(_8024_),
    .C(_7093__bF$buf7),
    .Y(_8025_)
);

FILL SFILL58840x42050 (
);

INVX4 _10657_ (
    .A(\datapath.alu.a [15]),
    .Y(_1434_)
);

DFFPOSX1 _10237_ (
    .Q(\datapath.csr.csr_mepc [14]),
    .CLK(CLK_bF$buf26),
    .D(\datapath.alupc [14])
);

DFFPOSX1 _19775_ (
    .Q(\datapath.registers.828[30] [15]),
    .CLK(CLK_bF$buf130),
    .D(_4378_)
);

DFFPOSX1 _19355_ (
    .Q(\datapath.registers.828[7] [11]),
    .CLK(CLK_bF$buf99),
    .D(_4566_)
);

OAI21X1 _14490_ (
    .A(_4729__bF$buf3),
    .B(_4968__bF$buf4),
    .C(_4997_),
    .Y(_3880_)
);

AOI21X1 _14070_ (
    .A(_4731__bF$buf4),
    .B(_4738__bF$buf5),
    .C(_4768_),
    .Y(_4105_)
);

INVX1 _8805_ (
    .A(\datapath.aluinstr [4]),
    .Y(_17_)
);

FILL SFILL58360x35050 (
);

FILL SFILL58920x9050 (
);

NAND3X1 _12803_ (
    .A(_2881_),
    .B(_2922_),
    .C(_2862_),
    .Y(_2923_)
);

AOI21X1 _15695_ (
    .A(_4679__bF$buf0),
    .B(_5647__bF$buf0),
    .C(_5651_),
    .Y(_4397_)
);

NOR2X1 _15275_ (
    .A(\datapath.registers.828[5] [28]),
    .B(_5402__bF$buf5),
    .Y(_5431_)
);

FILL SFILL58520x8050 (
);

FILL SFILL33560x1050 (
);

FILL SFILL33480x6050 (
);

FILL SFILL48760x47050 (
);

NAND3X1 _11195_ (
    .A(_2161_),
    .B(_2159_),
    .C(_2160_),
    .Y(_2162_)
);

FILL SFILL8120x26050 (
);

AOI21X1 _17841_ (
    .A(\datapath.registers.828[15] [14]),
    .B(\datapath.idinstr_22_bF$buf9 ),
    .C(_7089__bF$buf6),
    .Y(_7723_)
);

MUX2X1 _17421_ (
    .A(\datapath.registers.828[9] [5]),
    .B(\datapath.registers.828[8] [5]),
    .S(\datapath.idinstr_20_bF$buf12 ),
    .Y(_7312_)
);

AOI21X1 _17001_ (
    .A(_6901_),
    .B(_6895_),
    .C(_5685__bF$buf6),
    .Y(_6902_)
);

NAND2X1 _9763_ (
    .A(\datapath.alupc [16]),
    .B(\datapath.regimmalu [16]),
    .Y(_629_)
);

NAND3X1 _9343_ (
    .A(_297_),
    .B(_298_),
    .C(_296_),
    .Y(\datapath.rd [26])
);

OAI21X1 _18626_ (
    .A(_5544_),
    .B(\datapath.idinstr_22_bF$buf28 ),
    .C(_8490_),
    .Y(_8491_)
);

INVX1 _18206_ (
    .A(\datapath.registers.828[27] [22]),
    .Y(_8080_)
);

NAND2X1 _13761_ (
    .A(\datapath.programcounter.pc [20]),
    .B(\datapath.programcounter.pc [21]),
    .Y(_3551_)
);

OAI21X1 _13341_ (
    .A(_3199_),
    .B(_3239__bF$buf3),
    .C(_3245_),
    .Y(\datapath.memoryinterface.byte_size_store.storebyte [29])
);

FILL SFILL38760x45050 (
);

NAND2X1 _14966_ (
    .A(\datapath.rd [8]),
    .B(_5257__bF$buf0),
    .Y(_5270_)
);

OAI21X1 _14546_ (
    .A(_5003__bF$buf4),
    .B(_4717__bF$buf0),
    .C(_5027_),
    .Y(_3842_)
);

AOI21X1 _14126_ (
    .A(_4721__bF$buf3),
    .B(_4772__bF$buf6),
    .C(_4797_),
    .Y(_4068_)
);

FILL SFILL38360x31050 (
);

FILL SFILL28600x2050 (
);

FILL SFILL69080x2050 (
);

INVX2 _10886_ (
    .A(\datapath.alu.a [2]),
    .Y(_1857_)
);

DFFPOSX1 _10466_ (
    .Q(\datapath.alupc_4 [16]),
    .CLK(CLK_bF$buf84),
    .D(\datapath.idpc_4 [16])
);

FILL SFILL8360x8050 (
);

DFFPOSX1 _10046_ (
    .Q(\datapath.wbpc_4 [20]),
    .CLK(CLK_bF$buf48),
    .D(\datapath.mempc_4 [20])
);

DFFPOSX1 _19584_ (
    .Q(\datapath.registers.828[21] [16]),
    .CLK(CLK_bF$buf78),
    .D(_4059_)
);

DFFPOSX1 _19164_ (
    .Q(\datapath.registers.828[15] [12]),
    .CLK(CLK_bF$buf95),
    .D(_3831_)
);

FILL SFILL28760x43050 (
);

FILL SFILL59160x34050 (
);

NAND2X1 _12612_ (
    .A(\controlunit.csrfile_trap_wen_bF$buf3 ),
    .B(\datapath.csr.csr_mcause [1]),
    .Y(_2785_)
);

OAI21X1 _15084_ (
    .A(_4735__bF$buf3),
    .B(_5300__bF$buf4),
    .C(_5332_),
    .Y(_4620_)
);

NOR2X1 _9819_ (
    .A(\datapath.alupc [23]),
    .B(\datapath.regimmalu [23]),
    .Y(_678_)
);

NAND2X1 _13817_ (
    .A(_3587_),
    .B(_3582_),
    .Y(_3595_)
);

MUX2X1 _16289_ (
    .A(\datapath.registers.828[3] [11]),
    .B(\datapath.registers.828[2] [11]),
    .S(\datapath.idinstr_15_bF$buf13 ),
    .Y(_6206_)
);

MUX2X1 _17650_ (
    .A(\datapath.registers.828[27] [10]),
    .B(\datapath.registers.828[26] [10]),
    .S(\datapath.idinstr_20_bF$buf53 ),
    .Y(_7536_)
);

OAI21X1 _17230_ (
    .A(_7121_),
    .B(_7122_),
    .C(_7125_),
    .Y(_7126_)
);

FILL SFILL39080x1050 (
);

DFFPOSX1 _9992_ (
    .Q(\datapath.regcwb [14]),
    .CLK(CLK_bF$buf129),
    .D(_0_[14])
);

NAND2X1 _9572_ (
    .A(\datapath.csr.csr_data [17]),
    .B(_417__bF$buf0),
    .Y(_472_)
);

NAND2X1 _9152_ (
    .A(gnd),
    .B(\datapath.idinstr_17_bF$buf9 ),
    .Y(_153_)
);

FILL SFILL38680x9050 (
);

NOR2X1 _18855_ (
    .A(\datapath.registers.828[26] [12]),
    .B(_8598__bF$buf3),
    .Y(_8611_)
);

NAND2X1 _18435_ (
    .A(_8300_),
    .B(_8303_),
    .Y(_8304_)
);

MUX2X1 _18015_ (
    .A(\datapath.registers.828[18] [18]),
    .B(\datapath.registers.828[16] [18]),
    .S(\datapath.idinstr_21_bF$buf40 ),
    .Y(_7893_)
);

AOI21X1 _13990_ (
    .A(_4723__bF$buf1),
    .B(_4673__bF$buf1),
    .C(_4724_),
    .Y(_4133_)
);

NOR2X1 _13570_ (
    .A(gnd),
    .B(\datapath.programcounter.pc_mux [24]),
    .Y(_3407_)
);

OAI21X1 _13150_ (
    .A(_3102_),
    .B(_0__1_bF$buf3),
    .C(_3103_),
    .Y(_3104_)
);

NAND2X1 _14775_ (
    .A(\datapath.registers.828[12] [25]),
    .B(_5132__bF$buf6),
    .Y(_5158_)
);

NAND2X1 _14355_ (
    .A(_4771_),
    .B(_4839_),
    .Y(_4923_)
);

OAI21X1 _10695_ (
    .A(_1663_),
    .B(_1665_),
    .C(_1661_),
    .Y(_1666_)
);

DFFPOSX1 _10275_ (
    .Q(\datapath.regimmalu [20]),
    .CLK(CLK_bF$buf0),
    .D(\datapath.imm [20])
);

AOI21X1 _16921_ (
    .A(_6817_),
    .B(_6823_),
    .C(\datapath.idinstr_18_bF$buf1 ),
    .Y(_6824_)
);

AOI21X1 _16501_ (
    .A(_6412_),
    .B(_6411_),
    .C(_5684__bF$buf7),
    .Y(_6413_)
);

DFFPOSX1 _19393_ (
    .Q(\datapath.registers.828[8] [17]),
    .CLK(CLK_bF$buf50),
    .D(_4604_)
);

NAND2X1 _8843_ (
    .A(\datapath.aluinstr [14]),
    .B(\datapath.aluinstr [30]),
    .Y(_52_)
);

MUX2X1 _17706_ (
    .A(\datapath.registers.828[5] [11]),
    .B(\datapath.registers.828[4] [11]),
    .S(\datapath.idinstr_20_bF$buf33 ),
    .Y(_7591_)
);

AND2X2 _12841_ (
    .A(_2954_),
    .B(_2585__bF$buf5),
    .Y(_2955_)
);

INVX1 _12421_ (
    .A(\datapath.csr.csr_wdata [19]),
    .Y(_2639_)
);

AOI21X1 _12001_ (
    .A(_1426_),
    .B(_1425_),
    .C(_1899_),
    .Y(_1427_)
);

FILL SFILL44200x50 (
);

NAND2X1 _9628_ (
    .A(\datapath.csr.csr_data [31]),
    .B(_417__bF$buf4),
    .Y(_514_)
);

INVX1 _9208_ (
    .A(\datapath.meminstr [2]),
    .Y(_194_)
);

NAND2X1 _13626_ (
    .A(_3424__bF$buf2),
    .B(\datapath.nextpc [5]),
    .Y(_3447_)
);

INVX1 _13206_ (
    .A(DMEM_DATA_L[21]),
    .Y(_3151_)
);

NAND2X1 _16098_ (
    .A(_6015_),
    .B(_6018_),
    .Y(_6019_)
);

NAND3X1 _9381_ (
    .A(_326_),
    .B(_327_),
    .C(_325_),
    .Y(\datapath.muxbval [2])
);

AOI21X1 _18664_ (
    .A(_4701__bF$buf3),
    .B(_8498__bF$buf5),
    .C(_8513_),
    .Y(_4313_)
);

NAND2X1 _18244_ (
    .A(\datapath.registers.828[0] [23]),
    .B(_7092__bF$buf10),
    .Y(_8117_)
);

FILL SFILL3320x37050 (
);

FILL SFILL43560x44050 (
);

DFFPOSX1 _20009_ (
    .Q(\datapath.registers.828[25] [25]),
    .CLK(CLK_bF$buf125),
    .D(_4197_)
);

DFFPOSX1 _19869_ (
    .Q(\datapath.registers.828[1] [13]),
    .CLK(CLK_bF$buf12),
    .D(_3992_)
);

DFFPOSX1 _19449_ (
    .Q(\datapath.registers.828[23] [9]),
    .CLK(CLK_bF$buf4),
    .D(_4147_)
);

DFFPOSX1 _19029_ (
    .Q(\datapath.registers.828[31] [5]),
    .CLK(CLK_bF$buf120),
    .D(_4431_)
);

INVX1 _14584_ (
    .A(\datapath.registers.828[14] [6]),
    .Y(_5050_)
);

AOI21X1 _14164_ (
    .A(_4693__bF$buf1),
    .B(_4806__bF$buf0),
    .C(_4817_),
    .Y(_4021_)
);

AOI21X1 _15789_ (
    .A(\datapath.registers.828[14] [0]),
    .B(\datapath.idinstr_17_bF$buf5 ),
    .C(\datapath.idinstr_15_bF$buf5 ),
    .Y(_5717_)
);

NAND2X1 _15369_ (
    .A(\datapath.registers.828[4] [9]),
    .B(_5470__bF$buf2),
    .Y(_5480_)
);

DFFPOSX1 _10084_ (
    .Q(\datapath.csr.csr_wdata [26]),
    .CLK(CLK_bF$buf108),
    .D(\datapath.regcsralu [26])
);

FILL SFILL33560x42050 (
);

MUX2X1 _16730_ (
    .A(\datapath.registers.828[7] [21]),
    .B(\datapath.registers.828[6] [21]),
    .S(\datapath.idinstr_15_bF$buf10 ),
    .Y(_6637_)
);

NAND2X1 _16310_ (
    .A(_5681__bF$buf6),
    .B(_6225_),
    .Y(_6226_)
);

FILL SFILL18360x22050 (
);

NOR3X1 _11289_ (
    .A(_2219_),
    .B(_2237_),
    .C(_2253_),
    .Y(_2254_)
);

NAND2X1 _17935_ (
    .A(_7812_),
    .B(_7814_),
    .Y(_7815_)
);

NAND2X1 _17515_ (
    .A(_7092__bF$buf8),
    .B(_7403_),
    .Y(_7404_)
);

OAI21X1 _12650_ (
    .A(_2797__bF$buf0),
    .B(\datapath.csr.csr_wdata [13]),
    .C(_2783__bF$buf4),
    .Y(_2811_)
);

NOR2X1 _12230_ (
    .A(_2496_),
    .B(_2498_),
    .Y(_2499_)
);

AOI21X1 _9857_ (
    .A(_711_),
    .B(_707_),
    .C(_709_),
    .Y(_712_)
);

NAND3X1 _9437_ (
    .A(_368_),
    .B(_369_),
    .C(_367_),
    .Y(\datapath.muxbval [16])
);

NAND2X1 _9017_ (
    .A(gnd),
    .B(\datapath.idpc_4 [4]),
    .Y(_840_)
);

FILL SFILL23960x54050 (
);

AOI21X1 _13855_ (
    .A(\datapath.csr.csr_pcaddr [30]),
    .B(_3429__bF$buf3),
    .C(_3625_),
    .Y(_3626_)
);

NAND2X1 _13435_ (
    .A(_3033__bF$buf2),
    .B(_3321_),
    .Y(_3322_)
);

NOR2X1 _13015_ (
    .A(\controlunit.imm_sel [1]),
    .B(\controlunit.imm_sel [0]),
    .Y(_2973_)
);

INVX1 _9190_ (
    .A(IMEM_DATA[30]),
    .Y(_178_)
);

NOR2X1 _18893_ (
    .A(\datapath.registers.828[26] [31]),
    .B(_8598__bF$buf0),
    .Y(_8630_)
);

OAI21X1 _18473_ (
    .A(_8329_),
    .B(_8340_),
    .C(\datapath.idinstr_24_bF$buf2 ),
    .Y(_8341_)
);

AND2X2 _18053_ (
    .A(\datapath.registers.828[15] [19]),
    .B(\datapath.idinstr_20_bF$buf5 ),
    .Y(_7930_)
);

FILL SFILL53640x34050 (
);

INVX1 _11921_ (
    .A(_1339_),
    .Y(_1341_)
);

INVX2 _11501_ (
    .A(\datapath.alu.b [12]),
    .Y(_2460_)
);

DFFPOSX1 _19678_ (
    .Q(\datapath.registers.828[27] [14]),
    .CLK(CLK_bF$buf117),
    .D(_4249_)
);

DFFPOSX1 _19258_ (
    .Q(\datapath.registers.828[22] [10]),
    .CLK(CLK_bF$buf136),
    .D(_4085_)
);

AOI21X1 _14393_ (
    .A(_4703__bF$buf3),
    .B(_4924__bF$buf2),
    .C(_4945_),
    .Y(_3898_)
);

BUFX2 _8708_ (
    .A(_1_[12]),
    .Y(DMEM_DATA_S[12])
);

XNOR2X1 _12706_ (
    .A(_2841_),
    .B(_2606_),
    .Y(_2844_)
);

OAI21X1 _15598_ (
    .A(_5098__bF$buf0),
    .B(_4668__bF$buf7),
    .C(\datapath.registers.828[1] [21]),
    .Y(_5601_)
);

NOR2X1 _15178_ (
    .A(\datapath.registers.828[6] [12]),
    .B(_5369__bF$buf4),
    .Y(_5382_)
);

FILL SFILL83800x21050 (
);

FILL SFILL3400x25050 (
);

NAND2X1 _8881_ (
    .A(_71_),
    .B(_76_),
    .Y(_86_)
);

FILL SFILL43640x32050 (
);

OAI21X1 _11098_ (
    .A(_1795_),
    .B(\datapath.alu.b_0_bF$buf4 ),
    .C(_2065_),
    .Y(_2066_)
);

MUX2X1 _17744_ (
    .A(\datapath.registers.828[29] [12]),
    .B(\datapath.registers.828[28] [12]),
    .S(\datapath.idinstr_20_bF$buf32 ),
    .Y(_7628_)
);

MUX2X1 _17324_ (
    .A(\datapath.registers.828[5] [2]),
    .B(\datapath.registers.828[4] [2]),
    .S(\datapath.idinstr_20_bF$buf2 ),
    .Y(_7218_)
);

FILL SFILL43560x39050 (
);

NOR2X1 _9666_ (
    .A(_542_),
    .B(_543_),
    .Y(_544_)
);

NAND2X1 _9246_ (
    .A(\datapath.regloadwb [2]),
    .B(_213__bF$buf0),
    .Y(_226_)
);

FILL SFILL28360x19050 (
);

AOI21X1 _18949_ (
    .A(_4725__bF$buf0),
    .B(_8631__bF$buf5),
    .C(_8658_),
    .Y(_4198_)
);

OAI21X1 _18529_ (
    .A(_8394_),
    .B(\datapath.idinstr_22_bF$buf29 ),
    .C(_8395_),
    .Y(_8396_)
);

NAND2X1 _18109_ (
    .A(_7982_),
    .B(_7984_),
    .Y(_7985_)
);

NAND2X1 _13664_ (
    .A(_3424__bF$buf4),
    .B(\datapath.nextpc [10]),
    .Y(_3475_)
);

NAND2X1 _13244_ (
    .A(_3033__bF$buf6),
    .B(_3183_),
    .Y(_3184_)
);

FILL SFILL33640x30050 (
);

FILL SFILL73720x26050 (
);

NAND2X1 _14869_ (
    .A(\datapath.rd [0]),
    .B(_5212__bF$buf2),
    .Y(_5213_)
);

NAND2X1 _14449_ (
    .A(\datapath.registers.828[16] [8]),
    .B(_4968__bF$buf7),
    .Y(_4977_)
);

NOR2X1 _14029_ (
    .A(\datapath.registers.828[22] [9]),
    .B(_4738__bF$buf5),
    .Y(_4748_)
);

MUX2X1 _15810_ (
    .A(_5736_),
    .B(_5735_),
    .S(\datapath.idinstr_16_bF$buf14 ),
    .Y(_5737_)
);

NAND2X1 _18282_ (
    .A(_7092__bF$buf7),
    .B(_8153_),
    .Y(_8154_)
);

FILL SFILL18360x17050 (
);

INVX2 _10789_ (
    .A(\datapath.alu.b [24]),
    .Y(_1760_)
);

DFFPOSX1 _10369_ (
    .Q(\datapath.alu.b [18]),
    .CLK(CLK_bF$buf139),
    .D(\datapath.muxbval [18])
);

FILL SFILL84280x53050 (
);

AOI21X1 _11730_ (
    .A(\datapath.alu.b [17]),
    .B(_1135_),
    .C(_1136_),
    .Y(_1137_)
);

AOI22X1 _11310_ (
    .A(_2271_),
    .B(_1920_),
    .C(_1919_),
    .D(_2273_),
    .Y(_2274_)
);

DFFPOSX1 _19487_ (
    .Q(\datapath.registers.828[5] [15]),
    .CLK(CLK_bF$buf42),
    .D(_4506_)
);

DFFPOSX1 _19067_ (
    .Q(\datapath.registers.828[10] [11]),
    .CLK(CLK_bF$buf101),
    .D(_3670_)
);

OAI21X1 _8937_ (
    .A(_785_),
    .B(gnd),
    .C(_786_),
    .Y(\datapath._03_ [9])
);

FILL SFILL63720x24050 (
);

FILL SFILL53800x60050 (
);

DFFPOSX1 _12935_ (
    .Q(\datapath.csr.mepc [29]),
    .CLK(CLK_bF$buf87),
    .D(\datapath.csr._26_ [29])
);

INVX1 _12515_ (
    .A(\datapath.csr.mepc [12]),
    .Y(_2707_)
);

BUFX2 _8690_ (
    .A(_0_[26]),
    .Y(DMEM_ADDR[26])
);

FILL FILL83160x50 (
);

BUFX2 BUFX2_insert320 (
    .A(\datapath.alu.b [4]),
    .Y(\datapath.alu.b_4_bF$buf0 )
);

BUFX2 BUFX2_insert321 (
    .A(_2041_),
    .Y(_2041__bF$buf3)
);

BUFX2 BUFX2_insert322 (
    .A(_2041_),
    .Y(_2041__bF$buf2)
);

BUFX2 BUFX2_insert323 (
    .A(_2041_),
    .Y(_2041__bF$buf1)
);

NAND2X1 _17973_ (
    .A(_7089__bF$buf7),
    .B(_7851_),
    .Y(_7852_)
);

BUFX2 BUFX2_insert324 (
    .A(_2041_),
    .Y(_2041__bF$buf0)
);

BUFX2 BUFX2_insert325 (
    .A(_4701_),
    .Y(_4701__bF$buf3)
);

OAI21X1 _17553_ (
    .A(_7440_),
    .B(\datapath.idinstr_22_bF$buf36 ),
    .C(_7441_),
    .Y(_7442_)
);

INVX1 _17133_ (
    .A(\datapath.registers.828[24] [30]),
    .Y(_7031_)
);

BUFX2 BUFX2_insert326 (
    .A(_4701_),
    .Y(_4701__bF$buf2)
);

BUFX2 BUFX2_insert327 (
    .A(_4701_),
    .Y(_4701__bF$buf1)
);

BUFX2 BUFX2_insert328 (
    .A(_4701_),
    .Y(_4701__bF$buf0)
);

FILL SFILL53720x22050 (
);

BUFX2 BUFX2_insert329 (
    .A(_317_),
    .Y(_317__bF$buf4)
);

AOI21X1 _9895_ (
    .A(_746_),
    .B(_744_),
    .C(_624_),
    .Y(_747_)
);

NAND2X1 _9475_ (
    .A(\datapath.imm [26]),
    .B(_316__bF$buf2),
    .Y(_398_)
);

INVX1 _9055_ (
    .A(\datapath.nextpc [17]),
    .Y(_865_)
);

NAND2X1 _18758_ (
    .A(\datapath.registers.828[28] [29]),
    .B(_8531__bF$buf7),
    .Y(_8561_)
);

NAND2X1 _18338_ (
    .A(_7089__bF$buf8),
    .B(_8208_),
    .Y(_8209_)
);

DFFPOSX1 _13893_ (
    .Q(\datapath.programcounter.pc [25]),
    .CLK(CLK_bF$buf66),
    .D(\datapath.programcounter._1_ [25])
);

AOI22X1 _13473_ (
    .A(DMEM_DATA_L[0]),
    .B(_3217_),
    .C(_3229_),
    .D(DMEM_DATA_L[8]),
    .Y(_3343_)
);

OAI21X1 _13053_ (
    .A(_3000_),
    .B(_2996_),
    .C(_2995_),
    .Y(\datapath.imm [24])
);

NOR2X1 _14678_ (
    .A(\datapath.registers.828[13] [9]),
    .B(_5099__bF$buf4),
    .Y(_5109_)
);

AOI21X1 _14258_ (
    .A(_4713__bF$buf2),
    .B(_4842__bF$buf3),
    .C(_4869_),
    .Y(_3968_)
);

FILL SFILL43720x20050 (
);

MUX2X1 _18091_ (
    .A(_7967_),
    .B(_7966_),
    .S(\datapath.idinstr_21_bF$buf44 ),
    .Y(_7968_)
);

DFFPOSX1 _10598_ (
    .Q(\datapath.idpc [20]),
    .CLK(CLK_bF$buf26),
    .D(\datapath._03_ [20])
);

DFFPOSX1 _10178_ (
    .Q(\datapath.meminstr [17]),
    .CLK(CLK_bF$buf118),
    .D(\datapath.aluinstr [17])
);

MUX2X1 _16824_ (
    .A(\datapath.registers.828[21] [23]),
    .B(\datapath.registers.828[20] [23]),
    .S(\datapath.idinstr_15_bF$buf45 ),
    .Y(_6729_)
);

AOI21X1 _16404_ (
    .A(_6312_),
    .B(_6317_),
    .C(\datapath.idinstr_18_bF$buf5 ),
    .Y(_6318_)
);

DFFPOSX1 _19296_ (
    .Q(\datapath.registers.828[2] [16]),
    .CLK(CLK_bF$buf85),
    .D(_4347_)
);

BUFX2 _8746_ (
    .A(\datapath.programcounter.pc [17]),
    .Y(IMEM_ADDR[17])
);

MUX2X1 _17609_ (
    .A(\datapath.registers.828[15] [9]),
    .B(\datapath.registers.828[14] [9]),
    .S(\datapath.idinstr_20_bF$buf41 ),
    .Y(_7496_)
);

OAI21X1 _12744_ (
    .A(_2873_),
    .B(\controlunit.mret_bF$buf4 ),
    .C(_2874_),
    .Y(\datapath.csr.csr_pcaddr [10])
);

INVX1 _12324_ (
    .A(\datapath.csr.mcause [25]),
    .Y(_2568_)
);

FILL SFILL73800x14050 (
);

INVX8 _13949_ (
    .A(\datapath.rd [12]),
    .Y(_4697_)
);

AOI21X1 _13529_ (
    .A(gnd),
    .B(_3378_),
    .C(_3379_),
    .Y(\datapath.programcounter._1_ [10])
);

NAND2X1 _13109_ (
    .A(\datapath.memoryinterface.data_store [6]),
    .B(_3031__bF$buf5),
    .Y(_3069_)
);

AOI21X1 _17782_ (
    .A(_7644_),
    .B(_7665_),
    .C(_7095__bF$buf3),
    .Y(\datapath.registers.regb_data [12])
);

INVX1 _17362_ (
    .A(\datapath.registers.828[24] [3]),
    .Y(_7255_)
);

AOI22X1 _9284_ (
    .A(_219__bF$buf3),
    .B(\datapath.wbpc_4 [12]),
    .C(\datapath.regcsrwb [12]),
    .D(_216__bF$buf2),
    .Y(_254_)
);

FILL SFILL63800x12050 (
);

FILL SFILL73640x8050 (
);

INVX2 _10810_ (
    .A(\datapath.alu.a [27]),
    .Y(_1781_)
);

BUFX2 _18987_ (
    .A(\datapath.registers.828[0] [27]),
    .Y(_3655_)
);

AOI21X1 _18567_ (
    .A(\datapath.registers.828[22] [30]),
    .B(\datapath.idinstr_22_bF$buf3 ),
    .C(\datapath.idinstr_20_bF$buf1 ),
    .Y(_8433_)
);

MUX2X1 _18147_ (
    .A(\datapath.registers.828[31] [21]),
    .B(\datapath.registers.828[30] [21]),
    .S(\datapath.idinstr_20_bF$buf22 ),
    .Y(_8022_)
);

NAND3X1 _13282_ (
    .A(_3216_),
    .B(_3215_),
    .C(_3214_),
    .Y(_1_[31])
);

NAND2X1 _14487_ (
    .A(\datapath.registers.828[16] [27]),
    .B(_4968__bF$buf1),
    .Y(_4996_)
);

NOR2X1 _14067_ (
    .A(\datapath.registers.828[22] [28]),
    .B(_4738__bF$buf6),
    .Y(_4767_)
);

FILL SFILL69000x26050 (
);

FILL SFILL74280x46050 (
);

FILL SFILL13640x21050 (
);

AOI21X1 _16633_ (
    .A(\datapath.registers.828[12] [19]),
    .B(\datapath.idinstr_17_bF$buf2 ),
    .C(\datapath.idinstr_15_bF$buf38 ),
    .Y(_6542_)
);

MUX2X1 _16213_ (
    .A(_6130_),
    .B(_6129_),
    .S(\datapath.idinstr_16_bF$buf14 ),
    .Y(_6131_)
);

FILL SFILL13560x28050 (
);

NAND2X1 _8975_ (
    .A(gnd),
    .B(\datapath.idpc [22]),
    .Y(_812_)
);

AOI21X1 _17838_ (
    .A(\datapath.registers.828[12] [14]),
    .B(\datapath.idinstr_22_bF$buf37 ),
    .C(\datapath.idinstr_20_bF$buf4 ),
    .Y(_7720_)
);

AOI21X1 _17418_ (
    .A(_7305_),
    .B(_7309_),
    .C(\datapath.idinstr_23_bF$buf4 ),
    .Y(_7310_)
);

FILL SFILL69000x6050 (
);

NAND3X1 _12973_ (
    .A(\controlunit.imm_sel [1]),
    .B(\controlunit.imm_sel [0]),
    .C(_3002_),
    .Y(_3003_)
);

INVX1 _12553_ (
    .A(\datapath.csr.mepc [20]),
    .Y(_2737_)
);

INVX1 _12133_ (
    .A(_1566_),
    .Y(_1567_)
);

FILL SFILL78920x21050 (
);

NAND3X1 _13758_ (
    .A(_3547_),
    .B(_3548_),
    .C(_3546_),
    .Y(\datapath.programcounter.pc_mux [20])
);

NAND2X1 _13338_ (
    .A(\datapath.memoryinterface.data_store [4]),
    .B(_3239__bF$buf2),
    .Y(_3244_)
);

FILL SFILL43720x15050 (
);

INVX1 _17591_ (
    .A(\datapath.registers.828[0] [8]),
    .Y(_7479_)
);

MUX2X1 _17171_ (
    .A(\datapath.registers.828[11] [31]),
    .B(\datapath.registers.828[10] [31]),
    .S(\datapath.idinstr_15_bF$buf39 ),
    .Y(_7068_)
);

OAI21X1 _9093_ (
    .A(_889_),
    .B(gnd),
    .C(_890_),
    .Y(\datapath._04_ [29])
);

NAND2X1 _15904_ (
    .A(_5826_),
    .B(_5828_),
    .Y(_5829_)
);

NOR2X1 _18796_ (
    .A(\datapath.registers.828[27] [15]),
    .B(_8565__bF$buf5),
    .Y(_8581_)
);

NAND2X1 _18376_ (
    .A(_7089__bF$buf0),
    .B(_8245_),
    .Y(_8246_)
);

OAI21X1 _13091_ (
    .A(_3052_),
    .B(_0__1_bF$buf2),
    .C(_3053_),
    .Y(_3054_)
);

FILL SFILL33720x13050 (
);

NAND2X1 _11824_ (
    .A(_1236_),
    .B(_1083_),
    .Y(_1237_)
);

AOI21X1 _11404_ (
    .A(_1091__bF$buf3),
    .B(_2365_),
    .C(_2331_),
    .Y(_2366_)
);

FILL SFILL54200x40050 (
);

AOI21X1 _14296_ (
    .A(_4681__bF$buf3),
    .B(_4886__bF$buf2),
    .C(_4891_),
    .Y(_3950_)
);

FILL SFILL13640x6050 (
);

INVX8 _12609_ (
    .A(\controlunit.csrfile_trap_wen_bF$buf3 ),
    .Y(_2783_)
);

FILL SFILL58440x55050 (
);

NAND2X1 _16862_ (
    .A(_5684__bF$buf4),
    .B(_6765_),
    .Y(_6766_)
);

MUX2X1 _16442_ (
    .A(\datapath.registers.828[22] [15]),
    .B(\datapath.registers.828[20] [15]),
    .S(\datapath.idinstr_16_bF$buf16 ),
    .Y(_6355_)
);

MUX2X1 _16022_ (
    .A(_5944_),
    .B(_5943_),
    .S(\datapath.idinstr_16_bF$buf18 ),
    .Y(_5945_)
);

AND2X2 _8784_ (
    .A(_118_),
    .B(_117_),
    .Y(_119_)
);

OAI21X1 _17647_ (
    .A(_7521_),
    .B(_7533_),
    .C(\datapath.idinstr_24_bF$buf2 ),
    .Y(_7534_)
);

NAND2X1 _17227_ (
    .A(\datapath.registers.828[12] [0]),
    .B(_7089__bF$buf6),
    .Y(_7123_)
);

OAI22X1 _12782_ (
    .A(_2713_),
    .B(_2585__bF$buf1),
    .C(_2906_),
    .D(_2904_),
    .Y(\datapath.csr.csr_pcaddr [16])
);

NAND2X1 _12362_ (
    .A(\datapath.meminstr [22]),
    .B(_2598_),
    .Y(_2599_)
);

DFFPOSX1 _9989_ (
    .Q(\datapath.regcwb [11]),
    .CLK(CLK_bF$buf104),
    .D(_0_[11])
);

NAND3X1 _9569_ (
    .A(_468_),
    .B(_469_),
    .C(_467_),
    .Y(\datapath.muxaval [16])
);

NAND2X1 _9149_ (
    .A(gnd),
    .B(\datapath.idinstr_16_bF$buf32 ),
    .Y(_151_)
);

AOI21X1 _13987_ (
    .A(_4721__bF$buf3),
    .B(_4673__bF$buf2),
    .C(_4722_),
    .Y(_4132_)
);

NAND2X1 _13567_ (
    .A(gnd),
    .B(\datapath.programcounter.pc [23]),
    .Y(_3405_)
);

INVX1 _13147_ (
    .A(\datapath.memoryinterface.byte_size_store.storebyte [12]),
    .Y(_3101_)
);

FILL SFILL13240x47050 (
);

AOI21X1 _15713_ (
    .A(_4697__bF$buf1),
    .B(_5647__bF$buf7),
    .C(_5660_),
    .Y(_4375_)
);

MUX2X1 _18185_ (
    .A(\datapath.registers.828[9] [22]),
    .B(\datapath.registers.828[8] [22]),
    .S(\datapath.idinstr_20_bF$buf36 ),
    .Y(_8059_)
);

FILL SFILL23080x1050 (
);

AOI21X1 _16918_ (
    .A(\datapath.registers.828[6] [25]),
    .B(\datapath.idinstr_17_bF$buf10 ),
    .C(\datapath.idinstr_15_bF$buf47 ),
    .Y(_6821_)
);

OAI21X1 _11633_ (
    .A(_992_),
    .B(_990_),
    .C(_1007_),
    .Y(_1032_)
);

MUX2X1 _11213_ (
    .A(_2178_),
    .B(_2173_),
    .S(\datapath.alu.b_3_bF$buf7 ),
    .Y(_2179_)
);

FILL SFILL38840x20050 (
);

FILL SFILL3080x50050 (
);

NAND3X1 _12838_ (
    .A(_2654_),
    .B(_2585__bF$buf2),
    .C(_2950_),
    .Y(_2952_)
);

INVX1 _12418_ (
    .A(\datapath.csr.csr_wdata [18]),
    .Y(_2637_)
);

FILL SFILL68920x59050 (
);

NAND2X1 _16671_ (
    .A(_6576_),
    .B(_6578_),
    .Y(_6579_)
);

MUX2X1 _16251_ (
    .A(\datapath.registers.828[25] [11]),
    .B(\datapath.registers.828[24] [11]),
    .S(\datapath.idinstr_15_bF$buf25 ),
    .Y(_6168_)
);

MUX2X1 _17876_ (
    .A(_7756_),
    .B(_7755_),
    .S(\datapath.idinstr_21_bF$buf3 ),
    .Y(_7757_)
);

AOI21X1 _17456_ (
    .A(_7339_),
    .B(_7346_),
    .C(_7093__bF$buf2),
    .Y(_7347_)
);

NAND2X1 _17036_ (
    .A(\datapath.registers.828[8] [28]),
    .B(_5684__bF$buf6),
    .Y(_6936_)
);

NAND2X1 _12591_ (
    .A(\controlunit.csrfile_trap_wen_bF$buf7 ),
    .B(\datapath.csr.csr_mepc [29]),
    .Y(_2768_)
);

INVX1 _12171_ (
    .A(_1931_),
    .Y(_1608_)
);

AOI21X1 _9798_ (
    .A(_659_),
    .B(_628_),
    .C(_657_),
    .Y(_660_)
);

NAND2X1 _9378_ (
    .A(\datapath.registers.regb_data [2]),
    .B(_318__bF$buf1),
    .Y(_325_)
);

INVX2 _10904_ (
    .A(\datapath.alu.a [0]),
    .Y(_1875_)
);

FILL SFILL58920x57050 (
);

NOR2X1 _13796_ (
    .A(_3450_),
    .B(_3506_),
    .Y(_3578_)
);

INVX1 _13376_ (
    .A(\datapath.memoryinterface.byte_size_load.byteval [5]),
    .Y(_3273_)
);

DFFPOSX1 _19602_ (
    .Q(\datapath.registers.828[9] [2]),
    .CLK(CLK_bF$buf90),
    .D(_4650_)
);

FILL SFILL58920x12050 (
);

NAND2X1 _15942_ (
    .A(\datapath.registers.828[12] [4]),
    .B(_5681__bF$buf3),
    .Y(_5866_)
);

OAI21X1 _15522_ (
    .A(_5546__bF$buf3),
    .B(_4703__bF$buf0),
    .C(_5562_),
    .Y(_4346_)
);

OAI21X1 _15102_ (
    .A(_5335__bF$buf1),
    .B(_4685__bF$buf3),
    .C(_5343_),
    .Y(_4592_)
);

OAI21X1 _16727_ (
    .A(_6629_),
    .B(_6630_),
    .C(_6633_),
    .Y(_6634_)
);

AOI21X1 _16307_ (
    .A(\datapath.idinstr_15_bF$buf31 ),
    .B(_6222_),
    .C(\datapath.idinstr_17_bF$buf4 ),
    .Y(_6223_)
);

AOI21X1 _11862_ (
    .A(_1693_),
    .B(_1277_),
    .C(_1907_),
    .Y(_1278_)
);

AOI21X1 _11442_ (
    .A(_1091__bF$buf3),
    .B(_2402_),
    .C(_2331_),
    .Y(_2403_)
);

INVX2 _11022_ (
    .A(_1991_),
    .Y(_1992_)
);

DFFPOSX1 _19199_ (
    .Q(\datapath.registers.828[19] [15]),
    .CLK(CLK_bF$buf63),
    .D(_3962_)
);

FILL SFILL48920x10050 (
);

FILL SFILL13320x35050 (
);

INVX1 _12647_ (
    .A(\datapath.csr.mcause [12]),
    .Y(_2809_)
);

NAND2X1 _12227_ (
    .A(\datapath.idinstr_20_bF$buf48 ),
    .B(_2487_),
    .Y(_2496_)
);

FILL SFILL48840x17050 (
);

AOI21X1 _16480_ (
    .A(_6387_),
    .B(_6391_),
    .C(_5685__bF$buf3),
    .Y(_6392_)
);

AOI21X1 _16060_ (
    .A(_5975_),
    .B(_5981_),
    .C(\datapath.idinstr_18_bF$buf0 ),
    .Y(_5982_)
);

FILL SFILL38920x53050 (
);

NAND3X1 _17685_ (
    .A(_7091__bF$buf2),
    .B(_7570_),
    .C(_7567_),
    .Y(_7571_)
);

OAI21X1 _17265_ (
    .A(_5259_),
    .B(\datapath.idinstr_22_bF$buf7 ),
    .C(_7159_),
    .Y(_7160_)
);

INVX1 _9187_ (
    .A(IMEM_DATA[29]),
    .Y(_176_)
);

NAND2X1 _10713_ (
    .A(_1680_),
    .B(_1683_),
    .Y(_1684_)
);

INVX1 _13185_ (
    .A(DMEM_DATA_L[18]),
    .Y(_3133_)
);

DFFPOSX1 _19831_ (
    .Q(\datapath.registers.828[3] [7]),
    .CLK(CLK_bF$buf85),
    .D(_4465_)
);

DFFPOSX1 _19411_ (
    .Q(\datapath.registers.828[24] [3]),
    .CLK(CLK_bF$buf106),
    .D(_4173_)
);

INVX2 _11918_ (
    .A(_1684_),
    .Y(_1338_)
);

AOI21X1 _15751_ (
    .A(_4735__bF$buf4),
    .B(_5647__bF$buf7),
    .C(_5679_),
    .Y(_4396_)
);

OAI21X1 _15331_ (
    .A(_4717__bF$buf4),
    .B(_5437__bF$buf4),
    .C(_5460_),
    .Y(_4162_)
);

FILL SFILL73880x53050 (
);

OAI21X1 _16956_ (
    .A(_6856_),
    .B(\datapath.idinstr_17_bF$buf7 ),
    .C(_6857_),
    .Y(_6858_)
);

OAI21X1 _16536_ (
    .A(_6446_),
    .B(_6437_),
    .C(_5680__bF$buf3),
    .Y(_6447_)
);

AOI21X1 _16116_ (
    .A(_6036_),
    .B(_6013_),
    .C(_5687__bF$buf0),
    .Y(\datapath.registers.rega_data [7])
);

OAI21X1 _11671_ (
    .A(_1675_),
    .B(_1031_),
    .C(_1508_),
    .Y(_1073_)
);

FILL SFILL79160x60050 (
);

OAI21X1 _11251_ (
    .A(_2213_),
    .B(_2086_),
    .C(_2215_),
    .Y(_2216_)
);

NAND3X1 _8878_ (
    .A(_78_),
    .B(_83_),
    .C(_82_),
    .Y(_84_)
);

DFFPOSX1 _12876_ (
    .Q(\datapath.csr.mcause [2]),
    .CLK(CLK_bF$buf44),
    .D(\datapath.csr._32_ [2])
);

INVX1 _12456_ (
    .A(\datapath.csr.mvect [31]),
    .Y(_2662_)
);

FILL SFILL18440x42050 (
);

NAND2X1 _12036_ (
    .A(\datapath.alu.b [26]),
    .B(_1463_),
    .Y(_1464_)
);

FILL SFILL63880x51050 (
);

FILL SFILL79080x22050 (
);

INVX2 _14602_ (
    .A(\datapath.registers.828[14] [13]),
    .Y(_5061_)
);

MUX2X1 _17494_ (
    .A(\datapath.registers.828[27] [6]),
    .B(\datapath.registers.828[25] [6]),
    .S(\datapath.idinstr_21_bF$buf1 ),
    .Y(_7384_)
);

AOI21X1 _17074_ (
    .A(\datapath.idinstr_15_bF$buf22 ),
    .B(_6972_),
    .C(_5684__bF$buf7),
    .Y(_6973_)
);

NAND2X1 _15807_ (
    .A(_5684__bF$buf10),
    .B(_5733_),
    .Y(_5734_)
);

AOI22X1 _10942_ (
    .A(_1903_),
    .B(_1861_),
    .C(_1912_),
    .D(_1906_),
    .Y(_1913_)
);

FILL SFILL48520x36050 (
);

DFFPOSX1 _10522_ (
    .Q(\datapath.idinstr [8]),
    .CLK(CLK_bF$buf134),
    .D(\datapath._05_ [8])
);

DFFPOSX1 _10102_ (
    .Q(\datapath.memoryinterface.data_store [12]),
    .CLK(CLK_bF$buf119),
    .D(\datapath.regrs2alu [12])
);

NAND2X1 _18699_ (
    .A(_5613_),
    .B(_4967_),
    .Y(_8531_)
);

MUX2X1 _18279_ (
    .A(\datapath.registers.828[9] [24]),
    .B(\datapath.registers.828[8] [24]),
    .S(\datapath.idinstr_20_bF$buf48 ),
    .Y(_8151_)
);

DFFPOSX1 _19640_ (
    .Q(\datapath.registers.828[26] [8]),
    .CLK(CLK_bF$buf70),
    .D(_4242_)
);

DFFPOSX1 _19220_ (
    .Q(\datapath.registers.828[20] [4]),
    .CLK(CLK_bF$buf65),
    .D(_4046_)
);

AOI22X1 _11727_ (
    .A(_2041__bF$buf3),
    .B(_1787_),
    .C(_1714_),
    .D(_2154_),
    .Y(_1133_)
);

OAI21X1 _11307_ (
    .A(_1091__bF$buf6),
    .B(_940_),
    .C(_2270_),
    .Y(_2271_)
);

NOR2X1 _14199_ (
    .A(\datapath.registers.828[20] [28]),
    .B(_4806__bF$buf6),
    .Y(_4835_)
);

AOI21X1 _15980_ (
    .A(_5899_),
    .B(_5903_),
    .C(\datapath.idinstr_18_bF$buf5 ),
    .Y(_5904_)
);

OAI21X1 _15560_ (
    .A(_5098__bF$buf1),
    .B(_4668__bF$buf0),
    .C(\datapath.registers.828[1] [2]),
    .Y(_5582_)
);

OAI21X1 _15140_ (
    .A(_5335__bF$buf4),
    .B(_4723__bF$buf1),
    .C(_5362_),
    .Y(_4581_)
);

FILL SFILL38920x48050 (
);

FILL SFILL3640x40050 (
);

FILL SFILL83960x43050 (
);

INVX1 _16765_ (
    .A(\datapath.registers.828[15] [22]),
    .Y(_6671_)
);

OAI21X1 _16345_ (
    .A(_5061_),
    .B(\datapath.idinstr_15_bF$buf37 ),
    .C(\datapath.idinstr_16_bF$buf10 ),
    .Y(_6260_)
);

OAI21X1 _11480_ (
    .A(\datapath.alu.b_1_bF$buf4 ),
    .B(_2439_),
    .C(_2438_),
    .Y(_2440_)
);

OAI21X1 _11060_ (
    .A(_1857_),
    .B(\datapath.alu.b_0_bF$buf7 ),
    .C(_1860_),
    .Y(_2029_)
);

BUFX2 _8687_ (
    .A(_0_[23]),
    .Y(DMEM_ADDR[23])
);

BUFX2 BUFX2_insert290 (
    .A(_8631_),
    .Y(_8631__bF$buf7)
);

BUFX2 BUFX2_insert291 (
    .A(_8631_),
    .Y(_8631__bF$buf6)
);

BUFX2 BUFX2_insert292 (
    .A(_8631_),
    .Y(_8631__bF$buf5)
);

BUFX2 BUFX2_insert293 (
    .A(_8631_),
    .Y(_8631__bF$buf4)
);

BUFX2 BUFX2_insert294 (
    .A(_8631_),
    .Y(_8631__bF$buf3)
);

BUFX2 BUFX2_insert295 (
    .A(_8631_),
    .Y(_8631__bF$buf2)
);

BUFX2 BUFX2_insert296 (
    .A(_8631_),
    .Y(_8631__bF$buf1)
);

BUFX2 BUFX2_insert297 (
    .A(_8631_),
    .Y(_8631__bF$buf0)
);

BUFX2 BUFX2_insert298 (
    .A(_5336_),
    .Y(_5336__bF$buf4)
);

OAI21X1 _12685_ (
    .A(_2797__bF$buf2),
    .B(\datapath.csr.csr_wdata [30]),
    .C(_2783__bF$buf0),
    .Y(_2829_)
);

BUFX2 BUFX2_insert299 (
    .A(_5336_),
    .Y(_5336__bF$buf3)
);

AOI22X1 _12265_ (
    .A(\datapath.csr.mepc [6]),
    .B(_2507__bF$buf4),
    .C(_2491_),
    .D(\datapath.csr.mcause [8]),
    .Y(_2526_)
);

FILL SFILL28920x46050 (
);

AOI21X1 _18911_ (
    .A(_4687__bF$buf3),
    .B(_8631__bF$buf7),
    .C(_8639_),
    .Y(_4209_)
);

FILL SFILL28520x32050 (
);

FILL SFILL73960x41050 (
);

NOR2X1 _14831_ (
    .A(\datapath.registers.828[11] [16]),
    .B(_5167__bF$buf1),
    .Y(_5191_)
);

OAI21X1 _14411_ (
    .A(_4954_),
    .B(_4924__bF$buf4),
    .C(_4955_),
    .Y(_3907_)
);

OAI21X1 _15616_ (
    .A(_5098__bF$buf1),
    .B(_4668__bF$buf3),
    .C(\datapath.registers.828[1] [30]),
    .Y(_5610_)
);

INVX4 _10751_ (
    .A(_1721_),
    .Y(_1722_)
);

DFFPOSX1 _10331_ (
    .Q(\datapath.regrs2alu [12]),
    .CLK(CLK_bF$buf26),
    .D(\datapath.registers.regb_data [12])
);

NAND2X1 _18088_ (
    .A(_7092__bF$buf9),
    .B(_7964_),
    .Y(_7965_)
);

OAI21X1 _11956_ (
    .A(_1301_),
    .B(_1372_),
    .C(_1377_),
    .Y(_1378_)
);

FILL SFILL18440x37050 (
);

OAI22X1 _11536_ (
    .A(_1671_),
    .B(_1882__bF$buf3),
    .C(_1890__bF$buf3),
    .D(_2460_),
    .Y(_928_)
);

OAI21X1 _11116_ (
    .A(_2078_),
    .B(_2083_),
    .C(\datapath.alu.b_4_bF$buf0 ),
    .Y(_2084_)
);

FILL SFILL63880x46050 (
);

FILL SFILL63480x32050 (
);

FILL SFILL78840x3050 (
);

FILL SFILL79080x5050 (
);

NAND2X1 _16994_ (
    .A(_5684__bF$buf0),
    .B(_6894_),
    .Y(_6895_)
);

AOI21X1 _16574_ (
    .A(_6483_),
    .B(_6476_),
    .C(_5685__bF$buf0),
    .Y(_6484_)
);

MUX2X1 _16154_ (
    .A(\datapath.registers.828[5] [8]),
    .B(\datapath.registers.828[4] [8]),
    .S(\datapath.idinstr_15_bF$buf17 ),
    .Y(_6074_)
);

FILL SFILL53880x44050 (
);

NAND2X1 _17779_ (
    .A(_7092__bF$buf5),
    .B(_7662_),
    .Y(_7663_)
);

INVX1 _17359_ (
    .A(\datapath.registers.828[25] [3]),
    .Y(_7252_)
);

NAND2X1 _12494_ (
    .A(\controlunit.csrfile_trap_wen_bF$buf2 ),
    .B(\datapath.csr.csr_mepc [8]),
    .Y(_2692_)
);

INVX1 _12074_ (
    .A(_1503_),
    .Y(_1504_)
);

NAND2X1 _18720_ (
    .A(\datapath.registers.828[28] [10]),
    .B(_8531__bF$buf3),
    .Y(_8542_)
);

OAI21X1 _18300_ (
    .A(_8159_),
    .B(_8171_),
    .C(_7088__bF$buf0),
    .Y(_8172_)
);

INVX1 _10807_ (
    .A(_1777_),
    .Y(_1778_)
);

NAND2X1 _13699_ (
    .A(\datapath.csr.csr_pcaddr [14]),
    .B(_3429__bF$buf4),
    .Y(_3502_)
);

NAND2X1 _13279_ (
    .A(_3033__bF$buf4),
    .B(_3213_),
    .Y(_3214_)
);

DFFPOSX1 _19925_ (
    .Q(\datapath.registers.828[28] [5]),
    .CLK(CLK_bF$buf131),
    .D(_4303_)
);

FILL SFILL38600x22050 (
);

DFFPOSX1 _19505_ (
    .Q(\datapath.registers.828[11] [1]),
    .CLK(CLK_bF$buf2),
    .D(_3711_)
);

INVX2 _14640_ (
    .A(\datapath.registers.828[14] [26]),
    .Y(_5086_)
);

AOI21X1 _14220_ (
    .A(_4681__bF$buf2),
    .B(_4842__bF$buf4),
    .C(_4847_),
    .Y(_3982_)
);

FILL SFILL59000x56050 (
);

OAI21X1 _15845_ (
    .A(_5771_),
    .B(_5762_),
    .C(_5680__bF$buf2),
    .Y(_5772_)
);

AOI21X1 _15425_ (
    .A(_4681__bF$buf4),
    .B(_5503__bF$buf4),
    .C(_5508_),
    .Y(_4462_)
);

AOI21X1 _15005_ (
    .A(_4723__bF$buf0),
    .B(_5257__bF$buf7),
    .C(_5291_),
    .Y(_4645_)
);

FILL SFILL59080x13050 (
);

NAND2X1 _10980_ (
    .A(\datapath.alu.b_0_bF$buf3 ),
    .B(\datapath.alu.a [8]),
    .Y(_1950_)
);

DFFPOSX1 _10560_ (
    .Q(\datapath.idpc_4 [14]),
    .CLK(CLK_bF$buf84),
    .D(\datapath._04_ [14])
);

DFFPOSX1 _10140_ (
    .Q(_0_[18]),
    .CLK(CLK_bF$buf121),
    .D(\datapath.alu.c [18])
);

NAND2X1 _11765_ (
    .A(\datapath.alu.b_1_bF$buf1 ),
    .B(_1098_),
    .Y(_1174_)
);

XNOR2X1 _11345_ (
    .A(\datapath.alu.a [5]),
    .B(\datapath.alu.b [5]),
    .Y(_2308_)
);

FILL SFILL33880x40050 (
);

NOR2X1 _9913_ (
    .A(_762_),
    .B(_524_),
    .Y(\datapath.jumptarget [0])
);

FILL SFILL73960x36050 (
);

NAND2X1 _13911_ (
    .A(\datapath.wbinstr [9]),
    .B(_4670_),
    .Y(_4671_)
);

OAI21X1 _16383_ (
    .A(_6297_),
    .B(_6288_),
    .C(\datapath.idinstr_19_bF$buf5 ),
    .Y(_6298_)
);

INVX1 _17588_ (
    .A(\datapath.registers.828[1] [8]),
    .Y(_7476_)
);

AOI21X1 _17168_ (
    .A(_7059_),
    .B(_7064_),
    .C(\datapath.idinstr_18_bF$buf7 ),
    .Y(_7065_)
);

FILL SFILL18520x25050 (
);

INVX8 _10616_ (
    .A(\datapath.alu.b_1_bF$buf4 ),
    .Y(_994_)
);

NAND2X1 _13088_ (
    .A(\datapath.memoryinterface.data_store [3]),
    .B(_3031__bF$buf1),
    .Y(_3051_)
);

FILL SFILL18040x18050 (
);

DFFPOSX1 _19734_ (
    .Q(\datapath.registers.828[16] [6]),
    .CLK(CLK_bF$buf131),
    .D(_3888_)
);

DFFPOSX1 _19314_ (
    .Q(\datapath.registers.828[4] [2]),
    .CLK(CLK_bF$buf136),
    .D(_4490_)
);

OAI21X1 _15654_ (
    .A(_5614__bF$buf0),
    .B(_4703__bF$buf4),
    .C(_5630_),
    .Y(_4410_)
);

AOI21X1 _15234_ (
    .A(_4687__bF$buf1),
    .B(_5402__bF$buf0),
    .C(_5410_),
    .Y(_4529_)
);

FILL SFILL84360x23050 (
);

MUX2X1 _16859_ (
    .A(\datapath.registers.828[27] [24]),
    .B(\datapath.registers.828[25] [24]),
    .S(\datapath.idinstr_16_bF$buf39 ),
    .Y(_6763_)
);

MUX2X1 _16439_ (
    .A(\datapath.registers.828[19] [15]),
    .B(\datapath.registers.828[17] [15]),
    .S(\datapath.idinstr_16_bF$buf16 ),
    .Y(_6352_)
);

NAND2X1 _16019_ (
    .A(\datapath.idinstr_17_bF$buf10 ),
    .B(_5941_),
    .Y(_5942_)
);

NOR2X1 _11994_ (
    .A(_1418_),
    .B(_1417_),
    .Y(_1419_)
);

INVX1 _11574_ (
    .A(_966_),
    .Y(_969_)
);

AOI22X1 _11154_ (
    .A(_2113_),
    .B(_2121_),
    .C(_2106_),
    .D(_2103__bF$buf2),
    .Y(_2122_)
);

AOI21X1 _17800_ (
    .A(\datapath.idinstr_20_bF$buf35 ),
    .B(_7682_),
    .C(_7092__bF$buf9),
    .Y(_7683_)
);

FILL SFILL53480x25050 (
);

AND2X2 _9722_ (
    .A(\datapath.alupc [10]),
    .B(\datapath.regimmalu [10]),
    .Y(_593_)
);

AOI22X1 _9302_ (
    .A(\datapath.regcwb [16]),
    .B(_218__bF$buf2),
    .C(_219__bF$buf3),
    .D(\datapath.wbpc_4 [16]),
    .Y(_268_)
);

NOR2X1 _12779_ (
    .A(\datapath.csr.mvect [16]),
    .B(_2903_),
    .Y(_2904_)
);

NAND2X1 _12359_ (
    .A(_2594_),
    .B(_2595_),
    .Y(_2596_)
);

FILL SFILL38600x17050 (
);

NOR2X1 _13720_ (
    .A(_3519_),
    .B(_3518_),
    .Y(\datapath.nextpc [16])
);

OAI21X1 _13300_ (
    .A(_3218_),
    .B(_3076_),
    .C(_3226_),
    .Y(\datapath.memoryinterface.byte_size_store.storebyte [7])
);

AOI21X1 _16192_ (
    .A(\datapath.registers.828[5] [9]),
    .B(\datapath.idinstr_17_bF$buf1 ),
    .C(_5681__bF$buf1),
    .Y(_6111_)
);

FILL SFILL43880x37050 (
);

FILL SFILL3240x16050 (
);

NOR2X1 _14925_ (
    .A(\datapath.registers.828[10] [24]),
    .B(_5212__bF$buf7),
    .Y(_5245_)
);

OAI21X1 _14505_ (
    .A(_5004__bF$buf4),
    .B(_4840__bF$buf4),
    .C(\datapath.registers.828[15] [2]),
    .Y(_5007_)
);

AOI21X1 _17397_ (
    .A(_7283_),
    .B(_7288_),
    .C(\datapath.idinstr_23_bF$buf5 ),
    .Y(_7289_)
);

NAND2X1 _10845_ (
    .A(alusel[0]),
    .B(alusel[1]),
    .Y(_1816_)
);

DFFPOSX1 _10425_ (
    .Q(\datapath.aluinstr [7]),
    .CLK(CLK_bF$buf86),
    .D(\datapath.idinstr [7])
);

DFFPOSX1 _10005_ (
    .Q(\datapath.regcwb [27]),
    .CLK(CLK_bF$buf104),
    .D(_0_[27])
);

DFFPOSX1 _19963_ (
    .Q(\datapath.registers.828[6] [11]),
    .CLK(CLK_bF$buf99),
    .D(_4534_)
);

DFFPOSX1 _19543_ (
    .Q(\datapath.registers.828[12] [7]),
    .CLK(CLK_bF$buf18),
    .D(_3761_)
);

DFFPOSX1 _19123_ (
    .Q(\datapath.registers.828[17] [3]),
    .CLK(CLK_bF$buf132),
    .D(_3917_)
);

FILL SFILL33480x21050 (
);

NAND2X1 _15883_ (
    .A(_5684__bF$buf3),
    .B(_5808_),
    .Y(_5809_)
);

OAI21X1 _15463_ (
    .A(_5529_),
    .B(_5503__bF$buf6),
    .C(_5530_),
    .Y(_4448_)
);

NAND2X1 _15043_ (
    .A(\datapath.registers.828[8] [11]),
    .B(_5300__bF$buf3),
    .Y(_5312_)
);

FILL FILL83160x50050 (
);

FILL SFILL18600x13050 (
);

FILL FILL83080x57050 (
);

NAND2X1 _16668_ (
    .A(_5681__bF$buf4),
    .B(_6575_),
    .Y(_6576_)
);

AOI21X1 _16248_ (
    .A(_6161_),
    .B(_6165_),
    .C(\datapath.idinstr_18_bF$buf4 ),
    .Y(_6166_)
);

NAND3X1 _11383_ (
    .A(_2338_),
    .B(_2342_),
    .C(_2345_),
    .Y(_2346_)
);

FILL SFILL63960x29050 (
);

DFFPOSX1 _9951_ (
    .Q(\datapath.regloadwb [5]),
    .CLK(CLK_bF$buf147),
    .D(\datapath.memdataload [5])
);

NAND2X1 _9531_ (
    .A(\datapath.idpc [7]),
    .B(_416__bF$buf0),
    .Y(_441_)
);

OAI21X1 _9111_ (
    .A(_124_),
    .B(gnd),
    .C(_125_),
    .Y(\datapath._05_ [3])
);

INVX1 _12588_ (
    .A(\datapath.csr.mepc [27]),
    .Y(_2765_)
);

AND2X2 _12168_ (
    .A(_1807_),
    .B(_1908__bF$buf0),
    .Y(_1605_)
);

NOR2X1 _18814_ (
    .A(\datapath.registers.828[27] [24]),
    .B(_8565__bF$buf6),
    .Y(_8590_)
);

BUFX2 BUFX2_insert1230 (
    .A(_4705_),
    .Y(_4705__bF$buf1)
);

BUFX2 BUFX2_insert1231 (
    .A(_4705_),
    .Y(_4705__bF$buf0)
);

BUFX2 BUFX2_insert1232 (
    .A(\datapath.idinstr [21]),
    .Y(\datapath.idinstr_21_hier0_bF$buf5 )
);

BUFX2 BUFX2_insert1233 (
    .A(\datapath.idinstr [21]),
    .Y(\datapath.idinstr_21_hier0_bF$buf4 )
);

BUFX2 BUFX2_insert1234 (
    .A(\datapath.idinstr [21]),
    .Y(\datapath.idinstr_21_hier0_bF$buf3 )
);

BUFX2 BUFX2_insert1235 (
    .A(\datapath.idinstr [21]),
    .Y(\datapath.idinstr_21_hier0_bF$buf2 )
);

BUFX2 BUFX2_insert1236 (
    .A(\datapath.idinstr [21]),
    .Y(\datapath.idinstr_21_hier0_bF$buf1 )
);

BUFX2 BUFX2_insert1237 (
    .A(\datapath.idinstr [21]),
    .Y(\datapath.idinstr_21_hier0_bF$buf0 )
);

BUFX2 BUFX2_insert1238 (
    .A(\datapath.idinstr [15]),
    .Y(\datapath.idinstr_15_hier0_bF$buf6 )
);

BUFX2 BUFX2_insert1239 (
    .A(\datapath.idinstr [15]),
    .Y(\datapath.idinstr_15_hier0_bF$buf5 )
);

OAI21X1 _14734_ (
    .A(_4681__bF$buf2),
    .B(_5132__bF$buf5),
    .C(_5137_),
    .Y(_3758_)
);

AOI21X1 _14314_ (
    .A(_4697__bF$buf3),
    .B(_4886__bF$buf3),
    .C(_4901_),
    .Y(_3927_)
);

FILL SFILL8360x23050 (
);

FILL SFILL13400x60050 (
);

FILL SFILL49000x50 (
);

FILL SFILL53560x13050 (
);

INVX1 _15939_ (
    .A(\datapath.registers.828[15] [4]),
    .Y(_5863_)
);

OAI21X1 _15519_ (
    .A(_5038__bF$buf3),
    .B(_4668__bF$buf2),
    .C(\datapath.registers.828[2] [14]),
    .Y(_5561_)
);

OAI21X1 _10654_ (
    .A(_1155_),
    .B(_1273_),
    .C(_1391_),
    .Y(_1402_)
);

DFFPOSX1 _10234_ (
    .Q(\datapath.csr.csr_mepc [11]),
    .CLK(CLK_bF$buf98),
    .D(\datapath.alupc [11])
);

DFFPOSX1 _19772_ (
    .Q(\datapath.registers.828[30] [12]),
    .CLK(CLK_bF$buf133),
    .D(_4375_)
);

DFFPOSX1 _19352_ (
    .Q(\datapath.registers.828[7] [8]),
    .CLK(CLK_bF$buf40),
    .D(_4594_)
);

AND2X2 _8802_ (
    .A(\datapath.aluinstr [1]),
    .B(\datapath.aluinstr [0]),
    .Y(_14_)
);

NAND2X1 _11859_ (
    .A(_1266_),
    .B(_1274_),
    .Y(_1275_)
);

OR2X2 _11439_ (
    .A(_2398_),
    .B(_1626_),
    .Y(_2400_)
);

NAND3X1 _11019_ (
    .A(_1983_),
    .B(_1988_),
    .C(_1979_),
    .Y(_1989_)
);

FILL SFILL19000x43050 (
);

OAI21X1 _12800_ (
    .A(_2919_),
    .B(_2640_),
    .C(_2585__bF$buf4),
    .Y(_2921_)
);

NOR2X1 _15692_ (
    .A(\datapath.registers.828[30] [2]),
    .B(_5647__bF$buf4),
    .Y(_5650_)
);

AOI21X1 _15272_ (
    .A(_4725__bF$buf2),
    .B(_5402__bF$buf4),
    .C(_5429_),
    .Y(_4518_)
);

FILL SFILL68760x60050 (
);

FILL SFILL43480x18050 (
);

AOI21X1 _16897_ (
    .A(_6794_),
    .B(_6799_),
    .C(\datapath.idinstr_18_bF$buf3 ),
    .Y(_6800_)
);

MUX2X1 _16477_ (
    .A(\datapath.registers.828[31] [16]),
    .B(\datapath.registers.828[30] [16]),
    .S(\datapath.idinstr_15_bF$buf8 ),
    .Y(_6389_)
);

AOI21X1 _16057_ (
    .A(\datapath.registers.828[20] [6]),
    .B(\datapath.idinstr_17_bF$buf14 ),
    .C(\datapath.idinstr_15_bF$buf7 ),
    .Y(_5979_)
);

NAND2X1 _11192_ (
    .A(_2158_),
    .B(_2041__bF$buf2),
    .Y(_2159_)
);

OAI21X1 _9760_ (
    .A(_612_),
    .B(_622_),
    .C(_625_),
    .Y(_626_)
);

AOI22X1 _9340_ (
    .A(_219__bF$buf3),
    .B(\datapath.wbpc_4 [26]),
    .C(\datapath.regcsrwb [26]),
    .D(_216__bF$buf2),
    .Y(_296_)
);

INVX1 _12397_ (
    .A(\datapath.csr.csr_wdata [11]),
    .Y(_2623_)
);

OAI21X1 _18623_ (
    .A(_8486_),
    .B(\datapath.idinstr_22_bF$buf28 ),
    .C(_8487_),
    .Y(_8488_)
);

NAND2X1 _18203_ (
    .A(_7092__bF$buf10),
    .B(_8076_),
    .Y(_8077_)
);

FILL SFILL33400x59050 (
);

FILL SFILL33480x16050 (
);

DFFPOSX1 _19828_ (
    .Q(\datapath.registers.828[3] [4]),
    .CLK(CLK_bF$buf5),
    .D(_4462_)
);

DFFPOSX1 _19408_ (
    .Q(\datapath.registers.828[24] [0]),
    .CLK(CLK_bF$buf82),
    .D(_4148_)
);

NOR2X1 _14963_ (
    .A(\datapath.registers.828[9] [7]),
    .B(_5257__bF$buf3),
    .Y(_5268_)
);

OAI21X1 _14543_ (
    .A(_5004__bF$buf2),
    .B(_4840__bF$buf8),
    .C(\datapath.registers.828[15] [21]),
    .Y(_5026_)
);

NOR2X1 _14123_ (
    .A(\datapath.registers.828[21] [23]),
    .B(_4772__bF$buf4),
    .Y(_4796_)
);

FILL FILL83160x45050 (
);

FILL SFILL33400x14050 (
);

NOR2X1 _15748_ (
    .A(\datapath.registers.828[30] [30]),
    .B(_5647__bF$buf6),
    .Y(_5678_)
);

NAND2X1 _15328_ (
    .A(\datapath.registers.828[24] [21]),
    .B(_5437__bF$buf0),
    .Y(_5459_)
);

NAND2X1 _10883_ (
    .A(\datapath.alu.b_1_bF$buf5 ),
    .B(_1853_),
    .Y(_1854_)
);

DFFPOSX1 _10463_ (
    .Q(\datapath.alupc_4 [13]),
    .CLK(CLK_bF$buf102),
    .D(\datapath.idpc_4 [13])
);

DFFPOSX1 _10043_ (
    .Q(\datapath.wbpc_4 [17]),
    .CLK(CLK_bF$buf51),
    .D(\datapath.mempc_4 [17])
);

FILL SFILL54280x19050 (
);

DFFPOSX1 _19581_ (
    .Q(\datapath.registers.828[21] [13]),
    .CLK(CLK_bF$buf142),
    .D(_4056_)
);

FILL SFILL84120x30050 (
);

DFFPOSX1 _19161_ (
    .Q(\datapath.registers.828[15] [9]),
    .CLK(CLK_bF$buf75),
    .D(_3859_)
);

AOI21X1 _11668_ (
    .A(_1039_),
    .B(_1041_),
    .C(_1069_),
    .Y(_1071_)
);

NAND2X1 _11248_ (
    .A(_2104_),
    .B(_2035_),
    .Y(_2213_)
);

FILL SFILL13480x57050 (
);

NAND2X1 _15081_ (
    .A(\datapath.registers.828[8] [30]),
    .B(_5300__bF$buf4),
    .Y(_5331_)
);

XOR2X1 _9816_ (
    .A(_672_),
    .B(_675_),
    .Y(\datapath.jumptarget [22])
);

FILL SFILL8440x11050 (
);

FILL SFILL13080x43050 (
);

NAND2X1 _13814_ (
    .A(\datapath.jumptarget [26]),
    .B(_3427__bF$buf3),
    .Y(_3593_)
);

FILL SFILL13400x55050 (
);

FILL SFILL78840x50050 (
);

MUX2X1 _16286_ (
    .A(_6202_),
    .B(_6201_),
    .S(\datapath.idinstr_16_bF$buf25 ),
    .Y(_6203_)
);

FILL SFILL74040x35050 (
);

FILL SFILL13400x10050 (
);

AOI21X1 _18852_ (
    .A(_4693__bF$buf4),
    .B(_8598__bF$buf3),
    .C(_8609_),
    .Y(_4213_)
);

NAND2X1 _18432_ (
    .A(\datapath.registers.828[8] [27]),
    .B(_7092__bF$buf2),
    .Y(_8301_)
);

MUX2X1 _18012_ (
    .A(_7889_),
    .B(_7888_),
    .S(\datapath.idinstr_21_bF$buf7 ),
    .Y(_7890_)
);

NAND2X1 _10939_ (
    .A(_1809_),
    .B(_1838_),
    .Y(_1910_)
);

DFFPOSX1 _10519_ (
    .Q(\datapath.idinstr [5]),
    .CLK(CLK_bF$buf8),
    .D(\datapath._05_ [5])
);

DFFPOSX1 _19637_ (
    .Q(\datapath.registers.828[26] [5]),
    .CLK(CLK_bF$buf120),
    .D(_4239_)
);

DFFPOSX1 _19217_ (
    .Q(\datapath.registers.828[20] [1]),
    .CLK(CLK_bF$buf31),
    .D(_4031_)
);

OAI21X1 _14772_ (
    .A(_4719__bF$buf1),
    .B(_5132__bF$buf3),
    .C(_5156_),
    .Y(_3747_)
);

AOI21X1 _14352_ (
    .A(_4733__bF$buf3),
    .B(_4886__bF$buf5),
    .C(_4921_),
    .Y(_3947_)
);

MUX2X1 _15977_ (
    .A(\datapath.registers.828[23] [4]),
    .B(\datapath.registers.828[22] [4]),
    .S(\datapath.idinstr_15_bF$buf54 ),
    .Y(_5901_)
);

OAI21X1 _15557_ (
    .A(_5579__bF$buf2),
    .B(_4660__bF$buf1),
    .C(_5580_),
    .Y(_3988_)
);

OAI21X1 _15137_ (
    .A(_5336__bF$buf1),
    .B(_4840__bF$buf2),
    .C(\datapath.registers.828[7] [24]),
    .Y(_5361_)
);

NOR2X1 _10692_ (
    .A(\datapath.alu.a [11]),
    .B(_1662_),
    .Y(_1663_)
);

DFFPOSX1 _10272_ (
    .Q(\datapath.regimmalu [17]),
    .CLK(CLK_bF$buf110),
    .D(\datapath.imm [17])
);

FILL SFILL68760x10050 (
);

DFFPOSX1 _19390_ (
    .Q(\datapath.registers.828[8] [14]),
    .CLK(CLK_bF$buf2),
    .D(_4601_)
);

AOI22X1 _8840_ (
    .A(_23_),
    .B(_48_),
    .C(_47_),
    .D(\datapath.aluinstr [30]),
    .Y(_49_)
);

AOI22X1 _11897_ (
    .A(_2041__bF$buf1),
    .B(_1314_),
    .C(_1687_),
    .D(_2154_),
    .Y(_1315_)
);

NAND2X1 _11477_ (
    .A(\datapath.alu.b_2_bF$buf1 ),
    .B(_2286_),
    .Y(_2437_)
);

AOI21X1 _11057_ (
    .A(_2022_),
    .B(_2023_),
    .C(_2025_),
    .Y(_2026_)
);

FILL SFILL68680x17050 (
);

AOI21X1 _17703_ (
    .A(_7587_),
    .B(_7586_),
    .C(_7092__bF$buf2),
    .Y(_7588_)
);

FILL SFILL58760x53050 (
);

NAND3X1 _9625_ (
    .A(_510_),
    .B(_511_),
    .C(_509_),
    .Y(\datapath.muxaval [30])
);

OAI21X1 _9205_ (
    .A(\datapath.regjmpalign [1]),
    .B(\datapath.regjmpalign [0]),
    .C(_190_),
    .Y(_191_)
);

NOR2X1 _18908_ (
    .A(\datapath.registers.828[25] [6]),
    .B(_8631__bF$buf3),
    .Y(_8638_)
);

AOI22X1 _13623_ (
    .A(_3423__bF$buf1),
    .B(\datapath.alu.c [4]),
    .C(\datapath.csr.csr_pcaddr [4]),
    .D(_3429__bF$buf1),
    .Y(_3446_)
);

NAND3X1 _13203_ (
    .A(\datapath.memoryinterface.byte_size_store.storebyte [20]),
    .B(_3027__bF$buf0),
    .C(_3029__bF$buf2),
    .Y(_3149_)
);

NAND2X1 _16095_ (
    .A(\datapath.registers.828[18] [7]),
    .B(_5684__bF$buf10),
    .Y(_6016_)
);

INVX1 _14828_ (
    .A(\datapath.registers.828[11] [15]),
    .Y(_5189_)
);

AOI21X1 _14408_ (
    .A(_4717__bF$buf4),
    .B(_4924__bF$buf1),
    .C(_4953_),
    .Y(_3906_)
);

FILL SFILL48760x51050 (
);

FILL SFILL79000x9050 (
);

NOR2X1 _18661_ (
    .A(\datapath.registers.828[29] [13]),
    .B(_8498__bF$buf7),
    .Y(_8512_)
);

INVX1 _18241_ (
    .A(\datapath.registers.828[1] [23]),
    .Y(_8114_)
);

FILL SFILL48680x58050 (
);

NAND2X1 _10748_ (
    .A(_1717_),
    .B(_1718_),
    .Y(_1719_)
);

DFFPOSX1 _10328_ (
    .Q(\datapath.regrs2alu [9]),
    .CLK(CLK_bF$buf7),
    .D(\datapath.registers.regb_data [9])
);

DFFPOSX1 _20006_ (
    .Q(\datapath.registers.828[25] [22]),
    .CLK(CLK_bF$buf20),
    .D(_4194_)
);

DFFPOSX1 _19866_ (
    .Q(\datapath.registers.828[1] [10]),
    .CLK(CLK_bF$buf126),
    .D(_3989_)
);

DFFPOSX1 _19446_ (
    .Q(\datapath.registers.828[23] [6]),
    .CLK(CLK_bF$buf22),
    .D(_4144_)
);

DFFPOSX1 _19026_ (
    .Q(\datapath.registers.828[31] [2]),
    .CLK(CLK_bF$buf132),
    .D(_4426_)
);

INVX2 _14581_ (
    .A(\datapath.registers.828[14] [5]),
    .Y(_5048_)
);

NOR2X1 _14161_ (
    .A(\datapath.registers.828[20] [9]),
    .B(_4806__bF$buf4),
    .Y(_4816_)
);

FILL SFILL48680x13050 (
);

FILL SFILL78840x45050 (
);

NAND2X1 _15786_ (
    .A(_5710_),
    .B(_5713_),
    .Y(_5714_)
);

OAI21X1 _15366_ (
    .A(_4687__bF$buf0),
    .B(_5470__bF$buf6),
    .C(_5478_),
    .Y(_4497_)
);

DFFPOSX1 _10081_ (
    .Q(\datapath.csr.csr_wdata [23]),
    .CLK(CLK_bF$buf7),
    .D(\datapath.regcsralu [23])
);

FILL SFILL38680x56050 (
);

NOR2X1 _11286_ (
    .A(\datapath.alu.b_3_bF$buf0 ),
    .B(_2250_),
    .Y(_2251_)
);

NAND2X1 _17932_ (
    .A(_7089__bF$buf7),
    .B(_7811_),
    .Y(_7812_)
);

MUX2X1 _17512_ (
    .A(\datapath.registers.828[25] [7]),
    .B(\datapath.registers.828[24] [7]),
    .S(\datapath.idinstr_20_bF$buf23 ),
    .Y(_7401_)
);

FILL SFILL38680x11050 (
);

FILL SFILL49000x8050 (
);

FILL SFILL63960x2050 (
);

NOR2X1 _9854_ (
    .A(\datapath.alupc [26]),
    .B(\datapath.regimmalu [26]),
    .Y(_710_)
);

NAND2X1 _9434_ (
    .A(\datapath.registers.regb_data [16]),
    .B(_318__bF$buf2),
    .Y(_367_)
);

FILL SFILL23640x9050 (
);

NAND2X1 _9014_ (
    .A(gnd),
    .B(\datapath.idpc_4 [3]),
    .Y(_838_)
);

FILL SFILL64120x21050 (
);

OAI21X1 _18717_ (
    .A(_4689__bF$buf4),
    .B(_8531__bF$buf5),
    .C(_8540_),
    .Y(_4306_)
);

FILL SFILL63480x6050 (
);

INVX1 _13852_ (
    .A(\datapath.jumptarget [30]),
    .Y(_3623_)
);

NAND3X1 _13432_ (
    .A(_3316_),
    .B(_3319_),
    .C(_3291__bF$buf1),
    .Y(\datapath.memdataload [14])
);

NAND2X1 _13012_ (
    .A(\controlunit.imm_sel [1]),
    .B(_3002_),
    .Y(_2970_)
);

INVX1 _14637_ (
    .A(\datapath.registers.828[14] [25]),
    .Y(_5084_)
);

NOR2X1 _14217_ (
    .A(\datapath.registers.828[19] [3]),
    .B(_4842__bF$buf6),
    .Y(_4846_)
);

AOI21X1 _18890_ (
    .A(_4731__bF$buf4),
    .B(_8598__bF$buf7),
    .C(_8628_),
    .Y(_4233_)
);

AOI21X1 _18470_ (
    .A(\datapath.idinstr_20_bF$buf1 ),
    .B(_8337_),
    .C(_7092__bF$buf4),
    .Y(_8338_)
);

MUX2X1 _18050_ (
    .A(\datapath.registers.828[11] [19]),
    .B(\datapath.registers.828[10] [19]),
    .S(\datapath.idinstr_20_bF$buf37 ),
    .Y(_7927_)
);

NAND2X1 _10977_ (
    .A(\datapath.alu.b_0_bF$buf3 ),
    .B(\datapath.alu.a [4]),
    .Y(_1947_)
);

DFFPOSX1 _10557_ (
    .Q(\datapath.idpc_4 [11]),
    .CLK(CLK_bF$buf119),
    .D(\datapath._04_ [11])
);

DFFPOSX1 _10137_ (
    .Q(_0_[15]),
    .CLK(CLK_bF$buf119),
    .D(\datapath.alu.c [15])
);

FILL SFILL18680x52050 (
);

DFFPOSX1 _19675_ (
    .Q(\datapath.registers.828[27] [11]),
    .CLK(CLK_bF$buf120),
    .D(_4246_)
);

DFFPOSX1 _19255_ (
    .Q(\datapath.registers.828[22] [7]),
    .CLK(CLK_bF$buf128),
    .D(_4113_)
);

NOR2X1 _14390_ (
    .A(\datapath.registers.828[17] [14]),
    .B(_4924__bF$buf0),
    .Y(_4944_)
);

BUFX2 _8705_ (
    .A(_1_[9]),
    .Y(DMEM_DATA_S[9])
);

INVX2 _12703_ (
    .A(_2840_),
    .Y(_2842_)
);

OAI21X1 _15595_ (
    .A(_5579__bF$buf2),
    .B(_4711__bF$buf1),
    .C(_5599_),
    .Y(_3998_)
);

AOI21X1 _15175_ (
    .A(_4693__bF$buf0),
    .B(_5369__bF$buf2),
    .C(_5380_),
    .Y(_4533_)
);

FILL SFILL33480x5050 (
);

NAND3X1 _13908_ (
    .A(_4665_),
    .B(_4666_),
    .C(_4667_),
    .Y(_4668_)
);

FILL SFILL8520x39050 (
);

FILL SFILL48760x46050 (
);

FILL SFILL44040x24050 (
);

NAND2X1 _11095_ (
    .A(\datapath.alu.b_0_bF$buf2 ),
    .B(_1695_),
    .Y(_2063_)
);

FILL SFILL8120x25050 (
);

MUX2X1 _17741_ (
    .A(\datapath.registers.828[27] [12]),
    .B(\datapath.registers.828[26] [12]),
    .S(\datapath.idinstr_20_bF$buf32 ),
    .Y(_7625_)
);

MUX2X1 _17321_ (
    .A(\datapath.registers.828[3] [2]),
    .B(\datapath.registers.828[2] [2]),
    .S(\datapath.idinstr_20_bF$buf6 ),
    .Y(_7215_)
);

FILL FILL83000x4050 (
);

INVX1 _9663_ (
    .A(\datapath.regimmalu [3]),
    .Y(_541_)
);

NAND3X1 _9243_ (
    .A(_222_),
    .B(_223_),
    .C(_221_),
    .Y(\datapath.rd [1])
);

NOR2X1 _18946_ (
    .A(\datapath.registers.828[25] [25]),
    .B(_8631__bF$buf1),
    .Y(_8657_)
);

OAI21X1 _18526_ (
    .A(_8391_),
    .B(\datapath.idinstr_22_bF$buf29 ),
    .C(_8392_),
    .Y(_8393_)
);

NAND2X1 _18106_ (
    .A(_7089__bF$buf2),
    .B(_7981_),
    .Y(_7982_)
);

OAI21X1 _13661_ (
    .A(_3457_),
    .B(_3472_),
    .C(_3378_),
    .Y(_3473_)
);

INVX1 _13241_ (
    .A(DMEM_DATA_L[26]),
    .Y(_3181_)
);

INVX1 _14866_ (
    .A(\datapath.registers.828[10] [0]),
    .Y(_5210_)
);

OAI21X1 _14446_ (
    .A(_4685__bF$buf1),
    .B(_4968__bF$buf1),
    .C(_4975_),
    .Y(_3888_)
);

AOI21X1 _14026_ (
    .A(_4687__bF$buf0),
    .B(_4738__bF$buf1),
    .C(_4746_),
    .Y(_4113_)
);

FILL SFILL28520x6050 (
);

OR2X2 _10786_ (
    .A(_1755_),
    .B(_1756_),
    .Y(_1757_)
);

DFFPOSX1 _10366_ (
    .Q(\datapath.alu.b [15]),
    .CLK(CLK_bF$buf37),
    .D(\datapath.muxbval [15])
);

FILL SFILL8360x7050 (
);

DFFPOSX1 _19484_ (
    .Q(\datapath.registers.828[5] [12]),
    .CLK(CLK_bF$buf145),
    .D(_4503_)
);

DFFPOSX1 _19064_ (
    .Q(\datapath.registers.828[10] [8]),
    .CLK(CLK_bF$buf16),
    .D(_3698_)
);

FILL SFILL28760x42050 (
);

OAI21X1 _8934_ (
    .A(_783_),
    .B(gnd),
    .C(_784_),
    .Y(\datapath._03_ [8])
);

FILL SFILL68840x38050 (
);

DFFPOSX1 _12932_ (
    .Q(\datapath.csr.mepc [26]),
    .CLK(CLK_bF$buf96),
    .D(\datapath.csr._26_ [26])
);

OAI21X1 _12512_ (
    .A(\datapath.csr.csr_wdata [13]),
    .B(_2672__bF$buf4),
    .C(_2704_),
    .Y(_2705_)
);

OAI21X1 _9719_ (
    .A(_575_),
    .B(_590_),
    .C(_589_),
    .Y(_591_)
);

INVX1 _13717_ (
    .A(_3516_),
    .Y(_3517_)
);

NAND2X1 _16189_ (
    .A(\datapath.idinstr_17_bF$buf9 ),
    .B(_6107_),
    .Y(_6108_)
);

NAND2X1 _17970_ (
    .A(\datapath.idinstr_22_bF$buf35 ),
    .B(_7848_),
    .Y(_7849_)
);

OAI21X1 _17550_ (
    .A(_5511_),
    .B(\datapath.idinstr_22_bF$buf36 ),
    .C(_7438_),
    .Y(_7439_)
);

INVX1 _17130_ (
    .A(\datapath.registers.828[25] [30]),
    .Y(_7028_)
);

FILL SFILL58840x36050 (
);

OAI21X1 _9892_ (
    .A(_741_),
    .B(_742_),
    .C(_743_),
    .Y(_744_)
);

NAND2X1 _9472_ (
    .A(\datapath.csr.csr_data [25]),
    .B(_317__bF$buf2),
    .Y(_396_)
);

INVX1 _9052_ (
    .A(\datapath.nextpc [16]),
    .Y(_863_)
);

FILL SFILL38680x8050 (
);

OAI21X1 _18755_ (
    .A(_4727__bF$buf4),
    .B(_8531__bF$buf2),
    .C(_8559_),
    .Y(_4295_)
);

AOI21X1 _18335_ (
    .A(\datapath.idinstr_20_bF$buf30 ),
    .B(_8205_),
    .C(\datapath.idinstr_22_bF$buf10 ),
    .Y(_8206_)
);

DFFPOSX1 _13890_ (
    .Q(\datapath.programcounter.pc [22]),
    .CLK(CLK_bF$buf107),
    .D(\datapath.programcounter._1_ [22])
);

NAND2X1 _13470_ (
    .A(DMEM_DATA_L[31]),
    .B(_3031__bF$buf7),
    .Y(_3341_)
);

INVX1 _13050_ (
    .A(\datapath.idinstr_23_bF$buf1 ),
    .Y(_2999_)
);

AOI21X1 _14675_ (
    .A(_4687__bF$buf4),
    .B(_5099__bF$buf6),
    .C(_5107_),
    .Y(_3793_)
);

NOR2X1 _14255_ (
    .A(\datapath.registers.828[19] [19]),
    .B(_4842__bF$buf3),
    .Y(_4868_)
);

DFFPOSX1 _10595_ (
    .Q(\datapath.idpc [17]),
    .CLK(CLK_bF$buf28),
    .D(\datapath._03_ [17])
);

DFFPOSX1 _10175_ (
    .Q(\datapath.meminstr [14]),
    .CLK(CLK_bF$buf39),
    .D(\datapath.aluinstr [14])
);

MUX2X1 _16821_ (
    .A(\datapath.registers.828[19] [23]),
    .B(\datapath.registers.828[18] [23]),
    .S(\datapath.idinstr_15_bF$buf45 ),
    .Y(_6726_)
);

MUX2X1 _16401_ (
    .A(\datapath.registers.828[23] [14]),
    .B(\datapath.registers.828[21] [14]),
    .S(\datapath.idinstr_16_bF$buf21 ),
    .Y(_6315_)
);

DFFPOSX1 _19293_ (
    .Q(\datapath.registers.828[2] [13]),
    .CLK(CLK_bF$buf126),
    .D(_4344_)
);

BUFX2 _8743_ (
    .A(\datapath.programcounter.pc [14]),
    .Y(IMEM_ADDR[14])
);

MUX2X1 _17606_ (
    .A(_7492_),
    .B(_7491_),
    .S(\datapath.idinstr_21_bF$buf17 ),
    .Y(_7493_)
);

FILL SFILL69240x23050 (
);

OAI21X1 _12741_ (
    .A(_2693_),
    .B(_2585__bF$buf4),
    .C(_2872_),
    .Y(\datapath.csr.csr_pcaddr [9])
);

INVX1 _12321_ (
    .A(\datapath.csr.mcause [24]),
    .Y(_2566_)
);

DFFPOSX1 _9948_ (
    .Q(\datapath.regloadwb [2]),
    .CLK(CLK_bF$buf11),
    .D(\datapath.memdataload [2])
);

NAND2X1 _9528_ (
    .A(\datapath.csr.csr_data [6]),
    .B(_417__bF$buf1),
    .Y(_439_)
);

OAI21X1 _9108_ (
    .A(_899_),
    .B(gnd),
    .C(_123_),
    .Y(\datapath._05_ [2])
);

INVX8 _13946_ (
    .A(\datapath.rd [11]),
    .Y(_4695_)
);

OAI21X1 _13526_ (
    .A(_3376_),
    .B(gnd),
    .C(_3377_),
    .Y(\datapath.programcounter._1_ [9])
);

NAND2X1 _13106_ (
    .A(_3033__bF$buf6),
    .B(_3066_),
    .Y(_3067_)
);

FILL SFILL3800x43050 (
);

NAND2X1 _9281_ (
    .A(\datapath.regcwb [11]),
    .B(_218__bF$buf1),
    .Y(_252_)
);

BUFX2 _18984_ (
    .A(\datapath.registers.828[0] [24]),
    .Y(_3652_)
);

AOI21X1 _18564_ (
    .A(\datapath.registers.828[23] [30]),
    .B(\datapath.idinstr_22_bF$buf3 ),
    .C(_7089__bF$buf2),
    .Y(_8430_)
);

MUX2X1 _18144_ (
    .A(_8018_),
    .B(_8017_),
    .S(\datapath.idinstr_21_bF$buf22 ),
    .Y(_8019_)
);

FILL SFILL3320x36050 (
);

FILL SFILL28760x37050 (
);

DFFPOSX1 _19769_ (
    .Q(\datapath.registers.828[30] [9]),
    .CLK(CLK_bF$buf64),
    .D(_4403_)
);

DFFPOSX1 _19349_ (
    .Q(\datapath.registers.828[7] [5]),
    .CLK(CLK_bF$buf58),
    .D(_4591_)
);

OAI21X1 _14484_ (
    .A(_4723__bF$buf4),
    .B(_4968__bF$buf6),
    .C(_4994_),
    .Y(_3877_)
);

AOI21X1 _14064_ (
    .A(_4725__bF$buf1),
    .B(_4738__bF$buf4),
    .C(_4765_),
    .Y(_4102_)
);

FILL SFILL33960x55050 (
);

FILL SFILL73720x30050 (
);

AOI21X1 _15689_ (
    .A(_4660__bF$buf0),
    .B(_5647__bF$buf0),
    .C(_5648_),
    .Y(_4372_)
);

NOR2X1 _15269_ (
    .A(\datapath.registers.828[5] [25]),
    .B(_5402__bF$buf4),
    .Y(_5428_)
);

AOI21X1 _16630_ (
    .A(\datapath.registers.828[13] [19]),
    .B(\datapath.idinstr_17_bF$buf2 ),
    .C(_5681__bF$buf5),
    .Y(_6539_)
);

NAND2X1 _16210_ (
    .A(_5684__bF$buf10),
    .B(_6127_),
    .Y(_6128_)
);

NAND2X1 _8972_ (
    .A(gnd),
    .B(\datapath.idpc [21]),
    .Y(_810_)
);

AOI21X1 _11189_ (
    .A(_2155_),
    .B(_1911_),
    .C(_2154_),
    .Y(_2156_)
);

AOI21X1 _17835_ (
    .A(\datapath.registers.828[13] [14]),
    .B(\datapath.idinstr_22_bF$buf37 ),
    .C(_7089__bF$buf6),
    .Y(_7717_)
);

MUX2X1 _17415_ (
    .A(\datapath.registers.828[3] [4]),
    .B(\datapath.registers.828[2] [4]),
    .S(\datapath.idinstr_20_bF$buf6 ),
    .Y(_7307_)
);

DFFPOSX1 _12970_ (
    .Q(\datapath.csr.mvect [31]),
    .CLK(CLK_bF$buf87),
    .D(\datapath.csr._13_ [31])
);

OAI21X1 _12550_ (
    .A(\datapath.csr.csr_wdata [21]),
    .B(_2672__bF$buf1),
    .C(_2734_),
    .Y(_2735_)
);

INVX4 _12130_ (
    .A(_1730_),
    .Y(_1564_)
);

NOR2X1 _9757_ (
    .A(_613_),
    .B(_622_),
    .Y(_623_)
);

NAND2X1 _9337_ (
    .A(\datapath.regcwb [25]),
    .B(_218__bF$buf4),
    .Y(_294_)
);

NAND2X1 _13755_ (
    .A(_3424__bF$buf1),
    .B(\datapath.nextpc [20]),
    .Y(_3546_)
);

OAI21X1 _13335_ (
    .A(_3181_),
    .B(_3239__bF$buf0),
    .C(_3242_),
    .Y(\datapath.memoryinterface.byte_size_store.storebyte [26])
);

OAI21X1 _9090_ (
    .A(_887_),
    .B(gnd),
    .C(_888_),
    .Y(\datapath._04_ [28])
);

NAND2X1 _15901_ (
    .A(_5681__bF$buf9),
    .B(_5825_),
    .Y(_5826_)
);

AOI21X1 _18793_ (
    .A(_4699__bF$buf4),
    .B(_8565__bF$buf2),
    .C(_8579_),
    .Y(_4248_)
);

NAND2X1 _18373_ (
    .A(\datapath.idinstr_22_bF$buf24 ),
    .B(_8242_),
    .Y(_8243_)
);

INVX2 _11821_ (
    .A(_1225_),
    .Y(_1234_)
);

AOI21X1 _11401_ (
    .A(_2356_),
    .B(_2362_),
    .C(_1907_),
    .Y(_2363_)
);

DFFPOSX1 _19998_ (
    .Q(\datapath.registers.828[25] [14]),
    .CLK(CLK_bF$buf117),
    .D(_4185_)
);

DFFPOSX1 _19578_ (
    .Q(\datapath.registers.828[21] [10]),
    .CLK(CLK_bF$buf20),
    .D(_4053_)
);

DFFPOSX1 _19158_ (
    .Q(\datapath.registers.828[15] [6]),
    .CLK(CLK_bF$buf29),
    .D(_3856_)
);

NOR2X1 _14293_ (
    .A(\datapath.registers.828[18] [3]),
    .B(_4886__bF$buf3),
    .Y(_4890_)
);

NAND2X1 _12606_ (
    .A(_2779_),
    .B(_2671_),
    .Y(_2780_)
);

OAI21X1 _15498_ (
    .A(_5546__bF$buf3),
    .B(_4679__bF$buf2),
    .C(_5550_),
    .Y(_4365_)
);

OAI21X1 _15078_ (
    .A(_4729__bF$buf4),
    .B(_5300__bF$buf0),
    .C(_5329_),
    .Y(_4616_)
);

FILL SFILL3400x24050 (
);

NOR2X1 _8781_ (
    .A(_113_),
    .B(_115_),
    .Y(_116_)
);

OAI21X1 _17644_ (
    .A(_7529_),
    .B(\datapath.idinstr_22_bF$buf18 ),
    .C(_7530_),
    .Y(_7531_)
);

NAND2X1 _17224_ (
    .A(_7092__bF$buf7),
    .B(_7119_),
    .Y(_7120_)
);

DFFPOSX1 _9986_ (
    .Q(\datapath.regcwb [8]),
    .CLK(CLK_bF$buf27),
    .D(_0_[8])
);

NAND2X1 _9566_ (
    .A(\datapath.registers.rega_data [16]),
    .B(_418__bF$buf4),
    .Y(_467_)
);

NAND2X1 _9146_ (
    .A(gnd),
    .B(\datapath.idinstr_15_bF$buf49 ),
    .Y(_149_)
);

NOR2X1 _18849_ (
    .A(\datapath.registers.828[26] [9]),
    .B(_8598__bF$buf4),
    .Y(_8608_)
);

OAI21X1 _18429_ (
    .A(_8286_),
    .B(_8297_),
    .C(\datapath.idinstr_24_bF$buf1 ),
    .Y(_8298_)
);

NAND2X1 _18009_ (
    .A(_7092__bF$buf1),
    .B(_7886_),
    .Y(_7887_)
);

AOI21X1 _13984_ (
    .A(_4719__bF$buf1),
    .B(_4673__bF$buf4),
    .C(_4720_),
    .Y(_4131_)
);

NOR2X1 _13564_ (
    .A(gnd),
    .B(\datapath.programcounter.pc_mux [22]),
    .Y(_3403_)
);

OAI21X1 _13144_ (
    .A(_3097_),
    .B(_0__1_bF$buf2),
    .C(_3098_),
    .Y(_3099_)
);

NAND2X1 _14769_ (
    .A(\datapath.registers.828[12] [22]),
    .B(_5132__bF$buf0),
    .Y(_5155_)
);

NOR2X1 _14349_ (
    .A(\datapath.registers.828[18] [29]),
    .B(_4886__bF$buf1),
    .Y(_4920_)
);

FILL SFILL33560x36050 (
);

NOR2X1 _15710_ (
    .A(\datapath.registers.828[30] [11]),
    .B(_5647__bF$buf5),
    .Y(_5659_)
);

AOI21X1 _18182_ (
    .A(_8052_),
    .B(_8056_),
    .C(\datapath.idinstr_23_bF$buf7 ),
    .Y(_8057_)
);

FILL SFILL79000x32050 (
);

FILL SFILL18360x16050 (
);

NOR2X1 _10689_ (
    .A(\datapath.alu.b [11]),
    .B(_1659_),
    .Y(_1660_)
);

DFFPOSX1 _10269_ (
    .Q(\datapath.regimmalu [14]),
    .CLK(CLK_bF$buf98),
    .D(\datapath.imm [14])
);

AOI21X1 _16915_ (
    .A(\datapath.registers.828[7] [25]),
    .B(\datapath.idinstr_17_bF$buf10 ),
    .C(_5681__bF$buf1),
    .Y(_6818_)
);

OAI21X1 _11630_ (
    .A(_997_),
    .B(_999_),
    .C(_1029_),
    .Y(_1030_)
);

NAND2X1 _11210_ (
    .A(\datapath.alu.b_3_bF$buf7 ),
    .B(_2175_),
    .Y(_2176_)
);

DFFPOSX1 _19387_ (
    .Q(\datapath.registers.828[8] [11]),
    .CLK(CLK_bF$buf101),
    .D(_4598_)
);

NAND2X1 _8837_ (
    .A(_46_),
    .B(_37_),
    .Y(alusel[2])
);

FILL SFILL23560x34050 (
);

NAND3X1 _12835_ (
    .A(\datapath.csr.mvect [26]),
    .B(_2948_),
    .C(_2941_),
    .Y(_2950_)
);

INVX1 _12415_ (
    .A(\datapath.csr.csr_wdata [17]),
    .Y(_2635_)
);

AOI21X1 _17873_ (
    .A(_7729_),
    .B(_7754_),
    .C(_7095__bF$buf3),
    .Y(\datapath.registers.regb_data [14])
);

AOI21X1 _17453_ (
    .A(\datapath.registers.828[28] [5]),
    .B(\datapath.idinstr_22_bF$buf13 ),
    .C(\datapath.idinstr_20_bF$buf49 ),
    .Y(_7344_)
);

OAI21X1 _17033_ (
    .A(_6921_),
    .B(_6932_),
    .C(\datapath.idinstr_19_bF$buf3 ),
    .Y(_6933_)
);

FILL SFILL53720x21050 (
);

NAND2X1 _9795_ (
    .A(_656_),
    .B(_654_),
    .Y(_657_)
);

NAND2X1 _9375_ (
    .A(\datapath.imm [1]),
    .B(_316__bF$buf1),
    .Y(_323_)
);

INVX4 _10901_ (
    .A(_1871_),
    .Y(_1872_)
);

AOI21X1 _18658_ (
    .A(_4695__bF$buf1),
    .B(_8498__bF$buf4),
    .C(_8510_),
    .Y(_4310_)
);

MUX2X1 _18238_ (
    .A(_8110_),
    .B(_8109_),
    .S(\datapath.idinstr_21_bF$buf21 ),
    .Y(_8111_)
);

NAND3X1 _13793_ (
    .A(_3574_),
    .B(_3575_),
    .C(_3573_),
    .Y(\datapath.programcounter.pc_mux [24])
);

OAI21X1 _13373_ (
    .A(_3269_),
    .B(_0__1_bF$buf9),
    .C(_3270_),
    .Y(_3271_)
);

NOR2X1 _14998_ (
    .A(\datapath.registers.828[9] [22]),
    .B(_5257__bF$buf5),
    .Y(_5288_)
);

INVX2 _14578_ (
    .A(\datapath.registers.828[14] [4]),
    .Y(_5046_)
);

AOI21X1 _14158_ (
    .A(_4687__bF$buf2),
    .B(_4806__bF$buf3),
    .C(_4814_),
    .Y(_4049_)
);

FILL SFILL83800x15050 (
);

DFFPOSX1 _10498_ (
    .Q(\datapath.alupc [16]),
    .CLK(CLK_bF$buf110),
    .D(\datapath.idpc [16])
);

DFFPOSX1 _10078_ (
    .Q(\datapath.csr.csr_wdata [20]),
    .CLK(CLK_bF$buf51),
    .D(\datapath.regcsralu [20])
);

NAND2X1 _16724_ (
    .A(\datapath.registers.828[12] [21]),
    .B(_5681__bF$buf8),
    .Y(_6631_)
);

MUX2X1 _16304_ (
    .A(\datapath.registers.828[18] [12]),
    .B(\datapath.registers.828[16] [12]),
    .S(\datapath.idinstr_16_bF$buf9 ),
    .Y(_6220_)
);

DFFPOSX1 _19196_ (
    .Q(\datapath.registers.828[19] [12]),
    .CLK(CLK_bF$buf13),
    .D(_3959_)
);

AOI21X1 _17929_ (
    .A(\datapath.idinstr_20_bF$buf13 ),
    .B(_7808_),
    .C(\datapath.idinstr_22_bF$buf20 ),
    .Y(_7809_)
);

AOI21X1 _17509_ (
    .A(_7393_),
    .B(_7398_),
    .C(\datapath.idinstr_23_bF$buf2 ),
    .Y(_7399_)
);

INVX1 _12644_ (
    .A(\datapath.csr.mcause [11]),
    .Y(_2807_)
);

NOR2X1 _12224_ (
    .A(\datapath.idinstr [27]),
    .B(\datapath.idinstr [26]),
    .Y(_2493_)
);

FILL SFILL73800x13050 (
);

FILL SFILL33640x24050 (
);

NAND3X1 _13849_ (
    .A(\datapath.programcounter.pc [30]),
    .B(_3620_),
    .C(_3619_),
    .Y(_3621_)
);

NAND2X1 _13429_ (
    .A(_0__1_bF$buf6),
    .B(DMEM_DATA_L[30]),
    .Y(_3317_)
);

OAI21X1 _13009_ (
    .A(_3015_),
    .B(_3012_),
    .C(_3025_),
    .Y(\datapath.imm [18])
);

INVX1 _17682_ (
    .A(\datapath.registers.828[0] [10]),
    .Y(_7568_)
);

AOI21X1 _17262_ (
    .A(_7151_),
    .B(_7156_),
    .C(\datapath.idinstr_23_bF$buf0 ),
    .Y(_7157_)
);

INVX1 _9184_ (
    .A(IMEM_DATA[28]),
    .Y(_174_)
);

FILL SFILL63800x11050 (
);

INVX4 _10710_ (
    .A(\datapath.alu.a [23]),
    .Y(_1681_)
);

NOR2X1 _18887_ (
    .A(\datapath.registers.828[26] [28]),
    .B(_8598__bF$buf4),
    .Y(_8627_)
);

MUX2X1 _18467_ (
    .A(\datapath.registers.828[22] [28]),
    .B(\datapath.registers.828[20] [28]),
    .S(\datapath.idinstr_21_bF$buf13 ),
    .Y(_8335_)
);

OAI21X1 _18047_ (
    .A(_7924_),
    .B(_7915_),
    .C(_7088__bF$buf3),
    .Y(_7925_)
);

NAND3X1 _13182_ (
    .A(\datapath.memoryinterface.byte_size_store.storebyte [17]),
    .B(_3027__bF$buf3),
    .C(_3029__bF$buf4),
    .Y(_3131_)
);

FILL SFILL53800x54050 (
);

FILL SFILL23560x29050 (
);

AOI21X1 _11915_ (
    .A(_1313_),
    .B(_1311_),
    .C(_1334_),
    .Y(_1335_)
);

INVX1 _14387_ (
    .A(\datapath.registers.828[17] [13]),
    .Y(_4942_)
);

FILL SFILL69000x25050 (
);

FILL SFILL13240x51050 (
);

FILL SFILL74280x45050 (
);

OAI21X1 _16953_ (
    .A(_4959_),
    .B(\datapath.idinstr_17_bF$buf7 ),
    .C(_6854_),
    .Y(_6855_)
);

MUX2X1 _16533_ (
    .A(_6443_),
    .B(_6442_),
    .S(\datapath.idinstr_16_bF$buf18 ),
    .Y(_6444_)
);

NAND2X1 _16113_ (
    .A(_5684__bF$buf10),
    .B(_6033_),
    .Y(_6034_)
);

FILL SFILL43800x52050 (
);

AND2X2 _8875_ (
    .A(\datapath.idinstr_21_bF$buf11 ),
    .B(\datapath.idinstr [29]),
    .Y(_81_)
);

OAI21X1 _17738_ (
    .A(_7622_),
    .B(_7613_),
    .C(\datapath.idinstr_24_bF$buf5 ),
    .Y(_7623_)
);

NAND3X1 _17318_ (
    .A(\datapath.idinstr_21_bF$buf16 ),
    .B(_7211_),
    .C(_7209_),
    .Y(_7212_)
);

FILL SFILL69000x5050 (
);

DFFPOSX1 _12873_ (
    .Q(\datapath.csr.mstatus [1]),
    .CLK(CLK_bF$buf35),
    .D(\datapath.csr._37_ [1])
);

INVX1 _12453_ (
    .A(\datapath.csr.mvect [30]),
    .Y(_2660_)
);

NOR2X1 _12033_ (
    .A(_1091__bF$buf4),
    .B(_1179_),
    .Y(_1461_)
);

FILL SFILL43640x6050 (
);

FILL SFILL78920x20050 (
);

AOI22X1 _13658_ (
    .A(_3423__bF$buf1),
    .B(\datapath.alu.c [9]),
    .C(\datapath.csr.csr_pcaddr [9]),
    .D(_3429__bF$buf1),
    .Y(_3471_)
);

NAND3X1 _13238_ (
    .A(\datapath.memoryinterface.byte_size_store.storebyte [25]),
    .B(_3027__bF$buf4),
    .C(_3029__bF$buf1),
    .Y(_3179_)
);

FILL SFILL43720x14050 (
);

MUX2X1 _17491_ (
    .A(\datapath.registers.828[30] [6]),
    .B(\datapath.registers.828[28] [6]),
    .S(\datapath.idinstr_21_bF$buf14 ),
    .Y(_7381_)
);

MUX2X1 _17071_ (
    .A(\datapath.registers.828[22] [29]),
    .B(\datapath.registers.828[20] [29]),
    .S(\datapath.idinstr_16_bF$buf15 ),
    .Y(_6970_)
);

MUX2X1 _15804_ (
    .A(\datapath.registers.828[25] [1]),
    .B(\datapath.registers.828[24] [1]),
    .S(\datapath.idinstr_15_bF$buf32 ),
    .Y(_5731_)
);

AOI21X1 _18696_ (
    .A(_4733__bF$buf0),
    .B(_8498__bF$buf0),
    .C(_8529_),
    .Y(_4331_)
);

AOI21X1 _18276_ (
    .A(_8142_),
    .B(_8148_),
    .C(\datapath.idinstr_23_bF$buf5 ),
    .Y(_8149_)
);

NAND2X1 _11724_ (
    .A(_1789_),
    .B(_1908__bF$buf0),
    .Y(_1130_)
);

MUX2X1 _11304_ (
    .A(_1932_),
    .B(_2071_),
    .S(\datapath.alu.b_1_bF$buf2 ),
    .Y(_2268_)
);

AOI21X1 _14196_ (
    .A(_4725__bF$buf1),
    .B(_4806__bF$buf2),
    .C(_4833_),
    .Y(_4038_)
);

DFFPOSX1 _12929_ (
    .Q(\datapath.csr.mepc [23]),
    .CLK(CLK_bF$buf71),
    .D(\datapath.csr._26_ [23])
);

OAI21X1 _12509_ (
    .A(_2701_),
    .B(\controlunit.csrfile_trap_wen_bF$buf1 ),
    .C(_2702_),
    .Y(\datapath.csr._26_ [10])
);

MUX2X1 _16762_ (
    .A(\datapath.registers.828[11] [22]),
    .B(\datapath.registers.828[10] [22]),
    .S(\datapath.idinstr_15_bF$buf21 ),
    .Y(_6668_)
);

NAND2X1 _16342_ (
    .A(_5684__bF$buf0),
    .B(_6256_),
    .Y(_6257_)
);

BUFX2 _8684_ (
    .A(_0_[20]),
    .Y(DMEM_ADDR[20])
);

BUFX2 BUFX2_insert260 (
    .A(_7088_),
    .Y(_7088__bF$buf2)
);

BUFX2 BUFX2_insert261 (
    .A(_7088_),
    .Y(_7088__bF$buf1)
);

BUFX2 BUFX2_insert262 (
    .A(_7088_),
    .Y(_7088__bF$buf0)
);

BUFX2 BUFX2_insert263 (
    .A(_4689_),
    .Y(_4689__bF$buf4)
);

BUFX2 BUFX2_insert264 (
    .A(_4689_),
    .Y(_4689__bF$buf3)
);

MUX2X1 _17967_ (
    .A(\datapath.registers.828[29] [17]),
    .B(\datapath.registers.828[28] [17]),
    .S(\datapath.idinstr_20_bF$buf20 ),
    .Y(_7846_)
);

BUFX2 BUFX2_insert265 (
    .A(_4689_),
    .Y(_4689__bF$buf2)
);

OAI21X1 _17547_ (
    .A(_7434_),
    .B(\datapath.idinstr_22_bF$buf36 ),
    .C(_7435_),
    .Y(_7436_)
);

AOI21X1 _17127_ (
    .A(\datapath.registers.828[30] [30]),
    .B(\datapath.idinstr_17_bF$buf13 ),
    .C(\datapath.idinstr_15_bF$buf53 ),
    .Y(_7025_)
);

BUFX2 BUFX2_insert266 (
    .A(_4689_),
    .Y(_4689__bF$buf1)
);

BUFX2 BUFX2_insert267 (
    .A(_4689_),
    .Y(_4689__bF$buf0)
);

FILL SFILL23640x17050 (
);

BUFX2 BUFX2_insert268 (
    .A(_4842_),
    .Y(_4842__bF$buf7)
);

OAI21X1 _12682_ (
    .A(_2797__bF$buf4),
    .B(\datapath.csr.csr_wdata [29]),
    .C(_2783__bF$buf1),
    .Y(_2827_)
);

BUFX2 BUFX2_insert269 (
    .A(_4842_),
    .Y(_4842__bF$buf6)
);

NAND2X1 _12262_ (
    .A(\datapath.csr.mcause [7]),
    .B(_2491_),
    .Y(_2524_)
);

FILL SFILL13720x53050 (
);

NOR3X1 _9889_ (
    .A(_531_),
    .B(_536_),
    .C(_533_),
    .Y(_741_)
);

NAND3X1 _9469_ (
    .A(_392_),
    .B(_393_),
    .C(_391_),
    .Y(\datapath.muxbval [24])
);

INVX1 _9049_ (
    .A(\datapath.nextpc [15]),
    .Y(_861_)
);

FILL SFILL53800x49050 (
);

DFFPOSX1 _13887_ (
    .Q(\datapath.programcounter.pc [19]),
    .CLK(CLK_bF$buf81),
    .D(\datapath.programcounter._1_ [19])
);

NAND3X1 _13467_ (
    .A(_3291__bF$buf0),
    .B(_3339_),
    .C(_3326_),
    .Y(\datapath.memdataload [29])
);

OAI21X1 _13047_ (
    .A(_2997_),
    .B(_2996_),
    .C(_2995_),
    .Y(\datapath.imm [21])
);

OAI21X1 _15613_ (
    .A(_5579__bF$buf3),
    .B(_4729__bF$buf0),
    .C(_5608_),
    .Y(_4008_)
);

MUX2X1 _18085_ (
    .A(\datapath.registers.828[17] [19]),
    .B(\datapath.registers.828[16] [19]),
    .S(\datapath.idinstr_20_bF$buf3 ),
    .Y(_7962_)
);

FILL SFILL38440x50050 (
);

NAND3X1 _16818_ (
    .A(_5683__bF$buf1),
    .B(_6722_),
    .C(_6719_),
    .Y(_6723_)
);

AOI21X1 _11953_ (
    .A(_1082_),
    .B(_1229_),
    .C(_1374_),
    .Y(_1375_)
);

NAND3X1 _11533_ (
    .A(_1209__bF$buf3),
    .B(_924_),
    .C(_916_),
    .Y(_925_)
);

NOR2X1 _11113_ (
    .A(_1123__bF$buf4),
    .B(_2080_),
    .Y(_2081_)
);

FILL SFILL78920x15050 (
);

INVX1 _12738_ (
    .A(_2869_),
    .Y(_2870_)
);

INVX1 _12318_ (
    .A(\datapath.csr.mcause [23]),
    .Y(_2564_)
);

FILL SFILL68920x58050 (
);

FILL SFILL64200x36050 (
);

MUX2X1 _16991_ (
    .A(\datapath.registers.828[9] [27]),
    .B(\datapath.registers.828[8] [27]),
    .S(\datapath.idinstr_15_bF$buf42 ),
    .Y(_6892_)
);

AOI21X1 _16571_ (
    .A(\datapath.registers.828[13] [18]),
    .B(\datapath.idinstr_15_bF$buf28 ),
    .C(\datapath.idinstr_16_bF$buf1 ),
    .Y(_6481_)
);

MUX2X1 _16151_ (
    .A(\datapath.registers.828[3] [8]),
    .B(\datapath.registers.828[2] [8]),
    .S(\datapath.idinstr_15_bF$buf17 ),
    .Y(_6071_)
);

MUX2X1 _17776_ (
    .A(\datapath.registers.828[1] [12]),
    .B(\datapath.registers.828[0] [12]),
    .S(\datapath.idinstr_20_bF$buf29 ),
    .Y(_7660_)
);

AOI21X1 _17356_ (
    .A(\datapath.registers.828[30] [3]),
    .B(\datapath.idinstr_22_bF$buf38 ),
    .C(\datapath.idinstr_20_bF$buf28 ),
    .Y(_7249_)
);

INVX1 _12491_ (
    .A(\datapath.csr.mepc [6]),
    .Y(_2689_)
);

OR2X2 _12071_ (
    .A(_1477_),
    .B(_1501_),
    .Y(\datapath.alu.c [27])
);

OAI21X1 _9698_ (
    .A(_566_),
    .B(_560_),
    .C(_571_),
    .Y(_572_)
);

NAND2X1 _9278_ (
    .A(\datapath.regloadwb [10]),
    .B(_213__bF$buf4),
    .Y(_250_)
);

NOR2X1 _10804_ (
    .A(_1756_),
    .B(_1755_),
    .Y(_1775_)
);

FILL SFILL58920x56050 (
);

NAND2X1 _13696_ (
    .A(_3497_),
    .B(_3499_),
    .Y(_3500_)
);

INVX1 _13276_ (
    .A(DMEM_DATA_L[31]),
    .Y(_3211_)
);

DFFPOSX1 _19922_ (
    .Q(\datapath.registers.828[28] [2]),
    .CLK(CLK_bF$buf132),
    .D(_4298_)
);

DFFPOSX1 _19502_ (
    .Q(\datapath.registers.828[5] [30]),
    .CLK(CLK_bF$buf136),
    .D(_4523_)
);

FILL SFILL58920x11050 (
);

MUX2X1 _15842_ (
    .A(_5768_),
    .B(_5767_),
    .S(\datapath.idinstr_16_bF$buf2 ),
    .Y(_5769_)
);

NOR2X1 _15422_ (
    .A(\datapath.registers.828[3] [3]),
    .B(_5503__bF$buf3),
    .Y(_5507_)
);

NOR2X1 _15002_ (
    .A(\datapath.registers.828[9] [24]),
    .B(_5257__bF$buf7),
    .Y(_5290_)
);

NAND2X1 _16627_ (
    .A(_6533_),
    .B(_6535_),
    .Y(_6536_)
);

MUX2X1 _16207_ (
    .A(\datapath.registers.828[25] [10]),
    .B(\datapath.registers.828[24] [10]),
    .S(\datapath.idinstr_15_bF$buf4 ),
    .Y(_6125_)
);

AOI22X1 _11762_ (
    .A(_1710_),
    .B(_1911_),
    .C(_2042_),
    .D(\datapath.alu.a [18]),
    .Y(_1171_)
);

INVX1 _11342_ (
    .A(\datapath.alu.a [8]),
    .Y(_2305_)
);

FILL SFILL38840x50 (
);

DFFPOSX1 _19099_ (
    .Q(\datapath.registers.828[14] [11]),
    .CLK(CLK_bF$buf59),
    .D(_3798_)
);

NAND2X1 _8969_ (
    .A(gnd),
    .B(\datapath.idpc [20]),
    .Y(_808_)
);

OAI21X1 _9910_ (
    .A(_760_),
    .B(_737_),
    .C(_757_),
    .Y(_761_)
);

FILL SFILL13320x34050 (
);

DFFPOSX1 _12967_ (
    .Q(\datapath.csr.mvect [28]),
    .CLK(CLK_bF$buf96),
    .D(\datapath.csr._13_ [28])
);

OAI21X1 _12547_ (
    .A(_2731_),
    .B(\controlunit.csrfile_trap_wen_bF$buf5 ),
    .C(_2732_),
    .Y(\datapath.csr._26_ [18])
);

OR2X2 _12127_ (
    .A(_1560_),
    .B(_1545_),
    .Y(_1561_)
);

FILL SFILL48840x16050 (
);

MUX2X1 _16380_ (
    .A(_6294_),
    .B(_6293_),
    .S(_5681__bF$buf9),
    .Y(_6295_)
);

MUX2X1 _17585_ (
    .A(_7472_),
    .B(_7471_),
    .S(\datapath.idinstr_21_bF$buf30 ),
    .Y(_7473_)
);

MUX2X1 _17165_ (
    .A(\datapath.registers.828[23] [31]),
    .B(\datapath.registers.828[21] [31]),
    .S(\datapath.idinstr_16_bF$buf40 ),
    .Y(_7062_)
);

FILL SFILL3560x51050 (
);

OAI21X1 _9087_ (
    .A(_885_),
    .B(gnd),
    .C(_886_),
    .Y(\datapath._04_ [27])
);

FILL SFILL3480x58050 (
);

NOR2X1 _10613_ (
    .A(_940_),
    .B(_951_),
    .Y(_962_)
);

NAND2X1 _13085_ (
    .A(_3033__bF$buf3),
    .B(_3048_),
    .Y(_3049_)
);

FILL SFILL3080x44050 (
);

DFFPOSX1 _19731_ (
    .Q(\datapath.registers.828[16] [3]),
    .CLK(CLK_bF$buf132),
    .D(_3885_)
);

DFFPOSX1 _19311_ (
    .Q(\datapath.registers.828[2] [31]),
    .CLK(CLK_bF$buf126),
    .D(_4364_)
);

NAND3X1 _11818_ (
    .A(_1705_),
    .B(_1710_),
    .C(_1156_),
    .Y(_1231_)
);

OAI21X1 _15651_ (
    .A(_4840__bF$buf7),
    .B(_5612__bF$buf1),
    .C(\datapath.registers.828[31] [14]),
    .Y(_5629_)
);

NOR2X1 _15231_ (
    .A(\datapath.registers.828[5] [6]),
    .B(_5402__bF$buf1),
    .Y(_5409_)
);

MUX2X1 _16856_ (
    .A(\datapath.registers.828[30] [24]),
    .B(\datapath.registers.828[28] [24]),
    .S(\datapath.idinstr_16_bF$buf34 ),
    .Y(_6760_)
);

AOI21X1 _16436_ (
    .A(_6344_),
    .B(_6348_),
    .C(_5685__bF$buf7),
    .Y(_6349_)
);

MUX2X1 _16016_ (
    .A(\datapath.registers.828[5] [5]),
    .B(\datapath.registers.828[4] [5]),
    .S(\datapath.idinstr_15_bF$buf50 ),
    .Y(_5939_)
);

OAI21X1 _11991_ (
    .A(_1389_),
    .B(_1370_),
    .C(_1415_),
    .Y(_1416_)
);

NOR2X1 _11571_ (
    .A(_1668_),
    .B(_950_),
    .Y(_966_)
);

OAI21X1 _11151_ (
    .A(_2117_),
    .B(_994__bF$buf5),
    .C(_2118_),
    .Y(_2119_)
);

NAND2X1 _8778_ (
    .A(\datapath.wbinstr [1]),
    .B(\datapath.wbinstr [0]),
    .Y(_113_)
);

OAI21X1 _12776_ (
    .A(_2882_),
    .B(_2901_),
    .C(_2585__bF$buf4),
    .Y(_2902_)
);

NAND3X1 _12356_ (
    .A(_2588_),
    .B(_2592_),
    .C(_2590_),
    .Y(_2593_)
);

FILL SFILL18440x41050 (
);

FILL SFILL79080x21050 (
);

AOI21X1 _14922_ (
    .A(_4717__bF$buf1),
    .B(_5212__bF$buf6),
    .C(_5243_),
    .Y(_3682_)
);

OAI21X1 _14502_ (
    .A(_5003__bF$buf1),
    .B(_4660__bF$buf2),
    .C(_5005_),
    .Y(_3828_)
);

MUX2X1 _17394_ (
    .A(\datapath.registers.828[23] [4]),
    .B(\datapath.registers.828[21] [4]),
    .S(\datapath.idinstr_21_bF$buf43 ),
    .Y(_7286_)
);

AOI21X1 _15707_ (
    .A(_4691__bF$buf1),
    .B(_5647__bF$buf5),
    .C(_5657_),
    .Y(_4403_)
);

AOI21X1 _10842_ (
    .A(_973_),
    .B(_1808_),
    .C(_1812_),
    .Y(_1813_)
);

FILL SFILL48520x35050 (
);

DFFPOSX1 _10422_ (
    .Q(\datapath.aluinstr [4]),
    .CLK(CLK_bF$buf67),
    .D(\datapath.idinstr [4])
);

DFFPOSX1 _10002_ (
    .Q(\datapath.regcwb [24]),
    .CLK(CLK_bF$buf80),
    .D(_0_[24])
);

MUX2X1 _18599_ (
    .A(\datapath.registers.828[19] [31]),
    .B(\datapath.registers.828[17] [31]),
    .S(\datapath.idinstr_21_bF$buf15 ),
    .Y(_8464_)
);

MUX2X1 _18179_ (
    .A(\datapath.registers.828[3] [21]),
    .B(\datapath.registers.828[2] [21]),
    .S(\datapath.idinstr_20_bF$buf52 ),
    .Y(_8054_)
);

DFFPOSX1 _19960_ (
    .Q(\datapath.registers.828[6] [8]),
    .CLK(CLK_bF$buf88),
    .D(_4562_)
);

DFFPOSX1 _19540_ (
    .Q(\datapath.registers.828[12] [4]),
    .CLK(CLK_bF$buf75),
    .D(_3758_)
);

DFFPOSX1 _19120_ (
    .Q(\datapath.registers.828[17] [0]),
    .CLK(CLK_bF$buf114),
    .D(_3892_)
);

FILL SFILL13320x29050 (
);

NAND2X1 _11627_ (
    .A(_1025_),
    .B(_1024_),
    .Y(_1026_)
);

MUX2X1 _11207_ (
    .A(_1930_),
    .B(_1923_),
    .S(\datapath.alu.b_2_bF$buf0 ),
    .Y(_2173_)
);

NOR2X1 _14099_ (
    .A(\datapath.registers.828[21] [11]),
    .B(_4772__bF$buf7),
    .Y(_4784_)
);

MUX2X1 _15880_ (
    .A(\datapath.registers.828[1] [2]),
    .B(\datapath.registers.828[0] [2]),
    .S(\datapath.idinstr_15_bF$buf2 ),
    .Y(_5806_)
);

AOI21X1 _15460_ (
    .A(_4711__bF$buf1),
    .B(_5503__bF$buf5),
    .C(_5528_),
    .Y(_4446_)
);

OAI21X1 _15040_ (
    .A(_4691__bF$buf2),
    .B(_5300__bF$buf3),
    .C(_5310_),
    .Y(_4627_)
);

AOI21X1 _16665_ (
    .A(\datapath.idinstr_15_bF$buf37 ),
    .B(_6572_),
    .C(\datapath.idinstr_17_bF$buf6 ),
    .Y(_6573_)
);

MUX2X1 _16245_ (
    .A(\datapath.registers.828[7] [10]),
    .B(\datapath.registers.828[6] [10]),
    .S(\datapath.idinstr_15_bF$buf34 ),
    .Y(_6163_)
);

FILL SFILL3560x46050 (
);

NAND2X1 _11380_ (
    .A(_2305_),
    .B(_1656_),
    .Y(_2343_)
);

OAI21X1 _12585_ (
    .A(\datapath.csr.csr_wdata [28]),
    .B(_2672__bF$buf2),
    .C(_2762_),
    .Y(_2763_)
);

OAI21X1 _12165_ (
    .A(_1600_),
    .B(_973_),
    .C(_2103__bF$buf0),
    .Y(_1601_)
);

OAI21X1 _18811_ (
    .A(_8080_),
    .B(_8565__bF$buf4),
    .C(_8588_),
    .Y(_4258_)
);

BUFX2 BUFX2_insert1200 (
    .A(_5437_),
    .Y(_5437__bF$buf3)
);

BUFX2 BUFX2_insert1201 (
    .A(_5437_),
    .Y(_5437__bF$buf2)
);

BUFX2 BUFX2_insert1202 (
    .A(_5437_),
    .Y(_5437__bF$buf1)
);

BUFX2 BUFX2_insert1203 (
    .A(_5437_),
    .Y(_5437__bF$buf0)
);

BUFX2 BUFX2_insert1204 (
    .A(_4687_),
    .Y(_4687__bF$buf4)
);

BUFX2 BUFX2_insert1205 (
    .A(_4687_),
    .Y(_4687__bF$buf3)
);

BUFX2 BUFX2_insert1206 (
    .A(_4687_),
    .Y(_4687__bF$buf2)
);

BUFX2 BUFX2_insert1207 (
    .A(_4687_),
    .Y(_4687__bF$buf1)
);

BUFX2 BUFX2_insert1208 (
    .A(_4687_),
    .Y(_4687__bF$buf0)
);

BUFX2 BUFX2_insert1209 (
    .A(_3291_),
    .Y(_3291__bF$buf3)
);

NAND2X1 _14731_ (
    .A(\datapath.registers.828[12] [3]),
    .B(_5132__bF$buf7),
    .Y(_5136_)
);

NOR2X1 _14311_ (
    .A(\datapath.registers.828[18] [11]),
    .B(_4886__bF$buf4),
    .Y(_4900_)
);

FILL SFILL73880x47050 (
);

FILL SFILL18920x43050 (
);

MUX2X1 _15936_ (
    .A(\datapath.registers.828[11] [4]),
    .B(\datapath.registers.828[10] [4]),
    .S(\datapath.idinstr_15_bF$buf24 ),
    .Y(_5860_)
);

OAI21X1 _15516_ (
    .A(_5546__bF$buf2),
    .B(_4697__bF$buf0),
    .C(_5559_),
    .Y(_4343_)
);

OAI21X1 _10651_ (
    .A(\datapath.alu.a [7]),
    .B(_1337_),
    .C(_1359_),
    .Y(_1369_)
);

DFFPOSX1 _10231_ (
    .Q(\datapath.csr.csr_mepc [8]),
    .CLK(CLK_bF$buf122),
    .D(\datapath.alupc [8])
);

NAND3X1 _11856_ (
    .A(_2103__bF$buf0),
    .B(_1270_),
    .C(_1269_),
    .Y(_1271_)
);

FILL SFILL18440x36050 (
);

AOI21X1 _11436_ (
    .A(_2355_),
    .B(_2361_),
    .C(_2396_),
    .Y(_2397_)
);

NOR2X1 _11016_ (
    .A(\datapath.alu.b_2_bF$buf4 ),
    .B(_1985_),
    .Y(_1986_)
);

MUX2X1 _16894_ (
    .A(\datapath.registers.828[23] [25]),
    .B(\datapath.registers.828[21] [25]),
    .S(\datapath.idinstr_16_bF$buf45 ),
    .Y(_6797_)
);

MUX2X1 _16474_ (
    .A(_6385_),
    .B(_6384_),
    .S(\datapath.idinstr_16_bF$buf19 ),
    .Y(_6386_)
);

AOI21X1 _16054_ (
    .A(\datapath.registers.828[21] [6]),
    .B(\datapath.idinstr_17_bF$buf6 ),
    .C(_5681__bF$buf4),
    .Y(_5976_)
);

INVX1 _17679_ (
    .A(\datapath.registers.828[1] [10]),
    .Y(_7565_)
);

MUX2X1 _17259_ (
    .A(\datapath.registers.828[23] [1]),
    .B(\datapath.registers.828[21] [1]),
    .S(\datapath.idinstr_21_bF$buf8 ),
    .Y(_7154_)
);

INVX1 _12394_ (
    .A(\datapath.csr.csr_wdata [10]),
    .Y(_2621_)
);

OAI21X1 _18620_ (
    .A(_8483_),
    .B(\datapath.idinstr_22_bF$buf28 ),
    .C(_8484_),
    .Y(_8485_)
);

MUX2X1 _18200_ (
    .A(\datapath.registers.828[1] [22]),
    .B(\datapath.registers.828[0] [22]),
    .S(\datapath.idinstr_20_bF$buf19 ),
    .Y(_8074_)
);

OAI21X1 _10707_ (
    .A(_1572_),
    .B(_1667_),
    .C(_1677_),
    .Y(_1678_)
);

NAND2X1 _13599_ (
    .A(\datapath.jumptarget [0]),
    .B(_3427__bF$buf3),
    .Y(_3428_)
);

NAND2X1 _13179_ (
    .A(_0__1_bF$buf0),
    .B(\datapath.memoryinterface.data_store [1]),
    .Y(_3128_)
);

DFFPOSX1 _19825_ (
    .Q(\datapath.registers.828[3] [1]),
    .CLK(CLK_bF$buf134),
    .D(_4447_)
);

FILL SFILL38600x21050 (
);

DFFPOSX1 _19405_ (
    .Q(\datapath.registers.828[8] [29]),
    .CLK(CLK_bF$buf148),
    .D(_4617_)
);

INVX1 _14960_ (
    .A(\datapath.registers.828[9] [6]),
    .Y(_5266_)
);

OAI21X1 _14540_ (
    .A(_5003__bF$buf0),
    .B(_4711__bF$buf3),
    .C(_5024_),
    .Y(_3838_)
);

AOI21X1 _14120_ (
    .A(_4715__bF$buf1),
    .B(_4772__bF$buf1),
    .C(_4794_),
    .Y(_4065_)
);

FILL SFILL38520x28050 (
);

FILL SFILL48760x6050 (
);

AOI21X1 _15745_ (
    .A(_4729__bF$buf2),
    .B(_5647__bF$buf2),
    .C(_5676_),
    .Y(_4392_)
);

OAI21X1 _15325_ (
    .A(_4711__bF$buf0),
    .B(_5437__bF$buf4),
    .C(_5457_),
    .Y(_4158_)
);

INVX2 _10880_ (
    .A(\datapath.alu.a [10]),
    .Y(_1851_)
);

DFFPOSX1 _10460_ (
    .Q(\datapath.alupc_4 [10]),
    .CLK(CLK_bF$buf28),
    .D(\datapath.idpc_4 [10])
);

DFFPOSX1 _10040_ (
    .Q(\datapath.wbpc_4 [14]),
    .CLK(CLK_bF$buf146),
    .D(\datapath.mempc_4 [14])
);

FILL SFILL3160x27050 (
);

FILL SFILL59000x10050 (
);

AOI21X1 _11665_ (
    .A(_1920_),
    .B(_1052_),
    .C(_1066_),
    .Y(_1067_)
);

OAI21X1 _11245_ (
    .A(_2195_),
    .B(_2196_),
    .C(_2210_),
    .Y(_2211_)
);

FILL SFILL28520x26050 (
);

AND2X2 _9813_ (
    .A(\datapath.alupc [22]),
    .B(\datapath.regimmalu [22]),
    .Y(_673_)
);

FILL SFILL73960x35050 (
);

FILL SFILL49000x53050 (
);

NAND2X1 _13811_ (
    .A(\datapath.programcounter.pc [26]),
    .B(_3590_),
    .Y(_3591_)
);

AOI21X1 _16283_ (
    .A(_6199_),
    .B(_6192_),
    .C(_5685__bF$buf6),
    .Y(_6200_)
);

AOI21X1 _17488_ (
    .A(_7372_),
    .B(_7377_),
    .C(_7093__bF$buf2),
    .Y(_7378_)
);

MUX2X1 _17068_ (
    .A(\datapath.registers.828[19] [29]),
    .B(\datapath.registers.828[17] [29]),
    .S(\datapath.idinstr_16_bF$buf15 ),
    .Y(_6967_)
);

FILL SFILL18520x24050 (
);

FILL SFILL39000x51050 (
);

OR2X2 _10936_ (
    .A(_1896_),
    .B(_1905_),
    .Y(_1907_)
);

DFFPOSX1 _10516_ (
    .Q(\datapath.idinstr [2]),
    .CLK(CLK_bF$buf8),
    .D(\datapath._05_ [2])
);

DFFPOSX1 _19634_ (
    .Q(\datapath.registers.828[26] [2]),
    .CLK(CLK_bF$buf10),
    .D(_4234_)
);

DFFPOSX1 _19214_ (
    .Q(\datapath.registers.828[19] [30]),
    .CLK(CLK_bF$buf149),
    .D(_3979_)
);

MUX2X1 _15974_ (
    .A(_5897_),
    .B(_5896_),
    .S(\datapath.idinstr_16_bF$buf21 ),
    .Y(_5898_)
);

OAI21X1 _15554_ (
    .A(_5546__bF$buf1),
    .B(_4735__bF$buf2),
    .C(_5578_),
    .Y(_4364_)
);

OAI21X1 _15134_ (
    .A(_5335__bF$buf0),
    .B(_4717__bF$buf1),
    .C(_5359_),
    .Y(_4578_)
);

FILL SFILL48600x18050 (
);

FILL SFILL53880x38050 (
);

AOI21X1 _16759_ (
    .A(_6659_),
    .B(_6664_),
    .C(\datapath.idinstr_18_bF$buf3 ),
    .Y(_6665_)
);

MUX2X1 _16339_ (
    .A(\datapath.registers.828[9] [13]),
    .B(\datapath.registers.828[8] [13]),
    .S(\datapath.idinstr_15_bF$buf22 ),
    .Y(_6254_)
);

OAI21X1 _11894_ (
    .A(_1243_),
    .B(_1698_),
    .C(_1798_),
    .Y(_1312_)
);

OAI21X1 _11474_ (
    .A(_2074_),
    .B(_2081_),
    .C(_2367_),
    .Y(_2434_)
);

AOI21X1 _11054_ (
    .A(_994__bF$buf1),
    .B(_1859_),
    .C(\datapath.alu.b_2_bF$buf7 ),
    .Y(_2023_)
);

OAI21X1 _17700_ (
    .A(_5057_),
    .B(\datapath.idinstr_20_bF$buf46 ),
    .C(\datapath.idinstr_21_bF$buf38 ),
    .Y(_7585_)
);

FILL SFILL53480x24050 (
);

NAND2X1 _9622_ (
    .A(\datapath.registers.rega_data [30]),
    .B(_418__bF$buf3),
    .Y(_509_)
);

NOR2X1 _9202_ (
    .A(_185_),
    .B(_187_),
    .Y(_188_)
);

AOI21X1 _12679_ (
    .A(_2572_),
    .B(_2797__bF$buf6),
    .C(_2825_),
    .Y(\datapath.csr._32_ [27])
);

OAI21X1 _12259_ (
    .A(_2520_),
    .B(_2490__bF$buf3),
    .C(_2521_),
    .Y(\datapath.csr.csr_data [6])
);

FILL SFILL3720x22050 (
);

FILL SFILL38600x16050 (
);

OAI21X1 _18905_ (
    .A(_5888_),
    .B(_8631__bF$buf2),
    .C(_8636_),
    .Y(_4206_)
);

NOR2X1 _13620_ (
    .A(_3442_),
    .B(_3443_),
    .Y(\datapath.nextpc [4])
);

NAND2X1 _13200_ (
    .A(_0__1_bF$buf3),
    .B(\datapath.memoryinterface.data_store [4]),
    .Y(_3146_)
);

OAI21X1 _16092_ (
    .A(_6012_),
    .B(_6003_),
    .C(_5680__bF$buf4),
    .Y(_6013_)
);

FILL SFILL28600x59050 (
);

FILL SFILL3240x15050 (
);

INVX1 _14825_ (
    .A(\datapath.registers.828[11] [14]),
    .Y(_5187_)
);

NOR2X1 _14405_ (
    .A(\datapath.registers.828[17] [21]),
    .B(_4924__bF$buf2),
    .Y(_4952_)
);

FILL SFILL43480x22050 (
);

NAND2X1 _17297_ (
    .A(_7089__bF$buf8),
    .B(_7190_),
    .Y(_7191_)
);

INVX2 _10745_ (
    .A(_1715_),
    .Y(_1716_)
);

DFFPOSX1 _10325_ (
    .Q(\datapath.regrs2alu [6]),
    .CLK(CLK_bF$buf147),
    .D(\datapath.registers.regb_data [6])
);

DFFPOSX1 _20003_ (
    .Q(\datapath.registers.828[25] [19]),
    .CLK(CLK_bF$buf79),
    .D(_4190_)
);

DFFPOSX1 _19863_ (
    .Q(\datapath.registers.828[1] [7]),
    .CLK(CLK_bF$buf52),
    .D(_4017_)
);

DFFPOSX1 _19443_ (
    .Q(\datapath.registers.828[23] [3]),
    .CLK(CLK_bF$buf128),
    .D(_4141_)
);

DFFPOSX1 _19023_ (
    .Q(\datapath.registers.828[18] [31]),
    .CLK(CLK_bF$buf78),
    .D(_3948_)
);

FILL SFILL33480x20050 (
);

NAND2X1 _15783_ (
    .A(\datapath.registers.828[8] [0]),
    .B(_5684__bF$buf6),
    .Y(_5711_)
);

NAND2X1 _15363_ (
    .A(\datapath.registers.828[4] [6]),
    .B(_5470__bF$buf3),
    .Y(_5477_)
);

FILL FILL83080x56050 (
);

NAND2X1 _16988_ (
    .A(_6886_),
    .B(_6888_),
    .Y(_6889_)
);

NOR2X1 _16568_ (
    .A(_6477_),
    .B(_5681__bF$buf3),
    .Y(_6478_)
);

NAND3X1 _16148_ (
    .A(\datapath.idinstr_16_bF$buf27 ),
    .B(_6067_),
    .C(_6065_),
    .Y(_6068_)
);

FILL SFILL18520x19050 (
);

MUX2X1 _11283_ (
    .A(\datapath.alu.a [5]),
    .B(\datapath.alu.a [6]),
    .S(\datapath.alu.b_0_bF$buf5 ),
    .Y(_2248_)
);

FILL SFILL8440x60050 (
);

OAI21X1 _9851_ (
    .A(_691_),
    .B(_706_),
    .C(_705_),
    .Y(_707_)
);

NAND2X1 _9431_ (
    .A(\datapath.imm [15]),
    .B(_316__bF$buf3),
    .Y(_365_)
);

NAND2X1 _9011_ (
    .A(gnd),
    .B(\datapath.idpc_4 [2]),
    .Y(_836_)
);

FILL FILL83080x11050 (
);

MUX2X1 _12488_ (
    .A(\datapath.csr.mepc [5]),
    .B(\datapath.csr.csr_wdata [7]),
    .S(_2672__bF$buf5),
    .Y(_2687_)
);

AOI21X1 _12068_ (
    .A(_1209__bF$buf2),
    .B(_2435_),
    .C(_1497_),
    .Y(_1499_)
);

FILL SFILL84040x41050 (
);

NAND2X1 _18714_ (
    .A(\datapath.registers.828[28] [7]),
    .B(_8531__bF$buf0),
    .Y(_8539_)
);

DFFPOSX1 _19919_ (
    .Q(\datapath.registers.828[29] [31]),
    .CLK(CLK_bF$buf70),
    .D(_4332_)
);

OAI21X1 _14634_ (
    .A(_5081_),
    .B(_5039__bF$buf0),
    .C(_5082_),
    .Y(_3811_)
);

AOI21X1 _14214_ (
    .A(_4675__bF$buf0),
    .B(_4842__bF$buf5),
    .C(_4844_),
    .Y(_3967_)
);

NAND2X1 _15839_ (
    .A(\datapath.idinstr_17_bF$buf12 ),
    .B(_5765_),
    .Y(_5766_)
);

AOI21X1 _15419_ (
    .A(_4675__bF$buf4),
    .B(_5503__bF$buf3),
    .C(_5505_),
    .Y(_4447_)
);

NAND2X1 _10974_ (
    .A(\datapath.alu.b_0_bF$buf3 ),
    .B(\datapath.alu.a [2]),
    .Y(_1944_)
);

DFFPOSX1 _10554_ (
    .Q(\datapath.idpc_4 [8]),
    .CLK(CLK_bF$buf69),
    .D(\datapath._04_ [8])
);

DFFPOSX1 _10134_ (
    .Q(_0_[12]),
    .CLK(CLK_bF$buf28),
    .D(\datapath.alu.c [12])
);

DFFPOSX1 _19672_ (
    .Q(\datapath.registers.828[27] [8]),
    .CLK(CLK_bF$buf70),
    .D(_4274_)
);

DFFPOSX1 _19252_ (
    .Q(\datapath.registers.828[22] [4]),
    .CLK(CLK_bF$buf24),
    .D(_4110_)
);

BUFX2 _8702_ (
    .A(_1_[6]),
    .Y(DMEM_DATA_S[6])
);

OAI21X1 _11759_ (
    .A(_1889__bF$buf3),
    .B(\datapath.alu.a [18]),
    .C(_1890__bF$buf2),
    .Y(_1168_)
);

OAI21X1 _11339_ (
    .A(_2239_),
    .B(_2299_),
    .C(_2301_),
    .Y(_2302_)
);

FILL SFILL43960x24050 (
);

AOI22X1 _12700_ (
    .A(_2509_),
    .B(\controlunit.csrfile_trap_wen_bF$buf6 ),
    .C(_2838_),
    .D(_2839_),
    .Y(\datapath.csr._37_ [1])
);

OAI21X1 _15592_ (
    .A(_5098__bF$buf1),
    .B(_4668__bF$buf5),
    .C(\datapath.registers.828[1] [18]),
    .Y(_5598_)
);

NOR2X1 _15172_ (
    .A(\datapath.registers.828[6] [9]),
    .B(_5369__bF$buf6),
    .Y(_5379_)
);

INVX1 _9907_ (
    .A(_757_),
    .Y(_758_)
);

FILL SFILL64360x58050 (
);

INVX2 _13905_ (
    .A(\datapath.wbinstr [9]),
    .Y(_4665_)
);

MUX2X1 _16797_ (
    .A(_6701_),
    .B(_6700_),
    .S(\datapath.idinstr_16_bF$buf25 ),
    .Y(_6702_)
);

NAND2X1 _16377_ (
    .A(\datapath.idinstr_17_bF$buf8 ),
    .B(_6291_),
    .Y(_6292_)
);

MUX2X1 _11092_ (
    .A(_2059_),
    .B(_2057_),
    .S(\datapath.alu.b_1_bF$buf2 ),
    .Y(_2060_)
);

INVX1 _9660_ (
    .A(_536_),
    .Y(_538_)
);

AOI22X1 _9240_ (
    .A(_219__bF$buf2),
    .B(\datapath.wbpc_4 [1]),
    .C(\datapath.regcsrwb [1]),
    .D(_216__bF$buf1),
    .Y(_221_)
);

INVX1 _12297_ (
    .A(\datapath.csr.mcause [16]),
    .Y(_2550_)
);

FILL SFILL68680x21050 (
);

OAI21X1 _18943_ (
    .A(_6717_),
    .B(_8631__bF$buf2),
    .C(_8655_),
    .Y(_4195_)
);

NAND2X1 _18523_ (
    .A(_8386_),
    .B(_8389_),
    .Y(_8390_)
);

NAND2X1 _18103_ (
    .A(\datapath.idinstr_22_bF$buf19 ),
    .B(_7978_),
    .Y(_7979_)
);

DFFPOSX1 _19728_ (
    .Q(\datapath.registers.828[16] [0]),
    .CLK(CLK_bF$buf127),
    .D(_3860_)
);

DFFPOSX1 _19308_ (
    .Q(\datapath.registers.828[2] [28]),
    .CLK(CLK_bF$buf103),
    .D(_4360_)
);

AOI21X1 _14863_ (
    .A(_4733__bF$buf2),
    .B(_5167__bF$buf5),
    .C(_5208_),
    .Y(_3723_)
);

NAND2X1 _14443_ (
    .A(\datapath.registers.828[16] [5]),
    .B(_4968__bF$buf5),
    .Y(_4974_)
);

NOR2X1 _14023_ (
    .A(\datapath.registers.828[22] [6]),
    .B(_4738__bF$buf4),
    .Y(_4745_)
);

FILL FILL83160x44050 (
);

FILL SFILL23480x58050 (
);

OAI21X1 _15648_ (
    .A(_5614__bF$buf1),
    .B(_4697__bF$buf3),
    .C(_5627_),
    .Y(_4407_)
);

AOI21X1 _15228_ (
    .A(_4681__bF$buf4),
    .B(_5402__bF$buf3),
    .C(_5407_),
    .Y(_4526_)
);

INVX1 _10783_ (
    .A(\datapath.alu.b [25]),
    .Y(_1754_)
);

DFFPOSX1 _10363_ (
    .Q(\datapath.alu.b [12]),
    .CLK(CLK_bF$buf113),
    .D(\datapath.muxbval [12])
);

FILL SFILL23400x56050 (
);

DFFPOSX1 _19481_ (
    .Q(\datapath.registers.828[5] [9]),
    .CLK(CLK_bF$buf17),
    .D(_4531_)
);

DFFPOSX1 _19061_ (
    .Q(\datapath.registers.828[10] [5]),
    .CLK(CLK_bF$buf123),
    .D(_3695_)
);

FILL SFILL23480x13050 (
);

FILL SFILL8440x55050 (
);

OAI21X1 _8931_ (
    .A(_781_),
    .B(gnd),
    .C(_782_),
    .Y(\datapath._03_ [7])
);

OAI21X1 _11988_ (
    .A(_1759_),
    .B(_1760_),
    .C(_1382_),
    .Y(_1413_)
);

NAND2X1 _11568_ (
    .A(_1123__bF$buf1),
    .B(_961_),
    .Y(_963_)
);

NAND3X1 _11148_ (
    .A(_1123__bF$buf0),
    .B(_2114_),
    .C(_2115_),
    .Y(_2116_)
);

FILL SFILL84040x36050 (
);

FILL SFILL23400x11050 (
);

FILL SFILL13480x56050 (
);

NAND2X1 _9716_ (
    .A(_585_),
    .B(_586_),
    .Y(_588_)
);

FILL SFILL8440x10050 (
);

NAND2X1 _13714_ (
    .A(\datapath.programcounter.pc [14]),
    .B(\datapath.programcounter.pc [15]),
    .Y(_3514_)
);

FILL SFILL8360x17050 (
);

FILL SFILL13400x54050 (
);

MUX2X1 _16186_ (
    .A(\datapath.registers.828[13] [9]),
    .B(\datapath.registers.828[12] [9]),
    .S(\datapath.idinstr_15_bF$buf36 ),
    .Y(_6105_)
);

FILL SFILL13480x11050 (
);

FILL SFILL74440x48050 (
);

NOR2X1 _14919_ (
    .A(\datapath.registers.828[10] [21]),
    .B(_5212__bF$buf6),
    .Y(_5242_)
);

NAND2X1 _18752_ (
    .A(\datapath.registers.828[28] [26]),
    .B(_8531__bF$buf4),
    .Y(_8558_)
);

MUX2X1 _18332_ (
    .A(\datapath.registers.828[18] [25]),
    .B(\datapath.registers.828[16] [25]),
    .S(\datapath.idinstr_21_bF$buf34 ),
    .Y(_8203_)
);

NAND2X1 _10839_ (
    .A(alusel[1]),
    .B(_1809_),
    .Y(_1810_)
);

DFFPOSX1 _10419_ (
    .Q(\datapath.aluinstr [1]),
    .CLK(CLK_bF$buf54),
    .D(\datapath.idinstr [1])
);

FILL SFILL43960x19050 (
);

DFFPOSX1 _19957_ (
    .Q(\datapath.registers.828[6] [5]),
    .CLK(CLK_bF$buf58),
    .D(_4559_)
);

DFFPOSX1 _19537_ (
    .Q(\datapath.registers.828[12] [1]),
    .CLK(CLK_bF$buf123),
    .D(_3743_)
);

DFFPOSX1 _19117_ (
    .Q(\datapath.registers.828[14] [29]),
    .CLK(CLK_bF$buf138),
    .D(_3817_)
);

NOR2X1 _14672_ (
    .A(\datapath.registers.828[13] [6]),
    .B(_5099__bF$buf0),
    .Y(_5106_)
);

INVX1 _14252_ (
    .A(\datapath.registers.828[19] [18]),
    .Y(_4866_)
);

FILL SFILL84440x3050 (
);

FILL SFILL84040x2050 (
);

OAI21X1 _15877_ (
    .A(_5216_),
    .B(\datapath.idinstr_17_bF$buf5 ),
    .C(_5802_),
    .Y(_5803_)
);

FILL SFILL83720x5050 (
);

NOR2X1 _15457_ (
    .A(\datapath.registers.828[3] [18]),
    .B(_5503__bF$buf2),
    .Y(_5527_)
);

NAND2X1 _15037_ (
    .A(\datapath.registers.828[8] [8]),
    .B(_5300__bF$buf7),
    .Y(_5309_)
);

DFFPOSX1 _10592_ (
    .Q(\datapath.idpc [14]),
    .CLK(CLK_bF$buf3),
    .D(\datapath._03_ [14])
);

DFFPOSX1 _10172_ (
    .Q(\datapath.meminstr [11]),
    .CLK(CLK_bF$buf61),
    .D(\datapath.aluinstr [11])
);

DFFPOSX1 _19290_ (
    .Q(\datapath.registers.828[2] [10]),
    .CLK(CLK_bF$buf126),
    .D(_4341_)
);

BUFX2 _8740_ (
    .A(\datapath.programcounter.pc [11]),
    .Y(IMEM_ADDR[11])
);

AOI21X1 _11797_ (
    .A(\datapath.alu.b [19]),
    .B(_1203_),
    .C(_1207_),
    .Y(_1208_)
);

NAND2X1 _11377_ (
    .A(\datapath.alu.a [8]),
    .B(\datapath.alu.b [8]),
    .Y(_2340_)
);

FILL SFILL68680x16050 (
);

AOI21X1 _17603_ (
    .A(_7466_),
    .B(_7490_),
    .C(_7095__bF$buf0),
    .Y(\datapath.registers.regb_data [8])
);

DFFPOSX1 _9945_ (
    .Q(\datapath.regcsrwb [31]),
    .CLK(CLK_bF$buf83),
    .D(\datapath.csr.csr_wdata [31])
);

NAND3X1 _9525_ (
    .A(_435_),
    .B(_436_),
    .C(_434_),
    .Y(\datapath.muxaval [5])
);

OAI21X1 _9105_ (
    .A(_897_),
    .B(gnd),
    .C(_898_),
    .Y(\datapath._05_ [1])
);

FILL SFILL58680x59050 (
);

NOR2X1 _18808_ (
    .A(\datapath.registers.828[27] [21]),
    .B(_8565__bF$buf5),
    .Y(_8587_)
);

INVX8 _13943_ (
    .A(\datapath.rd [10]),
    .Y(_4693_)
);

AOI21X1 _13523_ (
    .A(gnd),
    .B(_3374_),
    .C(_3375_),
    .Y(\datapath.programcounter._1_ [8])
);

INVX2 _13103_ (
    .A(\datapath.memoryinterface.data_store [5]),
    .Y(_3064_)
);

FILL FILL83160x39050 (
);

BUFX2 BUFX2_insert1170 (
    .A(_7089_),
    .Y(_7089__bF$buf2)
);

BUFX2 BUFX2_insert1171 (
    .A(_7089_),
    .Y(_7089__bF$buf1)
);

BUFX2 BUFX2_insert1172 (
    .A(_7089_),
    .Y(_7089__bF$buf0)
);

BUFX2 BUFX2_insert1173 (
    .A(_4693_),
    .Y(_4693__bF$buf4)
);

BUFX2 BUFX2_insert1174 (
    .A(_4693_),
    .Y(_4693__bF$buf3)
);

BUFX2 BUFX2_insert1175 (
    .A(_4693_),
    .Y(_4693__bF$buf2)
);

BUFX2 BUFX2_insert1176 (
    .A(_4693_),
    .Y(_4693__bF$buf1)
);

BUFX2 BUFX2_insert1177 (
    .A(_4693_),
    .Y(_4693__bF$buf0)
);

BUFX2 BUFX2_insert1178 (
    .A(_3027_),
    .Y(_3027__bF$buf4)
);

BUFX2 BUFX2_insert1179 (
    .A(_3027_),
    .Y(_3027__bF$buf3)
);

OAI21X1 _14728_ (
    .A(_4675__bF$buf3),
    .B(_5132__bF$buf4),
    .C(_5134_),
    .Y(_3743_)
);

OAI21X1 _14308_ (
    .A(_4897_),
    .B(_4886__bF$buf1),
    .C(_4898_),
    .Y(_3955_)
);

FILL SFILL8520x43050 (
);

BUFX2 BUFX2_insert990 (
    .A(\datapath.idinstr_22_hier0_bF$buf1 ),
    .Y(\datapath.idinstr_22_bF$buf25 )
);

BUFX2 BUFX2_insert991 (
    .A(\datapath.idinstr_22_hier0_bF$buf0 ),
    .Y(\datapath.idinstr_22_bF$buf24 )
);

BUFX2 BUFX2_insert992 (
    .A(\datapath.idinstr_22_hier0_bF$buf3 ),
    .Y(\datapath.idinstr_22_bF$buf23 )
);

BUFX2 BUFX2_insert993 (
    .A(\datapath.idinstr_22_hier0_bF$buf3 ),
    .Y(\datapath.idinstr_22_bF$buf22 )
);

BUFX2 BUFX2_insert994 (
    .A(\datapath.idinstr_22_hier0_bF$buf1 ),
    .Y(\datapath.idinstr_22_bF$buf21 )
);

BUFX2 BUFX2_insert995 (
    .A(\datapath.idinstr_22_hier0_bF$buf2 ),
    .Y(\datapath.idinstr_22_bF$buf20 )
);

FILL SFILL48760x50050 (
);

BUFX2 BUFX2_insert996 (
    .A(\datapath.idinstr_22_hier0_bF$buf0 ),
    .Y(\datapath.idinstr_22_bF$buf19 )
);

BUFX2 BUFX2_insert997 (
    .A(\datapath.idinstr_22_hier0_bF$buf2 ),
    .Y(\datapath.idinstr_22_bF$buf18 )
);

BUFX2 BUFX2_insert998 (
    .A(\datapath.idinstr_22_hier0_bF$buf5 ),
    .Y(\datapath.idinstr_22_bF$buf17 )
);

BUFX2 BUFX2_insert999 (
    .A(\datapath.idinstr_22_hier0_bF$buf0 ),
    .Y(\datapath.idinstr_22_bF$buf16 )
);

BUFX2 _18981_ (
    .A(\datapath.registers.828[0] [21]),
    .Y(_3649_)
);

NAND2X1 _18561_ (
    .A(_7092__bF$buf10),
    .B(_8426_),
    .Y(_8427_)
);

AOI21X1 _18141_ (
    .A(_7992_),
    .B(_8016_),
    .C(_7095__bF$buf0),
    .Y(\datapath.registers.regb_data [20])
);

FILL SFILL53640x9050 (
);

FILL SFILL48680x57050 (
);

INVX2 _10648_ (
    .A(\datapath.alu.b [7]),
    .Y(_1337_)
);

DFFPOSX1 _10228_ (
    .Q(\datapath.csr.csr_mepc [5]),
    .CLK(CLK_bF$buf115),
    .D(\datapath.alupc [5])
);

DFFPOSX1 _19766_ (
    .Q(\datapath.registers.828[30] [6]),
    .CLK(CLK_bF$buf143),
    .D(_4400_)
);

DFFPOSX1 _19346_ (
    .Q(\datapath.registers.828[7] [2]),
    .CLK(CLK_bF$buf23),
    .D(_4586_)
);

NAND2X1 _14481_ (
    .A(\datapath.registers.828[16] [24]),
    .B(_4968__bF$buf0),
    .Y(_4993_)
);

NOR2X1 _14061_ (
    .A(\datapath.registers.828[22] [25]),
    .B(_4738__bF$buf0),
    .Y(_4764_)
);

FILL SFILL48680x12050 (
);

FILL SFILL78840x44050 (
);

OAI21X1 _15686_ (
    .A(_5614__bF$buf4),
    .B(_4735__bF$buf4),
    .C(_5646_),
    .Y(_4428_)
);

AOI21X1 _15266_ (
    .A(_4719__bF$buf0),
    .B(_5402__bF$buf3),
    .C(_5426_),
    .Y(_4515_)
);

FILL SFILL38680x55050 (
);

NAND2X1 _11186_ (
    .A(_1209__bF$buf4),
    .B(_1230_),
    .Y(_2153_)
);

MUX2X1 _17832_ (
    .A(_7713_),
    .B(_7712_),
    .S(\datapath.idinstr_21_bF$buf31 ),
    .Y(_7714_)
);

MUX2X1 _17412_ (
    .A(_7303_),
    .B(_7302_),
    .S(\datapath.idinstr_21_bF$buf26 ),
    .Y(_7304_)
);

FILL SFILL38680x10050 (
);

FILL SFILL49000x7050 (
);

NOR2X1 _9754_ (
    .A(_620_),
    .B(_619_),
    .Y(_621_)
);

AOI22X1 _9334_ (
    .A(\datapath.regcwb [24]),
    .B(_218__bF$buf0),
    .C(_219__bF$buf0),
    .D(\datapath.wbpc_4 [24]),
    .Y(_292_)
);

FILL SFILL23640x8050 (
);

AOI21X1 _18617_ (
    .A(_8477_),
    .B(_8481_),
    .C(_7093__bF$buf0),
    .Y(_8482_)
);

NOR2X1 _13752_ (
    .A(_3530_),
    .B(_3543_),
    .Y(_3544_)
);

NAND2X1 _13332_ (
    .A(\datapath.memoryinterface.data_store [1]),
    .B(_3239__bF$buf3),
    .Y(_3241_)
);

FILL SFILL28680x53050 (
);

AOI21X1 _14957_ (
    .A(_4681__bF$buf1),
    .B(_5257__bF$buf1),
    .C(_5264_),
    .Y(_4654_)
);

OAI21X1 _14537_ (
    .A(_5004__bF$buf4),
    .B(_4840__bF$buf8),
    .C(\datapath.registers.828[15] [18]),
    .Y(_5023_)
);

NOR2X1 _14117_ (
    .A(\datapath.registers.828[21] [20]),
    .B(_4772__bF$buf7),
    .Y(_4793_)
);

NOR2X1 _18790_ (
    .A(\datapath.registers.828[27] [12]),
    .B(_8565__bF$buf0),
    .Y(_8578_)
);

MUX2X1 _18370_ (
    .A(\datapath.registers.828[29] [26]),
    .B(\datapath.registers.828[28] [26]),
    .S(\datapath.idinstr_20_bF$buf38 ),
    .Y(_8240_)
);

FILL SFILL58840x40050 (
);

NAND2X1 _10877_ (
    .A(_994__bF$buf4),
    .B(_1847_),
    .Y(_1848_)
);

DFFPOSX1 _10457_ (
    .Q(\datapath.alupc_4 [7]),
    .CLK(CLK_bF$buf0),
    .D(\datapath.idpc_4 [7])
);

DFFPOSX1 _10037_ (
    .Q(\datapath.wbpc_4 [11]),
    .CLK(CLK_bF$buf77),
    .D(\datapath.mempc_4 [11])
);

FILL SFILL18680x51050 (
);

FILL SFILL58760x47050 (
);

DFFPOSX1 _19995_ (
    .Q(\datapath.registers.828[25] [11]),
    .CLK(CLK_bF$buf120),
    .D(_4182_)
);

DFFPOSX1 _19575_ (
    .Q(\datapath.registers.828[21] [7]),
    .CLK(CLK_bF$buf128),
    .D(_4081_)
);

DFFPOSX1 _19155_ (
    .Q(\datapath.registers.828[15] [3]),
    .CLK(CLK_bF$buf25),
    .D(_3853_)
);

AOI21X1 _14290_ (
    .A(_4675__bF$buf0),
    .B(_4886__bF$buf2),
    .C(_4888_),
    .Y(_3935_)
);

NAND2X1 _12603_ (
    .A(\controlunit.csrfile_trap_wen_bF$buf3 ),
    .B(\datapath.csr.csr_mcause [0]),
    .Y(_2777_)
);

OAI21X1 _15495_ (
    .A(_5038__bF$buf0),
    .B(_4668__bF$buf0),
    .C(\datapath.registers.828[2] [2]),
    .Y(_5549_)
);

NAND2X1 _15075_ (
    .A(\datapath.registers.828[8] [27]),
    .B(_5300__bF$buf1),
    .Y(_5328_)
);

INVX2 _13808_ (
    .A(_3587_),
    .Y(_3588_)
);

FILL SFILL48760x45050 (
);

OAI21X1 _17641_ (
    .A(_4936_),
    .B(\datapath.idinstr_22_bF$buf3 ),
    .C(_7527_),
    .Y(_7528_)
);

MUX2X1 _17221_ (
    .A(\datapath.registers.828[9] [0]),
    .B(\datapath.registers.828[8] [0]),
    .S(\datapath.idinstr_20_bF$buf27 ),
    .Y(_7117_)
);

DFFPOSX1 _9983_ (
    .Q(\datapath.regcwb [5]),
    .CLK(CLK_bF$buf1),
    .D(_0_[5])
);

NAND2X1 _9563_ (
    .A(\datapath.idpc [15]),
    .B(_416__bF$buf0),
    .Y(_465_)
);

NAND2X1 _9143_ (
    .A(gnd),
    .B(\datapath.idinstr [14]),
    .Y(_147_)
);

AOI21X1 _18846_ (
    .A(_4687__bF$buf3),
    .B(_8598__bF$buf1),
    .C(_8606_),
    .Y(_4241_)
);

AOI21X1 _18426_ (
    .A(\datapath.idinstr_20_bF$buf0 ),
    .B(_8294_),
    .C(_7092__bF$buf4),
    .Y(_8295_)
);

MUX2X1 _18006_ (
    .A(\datapath.registers.828[25] [18]),
    .B(\datapath.registers.828[24] [18]),
    .S(\datapath.idinstr_20_bF$buf38 ),
    .Y(_7884_)
);

AOI21X1 _13981_ (
    .A(_4717__bF$buf2),
    .B(_4673__bF$buf3),
    .C(_4718_),
    .Y(_4130_)
);

NOR2X1 _13561_ (
    .A(gnd),
    .B(\datapath.programcounter.pc_mux [21]),
    .Y(_3401_)
);

INVX1 _13141_ (
    .A(\datapath.memoryinterface.byte_size_store.storebyte [11]),
    .Y(_3096_)
);

OAI21X1 _14766_ (
    .A(_4713__bF$buf4),
    .B(_5132__bF$buf1),
    .C(_5153_),
    .Y(_3744_)
);

AOI21X1 _14346_ (
    .A(_4727__bF$buf4),
    .B(_4886__bF$buf7),
    .C(_4918_),
    .Y(_3943_)
);

FILL SFILL28520x5050 (
);

FILL SFILL8440x1050 (
);

NAND2X1 _10686_ (
    .A(\datapath.alu.a [8]),
    .B(_1656_),
    .Y(_1657_)
);

DFFPOSX1 _10266_ (
    .Q(\datapath.regimmalu [11]),
    .CLK(CLK_bF$buf98),
    .D(\datapath.immediatedecoder._09_ )
);

AOI21X1 _16912_ (
    .A(\datapath.registers.828[4] [25]),
    .B(\datapath.idinstr_17_bF$buf10 ),
    .C(\datapath.idinstr_15_bF$buf47 ),
    .Y(_6815_)
);

DFFPOSX1 _19384_ (
    .Q(\datapath.registers.828[8] [8]),
    .CLK(CLK_bF$buf25),
    .D(_4626_)
);

AOI22X1 _8834_ (
    .A(_23_),
    .B(_44_),
    .C(_19_),
    .D(\datapath.aluinstr [14]),
    .Y(_45_)
);

OAI22X1 _12832_ (
    .A(_2749_),
    .B(_2585__bF$buf2),
    .C(_2947_),
    .D(_2945_),
    .Y(\datapath.csr.csr_pcaddr [25])
);

INVX1 _12412_ (
    .A(\datapath.csr.csr_wdata [16]),
    .Y(_2633_)
);

NAND2X1 _9619_ (
    .A(\datapath.idpc [29]),
    .B(_416__bF$buf3),
    .Y(_507_)
);

NAND3X1 _13617_ (
    .A(\datapath.programcounter.pc [2]),
    .B(\datapath.programcounter.pc [3]),
    .C(\datapath.programcounter.pc [4]),
    .Y(_3441_)
);

MUX2X1 _16089_ (
    .A(_6009_),
    .B(_6008_),
    .S(\datapath.idinstr_16_bF$buf22 ),
    .Y(_6010_)
);

NAND3X1 _17870_ (
    .A(_7091__bF$buf4),
    .B(_7751_),
    .C(_7748_),
    .Y(_7752_)
);

AOI21X1 _17450_ (
    .A(\datapath.registers.828[29] [5]),
    .B(\datapath.idinstr_22_bF$buf13 ),
    .C(_7089__bF$buf1),
    .Y(_7341_)
);

AOI21X1 _17030_ (
    .A(\datapath.idinstr_15_bF$buf40 ),
    .B(_6929_),
    .C(_5684__bF$buf7),
    .Y(_6930_)
);

NAND3X1 _9792_ (
    .A(_648_),
    .B(_652_),
    .C(_641_),
    .Y(_654_)
);

FILL SFILL38760x2050 (
);

NAND2X1 _9372_ (
    .A(\datapath.csr.csr_data [0]),
    .B(_317__bF$buf2),
    .Y(_321_)
);

FILL SFILL18680x46050 (
);

FILL SFILL38680x7050 (
);

NOR2X1 _18655_ (
    .A(\datapath.registers.828[29] [10]),
    .B(_8498__bF$buf7),
    .Y(_8509_)
);

NAND2X1 _18235_ (
    .A(_7092__bF$buf3),
    .B(_8107_),
    .Y(_8108_)
);

NAND2X1 _13790_ (
    .A(_3424__bF$buf3),
    .B(\datapath.nextpc [24]),
    .Y(_3573_)
);

INVX1 _13370_ (
    .A(\datapath.memoryinterface.byte_size_load.byteval [4]),
    .Y(_3268_)
);

AOI21X1 _14995_ (
    .A(_4713__bF$buf4),
    .B(_5257__bF$buf1),
    .C(_5286_),
    .Y(_4640_)
);

INVX2 _14575_ (
    .A(\datapath.registers.828[14] [3]),
    .Y(_5044_)
);

NOR2X1 _14155_ (
    .A(\datapath.registers.828[20] [6]),
    .B(_4806__bF$buf7),
    .Y(_4813_)
);

DFFPOSX1 _10495_ (
    .Q(\datapath.alupc [13]),
    .CLK(CLK_bF$buf113),
    .D(\datapath.idpc [13])
);

DFFPOSX1 _10075_ (
    .Q(\datapath.csr.csr_wdata [17]),
    .CLK(CLK_bF$buf51),
    .D(\datapath.regcsralu [17])
);

INVX1 _16721_ (
    .A(\datapath.registers.828[15] [21]),
    .Y(_6628_)
);

MUX2X1 _16301_ (
    .A(_6216_),
    .B(_6215_),
    .S(\datapath.idinstr_16_bF$buf14 ),
    .Y(_6217_)
);

DFFPOSX1 _19193_ (
    .Q(\datapath.registers.828[19] [9]),
    .CLK(CLK_bF$buf4),
    .D(_3987_)
);

MUX2X1 _17926_ (
    .A(\datapath.registers.828[18] [16]),
    .B(\datapath.registers.828[16] [16]),
    .S(\datapath.idinstr_21_bF$buf15 ),
    .Y(_7806_)
);

AOI21X1 _17506_ (
    .A(\datapath.registers.828[20] [6]),
    .B(\datapath.idinstr_22_bF$buf34 ),
    .C(\datapath.idinstr_20_bF$buf49 ),
    .Y(_7396_)
);

AOI21X1 _12641_ (
    .A(_2529_),
    .B(_2797__bF$buf0),
    .C(_2805_),
    .Y(\datapath.csr._32_ [9])
);

NAND2X1 _12221_ (
    .A(_2489_),
    .B(_2485_),
    .Y(_2490_)
);

OAI21X1 _9848_ (
    .A(_695_),
    .B(_702_),
    .C(_700_),
    .Y(_704_)
);

NAND2X1 _9428_ (
    .A(\datapath.csr.csr_data [14]),
    .B(_317__bF$buf3),
    .Y(_363_)
);

NAND2X1 _9008_ (
    .A(gnd),
    .B(\datapath.idpc_4 [1]),
    .Y(_834_)
);

FILL SFILL38760x38050 (
);

NOR2X1 _13846_ (
    .A(_3581_),
    .B(_3516_),
    .Y(_3618_)
);

NAND2X1 _13426_ (
    .A(_3033__bF$buf6),
    .B(_3314_),
    .Y(_3315_)
);

NAND3X1 _13006_ (
    .A(\datapath.idinstr_17_bF$buf10 ),
    .B(_3018_),
    .C(_3017_),
    .Y(_3024_)
);

INVX1 _9181_ (
    .A(IMEM_DATA[27]),
    .Y(_172_)
);

AOI21X1 _18884_ (
    .A(_4725__bF$buf0),
    .B(_8598__bF$buf0),
    .C(_8625_),
    .Y(_4230_)
);

MUX2X1 _18464_ (
    .A(\datapath.registers.828[19] [28]),
    .B(\datapath.registers.828[17] [28]),
    .S(\datapath.idinstr_21_bF$buf13 ),
    .Y(_8332_)
);

MUX2X1 _18044_ (
    .A(_7921_),
    .B(_7920_),
    .S(\datapath.idinstr_21_bF$buf37 ),
    .Y(_7922_)
);

FILL SFILL3320x35050 (
);

OAI21X1 _11912_ (
    .A(_2250_),
    .B(_2203_),
    .C(_1901_),
    .Y(_1332_)
);

DFFPOSX1 _19669_ (
    .Q(\datapath.registers.828[27] [5]),
    .CLK(CLK_bF$buf120),
    .D(_4271_)
);

DFFPOSX1 _19249_ (
    .Q(\datapath.registers.828[22] [1]),
    .CLK(CLK_bF$buf31),
    .D(_4095_)
);

OAI21X1 _14384_ (
    .A(_4939_),
    .B(_4924__bF$buf6),
    .C(_4940_),
    .Y(_3894_)
);

FILL SFILL33960x54050 (
);

OAI21X1 _15589_ (
    .A(_5579__bF$buf1),
    .B(_4705__bF$buf1),
    .C(_5596_),
    .Y(_3995_)
);

AOI21X1 _15169_ (
    .A(_4687__bF$buf1),
    .B(_5369__bF$buf4),
    .C(_5377_),
    .Y(_4561_)
);

AOI21X1 _16950_ (
    .A(_6851_),
    .B(_6850_),
    .C(_5683__bF$buf2),
    .Y(_6852_)
);

NAND2X1 _16530_ (
    .A(\datapath.idinstr_17_bF$buf12 ),
    .B(_6440_),
    .Y(_6441_)
);

MUX2X1 _16110_ (
    .A(\datapath.registers.828[27] [7]),
    .B(\datapath.registers.828[25] [7]),
    .S(\datapath.idinstr_16_bF$buf36 ),
    .Y(_6031_)
);

INVX2 _8872_ (
    .A(\datapath.idinstr [14]),
    .Y(_78_)
);

OAI21X1 _11089_ (
    .A(_1681_),
    .B(\datapath.alu.b_0_bF$buf4 ),
    .C(_2056_),
    .Y(_2057_)
);

MUX2X1 _17735_ (
    .A(_7619_),
    .B(_7618_),
    .S(_7089__bF$buf1),
    .Y(_7620_)
);

OAI21X1 _17315_ (
    .A(_5171_),
    .B(\datapath.idinstr_22_bF$buf5 ),
    .C(_7208_),
    .Y(_7209_)
);

NAND3X1 _12870_ (
    .A(_2585__bF$buf5),
    .B(_2476_),
    .C(_2477_),
    .Y(_2478_)
);

INVX1 _12450_ (
    .A(\datapath.csr.mvect [29]),
    .Y(_2658_)
);

OAI21X1 _12030_ (
    .A(_1457_),
    .B(\datapath.alu.b_1_bF$buf0 ),
    .C(_1454_),
    .Y(_1458_)
);

XNOR2X1 _9657_ (
    .A(\datapath.alupc [3]),
    .B(\datapath.regimmalu [3]),
    .Y(_536_)
);

NOR2X1 _9237_ (
    .A(\controlunit.wb_sel [0]),
    .B(_215_),
    .Y(_219_)
);

XOR2X1 _13655_ (
    .A(_3464_),
    .B(\datapath.programcounter.pc [9]),
    .Y(\datapath.nextpc [9])
);

NAND2X1 _13235_ (
    .A(_0__1_bF$buf7),
    .B(\datapath.memoryinterface.data_store [9]),
    .Y(_3176_)
);

FILL SFILL69320x55050 (
);

AOI21X1 _15801_ (
    .A(_5724_),
    .B(_5728_),
    .C(\datapath.idinstr_18_bF$buf6 ),
    .Y(_5729_)
);

NOR2X1 _18693_ (
    .A(\datapath.registers.828[29] [29]),
    .B(_8498__bF$buf5),
    .Y(_8528_)
);

AOI21X1 _18273_ (
    .A(\datapath.registers.828[20] [23]),
    .B(\datapath.idinstr_22_bF$buf40 ),
    .C(\datapath.idinstr_20_bF$buf35 ),
    .Y(_8146_)
);

OAI21X1 _11721_ (
    .A(_1121_),
    .B(_1673_),
    .C(_1126_),
    .Y(_1127_)
);

OAI21X1 _11301_ (
    .A(_2261_),
    .B(_2262_),
    .C(_2264_),
    .Y(_2265_)
);

DFFPOSX1 _19898_ (
    .Q(\datapath.registers.828[29] [10]),
    .CLK(CLK_bF$buf130),
    .D(_4309_)
);

DFFPOSX1 _19478_ (
    .Q(\datapath.registers.828[5] [6]),
    .CLK(CLK_bF$buf23),
    .D(_4528_)
);

DFFPOSX1 _19058_ (
    .Q(\datapath.registers.828[10] [2]),
    .CLK(CLK_bF$buf90),
    .D(_3690_)
);

NOR2X1 _14193_ (
    .A(\datapath.registers.828[20] [25]),
    .B(_4806__bF$buf0),
    .Y(_4832_)
);

OAI21X1 _8928_ (
    .A(_779_),
    .B(gnd),
    .C(_780_),
    .Y(\datapath._03_ [6])
);

DFFPOSX1 _12926_ (
    .Q(\datapath.csr.mepc [20]),
    .CLK(CLK_bF$buf96),
    .D(\datapath.csr._26_ [20])
);

OAI21X1 _12506_ (
    .A(_2699_),
    .B(\controlunit.csrfile_trap_wen_bF$buf1 ),
    .C(_2700_),
    .Y(\datapath.csr._26_ [9])
);

OAI21X1 _15398_ (
    .A(_4719__bF$buf0),
    .B(_5470__bF$buf1),
    .C(_5494_),
    .Y(_4483_)
);

BUFX2 _8681_ (
    .A(_0_[17]),
    .Y(DMEM_ADDR[17])
);

BUFX2 BUFX2_insert230 (
    .A(_4886_),
    .Y(_4886__bF$buf1)
);

BUFX2 BUFX2_insert231 (
    .A(_4886_),
    .Y(_4886__bF$buf0)
);

BUFX2 BUFX2_insert232 (
    .A(_4695_),
    .Y(_4695__bF$buf4)
);

BUFX2 BUFX2_insert233 (
    .A(_4695_),
    .Y(_4695__bF$buf3)
);

BUFX2 BUFX2_insert234 (
    .A(_4695_),
    .Y(_4695__bF$buf2)
);

MUX2X1 _17964_ (
    .A(\datapath.registers.828[27] [17]),
    .B(\datapath.registers.828[26] [17]),
    .S(\datapath.idinstr_20_bF$buf49 ),
    .Y(_7843_)
);

BUFX2 BUFX2_insert235 (
    .A(_4695_),
    .Y(_4695__bF$buf1)
);

OAI21X1 _17544_ (
    .A(_7431_),
    .B(\datapath.idinstr_22_bF$buf14 ),
    .C(_7432_),
    .Y(_7433_)
);

AOI21X1 _17124_ (
    .A(\datapath.registers.828[31] [30]),
    .B(\datapath.idinstr_17_bF$buf13 ),
    .C(_5681__bF$buf4),
    .Y(_7022_)
);

BUFX2 BUFX2_insert236 (
    .A(_4695_),
    .Y(_4695__bF$buf0)
);

BUFX2 BUFX2_insert237 (
    .A(_5098_),
    .Y(_5098__bF$buf5)
);

BUFX2 BUFX2_insert238 (
    .A(_5098_),
    .Y(_5098__bF$buf4)
);

BUFX2 BUFX2_insert239 (
    .A(_5098_),
    .Y(_5098__bF$buf3)
);

NOR2X1 _9886_ (
    .A(\datapath.alupc [30]),
    .B(\datapath.regimmalu [30]),
    .Y(_738_)
);

NAND2X1 _9466_ (
    .A(\datapath.registers.regb_data [24]),
    .B(_318__bF$buf4),
    .Y(_391_)
);

INVX1 _9046_ (
    .A(\datapath.nextpc [14]),
    .Y(_859_)
);

OAI21X1 _18749_ (
    .A(_4721__bF$buf4),
    .B(_8531__bF$buf5),
    .C(_8556_),
    .Y(_4292_)
);

MUX2X1 _18329_ (
    .A(_8199_),
    .B(_8198_),
    .S(\datapath.idinstr_21_bF$buf19 ),
    .Y(_8200_)
);

DFFPOSX1 _13884_ (
    .Q(\datapath.programcounter.pc [16]),
    .CLK(CLK_bF$buf81),
    .D(\datapath.programcounter._1_ [16])
);

NAND2X1 _13464_ (
    .A(DMEM_DATA_L[28]),
    .B(_3031__bF$buf3),
    .Y(_3338_)
);

OAI21X1 _13044_ (
    .A(\controlunit.imm_sel [0]),
    .B(\controlunit.imm_sel [2]),
    .C(\controlunit.imm_sel [1]),
    .Y(_2996_)
);

AOI21X1 _14669_ (
    .A(_4681__bF$buf1),
    .B(_5099__bF$buf2),
    .C(_5104_),
    .Y(_3790_)
);

AOI21X1 _14249_ (
    .A(_4705__bF$buf3),
    .B(_4842__bF$buf7),
    .C(_4864_),
    .Y(_3963_)
);

OAI21X1 _15610_ (
    .A(_5098__bF$buf0),
    .B(_4668__bF$buf7),
    .C(\datapath.registers.828[1] [27]),
    .Y(_5607_)
);

OAI21X1 _18082_ (
    .A(_7957_),
    .B(\datapath.idinstr_22_bF$buf38 ),
    .C(_7958_),
    .Y(_7959_)
);

FILL SFILL18360x15050 (
);

DFFPOSX1 _10589_ (
    .Q(\datapath.idpc [11]),
    .CLK(CLK_bF$buf3),
    .D(\datapath._03_ [11])
);

DFFPOSX1 _10169_ (
    .Q(\datapath.meminstr [8]),
    .CLK(CLK_bF$buf67),
    .D(\datapath.aluinstr [8])
);

INVX1 _16815_ (
    .A(\datapath.registers.828[24] [23]),
    .Y(_6720_)
);

INVX1 _11950_ (
    .A(_1371_),
    .Y(_1372_)
);

INVX1 _11530_ (
    .A(_921_),
    .Y(_922_)
);

AOI21X1 _11110_ (
    .A(_2069_),
    .B(_2077_),
    .C(_2055_),
    .Y(_2078_)
);

DFFPOSX1 _19287_ (
    .Q(\datapath.registers.828[2] [7]),
    .CLK(CLK_bF$buf52),
    .D(_4369_)
);

BUFX2 _8737_ (
    .A(\datapath.programcounter.pc [8]),
    .Y(IMEM_ADDR[8])
);

NAND2X1 _12735_ (
    .A(_2840_),
    .B(_2862_),
    .Y(_2867_)
);

INVX1 _12315_ (
    .A(\datapath.csr.mcause [22]),
    .Y(_2562_)
);

MUX2X1 _17773_ (
    .A(\datapath.registers.828[7] [12]),
    .B(\datapath.registers.828[6] [12]),
    .S(\datapath.idinstr_20_bF$buf9 ),
    .Y(_7657_)
);

AOI21X1 _17353_ (
    .A(\datapath.registers.828[31] [3]),
    .B(\datapath.idinstr_22_bF$buf12 ),
    .C(_7089__bF$buf4),
    .Y(_7246_)
);

AOI21X1 _9695_ (
    .A(_544_),
    .B(_539_),
    .C(_568_),
    .Y(_569_)
);

FILL SFILL13560x31050 (
);

NAND3X1 _9275_ (
    .A(_246_),
    .B(_247_),
    .C(_245_),
    .Y(\datapath.rd [9])
);

FILL SFILL53640x27050 (
);

OAI21X1 _10801_ (
    .A(_973_),
    .B(_1767_),
    .C(_1771_),
    .Y(_1772_)
);

BUFX2 _18978_ (
    .A(\datapath.registers.828[0] [18]),
    .Y(_3645_)
);

MUX2X1 _18558_ (
    .A(\datapath.registers.828[1] [30]),
    .B(\datapath.registers.828[0] [30]),
    .S(\datapath.idinstr_20_bF$buf16 ),
    .Y(_8424_)
);

NAND3X1 _18138_ (
    .A(\datapath.idinstr_21_bF$buf10 ),
    .B(_8013_),
    .C(_8010_),
    .Y(_8014_)
);

OAI21X1 _13693_ (
    .A(_3491_),
    .B(_3384_),
    .C(_3386_),
    .Y(_3497_)
);

NAND3X1 _13273_ (
    .A(\datapath.memoryinterface.byte_size_store.storebyte [30]),
    .B(_3027__bF$buf4),
    .C(_3029__bF$buf0),
    .Y(_3209_)
);

NOR2X1 _14898_ (
    .A(\datapath.registers.828[10] [12]),
    .B(_5212__bF$buf1),
    .Y(_5230_)
);

FILL SFILL3000x49050 (
);

OAI21X1 _14478_ (
    .A(_4717__bF$buf4),
    .B(_4968__bF$buf2),
    .C(_4991_),
    .Y(_3874_)
);

AOI21X1 _14058_ (
    .A(_4719__bF$buf1),
    .B(_4738__bF$buf3),
    .C(_4762_),
    .Y(_4099_)
);

FILL SFILL3400x18050 (
);

FILL SFILL43640x25050 (
);

DFFPOSX1 _10398_ (
    .Q(\datapath.alu.a [15]),
    .CLK(CLK_bF$buf54),
    .D(\datapath.muxaval [15])
);

NAND2X1 _16624_ (
    .A(_5681__bF$buf4),
    .B(_6532_),
    .Y(_6533_)
);

AOI21X1 _16204_ (
    .A(_6116_),
    .B(_6122_),
    .C(\datapath.idinstr_18_bF$buf1 ),
    .Y(_6123_)
);

DFFPOSX1 _19096_ (
    .Q(\datapath.registers.828[14] [8]),
    .CLK(CLK_bF$buf53),
    .D(_3826_)
);

NAND2X1 _8966_ (
    .A(gnd),
    .B(\datapath.idpc [19]),
    .Y(_806_)
);

NAND2X1 _17829_ (
    .A(_7092__bF$buf5),
    .B(_7710_),
    .Y(_7711_)
);

AOI21X1 _17409_ (
    .A(_7300_),
    .B(_7294_),
    .C(_7093__bF$buf0),
    .Y(_7301_)
);

DFFPOSX1 _12964_ (
    .Q(\datapath.csr.mvect [25]),
    .CLK(CLK_bF$buf71),
    .D(\datapath.csr._13_ [25])
);

NAND2X1 _12544_ (
    .A(_2729_),
    .B(_2672__bF$buf6),
    .Y(_2730_)
);

NAND3X1 _12124_ (
    .A(_1132_),
    .B(_1554_),
    .C(_1557_),
    .Y(_1558_)
);

FILL SFILL73800x12050 (
);

AOI22X1 _13749_ (
    .A(_3423__bF$buf4),
    .B(\datapath.alu.c [19]),
    .C(\datapath.csr.csr_pcaddr [19]),
    .D(_3429__bF$buf2),
    .Y(_3542_)
);

NOR2X1 _13329_ (
    .A(_3237_),
    .B(_3228_),
    .Y(_3239_)
);

FILL SFILL63800x55050 (
);

BUFX2 BUFX2_insert610 (
    .A(_5212_),
    .Y(_5212__bF$buf0)
);

BUFX2 BUFX2_insert611 (
    .A(_4806_),
    .Y(_4806__bF$buf7)
);

BUFX2 BUFX2_insert612 (
    .A(_4806_),
    .Y(_4806__bF$buf6)
);

BUFX2 BUFX2_insert613 (
    .A(_4806_),
    .Y(_4806__bF$buf5)
);

BUFX2 BUFX2_insert614 (
    .A(_4806_),
    .Y(_4806__bF$buf4)
);

NAND2X1 _17582_ (
    .A(_7092__bF$buf7),
    .B(_7469_),
    .Y(_7470_)
);

BUFX2 BUFX2_insert615 (
    .A(_4806_),
    .Y(_4806__bF$buf3)
);

NAND2X1 _17162_ (
    .A(_7056_),
    .B(_7058_),
    .Y(_7059_)
);

BUFX2 BUFX2_insert616 (
    .A(_4806_),
    .Y(_4806__bF$buf2)
);

FILL SFILL79000x26050 (
);

BUFX2 BUFX2_insert617 (
    .A(_4806_),
    .Y(_4806__bF$buf1)
);

BUFX2 BUFX2_insert618 (
    .A(_4806_),
    .Y(_4806__bF$buf0)
);

BUFX2 BUFX2_insert619 (
    .A(_4709_),
    .Y(_4709__bF$buf4)
);

FILL SFILL33800x9050 (
);

OAI21X1 _9084_ (
    .A(_883_),
    .B(gnd),
    .C(_884_),
    .Y(\datapath._04_ [26])
);

FILL SFILL63800x10050 (
);

FILL SFILL73640x6050 (
);

NOR2X1 _10610_ (
    .A(\datapath.alu.a [31]),
    .B(\datapath.alu.b [31]),
    .Y(_930_)
);

AOI21X1 _18787_ (
    .A(_4693__bF$buf4),
    .B(_8565__bF$buf5),
    .C(_8576_),
    .Y(_4245_)
);

MUX2X1 _18367_ (
    .A(\datapath.registers.828[27] [26]),
    .B(\datapath.registers.828[26] [26]),
    .S(\datapath.idinstr_20_bF$buf38 ),
    .Y(_8237_)
);

FILL SFILL23160x59050 (
);

FILL SFILL23640x21050 (
);

INVX2 _13082_ (
    .A(\datapath.memoryinterface.data_store [2]),
    .Y(_3046_)
);

FILL SFILL63720x17050 (
);

FILL SFILL53800x53050 (
);

FILL SFILL84200x44050 (
);

FILL SFILL23560x28050 (
);

AOI21X1 _11815_ (
    .A(_1704_),
    .B(_1169_),
    .C(_1204_),
    .Y(_1227_)
);

NOR2X1 _14287_ (
    .A(\datapath.registers.828[18] [0]),
    .B(_4886__bF$buf4),
    .Y(_4887_)
);

FILL SFILL69000x24050 (
);

FILL SFILL23880x50 (
);

AOI21X1 _16853_ (
    .A(_6750_),
    .B(_6756_),
    .C(\datapath.idinstr_18_bF$buf1 ),
    .Y(_6757_)
);

MUX2X1 _16433_ (
    .A(\datapath.registers.828[31] [15]),
    .B(\datapath.registers.828[30] [15]),
    .S(\datapath.idinstr_15_bF$buf52 ),
    .Y(_6346_)
);

AOI21X1 _16013_ (
    .A(_5935_),
    .B(_5934_),
    .C(_5684__bF$buf0),
    .Y(_5936_)
);

FILL SFILL53720x15050 (
);

FILL SFILL43800x51050 (
);

NOR2X1 _8775_ (
    .A(\datapath.meminstr [20]),
    .B(_110_),
    .Y(_111_)
);

OAI21X1 _17638_ (
    .A(_4897_),
    .B(\datapath.idinstr_22_bF$buf18 ),
    .C(_7524_),
    .Y(_7525_)
);

NAND2X1 _17218_ (
    .A(_7111_),
    .B(_7113_),
    .Y(_7114_)
);

FILL SFILL69000x4050 (
);

INVX1 _12773_ (
    .A(_2898_),
    .Y(_2899_)
);

AND2X2 _12353_ (
    .A(_2589_),
    .B(\datapath.meminstr [29]),
    .Y(_2590_)
);

FILL SFILL43160x9050 (
);

AOI21X1 _13978_ (
    .A(_4715__bF$buf1),
    .B(_4673__bF$buf1),
    .C(_4716_),
    .Y(_4129_)
);

NOR2X1 _13558_ (
    .A(gnd),
    .B(\datapath.programcounter.pc_mux [20]),
    .Y(_3399_)
);

OAI21X1 _13138_ (
    .A(_3092_),
    .B(_0__1_bF$buf5),
    .C(_3093_),
    .Y(_3094_)
);

FILL SFILL43720x13050 (
);

NAND2X1 _17391_ (
    .A(_7280_),
    .B(_7282_),
    .Y(_7283_)
);

NOR2X1 _15704_ (
    .A(\datapath.registers.828[30] [8]),
    .B(_5647__bF$buf1),
    .Y(_5656_)
);

AOI21X1 _18596_ (
    .A(_8456_),
    .B(_8460_),
    .C(_7093__bF$buf3),
    .Y(_8461_)
);

MUX2X1 _18176_ (
    .A(_8050_),
    .B(_8049_),
    .S(\datapath.idinstr_21_bF$buf20 ),
    .Y(_8051_)
);

AOI21X1 _16909_ (
    .A(\datapath.registers.828[5] [25]),
    .B(\datapath.idinstr_17_bF$buf10 ),
    .C(_5681__bF$buf1),
    .Y(_6812_)
);

OAI21X1 _11624_ (
    .A(_1022_),
    .B(\datapath.alu.b_3_bF$buf5 ),
    .C(_1015_),
    .Y(_1023_)
);

OAI21X1 _11204_ (
    .A(_1295_),
    .B(_2168_),
    .C(_2169_),
    .Y(_2170_)
);

AOI21X1 _14096_ (
    .A(_4691__bF$buf0),
    .B(_4772__bF$buf2),
    .C(_4782_),
    .Y(_4083_)
);

FILL SFILL13560x9050 (
);

AOI21X1 _12829_ (
    .A(\datapath.csr.mvect [24]),
    .B(_2941_),
    .C(\datapath.csr.mvect [25]),
    .Y(_2945_)
);

INVX1 _12409_ (
    .A(\datapath.csr.csr_wdata [15]),
    .Y(_2631_)
);

MUX2X1 _16662_ (
    .A(\datapath.registers.828[18] [20]),
    .B(\datapath.registers.828[16] [20]),
    .S(\datapath.idinstr_16_bF$buf20 ),
    .Y(_6570_)
);

MUX2X1 _16242_ (
    .A(_6159_),
    .B(_6158_),
    .S(\datapath.idinstr_16_bF$buf13 ),
    .Y(_6160_)
);

INVX1 _17867_ (
    .A(\datapath.registers.828[24] [14]),
    .Y(_7749_)
);

AOI21X1 _17447_ (
    .A(_7337_),
    .B(_7336_),
    .C(_7091__bF$buf1),
    .Y(_7338_)
);

MUX2X1 _17027_ (
    .A(\datapath.registers.828[22] [28]),
    .B(\datapath.registers.828[20] [28]),
    .S(\datapath.idinstr_16_bF$buf6 ),
    .Y(_6927_)
);

OAI21X1 _12582_ (
    .A(_2759_),
    .B(\controlunit.csrfile_trap_wen_bF$buf0 ),
    .C(_2760_),
    .Y(\datapath.csr._26_ [25])
);

OAI21X1 _12162_ (
    .A(_1574_),
    .B(_1566_),
    .C(_1564_),
    .Y(_1598_)
);

NOR2X1 _9789_ (
    .A(_651_),
    .B(_650_),
    .Y(_652_)
);

NOR2X1 _9369_ (
    .A(_317__bF$buf0),
    .B(_316__bF$buf0),
    .Y(_318_)
);

FILL SFILL53800x48050 (
);

AND2X2 _13787_ (
    .A(_3544_),
    .B(_3570_),
    .Y(_3571_)
);

OAI21X1 _13367_ (
    .A(_3264_),
    .B(_0__1_bF$buf0),
    .C(_3265_),
    .Y(_3266_)
);

FILL SFILL69000x19050 (
);

FILL SFILL8600x13050 (
);

FILL SFILL48840x20050 (
);

OAI21X1 _15933_ (
    .A(_5857_),
    .B(_5848_),
    .C(_5680__bF$buf4),
    .Y(_5858_)
);

OAI21X1 _15513_ (
    .A(_5038__bF$buf5),
    .B(_4668__bF$buf1),
    .C(\datapath.registers.828[2] [11]),
    .Y(_5558_)
);

FILL SFILL43800x46050 (
);

MUX2X1 _16718_ (
    .A(\datapath.registers.828[11] [21]),
    .B(\datapath.registers.828[10] [21]),
    .S(\datapath.idinstr_15_bF$buf30 ),
    .Y(_6625_)
);

OAI21X1 _11853_ (
    .A(_1267_),
    .B(_1234_),
    .C(_1247_),
    .Y(_1268_)
);

AOI21X1 _11433_ (
    .A(_1626_),
    .B(_2393_),
    .C(_1906_),
    .Y(_2394_)
);

OAI21X1 _11013_ (
    .A(_1037_),
    .B(_1980_),
    .C(_1982_),
    .Y(_1983_)
);

FILL SFILL78920x14050 (
);

OAI21X1 _12638_ (
    .A(_2797__bF$buf2),
    .B(\datapath.csr.csr_wdata [8]),
    .C(_2783__bF$buf3),
    .Y(_2804_)
);

INVX1 _12218_ (
    .A(\datapath.idinstr_21_bF$buf29 ),
    .Y(_2487_)
);

NAND2X1 _16891_ (
    .A(_6791_),
    .B(_6793_),
    .Y(_6794_)
);

AOI21X1 _16471_ (
    .A(_6361_),
    .B(_6383_),
    .C(_5687__bF$buf4),
    .Y(\datapath.registers.rega_data [15])
);

AOI21X1 _16051_ (
    .A(\datapath.registers.828[22] [6]),
    .B(\datapath.idinstr_17_bF$buf6 ),
    .C(\datapath.idinstr_15_bF$buf7 ),
    .Y(_5973_)
);

MUX2X1 _17676_ (
    .A(_7561_),
    .B(_7560_),
    .S(\datapath.idinstr_21_bF$buf5 ),
    .Y(_7562_)
);

NAND2X1 _17256_ (
    .A(_7148_),
    .B(_7150_),
    .Y(_7151_)
);

INVX1 _12391_ (
    .A(\datapath.csr.csr_wdata [9]),
    .Y(_2619_)
);

NAND2X1 _9598_ (
    .A(\datapath.registers.rega_data [24]),
    .B(_418__bF$buf3),
    .Y(_491_)
);

INVX1 _9178_ (
    .A(IMEM_DATA[26]),
    .Y(_170_)
);

INVX2 _10704_ (
    .A(_1444_),
    .Y(_1675_)
);

AOI22X1 _13596_ (
    .A(\datapath.programcounter.pc [0]),
    .B(_3424__bF$buf1),
    .C(_3423__bF$buf3),
    .D(gnd),
    .Y(_3425_)
);

NAND2X1 _13176_ (
    .A(\datapath.memoryinterface.data_store [16]),
    .B(_3031__bF$buf3),
    .Y(_3126_)
);

DFFPOSX1 _19822_ (
    .Q(\datapath.registers.828[13] [30]),
    .CLK(CLK_bF$buf57),
    .D(_3787_)
);

DFFPOSX1 _19402_ (
    .Q(\datapath.registers.828[8] [26]),
    .CLK(CLK_bF$buf29),
    .D(_4614_)
);

FILL SFILL58520x41050 (
);

FILL FILL83000x21050 (
);

NOR2X1 _11909_ (
    .A(\datapath.alu.b_3_bF$buf4 ),
    .B(_1328_),
    .Y(_1329_)
);

FILL SFILL58920x10050 (
);

FILL SFILL23320x35050 (
);

NOR2X1 _15742_ (
    .A(\datapath.registers.828[30] [27]),
    .B(_5647__bF$buf3),
    .Y(_5675_)
);

NAND2X1 _15322_ (
    .A(\datapath.registers.828[24] [18]),
    .B(_5437__bF$buf5),
    .Y(_5456_)
);

FILL SFILL48920x53050 (
);

FILL SFILL78840x50 (
);

OAI21X1 _16947_ (
    .A(_4877_),
    .B(\datapath.idinstr_17_bF$buf7 ),
    .C(_6848_),
    .Y(_6849_)
);

MUX2X1 _16527_ (
    .A(\datapath.registers.828[5] [17]),
    .B(\datapath.registers.828[4] [17]),
    .S(\datapath.idinstr_15_bF$buf50 ),
    .Y(_6438_)
);

MUX2X1 _16107_ (
    .A(\datapath.registers.828[30] [7]),
    .B(\datapath.registers.828[28] [7]),
    .S(\datapath.idinstr_16_bF$buf9 ),
    .Y(_6028_)
);

NAND2X1 _11662_ (
    .A(_1063_),
    .B(_1055_),
    .Y(_1064_)
);

OAI21X1 _11242_ (
    .A(_2207_),
    .B(\datapath.alu.b_2_bF$buf4 ),
    .C(_2204_),
    .Y(_2208_)
);

INVX1 _8869_ (
    .A(_74_),
    .Y(_75_)
);

NOR2X1 _9810_ (
    .A(_661_),
    .B(_667_),
    .Y(_670_)
);

INVX1 _12867_ (
    .A(_2474_),
    .Y(_2475_)
);

INVX1 _12447_ (
    .A(\datapath.csr.mvect [28]),
    .Y(_2656_)
);

NAND2X1 _12027_ (
    .A(\datapath.alu.b_1_bF$buf0 ),
    .B(_1394_),
    .Y(_1454_)
);

AOI21X1 _16280_ (
    .A(\datapath.registers.828[13] [11]),
    .B(\datapath.idinstr_15_bF$buf28 ),
    .C(\datapath.idinstr_16_bF$buf33 ),
    .Y(_6197_)
);

FILL SFILL38920x51050 (
);

AOI21X1 _17485_ (
    .A(\datapath.registers.828[14] [6]),
    .B(\datapath.idinstr_22_bF$buf32 ),
    .C(\datapath.idinstr_20_bF$buf54 ),
    .Y(_7375_)
);

AOI21X1 _17065_ (
    .A(_6959_),
    .B(_6963_),
    .C(_5685__bF$buf5),
    .Y(_6964_)
);

FILL SFILL3480x57050 (
);

NOR2X1 _10933_ (
    .A(alusel[1]),
    .B(alusel[2]),
    .Y(_1904_)
);

DFFPOSX1 _10513_ (
    .Q(\datapath.alupc [31]),
    .CLK(CLK_bF$buf26),
    .D(\datapath.idpc [31])
);

DFFPOSX1 _19631_ (
    .Q(\datapath.registers.828[9] [31]),
    .CLK(CLK_bF$buf50),
    .D(_4652_)
);

DFFPOSX1 _19211_ (
    .Q(\datapath.registers.828[19] [27]),
    .CLK(CLK_bF$buf60),
    .D(_3975_)
);

NAND2X1 _11718_ (
    .A(_1122_),
    .B(_937_),
    .Y(_1124_)
);

AOI21X1 _15971_ (
    .A(_5887_),
    .B(_5894_),
    .C(_5685__bF$buf5),
    .Y(_5895_)
);

OAI21X1 _15551_ (
    .A(_5038__bF$buf4),
    .B(_4668__bF$buf0),
    .C(\datapath.registers.828[2] [30]),
    .Y(_5577_)
);

OAI21X1 _15131_ (
    .A(_5336__bF$buf3),
    .B(_4840__bF$buf6),
    .C(\datapath.registers.828[7] [21]),
    .Y(_5358_)
);

MUX2X1 _16756_ (
    .A(\datapath.registers.828[23] [22]),
    .B(\datapath.registers.828[21] [22]),
    .S(\datapath.idinstr_16_bF$buf30 ),
    .Y(_6662_)
);

AOI21X1 _16336_ (
    .A(_6247_),
    .B(_6251_),
    .C(\datapath.idinstr_18_bF$buf6 ),
    .Y(_6252_)
);

NAND2X1 _11891_ (
    .A(_1303_),
    .B(_1308_),
    .Y(_1309_)
);

OAI21X1 _11471_ (
    .A(_2429_),
    .B(_1650_),
    .C(_1908__bF$buf2),
    .Y(_2431_)
);

MUX2X1 _11051_ (
    .A(_2019_),
    .B(_2016_),
    .S(_1123__bF$buf2),
    .Y(_2020_)
);

BUFX2 _8678_ (
    .A(_0_[14]),
    .Y(DMEM_ADDR[14])
);

FILL SFILL28280x50 (
);

OAI21X1 _12676_ (
    .A(_2797__bF$buf6),
    .B(\datapath.csr.csr_wdata [26]),
    .C(_2783__bF$buf1),
    .Y(_2824_)
);

OAI21X1 _12256_ (
    .A(_2518_),
    .B(_2490__bF$buf3),
    .C(_2519_),
    .Y(\datapath.csr.csr_data [5])
);

FILL SFILL18440x40050 (
);

NAND2X1 _18902_ (
    .A(\datapath.rd [3]),
    .B(_8631__bF$buf4),
    .Y(_8635_)
);

AOI21X1 _14822_ (
    .A(_4697__bF$buf4),
    .B(_5167__bF$buf0),
    .C(_5185_),
    .Y(_3703_)
);

AOI21X1 _14402_ (
    .A(_4711__bF$buf4),
    .B(_4924__bF$buf5),
    .C(_4950_),
    .Y(_3902_)
);

NAND2X1 _17294_ (
    .A(\datapath.idinstr_22_bF$buf19 ),
    .B(_7187_),
    .Y(_7188_)
);

FILL SFILL48920x48050 (
);

FILL SFILL73960x4050 (
);

OAI21X1 _15607_ (
    .A(_5579__bF$buf0),
    .B(_4723__bF$buf2),
    .C(_5605_),
    .Y(_4005_)
);

NOR2X1 _10742_ (
    .A(\datapath.alu.a [17]),
    .B(\datapath.alu.b [17]),
    .Y(_1713_)
);

DFFPOSX1 _10322_ (
    .Q(\datapath.regrs2alu [3]),
    .CLK(CLK_bF$buf38),
    .D(\datapath.registers.regb_data [3])
);

DFFPOSX1 _20000_ (
    .Q(\datapath.registers.828[25] [16]),
    .CLK(CLK_bF$buf125),
    .D(_4187_)
);

NAND2X1 _18499_ (
    .A(_7092__bF$buf4),
    .B(_8365_),
    .Y(_8366_)
);

OAI21X1 _18079_ (
    .A(_7954_),
    .B(\datapath.idinstr_22_bF$buf38 ),
    .C(_7955_),
    .Y(_7956_)
);

DFFPOSX1 _19860_ (
    .Q(\datapath.registers.828[1] [4]),
    .CLK(CLK_bF$buf5),
    .D(_4014_)
);

DFFPOSX1 _19440_ (
    .Q(\datapath.registers.828[23] [0]),
    .CLK(CLK_bF$buf117),
    .D(_4116_)
);

DFFPOSX1 _19020_ (
    .Q(\datapath.registers.828[18] [28]),
    .CLK(CLK_bF$buf65),
    .D(_3944_)
);

INVX1 _11947_ (
    .A(_1368_),
    .Y(\datapath.alu.c [23])
);

NAND2X1 _11527_ (
    .A(\datapath.alu.b_1_bF$buf5 ),
    .B(_2409_),
    .Y(_919_)
);

NAND2X1 _11107_ (
    .A(\datapath.alu.b_2_bF$buf2 ),
    .B(\datapath.alu.a [31]),
    .Y(_2075_)
);

OAI21X1 _15780_ (
    .A(_5696_),
    .B(_5707_),
    .C(\datapath.idinstr_19_bF$buf1 ),
    .Y(_5708_)
);

OAI21X1 _15360_ (
    .A(_4681__bF$buf4),
    .B(_5470__bF$buf4),
    .C(_5475_),
    .Y(_4494_)
);

FILL SFILL38920x46050 (
);

FILL SFILL83960x41050 (
);

NAND2X1 _16985_ (
    .A(_5681__bF$buf2),
    .B(_6885_),
    .Y(_6886_)
);

MUX2X1 _16565_ (
    .A(_6474_),
    .B(_6473_),
    .S(\datapath.idinstr_16_bF$buf41 ),
    .Y(_6475_)
);

OAI21X1 _16145_ (
    .A(_5179_),
    .B(\datapath.idinstr_17_bF$buf2 ),
    .C(_6064_),
    .Y(_6065_)
);

FILL SFILL3560x45050 (
);

MUX2X1 _11280_ (
    .A(_2001_),
    .B(_2016_),
    .S(\datapath.alu.b_2_bF$buf0 ),
    .Y(_2245_)
);

FILL SFILL38440x39050 (
);

FILL SFILL83880x48050 (
);

OAI21X1 _12485_ (
    .A(\datapath.csr.csr_wdata [6]),
    .B(_2672__bF$buf5),
    .C(_2684_),
    .Y(_2685_)
);

NAND3X1 _12065_ (
    .A(_1493_),
    .B(_1494_),
    .C(_1132_),
    .Y(_1495_)
);

OAI21X1 _18711_ (
    .A(_4683__bF$buf3),
    .B(_8531__bF$buf6),
    .C(_8537_),
    .Y(_4303_)
);

DFFPOSX1 _19916_ (
    .Q(\datapath.registers.828[29] [28]),
    .CLK(CLK_bF$buf33),
    .D(_4328_)
);

OAI21X1 _14631_ (
    .A(_5079_),
    .B(_5039__bF$buf2),
    .C(_5080_),
    .Y(_3810_)
);

NOR2X1 _14211_ (
    .A(\datapath.registers.828[19] [0]),
    .B(_4842__bF$buf1),
    .Y(_4843_)
);

MUX2X1 _15836_ (
    .A(\datapath.registers.828[5] [1]),
    .B(\datapath.registers.828[4] [1]),
    .S(\datapath.idinstr_15_bF$buf48 ),
    .Y(_5763_)
);

NOR2X1 _15416_ (
    .A(\datapath.registers.828[3] [0]),
    .B(_5503__bF$buf0),
    .Y(_5504_)
);

MUX2X1 _10971_ (
    .A(_1940_),
    .B(_1927_),
    .S(\datapath.alu.b_3_bF$buf7 ),
    .Y(_1941_)
);

FILL SFILL79160x53050 (
);

DFFPOSX1 _10551_ (
    .Q(\datapath.idpc_4 [5]),
    .CLK(CLK_bF$buf84),
    .D(\datapath._04_ [5])
);

DFFPOSX1 _10131_ (
    .Q(_0_[9]),
    .CLK(CLK_bF$buf28),
    .D(\datapath.alu.c [9])
);

AND2X2 _11756_ (
    .A(_1163_),
    .B(_1710_),
    .Y(_1164_)
);

FILL SFILL18440x35050 (
);

OAI21X1 _11336_ (
    .A(_1359_),
    .B(_2232_),
    .C(_1166_),
    .Y(_2299_)
);

FILL SFILL63880x44050 (
);

FILL SFILL18040x21050 (
);

NAND3X1 _9904_ (
    .A(_734_),
    .B(_755_),
    .C(_754_),
    .Y(_756_)
);

FILL SFILL79080x15050 (
);

FILL SFILL78840x1050 (
);

INVX2 _13902_ (
    .A(\datapath.wbinstr [7]),
    .Y(_4662_)
);

AOI21X1 _16794_ (
    .A(_6698_),
    .B(_6692_),
    .C(_5685__bF$buf0),
    .Y(_6699_)
);

MUX2X1 _16374_ (
    .A(\datapath.registers.828[31] [13]),
    .B(\datapath.registers.828[29] [13]),
    .S(\datapath.idinstr_16_bF$buf14 ),
    .Y(_6289_)
);

FILL SFILL48600x22050 (
);

BUFX2 BUFX2_insert580 (
    .A(_5503_),
    .Y(_5503__bF$buf1)
);

BUFX2 BUFX2_insert581 (
    .A(_5503_),
    .Y(_5503__bF$buf0)
);

BUFX2 BUFX2_insert582 (
    .A(_7093_),
    .Y(_7093__bF$buf7)
);

FILL SFILL53880x42050 (
);

BUFX2 BUFX2_insert583 (
    .A(_7093_),
    .Y(_7093__bF$buf6)
);

BUFX2 BUFX2_insert584 (
    .A(_7093_),
    .Y(_7093__bF$buf5)
);

MUX2X1 _17999_ (
    .A(\datapath.registers.828[1] [17]),
    .B(\datapath.registers.828[0] [17]),
    .S(\datapath.idinstr_20_bF$buf16 ),
    .Y(_7878_)
);

MUX2X1 _17579_ (
    .A(\datapath.registers.828[9] [8]),
    .B(\datapath.registers.828[8] [8]),
    .S(\datapath.idinstr_20_bF$buf37 ),
    .Y(_7467_)
);

BUFX2 BUFX2_insert585 (
    .A(_7093_),
    .Y(_7093__bF$buf4)
);

NAND2X1 _17159_ (
    .A(_5681__bF$buf10),
    .B(_7055_),
    .Y(_7056_)
);

BUFX2 BUFX2_insert586 (
    .A(_7093_),
    .Y(_7093__bF$buf3)
);

BUFX2 BUFX2_insert587 (
    .A(_7093_),
    .Y(_7093__bF$buf2)
);

BUFX2 BUFX2_insert588 (
    .A(_7093_),
    .Y(_7093__bF$buf1)
);

BUFX2 BUFX2_insert589 (
    .A(_7093_),
    .Y(_7093__bF$buf0)
);

INVX1 _12294_ (
    .A(\datapath.csr.mcause [15]),
    .Y(_2548_)
);

NAND2X1 _18940_ (
    .A(\datapath.rd [22]),
    .B(_8631__bF$buf0),
    .Y(_8654_)
);

NAND2X1 _18520_ (
    .A(\datapath.registers.828[26] [29]),
    .B(_7092__bF$buf1),
    .Y(_8387_)
);

MUX2X1 _18100_ (
    .A(\datapath.registers.828[29] [20]),
    .B(\datapath.registers.828[28] [20]),
    .S(\datapath.idinstr_20_bF$buf24 ),
    .Y(_7976_)
);

DFFPOSX1 _10607_ (
    .Q(\datapath.idpc [29]),
    .CLK(CLK_bF$buf144),
    .D(\datapath._03_ [29])
);

OAI21X1 _13499_ (
    .A(_3359_),
    .B(gnd),
    .C(_3360_),
    .Y(\datapath.programcounter._1_ [0])
);

NAND3X1 _13079_ (
    .A(_3039_),
    .B(_3038_),
    .C(_3043_),
    .Y(_1_[1])
);

DFFPOSX1 _19725_ (
    .Q(\datapath.registers.828[0] [29]),
    .CLK(CLK_bF$buf73),
    .D(_3657_)
);

DFFPOSX1 _19305_ (
    .Q(\datapath.registers.828[2] [25]),
    .CLK(CLK_bF$buf40),
    .D(_4357_)
);

NOR2X1 _14860_ (
    .A(\datapath.registers.828[11] [29]),
    .B(_5167__bF$buf7),
    .Y(_5207_)
);

OAI21X1 _14440_ (
    .A(_4679__bF$buf4),
    .B(_4968__bF$buf2),
    .C(_4972_),
    .Y(_3885_)
);

AOI21X1 _14020_ (
    .A(_4681__bF$buf3),
    .B(_4738__bF$buf2),
    .C(_4743_),
    .Y(_4110_)
);

FILL SFILL38520x27050 (
);

FILL SFILL43880x40050 (
);

FILL SFILL48760x5050 (
);

OAI21X1 _15645_ (
    .A(_4840__bF$buf7),
    .B(_5612__bF$buf1),
    .C(\datapath.registers.828[31] [11]),
    .Y(_5626_)
);

NOR2X1 _15225_ (
    .A(\datapath.registers.828[5] [3]),
    .B(_5402__bF$buf7),
    .Y(_5406_)
);

INVX1 _10780_ (
    .A(_1750_),
    .Y(_1751_)
);

DFFPOSX1 _10360_ (
    .Q(\datapath.alu.b [9]),
    .CLK(CLK_bF$buf54),
    .D(\datapath.muxbval [9])
);

AOI21X1 _11985_ (
    .A(_1209__bF$buf2),
    .B(_1398_),
    .C(_1409_),
    .Y(_1410_)
);

NAND2X1 _11565_ (
    .A(_994__bF$buf4),
    .B(_958_),
    .Y(_959_)
);

NAND2X1 _11145_ (
    .A(\datapath.alu.b_3_bF$buf6 ),
    .B(_2112_),
    .Y(_2113_)
);

FILL SFILL28520x25050 (
);

INVX1 _9713_ (
    .A(\datapath.alupc [9]),
    .Y(_585_)
);

FILL SFILL73960x34050 (
);

NAND2X1 _13711_ (
    .A(\datapath.csr.csr_pcaddr [15]),
    .B(_3429__bF$buf4),
    .Y(_3512_)
);

MUX2X1 _16183_ (
    .A(\datapath.registers.828[11] [9]),
    .B(\datapath.registers.828[10] [9]),
    .S(\datapath.idinstr_15_bF$buf24 ),
    .Y(_6102_)
);

FILL SFILL18120x54050 (
);

OAI21X1 _14916_ (
    .A(_5239_),
    .B(_5212__bF$buf1),
    .C(_5240_),
    .Y(_3678_)
);

FILL FILL83080x60050 (
);

NAND2X1 _17388_ (
    .A(_7089__bF$buf7),
    .B(_7279_),
    .Y(_7280_)
);

FILL SFILL18520x23050 (
);

OAI21X1 _10836_ (
    .A(_1766_),
    .B(_1806_),
    .C(_983_),
    .Y(_1807_)
);

DFFPOSX1 _10416_ (
    .Q(\datapath.aluexecptions [1]),
    .CLK(CLK_bF$buf14),
    .D(\controlunit.ebreak )
);

FILL SFILL63880x39050 (
);

DFFPOSX1 _19954_ (
    .Q(\datapath.registers.828[6] [2]),
    .CLK(CLK_bF$buf23),
    .D(_4554_)
);

DFFPOSX1 _19534_ (
    .Q(\datapath.registers.828[11] [30]),
    .CLK(CLK_bF$buf123),
    .D(_3723_)
);

DFFPOSX1 _19114_ (
    .Q(\datapath.registers.828[14] [26]),
    .CLK(CLK_bF$buf90),
    .D(_3814_)
);

AOI21X1 _15874_ (
    .A(\datapath.registers.828[15] [2]),
    .B(\datapath.idinstr_17_bF$buf2 ),
    .C(_5681__bF$buf5),
    .Y(_5800_)
);

OAI21X1 _15454_ (
    .A(_5524_),
    .B(_5503__bF$buf5),
    .C(_5525_),
    .Y(_4443_)
);

OAI21X1 _15034_ (
    .A(_4685__bF$buf3),
    .B(_5300__bF$buf1),
    .C(_5307_),
    .Y(_4624_)
);

MUX2X1 _16659_ (
    .A(_6566_),
    .B(_6565_),
    .S(\datapath.idinstr_16_bF$buf38 ),
    .Y(_6567_)
);

AOI21X1 _16239_ (
    .A(_6151_),
    .B(_6156_),
    .C(_5685__bF$buf2),
    .Y(_6157_)
);

AOI22X1 _11794_ (
    .A(_2041__bF$buf1),
    .B(_1204_),
    .C(_1704_),
    .D(_2154_),
    .Y(_1205_)
);

NAND2X1 _11374_ (
    .A(_2335_),
    .B(_2336_),
    .Y(_2337_)
);

NAND3X1 _17600_ (
    .A(\datapath.idinstr_21_bF$buf10 ),
    .B(_7487_),
    .C(_7484_),
    .Y(_7488_)
);

FILL SFILL53480x23050 (
);

DFFPOSX1 _9942_ (
    .Q(\datapath.regcsrwb [28]),
    .CLK(CLK_bF$buf100),
    .D(\datapath.csr.csr_wdata [28])
);

NAND2X1 _9522_ (
    .A(\datapath.registers.rega_data [5]),
    .B(_418__bF$buf3),
    .Y(_434_)
);

OAI21X1 _9102_ (
    .A(_895_),
    .B(gnd),
    .C(_896_),
    .Y(\datapath._05_ [0])
);

OAI21X1 _12999_ (
    .A(_3015_),
    .B(_3012_),
    .C(_3020_),
    .Y(\datapath.imm [13])
);

NAND2X1 _12579_ (
    .A(_2757_),
    .B(_2672__bF$buf3),
    .Y(_2758_)
);

OAI21X1 _12159_ (
    .A(_1578_),
    .B(_1579_),
    .C(_1595_),
    .Y(_1596_)
);

FILL SFILL3240x59050 (
);

OAI21X1 _18805_ (
    .A(_7947_),
    .B(_8565__bF$buf4),
    .C(_8585_),
    .Y(_4254_)
);

INVX8 _13940_ (
    .A(\datapath.rd [9]),
    .Y(_4691_)
);

AOI21X1 _13520_ (
    .A(gnd),
    .B(_3372_),
    .C(_3373_),
    .Y(\datapath.programcounter._1_ [7])
);

FILL SFILL3240x5050 (
);

NAND3X1 _13100_ (
    .A(_3057_),
    .B(_3056_),
    .C(_3061_),
    .Y(_1_[4])
);

BUFX2 BUFX2_insert1140 (
    .A(_5099_),
    .Y(_5099__bF$buf3)
);

BUFX2 BUFX2_insert1141 (
    .A(_5099_),
    .Y(_5099__bF$buf2)
);

BUFX2 BUFX2_insert1142 (
    .A(_5099_),
    .Y(_5099__bF$buf1)
);

BUFX2 BUFX2_insert1143 (
    .A(_5099_),
    .Y(_5099__bF$buf0)
);

BUFX2 BUFX2_insert1144 (
    .A(_7092_),
    .Y(_7092__bF$buf10)
);

BUFX2 BUFX2_insert1145 (
    .A(_7092_),
    .Y(_7092__bF$buf9)
);

BUFX2 BUFX2_insert1146 (
    .A(_7092_),
    .Y(_7092__bF$buf8)
);

BUFX2 BUFX2_insert1147 (
    .A(_7092_),
    .Y(_7092__bF$buf7)
);

BUFX2 BUFX2_insert1148 (
    .A(_7092_),
    .Y(_7092__bF$buf6)
);

BUFX2 BUFX2_insert1149 (
    .A(_7092_),
    .Y(_7092__bF$buf5)
);

FILL SFILL28600x58050 (
);

FILL SFILL59000x49050 (
);

FILL SFILL3240x14050 (
);

NAND2X1 _14725_ (
    .A(\datapath.registers.828[12] [0]),
    .B(_5132__bF$buf1),
    .Y(_5133_)
);

AOI21X1 _14305_ (
    .A(_4689__bF$buf3),
    .B(_4886__bF$buf0),
    .C(_4896_),
    .Y(_3954_)
);

BUFX2 BUFX2_insert960 (
    .A(_5132_),
    .Y(_5132__bF$buf0)
);

BUFX2 BUFX2_insert961 (
    .A(_5684_),
    .Y(_5684__bF$buf11)
);

BUFX2 BUFX2_insert962 (
    .A(_5684_),
    .Y(_5684__bF$buf10)
);

BUFX2 BUFX2_insert963 (
    .A(_5684_),
    .Y(_5684__bF$buf9)
);

BUFX2 BUFX2_insert964 (
    .A(_5684_),
    .Y(_5684__bF$buf8)
);

BUFX2 BUFX2_insert965 (
    .A(_5684_),
    .Y(_5684__bF$buf7)
);

BUFX2 BUFX2_insert966 (
    .A(_5684_),
    .Y(_5684__bF$buf6)
);

INVX8 _17197_ (
    .A(\datapath.idinstr_23_bF$buf2 ),
    .Y(_7093_)
);

BUFX2 BUFX2_insert967 (
    .A(_5684_),
    .Y(_5684__bF$buf5)
);

BUFX2 BUFX2_insert968 (
    .A(_5684_),
    .Y(_5684__bF$buf4)
);

BUFX2 BUFX2_insert969 (
    .A(_5684_),
    .Y(_5684__bF$buf3)
);

FILL SFILL28600x13050 (
);

FILL SFILL49080x49050 (
);

INVX1 _10645_ (
    .A(_1295_),
    .Y(_1305_)
);

DFFPOSX1 _10225_ (
    .Q(\datapath.csr.csr_mepc [2]),
    .CLK(CLK_bF$buf144),
    .D(\datapath.alupc [2])
);

DFFPOSX1 _19763_ (
    .Q(\datapath.registers.828[30] [3]),
    .CLK(CLK_bF$buf106),
    .D(_4397_)
);

DFFPOSX1 _19343_ (
    .Q(\datapath.registers.828[4] [31]),
    .CLK(CLK_bF$buf85),
    .D(_4492_)
);

FILL SFILL73960x29050 (
);

OAI21X1 _15683_ (
    .A(_4840__bF$buf7),
    .B(_5612__bF$buf0),
    .C(\datapath.registers.828[31] [30]),
    .Y(_5645_)
);

NOR2X1 _15263_ (
    .A(\datapath.registers.828[5] [22]),
    .B(_5402__bF$buf6),
    .Y(_5425_)
);

FILL SFILL18600x11050 (
);

NAND2X1 _16888_ (
    .A(_5681__bF$buf6),
    .B(_6790_),
    .Y(_6791_)
);

NAND2X1 _16468_ (
    .A(\datapath.idinstr_17_bF$buf12 ),
    .B(_6380_),
    .Y(_6381_)
);

AOI21X1 _16048_ (
    .A(\datapath.registers.828[23] [6]),
    .B(\datapath.idinstr_17_bF$buf6 ),
    .C(_5681__bF$buf4),
    .Y(_5970_)
);

INVX1 _11183_ (
    .A(_2149_),
    .Y(_2150_)
);

AOI21X1 _9751_ (
    .A(_615_),
    .B(_614_),
    .C(_617_),
    .Y(_618_)
);

NAND3X1 _9331_ (
    .A(_288_),
    .B(_289_),
    .C(_287_),
    .Y(\datapath.rd [23])
);

INVX1 _12388_ (
    .A(\datapath.csr.csr_wdata [8]),
    .Y(_2617_)
);

FILL SFILL84040x40050 (
);

MUX2X1 _18614_ (
    .A(\datapath.registers.828[15] [31]),
    .B(\datapath.registers.828[14] [31]),
    .S(\datapath.idinstr_20_bF$buf41 ),
    .Y(_8479_)
);

FILL SFILL53560x56050 (
);

DFFPOSX1 _19819_ (
    .Q(\datapath.registers.828[13] [27]),
    .CLK(CLK_bF$buf138),
    .D(_3783_)
);

NOR2X1 _14954_ (
    .A(\datapath.registers.828[9] [3]),
    .B(_5257__bF$buf2),
    .Y(_5263_)
);

OAI21X1 _14534_ (
    .A(_5003__bF$buf2),
    .B(_4705__bF$buf0),
    .C(_5021_),
    .Y(_3835_)
);

AOI21X1 _14114_ (
    .A(_4709__bF$buf3),
    .B(_4772__bF$buf3),
    .C(_4791_),
    .Y(_4061_)
);

AOI21X1 _15739_ (
    .A(_4723__bF$buf3),
    .B(_5647__bF$buf4),
    .C(_5673_),
    .Y(_4389_)
);

OAI21X1 _15319_ (
    .A(_4705__bF$buf2),
    .B(_5437__bF$buf5),
    .C(_5454_),
    .Y(_4155_)
);

OAI21X1 _10874_ (
    .A(\datapath.alu.b_0_bF$buf6 ),
    .B(\datapath.alu.a [14]),
    .C(_1844_),
    .Y(_1845_)
);

DFFPOSX1 _10454_ (
    .Q(\datapath.alupc_4 [4]),
    .CLK(CLK_bF$buf81),
    .D(\datapath.idpc_4 [4])
);

DFFPOSX1 _10034_ (
    .Q(\datapath.wbpc_4 [8]),
    .CLK(CLK_bF$buf146),
    .D(\datapath.mempc_4 [8])
);

FILL SFILL74360x59050 (
);

DFFPOSX1 _19992_ (
    .Q(\datapath.registers.828[25] [8]),
    .CLK(CLK_bF$buf91),
    .D(_4210_)
);

DFFPOSX1 _19572_ (
    .Q(\datapath.registers.828[21] [4]),
    .CLK(CLK_bF$buf24),
    .D(_4078_)
);

DFFPOSX1 _19152_ (
    .Q(\datapath.registers.828[15] [0]),
    .CLK(CLK_bF$buf75),
    .D(_3828_)
);

OAI21X1 _11659_ (
    .A(_1058_),
    .B(\datapath.alu.b_1_bF$buf4 ),
    .C(_1060_),
    .Y(_1061_)
);

OAI21X1 _11239_ (
    .A(_1284_),
    .B(\datapath.alu.b_0_bF$buf3 ),
    .C(_1947_),
    .Y(_2205_)
);

OAI21X1 _12600_ (
    .A(\datapath.csr.csr_wdata [31]),
    .B(_2672__bF$buf6),
    .C(_2774_),
    .Y(_2775_)
);

OAI21X1 _15492_ (
    .A(_5546__bF$buf2),
    .B(_4660__bF$buf1),
    .C(_5547_),
    .Y(_4340_)
);

OAI21X1 _15072_ (
    .A(_4723__bF$buf0),
    .B(_5300__bF$buf0),
    .C(_5326_),
    .Y(_4613_)
);

NOR2X1 _9807_ (
    .A(_667_),
    .B(_666_),
    .Y(_668_)
);

AOI22X1 _13805_ (
    .A(_3423__bF$buf3),
    .B(\datapath.alu.c [25]),
    .C(\datapath.csr.csr_pcaddr [25]),
    .D(_3429__bF$buf3),
    .Y(_3586_)
);

MUX2X1 _16697_ (
    .A(\datapath.registers.828[27] [21]),
    .B(\datapath.registers.828[26] [21]),
    .S(\datapath.idinstr_15_bF$buf4 ),
    .Y(_6604_)
);

NOR2X1 _16277_ (
    .A(_6193_),
    .B(_5681__bF$buf5),
    .Y(_6194_)
);

FILL SFILL33480x59050 (
);

DFFPOSX1 _9980_ (
    .Q(\datapath.regcwb [2]),
    .CLK(CLK_bF$buf46),
    .D(_0_[2])
);

NAND2X1 _9560_ (
    .A(\datapath.csr.csr_data [14]),
    .B(_417__bF$buf3),
    .Y(_463_)
);

NAND2X1 _9140_ (
    .A(gnd),
    .B(\datapath.idinstr [13]),
    .Y(_145_)
);

NOR2X1 _12197_ (
    .A(\datapath.alu.c [7]),
    .B(\datapath.alu.c [9]),
    .Y(_1635_)
);

FILL SFILL33400x50 (
);

FILL SFILL68680x20050 (
);

FILL SFILL33080x45050 (
);

NOR2X1 _18843_ (
    .A(\datapath.registers.828[26] [6]),
    .B(_8598__bF$buf4),
    .Y(_8605_)
);

MUX2X1 _18423_ (
    .A(\datapath.registers.828[22] [27]),
    .B(\datapath.registers.828[20] [27]),
    .S(\datapath.idinstr_21_bF$buf24 ),
    .Y(_8292_)
);

AOI21X1 _18003_ (
    .A(_7877_),
    .B(_7881_),
    .C(\datapath.idinstr_23_bF$buf6 ),
    .Y(_7882_)
);

FILL SFILL33400x57050 (
);

FILL SFILL33480x14050 (
);

DFFPOSX1 _19628_ (
    .Q(\datapath.registers.828[9] [28]),
    .CLK(CLK_bF$buf105),
    .D(_4648_)
);

DFFPOSX1 _19208_ (
    .Q(\datapath.registers.828[19] [24]),
    .CLK(CLK_bF$buf127),
    .D(_3972_)
);

NAND2X1 _14763_ (
    .A(\datapath.registers.828[12] [19]),
    .B(_5132__bF$buf6),
    .Y(_5152_)
);

NOR2X1 _14343_ (
    .A(\datapath.registers.828[18] [26]),
    .B(_4886__bF$buf7),
    .Y(_4917_)
);

AOI21X1 _15968_ (
    .A(\datapath.idinstr_17_bF$buf13 ),
    .B(\datapath.registers.828[28] [4]),
    .C(\datapath.idinstr_15_bF$buf53 ),
    .Y(_5892_)
);

OAI21X1 _15548_ (
    .A(_5546__bF$buf2),
    .B(_4729__bF$buf0),
    .C(_5575_),
    .Y(_4360_)
);

OAI21X1 _15128_ (
    .A(_5335__bF$buf2),
    .B(_4711__bF$buf0),
    .C(_5356_),
    .Y(_4574_)
);

NAND2X1 _10683_ (
    .A(\datapath.alu.a [9]),
    .B(_1653_),
    .Y(_1654_)
);

DFFPOSX1 _10263_ (
    .Q(\datapath.regimmalu [8]),
    .CLK(CLK_bF$buf26),
    .D(\datapath.imm [8])
);

FILL SFILL23400x55050 (
);

DFFPOSX1 _19381_ (
    .Q(\datapath.registers.828[8] [5]),
    .CLK(CLK_bF$buf2),
    .D(_4623_)
);

FILL SFILL8440x54050 (
);

AOI21X1 _8831_ (
    .A(_40_),
    .B(_41_),
    .C(_16_),
    .Y(_42_)
);

INVX1 _11888_ (
    .A(_1299_),
    .Y(_1306_)
);

NOR2X1 _11468_ (
    .A(\datapath.alu.b [10]),
    .B(_1851_),
    .Y(_2428_)
);

INVX1 _11048_ (
    .A(_1847_),
    .Y(_2017_)
);

FILL SFILL84040x35050 (
);

FILL SFILL23400x10050 (
);

NAND2X1 _9616_ (
    .A(\datapath.csr.csr_data [28]),
    .B(_417__bF$buf0),
    .Y(_505_)
);

FILL SFILL13080x41050 (
);

NAND2X1 _13614_ (
    .A(\datapath.jumptarget [3]),
    .B(_3427__bF$buf1),
    .Y(_3439_)
);

FILL SFILL8360x16050 (
);

NAND2X1 _16086_ (
    .A(\datapath.idinstr_17_bF$buf12 ),
    .B(_6006_),
    .Y(_6007_)
);

FILL SFILL13480x10050 (
);

NOR2X1 _14819_ (
    .A(\datapath.registers.828[11] [11]),
    .B(_5167__bF$buf1),
    .Y(_5184_)
);

AOI21X1 _18652_ (
    .A(_4689__bF$buf4),
    .B(_8498__bF$buf3),
    .C(_8507_),
    .Y(_4338_)
);

MUX2X1 _18232_ (
    .A(\datapath.registers.828[9] [23]),
    .B(\datapath.registers.828[8] [23]),
    .S(\datapath.idinstr_20_bF$buf15 ),
    .Y(_8105_)
);

AND2X2 _10739_ (
    .A(_1708_),
    .B(_1709_),
    .Y(_1710_)
);

DFFPOSX1 _10319_ (
    .Q(\datapath.regrs2alu [0]),
    .CLK(CLK_bF$buf36),
    .D(\datapath.registers.regb_data [0])
);

DFFPOSX1 _19857_ (
    .Q(\datapath.registers.828[1] [1]),
    .CLK(CLK_bF$buf12),
    .D(_3999_)
);

DFFPOSX1 _19437_ (
    .Q(\datapath.registers.828[24] [29]),
    .CLK(CLK_bF$buf22),
    .D(_4169_)
);

DFFPOSX1 _19017_ (
    .Q(\datapath.registers.828[18] [25]),
    .CLK(CLK_bF$buf63),
    .D(_3941_)
);

NAND2X1 _14992_ (
    .A(\datapath.rd [19]),
    .B(_5257__bF$buf0),
    .Y(_5285_)
);

OAI21X1 _14572_ (
    .A(_5041_),
    .B(_5039__bF$buf0),
    .C(_5042_),
    .Y(_3807_)
);

AOI21X1 _14152_ (
    .A(_4681__bF$buf3),
    .B(_4806__bF$buf5),
    .C(_4811_),
    .Y(_4046_)
);

FILL SFILL64040x31050 (
);

AOI21X1 _15777_ (
    .A(\datapath.idinstr_15_bF$buf35 ),
    .B(_5704_),
    .C(_5684__bF$buf8),
    .Y(_5705_)
);

NAND2X1 _15357_ (
    .A(\datapath.registers.828[4] [3]),
    .B(_5470__bF$buf5),
    .Y(_5474_)
);

DFFPOSX1 _10492_ (
    .Q(\datapath.alupc [10]),
    .CLK(CLK_bF$buf98),
    .D(\datapath.idpc [10])
);

FILL SFILL83640x9050 (
);

DFFPOSX1 _10072_ (
    .Q(\datapath.csr.csr_wdata [14]),
    .CLK(CLK_bF$buf87),
    .D(\datapath.regcsralu [14])
);

DFFPOSX1 _19190_ (
    .Q(\datapath.registers.828[19] [6]),
    .CLK(CLK_bF$buf22),
    .D(_3984_)
);

AND2X2 _11697_ (
    .A(_1100_),
    .B(_1091__bF$buf1),
    .Y(_1101_)
);

AND2X2 _11277_ (
    .A(_2241_),
    .B(_1177_),
    .Y(_2242_)
);

MUX2X1 _17923_ (
    .A(_7802_),
    .B(_7801_),
    .S(\datapath.idinstr_21_bF$buf1 ),
    .Y(_7803_)
);

NAND3X1 _17503_ (
    .A(\datapath.idinstr_21_bF$buf44 ),
    .B(_7392_),
    .C(_7390_),
    .Y(_7393_)
);

FILL SFILL58760x51050 (
);

NOR2X1 _9845_ (
    .A(\datapath.alupc [25]),
    .B(\datapath.regimmalu [25]),
    .Y(_702_)
);

NAND3X1 _9425_ (
    .A(_359_),
    .B(_360_),
    .C(_358_),
    .Y(\datapath.muxbval [13])
);

NAND2X1 _9005_ (
    .A(gnd),
    .B(\datapath.idpc_4 [0]),
    .Y(_832_)
);

FILL SFILL58680x58050 (
);

NAND2X1 _18708_ (
    .A(\datapath.registers.828[28] [4]),
    .B(_8531__bF$buf6),
    .Y(_8536_)
);

NAND3X1 _13843_ (
    .A(_3614_),
    .B(_3615_),
    .C(_3613_),
    .Y(\datapath.programcounter.pc_mux [29])
);

NAND2X1 _13423_ (
    .A(DMEM_DATA_L[13]),
    .B(_3031__bF$buf4),
    .Y(_3312_)
);

OAI21X1 _13003_ (
    .A(_3015_),
    .B(_3012_),
    .C(_3022_),
    .Y(\datapath.imm [15])
);

FILL FILL83160x38050 (
);

FILL SFILL79400x8050 (
);

OAI21X1 _14628_ (
    .A(_5077_),
    .B(_5039__bF$buf2),
    .C(_5078_),
    .Y(_3809_)
);

NAND2X1 _14208_ (
    .A(\controlunit.regfile_wen ),
    .B(_4663_),
    .Y(_4840_)
);

FILL SFILL79000x7050 (
);

NOR2X1 _18881_ (
    .A(\datapath.registers.828[26] [25]),
    .B(_8598__bF$buf3),
    .Y(_8624_)
);

AOI21X1 _18461_ (
    .A(_8324_),
    .B(_8328_),
    .C(_7093__bF$buf1),
    .Y(_8329_)
);

NAND2X1 _18041_ (
    .A(\datapath.idinstr_22_bF$buf14 ),
    .B(_7918_),
    .Y(_7919_)
);

FILL SFILL8440x49050 (
);

INVX1 _10968_ (
    .A(_1937_),
    .Y(_1938_)
);

DFFPOSX1 _10548_ (
    .Q(\datapath.idpc_4 [2]),
    .CLK(CLK_bF$buf46),
    .D(\datapath._04_ [2])
);

DFFPOSX1 _10128_ (
    .Q(_0_[6]),
    .CLK(CLK_bF$buf129),
    .D(\datapath.alu.c [6])
);

DFFPOSX1 _19666_ (
    .Q(\datapath.registers.828[27] [2]),
    .CLK(CLK_bF$buf10),
    .D(_4266_)
);

DFFPOSX1 _19246_ (
    .Q(\datapath.registers.828[20] [30]),
    .CLK(CLK_bF$buf31),
    .D(_4043_)
);

AOI21X1 _14381_ (
    .A(_4693__bF$buf2),
    .B(_4924__bF$buf2),
    .C(_4938_),
    .Y(_3893_)
);

OAI21X1 _15586_ (
    .A(_5098__bF$buf0),
    .B(_4668__bF$buf7),
    .C(\datapath.registers.828[1] [15]),
    .Y(_5595_)
);

NOR2X1 _15166_ (
    .A(\datapath.registers.828[6] [6]),
    .B(_5369__bF$buf1),
    .Y(_5376_)
);

FILL SFILL38680x54050 (
);

FILL SFILL38280x40050 (
);

INVX1 _11086_ (
    .A(_2054_),
    .Y(\datapath.alu.c [2])
);

NAND2X1 _17732_ (
    .A(\datapath.idinstr_22_bF$buf35 ),
    .B(_7616_),
    .Y(_7617_)
);

AOI21X1 _17312_ (
    .A(_7205_),
    .B(_7204_),
    .C(\datapath.idinstr_21_bF$buf16 ),
    .Y(_7206_)
);

AOI21X1 _9654_ (
    .A(_524_),
    .B(_526_),
    .C(_532_),
    .Y(_533_)
);

NOR2X1 _9234_ (
    .A(_212_),
    .B(_215_),
    .Y(_216_)
);

FILL SFILL23640x7050 (
);

FILL SFILL63880x5050 (
);

FILL SFILL68840x41050 (
);

AOI21X1 _18937_ (
    .A(_4713__bF$buf3),
    .B(_8631__bF$buf1),
    .C(_8652_),
    .Y(_4192_)
);

INVX1 _18517_ (
    .A(\datapath.registers.828[27] [29]),
    .Y(_8384_)
);

NAND2X1 _13652_ (
    .A(\datapath.jumptarget [8]),
    .B(_3427__bF$buf0),
    .Y(_3467_)
);

NAND2X1 _13232_ (
    .A(\datapath.memoryinterface.data_store [24]),
    .B(_3031__bF$buf6),
    .Y(_3174_)
);

FILL SFILL28680x52050 (
);

FILL SFILL68760x48050 (
);

FILL SFILL68360x34050 (
);

INVX1 _14857_ (
    .A(\datapath.registers.828[11] [28]),
    .Y(_5205_)
);

NAND2X1 _14437_ (
    .A(\datapath.registers.828[16] [2]),
    .B(_4968__bF$buf0),
    .Y(_4971_)
);

NOR2X1 _14017_ (
    .A(\datapath.registers.828[22] [3]),
    .B(_4738__bF$buf1),
    .Y(_4742_)
);

AOI21X1 _18690_ (
    .A(_4727__bF$buf4),
    .B(_8498__bF$buf1),
    .C(_8526_),
    .Y(_4327_)
);

AOI21X1 _18270_ (
    .A(\datapath.registers.828[21] [23]),
    .B(\datapath.idinstr_22_bF$buf8 ),
    .C(_7089__bF$buf2),
    .Y(_8143_)
);

NAND2X1 _10777_ (
    .A(_1746_),
    .B(_1747_),
    .Y(_1748_)
);

DFFPOSX1 _10357_ (
    .Q(\datapath.alu.b [6]),
    .CLK(CLK_bF$buf55),
    .D(\datapath.muxbval [6])
);

FILL SFILL58760x46050 (
);

DFFPOSX1 _19895_ (
    .Q(\datapath.registers.828[29] [7]),
    .CLK(CLK_bF$buf133),
    .D(_4337_)
);

DFFPOSX1 _19475_ (
    .Q(\datapath.registers.828[5] [3]),
    .CLK(CLK_bF$buf42),
    .D(_4525_)
);

DFFPOSX1 _19055_ (
    .Q(\datapath.registers.828[31] [31]),
    .CLK(CLK_bF$buf33),
    .D(_4428_)
);

AOI21X1 _14190_ (
    .A(_4719__bF$buf1),
    .B(_4806__bF$buf7),
    .C(_4830_),
    .Y(_4035_)
);

OAI21X1 _8925_ (
    .A(_777_),
    .B(gnd),
    .C(_778_),
    .Y(\datapath._03_ [5])
);

FILL SFILL58920x6050 (
);

DFFPOSX1 _12923_ (
    .Q(\datapath.csr.mepc [17]),
    .CLK(CLK_bF$buf87),
    .D(\datapath.csr._26_ [17])
);

OAI21X1 _12503_ (
    .A(_2697_),
    .B(\controlunit.csrfile_trap_wen_bF$buf2 ),
    .C(_2698_),
    .Y(\datapath.csr._26_ [8])
);

NAND2X1 _15395_ (
    .A(\datapath.registers.828[4] [22]),
    .B(_5470__bF$buf6),
    .Y(_5493_)
);

FILL SFILL58520x5050 (
);

NOR2X1 _13708_ (
    .A(\datapath.programcounter.pc [15]),
    .B(_3509_),
    .Y(_3510_)
);

BUFX2 BUFX2_insert200 (
    .A(\datapath.idinstr_15_hier0_bF$buf2 ),
    .Y(\datapath.idinstr_15_bF$buf14 )
);

BUFX2 BUFX2_insert201 (
    .A(\datapath.idinstr_15_hier0_bF$buf1 ),
    .Y(\datapath.idinstr_15_bF$buf13 )
);

BUFX2 BUFX2_insert202 (
    .A(\datapath.idinstr_15_hier0_bF$buf1 ),
    .Y(\datapath.idinstr_15_bF$buf12 )
);

BUFX2 BUFX2_insert203 (
    .A(\datapath.idinstr_15_hier0_bF$buf4 ),
    .Y(\datapath.idinstr_15_bF$buf11 )
);

OAI21X1 _17961_ (
    .A(_7826_),
    .B(_7840_),
    .C(_7088__bF$buf3),
    .Y(_7841_)
);

BUFX2 BUFX2_insert204 (
    .A(\datapath.idinstr_15_hier0_bF$buf0 ),
    .Y(\datapath.idinstr_15_bF$buf10 )
);

AOI21X1 _17541_ (
    .A(_7425_),
    .B(_7429_),
    .C(_7093__bF$buf5),
    .Y(_7430_)
);

BUFX2 BUFX2_insert205 (
    .A(\datapath.idinstr_15_hier0_bF$buf6 ),
    .Y(\datapath.idinstr_15_bF$buf9 )
);

AOI21X1 _17121_ (
    .A(_7014_),
    .B(_7018_),
    .C(\datapath.idinstr_18_bF$buf4 ),
    .Y(_7019_)
);

BUFX2 BUFX2_insert206 (
    .A(\datapath.idinstr_15_hier0_bF$buf6 ),
    .Y(\datapath.idinstr_15_bF$buf8 )
);

BUFX2 BUFX2_insert207 (
    .A(\datapath.idinstr_15_hier0_bF$buf2 ),
    .Y(\datapath.idinstr_15_bF$buf7 )
);

BUFX2 BUFX2_insert208 (
    .A(\datapath.idinstr_15_hier0_bF$buf2 ),
    .Y(\datapath.idinstr_15_bF$buf6 )
);

BUFX2 BUFX2_insert209 (
    .A(\datapath.idinstr_15_hier0_bF$buf4 ),
    .Y(\datapath.idinstr_15_bF$buf5 )
);

INVX1 _9883_ (
    .A(_734_),
    .Y(_735_)
);

NAND2X1 _9463_ (
    .A(\datapath.imm [23]),
    .B(_316__bF$buf2),
    .Y(_389_)
);

INVX1 _9043_ (
    .A(\datapath.nextpc [13]),
    .Y(_857_)
);

NAND2X1 _18746_ (
    .A(\datapath.registers.828[28] [23]),
    .B(_8531__bF$buf5),
    .Y(_8555_)
);

NAND2X1 _18326_ (
    .A(_7092__bF$buf8),
    .B(_8196_),
    .Y(_8197_)
);

DFFPOSX1 _13881_ (
    .Q(\datapath.programcounter.pc [13]),
    .CLK(CLK_bF$buf102),
    .D(\datapath.programcounter._1_ [13])
);

NAND3X1 _13461_ (
    .A(_3291__bF$buf3),
    .B(_3336_),
    .C(_3326_),
    .Y(\datapath.memdataload [26])
);

OAI22X1 _13041_ (
    .A(_3005_),
    .B(_2992_),
    .C(_2991_),
    .D(_2993_),
    .Y(\datapath.immediatedecoder._06_ )
);

FILL SFILL78840x38050 (
);

NOR2X1 _14666_ (
    .A(\datapath.registers.828[13] [3]),
    .B(_5099__bF$buf0),
    .Y(_5103_)
);

FILL SFILL74120x16050 (
);

NOR2X1 _14246_ (
    .A(\datapath.registers.828[19] [15]),
    .B(_4842__bF$buf2),
    .Y(_4863_)
);

BUFX2 BUFX2_insert0 (
    .A(_318_),
    .Y(_318__bF$buf4)
);

BUFX2 BUFX2_insert1 (
    .A(_318_),
    .Y(_318__bF$buf3)
);

BUFX2 BUFX2_insert2 (
    .A(_318_),
    .Y(_318__bF$buf2)
);

BUFX2 BUFX2_insert3 (
    .A(_318_),
    .Y(_318__bF$buf1)
);

BUFX2 BUFX2_insert4 (
    .A(_318_),
    .Y(_318__bF$buf0)
);

BUFX2 BUFX2_insert5 (
    .A(_4681_),
    .Y(_4681__bF$buf4)
);

BUFX2 BUFX2_insert6 (
    .A(_4681_),
    .Y(_4681__bF$buf3)
);

BUFX2 BUFX2_insert7 (
    .A(_4681_),
    .Y(_4681__bF$buf2)
);

BUFX2 BUFX2_insert8 (
    .A(_4681_),
    .Y(_4681__bF$buf1)
);

BUFX2 BUFX2_insert9 (
    .A(_4681_),
    .Y(_4681__bF$buf0)
);

FILL SFILL38280x35050 (
);

DFFPOSX1 _10586_ (
    .Q(\datapath.idpc [8]),
    .CLK(CLK_bF$buf3),
    .D(\datapath._03_ [8])
);

DFFPOSX1 _10166_ (
    .Q(\datapath.meminstr [5]),
    .CLK(CLK_bF$buf0),
    .D(\datapath.aluinstr [5])
);

FILL SFILL8360x5050 (
);

INVX1 _16812_ (
    .A(\datapath.registers.828[25] [23]),
    .Y(_6717_)
);

DFFPOSX1 _19284_ (
    .Q(\datapath.registers.828[2] [4]),
    .CLK(CLK_bF$buf5),
    .D(_4366_)
);

BUFX2 _8734_ (
    .A(\datapath.programcounter.pc [5]),
    .Y(IMEM_ADDR[5])
);

FILL SFILL83640x42050 (
);

INVX1 _12732_ (
    .A(_2864_),
    .Y(_2865_)
);

INVX1 _12312_ (
    .A(\datapath.csr.mcause [21]),
    .Y(_2560_)
);

FILL SFILL28680x47050 (
);

DFFPOSX1 _9939_ (
    .Q(\datapath.regcsrwb [25]),
    .CLK(CLK_bF$buf108),
    .D(\datapath.csr.csr_wdata [25])
);

NAND2X1 _9519_ (
    .A(\datapath.idpc [4]),
    .B(_416__bF$buf4),
    .Y(_432_)
);

INVX8 _13937_ (
    .A(\datapath.rd [8]),
    .Y(_4689_)
);

AOI21X1 _13517_ (
    .A(gnd),
    .B(_3370_),
    .C(_3371_),
    .Y(\datapath.programcounter._1_ [6])
);

OAI21X1 _17770_ (
    .A(_7649_),
    .B(_7650_),
    .C(_7653_),
    .Y(_7654_)
);

AOI21X1 _17350_ (
    .A(_7238_),
    .B(_7242_),
    .C(\datapath.idinstr_23_bF$buf7 ),
    .Y(_7243_)
);

XNOR2X1 _9692_ (
    .A(\datapath.alupc [7]),
    .B(\datapath.regimmalu [7]),
    .Y(_566_)
);

AOI22X1 _9272_ (
    .A(_219__bF$buf1),
    .B(\datapath.wbpc_4 [9]),
    .C(\datapath.regcsrwb [9]),
    .D(_216__bF$buf2),
    .Y(_245_)
);

FILL SFILL2920x49050 (
);

BUFX2 _18975_ (
    .A(\datapath.registers.828[0] [15]),
    .Y(_3642_)
);

MUX2X1 _18555_ (
    .A(\datapath.registers.828[7] [30]),
    .B(\datapath.registers.828[6] [30]),
    .S(\datapath.idinstr_20_bF$buf31 ),
    .Y(_8421_)
);

INVX1 _18135_ (
    .A(\datapath.registers.828[2] [20]),
    .Y(_8011_)
);

NAND2X1 _13690_ (
    .A(\datapath.jumptarget [13]),
    .B(_3427__bF$buf4),
    .Y(_3495_)
);

NAND2X1 _13270_ (
    .A(_0__1_bF$buf7),
    .B(\datapath.memoryinterface.data_store [14]),
    .Y(_3206_)
);

OAI21X1 _14895_ (
    .A(_5227_),
    .B(_5212__bF$buf6),
    .C(_5228_),
    .Y(_3669_)
);

NAND2X1 _14475_ (
    .A(\datapath.registers.828[16] [21]),
    .B(_4968__bF$buf6),
    .Y(_4990_)
);

NOR2X1 _14055_ (
    .A(\datapath.registers.828[22] [22]),
    .B(_4738__bF$buf1),
    .Y(_4761_)
);

FILL SFILL48760x39050 (
);

DFFPOSX1 _10395_ (
    .Q(\datapath.alu.a [12]),
    .CLK(CLK_bF$buf113),
    .D(\datapath.muxaval [12])
);

AOI21X1 _16621_ (
    .A(\datapath.idinstr_15_bF$buf45 ),
    .B(_6529_),
    .C(\datapath.idinstr_17_bF$buf14 ),
    .Y(_6530_)
);

AOI21X1 _16201_ (
    .A(\datapath.registers.828[6] [9]),
    .B(\datapath.idinstr_17_bF$buf10 ),
    .C(\datapath.idinstr_15_bF$buf47 ),
    .Y(_6120_)
);

DFFPOSX1 _19093_ (
    .Q(\datapath.registers.828[14] [5]),
    .CLK(CLK_bF$buf53),
    .D(_3823_)
);

NAND2X1 _8963_ (
    .A(gnd),
    .B(\datapath.idpc [18]),
    .Y(_804_)
);

MUX2X1 _17826_ (
    .A(\datapath.registers.828[1] [14]),
    .B(\datapath.registers.828[0] [14]),
    .S(\datapath.idinstr_20_bF$buf29 ),
    .Y(_7708_)
);

AOI21X1 _17406_ (
    .A(\datapath.registers.828[13] [4]),
    .B(\datapath.idinstr_20_bF$buf41 ),
    .C(\datapath.idinstr_21_bF$buf38 ),
    .Y(_7298_)
);

DFFPOSX1 _12961_ (
    .Q(\datapath.csr.mvect [22]),
    .CLK(CLK_bF$buf140),
    .D(\datapath.csr._13_ [22])
);

NAND2X1 _12541_ (
    .A(\controlunit.csrfile_trap_wen_bF$buf0 ),
    .B(\datapath.csr.csr_mepc [19]),
    .Y(_2728_)
);

OAI21X1 _12121_ (
    .A(_1889__bF$buf0),
    .B(\datapath.alu.a [29]),
    .C(_1890__bF$buf0),
    .Y(_1555_)
);

XOR2X1 _9748_ (
    .A(_614_),
    .B(_615_),
    .Y(\datapath.jumptarget [14])
);

AOI22X1 _9328_ (
    .A(_219__bF$buf2),
    .B(\datapath.wbpc_4 [23]),
    .C(\datapath.regcsrwb [23]),
    .D(_216__bF$buf1),
    .Y(_287_)
);

AND2X2 _13746_ (
    .A(_3537_),
    .B(_3539_),
    .Y(\datapath.nextpc [19])
);

OAI22X1 _13326_ (
    .A(_0__0_bF$buf1),
    .B(_3152_),
    .C(_3238_),
    .D(_3151_),
    .Y(\datapath.memoryinterface.byte_size_store.storebyte [21])
);

FILL SFILL78440x19050 (
);

OAI21X1 _9081_ (
    .A(_881_),
    .B(gnd),
    .C(_882_),
    .Y(\datapath._04_ [25])
);

NOR2X1 _18784_ (
    .A(\datapath.registers.828[27] [9]),
    .B(_8565__bF$buf3),
    .Y(_8575_)
);

OAI21X1 _18364_ (
    .A(_8234_),
    .B(_8225_),
    .C(_7088__bF$buf0),
    .Y(_8235_)
);

FILL SFILL3320x34050 (
);

FILL SFILL28360x21050 (
);

INVX1 _11812_ (
    .A(_1224_),
    .Y(\datapath.alu.c [19])
);

DFFPOSX1 _19989_ (
    .Q(\datapath.registers.828[25] [5]),
    .CLK(CLK_bF$buf22),
    .D(_4207_)
);

DFFPOSX1 _19569_ (
    .Q(\datapath.registers.828[21] [1]),
    .CLK(CLK_bF$buf62),
    .D(_4063_)
);

DFFPOSX1 _19149_ (
    .Q(\datapath.registers.828[17] [29]),
    .CLK(CLK_bF$buf148),
    .D(_3913_)
);

AOI21X1 _14284_ (
    .A(_4735__bF$buf3),
    .B(_4842__bF$buf4),
    .C(_4884_),
    .Y(_3980_)
);

OAI21X1 _15489_ (
    .A(_5544_),
    .B(_5503__bF$buf5),
    .C(_5545_),
    .Y(_4460_)
);

NAND2X1 _15069_ (
    .A(\datapath.registers.828[8] [24]),
    .B(_5300__bF$buf0),
    .Y(_5325_)
);

AOI21X1 _16850_ (
    .A(\datapath.registers.828[6] [24]),
    .B(\datapath.idinstr_17_bF$buf3 ),
    .C(\datapath.idinstr_15_bF$buf17 ),
    .Y(_6754_)
);

MUX2X1 _16430_ (
    .A(_6342_),
    .B(_6341_),
    .S(\datapath.idinstr_16_bF$buf36 ),
    .Y(_6343_)
);

OAI21X1 _16010_ (
    .A(_5048_),
    .B(\datapath.idinstr_15_bF$buf28 ),
    .C(\datapath.idinstr_16_bF$buf33 ),
    .Y(_5933_)
);

OR2X2 _8772_ (
    .A(_108_),
    .B(_100_),
    .Y(_109_)
);

AOI21X1 _17635_ (
    .A(\datapath.registers.828[23] [9]),
    .B(\datapath.idinstr_22_bF$buf3 ),
    .C(_7089__bF$buf2),
    .Y(_7522_)
);

NAND2X1 _17215_ (
    .A(_7089__bF$buf4),
    .B(_7110_),
    .Y(_7111_)
);

NAND3X1 _12770_ (
    .A(_2840_),
    .B(_2881_),
    .C(_2862_),
    .Y(_2896_)
);

NOR2X1 _12350_ (
    .A(_2584_),
    .B(_2586_),
    .Y(_2587_)
);

DFFPOSX1 _9977_ (
    .Q(\datapath.regloadwb [31]),
    .CLK(CLK_bF$buf147),
    .D(\datapath.memdataload [31])
);

NAND3X1 _9557_ (
    .A(_459_),
    .B(_460_),
    .C(_458_),
    .Y(\datapath.muxaval [13])
);

NAND2X1 _9137_ (
    .A(gnd),
    .B(\datapath.idinstr [12]),
    .Y(_143_)
);

AOI21X1 _13975_ (
    .A(_4713__bF$buf0),
    .B(_4673__bF$buf5),
    .C(_4714_),
    .Y(_4128_)
);

NOR2X1 _13555_ (
    .A(gnd),
    .B(\datapath.programcounter.pc_mux [19]),
    .Y(_3397_)
);

INVX1 _13135_ (
    .A(\datapath.memoryinterface.byte_size_store.storebyte [10]),
    .Y(_3091_)
);

AOI21X1 _15701_ (
    .A(_4685__bF$buf2),
    .B(_5647__bF$buf7),
    .C(_5654_),
    .Y(_4400_)
);

MUX2X1 _18593_ (
    .A(\datapath.registers.828[31] [31]),
    .B(\datapath.registers.828[30] [31]),
    .S(\datapath.idinstr_20_bF$buf25 ),
    .Y(_8458_)
);

AOI21X1 _18173_ (
    .A(_8047_),
    .B(_8041_),
    .C(_7093__bF$buf5),
    .Y(_8048_)
);

NAND2X1 _16906_ (
    .A(\datapath.idinstr_17_bF$buf2 ),
    .B(_6808_),
    .Y(_6809_)
);

FILL SFILL53640x31050 (
);

OAI21X1 _11621_ (
    .A(_918_),
    .B(_994__bF$buf4),
    .C(_1019_),
    .Y(_1020_)
);

NAND2X1 _11201_ (
    .A(\datapath.alu.b [5]),
    .B(_1284_),
    .Y(_2167_)
);

DFFPOSX1 _19798_ (
    .Q(\datapath.registers.828[13] [6]),
    .CLK(CLK_bF$buf138),
    .D(_3792_)
);

DFFPOSX1 _19378_ (
    .Q(\datapath.registers.828[8] [2]),
    .CLK(CLK_bF$buf90),
    .D(_4618_)
);

NOR2X1 _14093_ (
    .A(\datapath.registers.828[21] [8]),
    .B(_4772__bF$buf4),
    .Y(_4781_)
);

INVX1 _8828_ (
    .A(\datapath.aluinstr [5]),
    .Y(_39_)
);

INVX1 _12826_ (
    .A(_2941_),
    .Y(_2943_)
);

INVX1 _12406_ (
    .A(\datapath.csr.csr_wdata [14]),
    .Y(_2629_)
);

NAND2X1 _15298_ (
    .A(\datapath.registers.828[24] [6]),
    .B(_5437__bF$buf7),
    .Y(_5444_)
);

INVX1 _17864_ (
    .A(\datapath.registers.828[25] [14]),
    .Y(_7746_)
);

OAI21X1 _17444_ (
    .A(_7333_),
    .B(\datapath.idinstr_22_bF$buf35 ),
    .C(_7334_),
    .Y(_7335_)
);

MUX2X1 _17024_ (
    .A(\datapath.registers.828[19] [28]),
    .B(\datapath.registers.828[17] [28]),
    .S(\datapath.idinstr_16_bF$buf21 ),
    .Y(_6924_)
);

FILL SFILL43560x36050 (
);

OAI21X1 _9786_ (
    .A(_644_),
    .B(_647_),
    .C(_645_),
    .Y(_649_)
);

INVX1 _9366_ (
    .A(bsel[1]),
    .Y(_315_)
);

NOR2X1 _18649_ (
    .A(\datapath.registers.828[29] [7]),
    .B(_8498__bF$buf7),
    .Y(_8506_)
);

AOI21X1 _18229_ (
    .A(_8098_),
    .B(_8102_),
    .C(\datapath.idinstr_23_bF$buf6 ),
    .Y(_8103_)
);

OAI21X1 _13784_ (
    .A(_3563_),
    .B(_3501_),
    .C(_3568_),
    .Y(\datapath.programcounter.pc_mux [23])
);

INVX1 _13364_ (
    .A(\datapath.memoryinterface.byte_size_load.byteval [3]),
    .Y(_3263_)
);

FILL SFILL18360x59050 (
);

NOR2X1 _14989_ (
    .A(\datapath.registers.828[9] [18]),
    .B(_5257__bF$buf4),
    .Y(_5283_)
);

OAI21X1 _14569_ (
    .A(_5037_),
    .B(_5039__bF$buf4),
    .C(_5040_),
    .Y(_3796_)
);

NOR2X1 _14149_ (
    .A(\datapath.registers.828[20] [3]),
    .B(_4806__bF$buf3),
    .Y(_4810_)
);

MUX2X1 _15930_ (
    .A(_5854_),
    .B(_5853_),
    .S(\datapath.idinstr_16_bF$buf2 ),
    .Y(_5855_)
);

OAI21X1 _15510_ (
    .A(_5546__bF$buf0),
    .B(_4691__bF$buf3),
    .C(_5556_),
    .Y(_4371_)
);

FILL SFILL79000x30050 (
);

DFFPOSX1 _10489_ (
    .Q(\datapath.alupc [7]),
    .CLK(CLK_bF$buf26),
    .D(\datapath.idpc [7])
);

DFFPOSX1 _10069_ (
    .Q(\datapath.csr.csr_wdata [11]),
    .CLK(CLK_bF$buf74),
    .D(\datapath.regcsralu [11])
);

AOI21X1 _16715_ (
    .A(_6616_),
    .B(_6621_),
    .C(\datapath.idinstr_18_bF$buf3 ),
    .Y(_6622_)
);

NAND3X1 _11850_ (
    .A(_1265_),
    .B(_1245_),
    .C(_1239_),
    .Y(\datapath.alu.c [20])
);

INVX1 _11430_ (
    .A(_2380_),
    .Y(_2391_)
);

INVX1 _11010_ (
    .A(_1876_),
    .Y(_1980_)
);

DFFPOSX1 _19187_ (
    .Q(\datapath.registers.828[19] [3]),
    .CLK(CLK_bF$buf132),
    .D(_3981_)
);

FILL SFILL23560x32050 (
);

OAI21X1 _12635_ (
    .A(_2797__bF$buf1),
    .B(\datapath.csr.csr_wdata [7]),
    .C(_2783__bF$buf0),
    .Y(_2802_)
);

NAND3X1 _12215_ (
    .A(_2482_),
    .B(\datapath.idinstr [26]),
    .C(_2483_),
    .Y(_2484_)
);

NAND2X1 _17673_ (
    .A(_7092__bF$buf5),
    .B(_7558_),
    .Y(_7559_)
);

NAND2X1 _17253_ (
    .A(_7089__bF$buf2),
    .B(_7147_),
    .Y(_7148_)
);

NAND2X1 _9595_ (
    .A(\datapath.idpc [23]),
    .B(_416__bF$buf1),
    .Y(_489_)
);

FILL SFILL13560x30050 (
);

INVX1 _9175_ (
    .A(IMEM_DATA[25]),
    .Y(_168_)
);

FILL SFILL53640x26050 (
);

NOR2X1 _10701_ (
    .A(\datapath.alu.b [12]),
    .B(_1671_),
    .Y(_1672_)
);

AOI21X1 _18878_ (
    .A(_4719__bF$buf2),
    .B(_8598__bF$buf2),
    .C(_8622_),
    .Y(_4227_)
);

MUX2X1 _18458_ (
    .A(\datapath.registers.828[31] [28]),
    .B(\datapath.registers.828[30] [28]),
    .S(\datapath.idinstr_20_bF$buf39 ),
    .Y(_8326_)
);

MUX2X1 _18038_ (
    .A(\datapath.registers.828[5] [18]),
    .B(\datapath.registers.828[4] [18]),
    .S(\datapath.idinstr_20_bF$buf33 ),
    .Y(_7916_)
);

INVX1 _13593_ (
    .A(\datapath._36_ ),
    .Y(_3422_)
);

OAI21X1 _13173_ (
    .A(_3121_),
    .B(_0__1_bF$buf3),
    .C(_3122_),
    .Y(_3123_)
);

OAI21X1 _11906_ (
    .A(_1322_),
    .B(_994__bF$buf7),
    .C(_1324_),
    .Y(_1325_)
);

NAND2X1 _14798_ (
    .A(\datapath.rd [2]),
    .B(_5167__bF$buf0),
    .Y(_5172_)
);

NAND2X1 _14378_ (
    .A(\datapath.rd [9]),
    .B(_4924__bF$buf7),
    .Y(_4937_)
);

FILL SFILL43240x55050 (
);

FILL SFILL63800x9050 (
);

FILL SFILL3400x17050 (
);

DFFPOSX1 _10298_ (
    .Q(\datapath.regcsralu [11]),
    .CLK(CLK_bF$buf74),
    .D(\datapath.csr.csr_data [11])
);

AOI21X1 _16944_ (
    .A(_6841_),
    .B(_6845_),
    .C(\datapath.idinstr_18_bF$buf6 ),
    .Y(_6846_)
);

AOI21X1 _16524_ (
    .A(_6434_),
    .B(_6433_),
    .C(_5684__bF$buf1),
    .Y(_6435_)
);

NAND3X1 _16104_ (
    .A(_5683__bF$buf3),
    .B(_6024_),
    .C(_6021_),
    .Y(_6025_)
);

FILL SFILL73800x56050 (
);

NAND2X1 _8866_ (
    .A(_67_),
    .B(_71_),
    .Y(_72_)
);

MUX2X1 _17729_ (
    .A(\datapath.registers.828[31] [11]),
    .B(\datapath.registers.828[29] [11]),
    .S(\datapath.idinstr_21_bF$buf27 ),
    .Y(_7614_)
);

FILL SFILL33240x53050 (
);

OAI21X1 _17309_ (
    .A(_5261_),
    .B(\datapath.idinstr_22_bF$buf9 ),
    .C(_7202_),
    .Y(_7203_)
);

OAI21X1 _12864_ (
    .A(_2769_),
    .B(_2585__bF$buf3),
    .C(_2472_),
    .Y(\datapath.csr.csr_pcaddr [30])
);

INVX1 _12444_ (
    .A(\datapath.csr.mvect [27]),
    .Y(_2654_)
);

OAI21X1 _12024_ (
    .A(_1389_),
    .B(_1762_),
    .C(_1778_),
    .Y(_1451_)
);

FILL SFILL33640x22050 (
);

INVX1 _13649_ (
    .A(_3464_),
    .Y(_3465_)
);

OAI21X1 _13229_ (
    .A(_3169_),
    .B(_0__1_bF$buf7),
    .C(_3170_),
    .Y(_3171_)
);

NAND2X1 _17482_ (
    .A(_7368_),
    .B(_7371_),
    .Y(_7372_)
);

MUX2X1 _17062_ (
    .A(\datapath.registers.828[31] [29]),
    .B(\datapath.registers.828[30] [29]),
    .S(\datapath.idinstr_15_bF$buf6 ),
    .Y(_6961_)
);

FILL SFILL33800x8050 (
);

INVX4 _10930_ (
    .A(_1900_),
    .Y(_1901_)
);

DFFPOSX1 _10510_ (
    .Q(\datapath.alupc [28]),
    .CLK(CLK_bF$buf144),
    .D(\datapath.idpc [28])
);

NOR2X1 _18687_ (
    .A(\datapath.registers.828[29] [26]),
    .B(_8498__bF$buf3),
    .Y(_8525_)
);

AOI21X1 _18267_ (
    .A(\datapath.registers.828[22] [23]),
    .B(\datapath.idinstr_22_bF$buf40 ),
    .C(\datapath.idinstr_20_bF$buf35 ),
    .Y(_8140_)
);

FILL SFILL23640x20050 (
);

FILL SFILL53800x52050 (
);

FILL SFILL23560x27050 (
);

OAI21X1 _11715_ (
    .A(_1679_),
    .B(_1722_),
    .C(_1119_),
    .Y(_1120_)
);

NOR2X1 _14187_ (
    .A(\datapath.registers.828[20] [22]),
    .B(_4806__bF$buf3),
    .Y(_4829_)
);

NAND2X1 _16753_ (
    .A(_6656_),
    .B(_6658_),
    .Y(_6659_)
);

MUX2X1 _16333_ (
    .A(\datapath.registers.828[3] [12]),
    .B(\datapath.registers.828[2] [12]),
    .S(\datapath.idinstr_15_bF$buf13 ),
    .Y(_6249_)
);

FILL SFILL43800x50050 (
);

FILL SFILL13560x25050 (
);

BUFX2 _8675_ (
    .A(_0_[11]),
    .Y(DMEM_ADDR[11])
);

BUFX2 BUFX2_insert170 (
    .A(\datapath.idinstr_15_hier0_bF$buf4 ),
    .Y(\datapath.idinstr_15_bF$buf44 )
);

BUFX2 BUFX2_insert171 (
    .A(\datapath.idinstr_15_hier0_bF$buf1 ),
    .Y(\datapath.idinstr_15_bF$buf43 )
);

BUFX2 BUFX2_insert172 (
    .A(\datapath.idinstr_15_hier0_bF$buf5 ),
    .Y(\datapath.idinstr_15_bF$buf42 )
);

BUFX2 BUFX2_insert173 (
    .A(\datapath.idinstr_15_hier0_bF$buf5 ),
    .Y(\datapath.idinstr_15_bF$buf41 )
);

BUFX2 BUFX2_insert174 (
    .A(\datapath.idinstr_15_hier0_bF$buf3 ),
    .Y(\datapath.idinstr_15_bF$buf40 )
);

OAI21X1 _17958_ (
    .A(_7836_),
    .B(\datapath.idinstr_22_bF$buf31 ),
    .C(_7837_),
    .Y(_7838_)
);

BUFX2 BUFX2_insert175 (
    .A(\datapath.idinstr_15_hier0_bF$buf4 ),
    .Y(\datapath.idinstr_15_bF$buf39 )
);

MUX2X1 _17538_ (
    .A(\datapath.registers.828[15] [7]),
    .B(\datapath.registers.828[14] [7]),
    .S(\datapath.idinstr_20_bF$buf36 ),
    .Y(_7427_)
);

BUFX2 BUFX2_insert176 (
    .A(\datapath.idinstr_15_hier0_bF$buf5 ),
    .Y(\datapath.idinstr_15_bF$buf38 )
);

MUX2X1 _17118_ (
    .A(\datapath.registers.828[3] [30]),
    .B(\datapath.registers.828[2] [30]),
    .S(\datapath.idinstr_15_bF$buf2 ),
    .Y(_7016_)
);

BUFX2 BUFX2_insert177 (
    .A(\datapath.idinstr_15_hier0_bF$buf3 ),
    .Y(\datapath.idinstr_15_bF$buf37 )
);

BUFX2 BUFX2_insert178 (
    .A(\datapath.idinstr_15_hier0_bF$buf4 ),
    .Y(\datapath.idinstr_15_bF$buf36 )
);

AOI21X1 _12673_ (
    .A(_2566_),
    .B(_2797__bF$buf6),
    .C(_2822_),
    .Y(\datapath.csr._32_ [24])
);

BUFX2 BUFX2_insert179 (
    .A(\datapath.idinstr_15_hier0_bF$buf2 ),
    .Y(\datapath.idinstr_15_bF$buf35 )
);

OAI21X1 _12253_ (
    .A(_2516_),
    .B(_2490__bF$buf1),
    .C(_2517_),
    .Y(\datapath.csr.csr_data [4])
);

FILL SFILL43640x4050 (
);

DFFPOSX1 _13878_ (
    .Q(\datapath.programcounter.pc [10]),
    .CLK(CLK_bF$buf102),
    .D(\datapath.programcounter._1_ [10])
);

NAND2X1 _13458_ (
    .A(DMEM_DATA_L[25]),
    .B(_3031__bF$buf7),
    .Y(_3335_)
);

NAND2X1 _13038_ (
    .A(_2970_),
    .B(_2971_),
    .Y(_2991_)
);

MUX2X1 _17291_ (
    .A(\datapath.registers.828[29] [2]),
    .B(\datapath.registers.828[28] [2]),
    .S(\datapath.idinstr_20_bF$buf18 ),
    .Y(_7185_)
);

OAI21X1 _15604_ (
    .A(_5098__bF$buf4),
    .B(_4668__bF$buf6),
    .C(\datapath.registers.828[1] [24]),
    .Y(_5604_)
);

MUX2X1 _18496_ (
    .A(\datapath.registers.828[9] [29]),
    .B(\datapath.registers.828[8] [29]),
    .S(\datapath.idinstr_20_bF$buf42 ),
    .Y(_8363_)
);

NAND2X1 _18076_ (
    .A(_7949_),
    .B(_7952_),
    .Y(_7953_)
);

FILL SFILL33320x41050 (
);

FILL SFILL33720x10050 (
);

AOI21X1 _16809_ (
    .A(\datapath.registers.828[30] [23]),
    .B(\datapath.idinstr_17_bF$buf13 ),
    .C(\datapath.idinstr_15_bF$buf25 ),
    .Y(_6714_)
);

AOI21X1 _11944_ (
    .A(_1354_),
    .B(_1355_),
    .C(_1365_),
    .Y(_1366_)
);

OAI21X1 _11524_ (
    .A(_914_),
    .B(_915_),
    .C(_1840_),
    .Y(_916_)
);

NAND2X1 _11104_ (
    .A(_994__bF$buf6),
    .B(_2071_),
    .Y(_2072_)
);

FILL SFILL33640x17050 (
);

FILL SFILL13640x3050 (
);

FILL SFILL13560x8050 (
);

FILL SFILL23720x53050 (
);

AOI21X1 _12729_ (
    .A(_2610_),
    .B(_2848_),
    .C(_2859_),
    .Y(_2862_)
);

INVX1 _12309_ (
    .A(\datapath.csr.mcause [20]),
    .Y(_2558_)
);

FILL SFILL63800x49050 (
);

FILL SFILL13240x2050 (
);

AOI21X1 _16982_ (
    .A(\datapath.idinstr_15_bF$buf45 ),
    .B(_6882_),
    .C(\datapath.idinstr_17_bF$buf14 ),
    .Y(_6883_)
);

AOI21X1 _16562_ (
    .A(_6472_),
    .B(_6447_),
    .C(_5687__bF$buf3),
    .Y(\datapath.registers.rega_data [17])
);

AOI21X1 _16142_ (
    .A(_6061_),
    .B(_6060_),
    .C(\datapath.idinstr_16_bF$buf27 ),
    .Y(_6062_)
);

FILL SFILL23240x46050 (
);

NAND2X1 _17767_ (
    .A(\datapath.registers.828[12] [12]),
    .B(_7089__bF$buf3),
    .Y(_7651_)
);

MUX2X1 _17347_ (
    .A(\datapath.registers.828[3] [3]),
    .B(\datapath.registers.828[2] [3]),
    .S(\datapath.idinstr_20_bF$buf52 ),
    .Y(_7240_)
);

FILL SFILL23640x15050 (
);

OAI21X1 _12482_ (
    .A(_2681_),
    .B(\controlunit.csrfile_trap_wen_bF$buf6 ),
    .C(_2682_),
    .Y(\datapath.csr._26_ [3])
);

INVX1 _12062_ (
    .A(_1746_),
    .Y(_1492_)
);

FILL SFILL8600x57050 (
);

XOR2X1 _9689_ (
    .A(\datapath.alupc [7]),
    .B(\datapath.regimmalu [7]),
    .Y(_564_)
);

NAND2X1 _9269_ (
    .A(\datapath.regcsrwb [8]),
    .B(_216__bF$buf3),
    .Y(_243_)
);

FILL SFILL84200x38050 (
);

NOR2X1 _13687_ (
    .A(\datapath.programcounter.pc [13]),
    .B(_3491_),
    .Y(_3493_)
);

NAND2X1 _13267_ (
    .A(\datapath.memoryinterface.data_store [29]),
    .B(_3031__bF$buf7),
    .Y(_3204_)
);

DFFPOSX1 _19913_ (
    .Q(\datapath.registers.828[29] [25]),
    .CLK(CLK_bF$buf49),
    .D(_4325_)
);

FILL SFILL13640x13050 (
);

AOI21X1 _15833_ (
    .A(_5759_),
    .B(_5758_),
    .C(_5684__bF$buf1),
    .Y(_5760_)
);

NAND2X1 _15413_ (
    .A(\datapath.registers.828[4] [31]),
    .B(_5470__bF$buf4),
    .Y(_5502_)
);

FILL SFILL78920x58050 (
);

MUX2X1 _16618_ (
    .A(\datapath.registers.828[18] [19]),
    .B(\datapath.registers.828[16] [19]),
    .S(\datapath.idinstr_16_bF$buf20 ),
    .Y(_6527_)
);

OAI21X1 _11753_ (
    .A(_1160_),
    .B(_1710_),
    .C(_2103__bF$buf1),
    .Y(_1161_)
);

NAND3X1 _11333_ (
    .A(_2289_),
    .B(_2296_),
    .C(_2282_),
    .Y(_2297_)
);

FILL SFILL78920x13050 (
);

FILL SFILL64280x36050 (
);

INVX1 _9901_ (
    .A(_732_),
    .Y(_753_)
);

DFFPOSX1 _12958_ (
    .Q(\datapath.csr.mvect [19]),
    .CLK(CLK_bF$buf100),
    .D(\datapath.csr._13_ [19])
);

INVX1 _12538_ (
    .A(\datapath.csr.mepc [17]),
    .Y(_2725_)
);

MUX2X1 _12118_ (
    .A(_1289_),
    .B(_1550_),
    .S(\datapath.alu.b_3_bF$buf2 ),
    .Y(_1552_)
);

FILL SFILL33800x43050 (
);

FILL SFILL64200x34050 (
);

AOI21X1 _16791_ (
    .A(\datapath.registers.828[13] [23]),
    .B(\datapath.idinstr_15_bF$buf39 ),
    .C(\datapath.idinstr_16_bF$buf7 ),
    .Y(_6696_)
);

OAI21X1 _16371_ (
    .A(_6284_),
    .B(\datapath.idinstr_17_bF$buf7 ),
    .C(_6285_),
    .Y(_6286_)
);

BUFX2 BUFX2_insert550 (
    .A(\datapath.idinstr [17]),
    .Y(\datapath.idinstr_17_bF$buf1 )
);

BUFX2 BUFX2_insert551 (
    .A(\datapath.idinstr [17]),
    .Y(\datapath.idinstr_17_bF$buf0 )
);

BUFX2 BUFX2_insert552 (
    .A(_2672_),
    .Y(_2672__bF$buf6)
);

BUFX2 BUFX2_insert553 (
    .A(_2672_),
    .Y(_2672__bF$buf5)
);

BUFX2 BUFX2_insert554 (
    .A(_2672_),
    .Y(_2672__bF$buf4)
);

MUX2X1 _17996_ (
    .A(\datapath.registers.828[7] [17]),
    .B(\datapath.registers.828[6] [17]),
    .S(\datapath.idinstr_20_bF$buf33 ),
    .Y(_7875_)
);

NAND2X1 _17576_ (
    .A(_7461_),
    .B(_7463_),
    .Y(_7464_)
);

BUFX2 BUFX2_insert555 (
    .A(_2672_),
    .Y(_2672__bF$buf3)
);

BUFX2 BUFX2_insert556 (
    .A(_2672_),
    .Y(_2672__bF$buf2)
);

NAND2X1 _17156_ (
    .A(\datapath.idinstr_17_bF$buf11 ),
    .B(_7052_),
    .Y(_7053_)
);

BUFX2 BUFX2_insert557 (
    .A(_2672_),
    .Y(_2672__bF$buf1)
);

BUFX2 BUFX2_insert558 (
    .A(_2672_),
    .Y(_2672__bF$buf0)
);

BUFX2 BUFX2_insert559 (
    .A(_4721_),
    .Y(_4721__bF$buf4)
);

INVX1 _12291_ (
    .A(\datapath.csr.mcause [14]),
    .Y(_2546_)
);

INVX1 _9498_ (
    .A(asel[1]),
    .Y(_415_)
);

OAI21X1 _9078_ (
    .A(_879_),
    .B(gnd),
    .C(_880_),
    .Y(\datapath._04_ [24])
);

DFFPOSX1 _10604_ (
    .Q(\datapath.idpc [26]),
    .CLK(CLK_bF$buf77),
    .D(\datapath._03_ [26])
);

NAND3X1 _13496_ (
    .A(_3357_),
    .B(_3358_),
    .C(_3356_),
    .Y(\datapath.memoryinterface.byte_size_load.byteval [7])
);

NAND2X1 _13076_ (
    .A(_0__1_bF$buf1),
    .B(DMEM_DATA_L[1]),
    .Y(_3041_)
);

DFFPOSX1 _19722_ (
    .Q(\datapath.registers.828[0] [26]),
    .CLK(CLK_bF$buf14),
    .D(_3654_)
);

DFFPOSX1 _19302_ (
    .Q(\datapath.registers.828[2] [22]),
    .CLK(CLK_bF$buf103),
    .D(_4354_)
);

NAND3X1 _11809_ (
    .A(_1202_),
    .B(_1208_),
    .C(_1221_),
    .Y(_1222_)
);

OAI21X1 _15642_ (
    .A(_5614__bF$buf3),
    .B(_4691__bF$buf4),
    .C(_5624_),
    .Y(_4435_)
);

AOI21X1 _15222_ (
    .A(_4675__bF$buf4),
    .B(_5402__bF$buf1),
    .C(_5404_),
    .Y(_4511_)
);

AOI21X1 _16847_ (
    .A(\datapath.registers.828[7] [24]),
    .B(\datapath.idinstr_17_bF$buf1 ),
    .C(_5681__bF$buf1),
    .Y(_6751_)
);

AOI21X1 _16427_ (
    .A(_6319_),
    .B(_6340_),
    .C(_5687__bF$buf1),
    .Y(\datapath.registers.rega_data [14])
);

NAND2X1 _16007_ (
    .A(_5684__bF$buf1),
    .B(_5929_),
    .Y(_5930_)
);

NOR2X1 _11982_ (
    .A(_1209__bF$buf3),
    .B(_1899_),
    .Y(_1407_)
);

NAND2X1 _11562_ (
    .A(\datapath.alu.b_3_bF$buf0 ),
    .B(_2208_),
    .Y(_956_)
);

NAND2X1 _11142_ (
    .A(_994__bF$buf4),
    .B(_1969_),
    .Y(_2110_)
);

FILL SFILL48840x59050 (
);

INVX1 _8769_ (
    .A(\controlunit.csrfile_trap_wen_bF$buf3 ),
    .Y(_106_)
);

XOR2X1 _9710_ (
    .A(\datapath.alupc [9]),
    .B(\datapath.regimmalu [9]),
    .Y(_583_)
);

OAI21X1 _12767_ (
    .A(_2893_),
    .B(_2628_),
    .C(_2585__bF$buf0),
    .Y(_2894_)
);

NAND2X1 _12347_ (
    .A(\datapath.meminstr [20]),
    .B(_2583_),
    .Y(_2584_)
);

AOI21X1 _16180_ (
    .A(_6093_),
    .B(_6098_),
    .C(\datapath.idinstr_18_bF$buf5 ),
    .Y(_6099_)
);

AOI21X1 _14913_ (
    .A(_4709__bF$buf1),
    .B(_5212__bF$buf4),
    .C(_5238_),
    .Y(_3677_)
);

NAND2X1 _17385_ (
    .A(\datapath.idinstr_22_bF$buf13 ),
    .B(_7276_),
    .Y(_7277_)
);

FILL SFILL83880x52050 (
);

OAI21X1 _10833_ (
    .A(_1794_),
    .B(_1700_),
    .C(_1803_),
    .Y(_1804_)
);

DFFPOSX1 _10413_ (
    .Q(\datapath.alu.a [30]),
    .CLK(CLK_bF$buf86),
    .D(\datapath.muxaval [30])
);

DFFPOSX1 _19951_ (
    .Q(\datapath.registers.828[28] [31]),
    .CLK(CLK_bF$buf91),
    .D(_4300_)
);

DFFPOSX1 _19531_ (
    .Q(\datapath.registers.828[11] [27]),
    .CLK(CLK_bF$buf53),
    .D(_3719_)
);

DFFPOSX1 _19111_ (
    .Q(\datapath.registers.828[14] [23]),
    .CLK(CLK_bF$buf124),
    .D(_3811_)
);

INVX1 _11618_ (
    .A(_2411_),
    .Y(_1017_)
);

FILL SFILL3480x11050 (
);

AOI21X1 _15871_ (
    .A(\datapath.registers.828[12] [2]),
    .B(\datapath.idinstr_17_bF$buf2 ),
    .C(\datapath.idinstr_15_bF$buf38 ),
    .Y(_5797_)
);

FILL SFILL28440x41050 (
);

AOI21X1 _15451_ (
    .A(_4703__bF$buf0),
    .B(_5503__bF$buf3),
    .C(_5523_),
    .Y(_4442_)
);

NAND2X1 _15031_ (
    .A(\datapath.registers.828[8] [5]),
    .B(_5300__bF$buf6),
    .Y(_5306_)
);

FILL SFILL68520x37050 (
);

FILL SFILL73880x50050 (
);

NAND2X1 _16656_ (
    .A(_5684__bF$buf4),
    .B(_6563_),
    .Y(_6564_)
);

AOI21X1 _16236_ (
    .A(\datapath.registers.828[14] [10]),
    .B(\datapath.idinstr_17_bF$buf1 ),
    .C(\datapath.idinstr_15_bF$buf21 ),
    .Y(_6154_)
);

OAI21X1 _11791_ (
    .A(_2078_),
    .B(_2083_),
    .C(_1209__bF$buf1),
    .Y(_1202_)
);

NAND3X1 _11371_ (
    .A(\datapath.alu.b_4_bF$buf3 ),
    .B(_1840_),
    .C(_2333_),
    .Y(_2334_)
);

INVX1 _8998_ (
    .A(\datapath.programcounter.pc [30]),
    .Y(_827_)
);

FILL SFILL58920x49050 (
);

NAND3X1 _12996_ (
    .A(\datapath.idinstr [12]),
    .B(_3018_),
    .C(_3017_),
    .Y(_3019_)
);

NAND2X1 _12576_ (
    .A(\controlunit.csrfile_trap_wen_bF$buf7 ),
    .B(\datapath.csr.csr_mepc [26]),
    .Y(_2756_)
);

AOI21X1 _12156_ (
    .A(\datapath.alu.b [30]),
    .B(_1587_),
    .C(_1591_),
    .Y(_1592_)
);

NOR2X1 _18802_ (
    .A(\datapath.registers.828[27] [18]),
    .B(_8565__bF$buf6),
    .Y(_8584_)
);

FILL SFILL58520x35050 (
);

FILL SFILL79480x33050 (
);

BUFX2 BUFX2_insert1110 (
    .A(\datapath.idinstr_16_hier0_bF$buf1 ),
    .Y(\datapath.idinstr_16_bF$buf3 )
);

BUFX2 BUFX2_insert1111 (
    .A(\datapath.idinstr_16_hier0_bF$buf2 ),
    .Y(\datapath.idinstr_16_bF$buf2 )
);

BUFX2 BUFX2_insert1112 (
    .A(\datapath.idinstr_16_hier0_bF$buf3 ),
    .Y(\datapath.idinstr_16_bF$buf1 )
);

BUFX2 BUFX2_insert1113 (
    .A(\datapath.idinstr_16_hier0_bF$buf0 ),
    .Y(\datapath.idinstr_16_bF$buf0 )
);

BUFX2 BUFX2_insert1114 (
    .A(_4699_),
    .Y(_4699__bF$buf4)
);

BUFX2 BUFX2_insert1115 (
    .A(_4699_),
    .Y(_4699__bF$buf3)
);

BUFX2 BUFX2_insert1116 (
    .A(_4699_),
    .Y(_4699__bF$buf2)
);

BUFX2 BUFX2_insert1117 (
    .A(_4699_),
    .Y(_4699__bF$buf1)
);

BUFX2 BUFX2_insert1118 (
    .A(_4699_),
    .Y(_4699__bF$buf0)
);

BUFX2 BUFX2_insert1119 (
    .A(_7095_),
    .Y(_7095__bF$buf4)
);

NOR2X1 _14722_ (
    .A(\datapath.registers.828[13] [31]),
    .B(_5099__bF$buf4),
    .Y(_5131_)
);

NOR2X1 _14302_ (
    .A(\datapath.registers.828[18] [7]),
    .B(_4886__bF$buf3),
    .Y(_4895_)
);

BUFX2 BUFX2_insert930 (
    .A(_3427_),
    .Y(_3427__bF$buf4)
);

BUFX2 BUFX2_insert931 (
    .A(_3427_),
    .Y(_3427__bF$buf3)
);

BUFX2 BUFX2_insert932 (
    .A(_3427_),
    .Y(_3427__bF$buf2)
);

BUFX2 BUFX2_insert933 (
    .A(_3427_),
    .Y(_3427__bF$buf1)
);

BUFX2 BUFX2_insert934 (
    .A(_3427_),
    .Y(_3427__bF$buf0)
);

BUFX2 BUFX2_insert935 (
    .A(_213_),
    .Y(_213__bF$buf4)
);

BUFX2 BUFX2_insert936 (
    .A(_213_),
    .Y(_213__bF$buf3)
);

NAND2X1 _17194_ (
    .A(_7088__bF$buf2),
    .B(_7089__bF$buf5),
    .Y(_7090_)
);

BUFX2 BUFX2_insert937 (
    .A(_213_),
    .Y(_213__bF$buf2)
);

BUFX2 BUFX2_insert938 (
    .A(_213_),
    .Y(_213__bF$buf1)
);

BUFX2 BUFX2_insert939 (
    .A(_213_),
    .Y(_213__bF$buf0)
);

FILL SFILL73960x3050 (
);

NAND2X1 _15927_ (
    .A(\datapath.idinstr_17_bF$buf4 ),
    .B(_5851_),
    .Y(_5852_)
);

OAI21X1 _15507_ (
    .A(_5038__bF$buf3),
    .B(_4668__bF$buf6),
    .C(\datapath.registers.828[2] [8]),
    .Y(_5555_)
);

NAND2X1 _10642_ (
    .A(_1188_),
    .B(_1263_),
    .Y(_1273_)
);

DFFPOSX1 _10222_ (
    .Q(\datapath.mempc_4 [29]),
    .CLK(CLK_bF$buf94),
    .D(\datapath.alupc_4 [29])
);

MUX2X1 _18399_ (
    .A(\datapath.registers.828[7] [26]),
    .B(\datapath.registers.828[6] [26]),
    .S(\datapath.idinstr_20_bF$buf40 ),
    .Y(_8269_)
);

DFFPOSX1 _19760_ (
    .Q(\datapath.registers.828[30] [0]),
    .CLK(CLK_bF$buf106),
    .D(_4372_)
);

DFFPOSX1 _19340_ (
    .Q(\datapath.registers.828[4] [28]),
    .CLK(CLK_bF$buf145),
    .D(_4488_)
);

FILL SFILL13320x27050 (
);

AOI21X1 _11847_ (
    .A(_2032_),
    .B(_2151_),
    .C(_1900_),
    .Y(_1262_)
);

AOI21X1 _11427_ (
    .A(\datapath.alu.b_4_bF$buf1 ),
    .B(_2369_),
    .C(_2388_),
    .Y(_2389_)
);

NAND2X1 _11007_ (
    .A(\datapath.alu.b_1_bF$buf6 ),
    .B(_1943_),
    .Y(_1977_)
);

OAI21X1 _15680_ (
    .A(_5614__bF$buf3),
    .B(_4729__bF$buf2),
    .C(_5643_),
    .Y(_4424_)
);

AOI21X1 _15260_ (
    .A(_4713__bF$buf1),
    .B(_5402__bF$buf5),
    .C(_5423_),
    .Y(_4512_)
);

FILL SFILL83960x40050 (
);

NAND2X1 _16885_ (
    .A(\datapath.idinstr_17_bF$buf8 ),
    .B(_6787_),
    .Y(_6788_)
);

MUX2X1 _16465_ (
    .A(\datapath.registers.828[5] [15]),
    .B(\datapath.registers.828[4] [15]),
    .S(\datapath.idinstr_15_bF$buf33 ),
    .Y(_6378_)
);

NAND2X1 _16045_ (
    .A(_5684__bF$buf3),
    .B(_5966_),
    .Y(_5967_)
);

MUX2X1 _11180_ (
    .A(\datapath.alu.a [1]),
    .B(\datapath.alu.a [2]),
    .S(\datapath.alu.b_0_bF$buf5 ),
    .Y(_2147_)
);

FILL SFILL3160x30050 (
);

FILL SFILL68920x9050 (
);

INVX1 _12385_ (
    .A(\datapath.csr.csr_wdata [7]),
    .Y(_2615_)
);

MUX2X1 _18611_ (
    .A(_8475_),
    .B(_8474_),
    .S(\datapath.idinstr_21_bF$buf17 ),
    .Y(_8476_)
);

DFFPOSX1 _19816_ (
    .Q(\datapath.registers.828[13] [24]),
    .CLK(CLK_bF$buf75),
    .D(_3780_)
);

INVX2 _14951_ (
    .A(\datapath.registers.828[9] [2]),
    .Y(_5261_)
);

OAI21X1 _14531_ (
    .A(_5004__bF$buf0),
    .B(_4840__bF$buf4),
    .C(\datapath.registers.828[15] [15]),
    .Y(_5020_)
);

NOR2X1 _14111_ (
    .A(\datapath.registers.828[21] [17]),
    .B(_4772__bF$buf3),
    .Y(_4790_)
);

FILL SFILL28040x22050 (
);

NOR2X1 _15736_ (
    .A(\datapath.registers.828[30] [24]),
    .B(_5647__bF$buf5),
    .Y(_5672_)
);

NAND2X1 _15316_ (
    .A(\datapath.registers.828[24] [15]),
    .B(_5437__bF$buf0),
    .Y(_5453_)
);

NOR2X1 _10871_ (
    .A(_1209__bF$buf3),
    .B(_1841_),
    .Y(_1842_)
);

DFFPOSX1 _10451_ (
    .Q(\datapath.alupc_4 [1]),
    .CLK(CLK_bF$buf44),
    .D(\datapath.idpc_4 [1])
);

DFFPOSX1 _10031_ (
    .Q(\datapath.wbpc_4 [5]),
    .CLK(CLK_bF$buf27),
    .D(\datapath.mempc_4 [5])
);

BUFX2 BUFX2_insert80 (
    .A(\datapath.idinstr_21_hier0_bF$buf4 ),
    .Y(\datapath.idinstr_21_bF$buf44 )
);

BUFX2 BUFX2_insert81 (
    .A(\datapath.idinstr_21_hier0_bF$buf1 ),
    .Y(\datapath.idinstr_21_bF$buf43 )
);

BUFX2 BUFX2_insert82 (
    .A(\datapath.idinstr_21_hier0_bF$buf0 ),
    .Y(\datapath.idinstr_21_bF$buf42 )
);

BUFX2 BUFX2_insert83 (
    .A(\datapath.idinstr_21_hier0_bF$buf3 ),
    .Y(\datapath.idinstr_21_bF$buf41 )
);

BUFX2 BUFX2_insert84 (
    .A(\datapath.idinstr_21_hier0_bF$buf1 ),
    .Y(\datapath.idinstr_21_bF$buf40 )
);

BUFX2 BUFX2_insert85 (
    .A(\datapath.idinstr_21_hier0_bF$buf2 ),
    .Y(\datapath.idinstr_21_bF$buf39 )
);

BUFX2 BUFX2_insert86 (
    .A(\datapath.idinstr_21_hier0_bF$buf0 ),
    .Y(\datapath.idinstr_21_bF$buf38 )
);

BUFX2 BUFX2_insert87 (
    .A(\datapath.idinstr_21_hier0_bF$buf3 ),
    .Y(\datapath.idinstr_21_bF$buf37 )
);

BUFX2 BUFX2_insert88 (
    .A(\datapath.idinstr_21_hier0_bF$buf1 ),
    .Y(\datapath.idinstr_21_bF$buf36 )
);

BUFX2 BUFX2_insert89 (
    .A(\datapath.idinstr_21_hier0_bF$buf4 ),
    .Y(\datapath.idinstr_21_bF$buf35 )
);

FILL SFILL58600x23050 (
);

OAI21X1 _11656_ (
    .A(_1434_),
    .B(\datapath.alu.b_0_bF$buf1 ),
    .C(_1957_),
    .Y(_1057_)
);

FILL SFILL18440x34050 (
);

MUX2X1 _11236_ (
    .A(_2198_),
    .B(_2201_),
    .S(\datapath.alu.b_3_bF$buf3 ),
    .Y(_2202_)
);

FILL SFILL63880x43050 (
);

FILL SFILL79480x28050 (
);

OAI21X1 _9804_ (
    .A(_660_),
    .B(_664_),
    .C(_661_),
    .Y(_665_)
);

FILL SFILL79080x2050 (
);

AND2X2 _13802_ (
    .A(_3576_),
    .B(_3583_),
    .Y(\datapath.nextpc [25])
);

OAI21X1 _16694_ (
    .A(_6601_),
    .B(_6592_),
    .C(_5680__bF$buf2),
    .Y(_6602_)
);

MUX2X1 _16274_ (
    .A(_6190_),
    .B(_6189_),
    .S(\datapath.idinstr_16_bF$buf41 ),
    .Y(_6191_)
);

FILL SFILL48600x21050 (
);

AND2X2 _17899_ (
    .A(\datapath.registers.828[15] [15]),
    .B(\datapath.idinstr_20_bF$buf45 ),
    .Y(_7780_)
);

NAND2X1 _17479_ (
    .A(\datapath.registers.828[8] [6]),
    .B(_7092__bF$buf1),
    .Y(_7369_)
);

MUX2X1 _17059_ (
    .A(_6957_),
    .B(_6956_),
    .S(\datapath.idinstr_16_bF$buf28 ),
    .Y(_6958_)
);

NAND2X1 _12194_ (
    .A(_1297_),
    .B(_1336_),
    .Y(_1632_)
);

AOI21X1 _18840_ (
    .A(_4681__bF$buf0),
    .B(_8598__bF$buf2),
    .C(_8603_),
    .Y(_4238_)
);

MUX2X1 _18420_ (
    .A(\datapath.registers.828[19] [27]),
    .B(\datapath.registers.828[17] [27]),
    .S(\datapath.idinstr_21_bF$buf36 ),
    .Y(_8289_)
);

MUX2X1 _18000_ (
    .A(\datapath.registers.828[3] [17]),
    .B(\datapath.registers.828[2] [17]),
    .S(\datapath.idinstr_20_bF$buf19 ),
    .Y(_7879_)
);

NAND2X1 _10927_ (
    .A(alusel[0]),
    .B(_1897_),
    .Y(_1898_)
);

DFFPOSX1 _10507_ (
    .Q(\datapath.alupc [25]),
    .CLK(CLK_bF$buf19),
    .D(\datapath.idpc [25])
);

NAND2X1 _13399_ (
    .A(_0__1_bF$buf7),
    .B(DMEM_DATA_L[24]),
    .Y(_3293_)
);

DFFPOSX1 _19625_ (
    .Q(\datapath.registers.828[9] [25]),
    .CLK(CLK_bF$buf21),
    .D(_4645_)
);

DFFPOSX1 _19205_ (
    .Q(\datapath.registers.828[19] [21]),
    .CLK(CLK_bF$buf49),
    .D(_3969_)
);

OAI21X1 _14760_ (
    .A(_4707__bF$buf2),
    .B(_5132__bF$buf3),
    .C(_5150_),
    .Y(_3740_)
);

OAI21X1 _14340_ (
    .A(_4914_),
    .B(_4886__bF$buf4),
    .C(_4915_),
    .Y(_3940_)
);

FILL SFILL48760x4050 (
);

AOI21X1 _15965_ (
    .A(\datapath.idinstr_17_bF$buf13 ),
    .B(\datapath.registers.828[29] [4]),
    .C(_5681__bF$buf4),
    .Y(_5889_)
);

OAI21X1 _15545_ (
    .A(_5038__bF$buf0),
    .B(_4668__bF$buf0),
    .C(\datapath.registers.828[2] [27]),
    .Y(_5574_)
);

OAI21X1 _15125_ (
    .A(_5336__bF$buf4),
    .B(_4840__bF$buf6),
    .C(\datapath.registers.828[7] [18]),
    .Y(_5355_)
);

XOR2X1 _10680_ (
    .A(\datapath.alu.a [10]),
    .B(\datapath.alu.b [10]),
    .Y(_1651_)
);

DFFPOSX1 _10260_ (
    .Q(\datapath.regimmalu [5]),
    .CLK(CLK_bF$buf144),
    .D(\datapath.imm [5])
);

OAI21X1 _11885_ (
    .A(_1267_),
    .B(_1299_),
    .C(_1301_),
    .Y(_1302_)
);

NAND3X1 _11465_ (
    .A(_2395_),
    .B(_2401_),
    .C(_2425_),
    .Y(\datapath.alu.c [10])
);

NAND3X1 _11045_ (
    .A(\datapath.alu.b_4_bF$buf3 ),
    .B(_2010_),
    .C(_2013_),
    .Y(_2014_)
);

NAND3X1 _9613_ (
    .A(_501_),
    .B(_502_),
    .C(_500_),
    .Y(\datapath.muxaval [27])
);

FILL SFILL18600x60050 (
);

FILL SFILL73960x33050 (
);

NOR2X1 _13611_ (
    .A(\datapath.programcounter.pc [2]),
    .B(\datapath.programcounter.pc [3]),
    .Y(_3437_)
);

MUX2X1 _16083_ (
    .A(\datapath.registers.828[5] [7]),
    .B(\datapath.registers.828[4] [7]),
    .S(\datapath.idinstr_15_bF$buf34 ),
    .Y(_6004_)
);

INVX1 _14816_ (
    .A(\datapath.registers.828[11] [10]),
    .Y(_5182_)
);

FILL SFILL79160x47050 (
);

MUX2X1 _17288_ (
    .A(\datapath.registers.828[27] [2]),
    .B(\datapath.registers.828[26] [2]),
    .S(\datapath.idinstr_20_bF$buf18 ),
    .Y(_7182_)
);

FILL SFILL18520x22050 (
);

FILL SFILL63960x31050 (
);

INVX1 _10736_ (
    .A(\datapath.alu.b [18]),
    .Y(_1707_)
);

DFFPOSX1 _10316_ (
    .Q(\datapath.regcsralu [29]),
    .CLK(CLK_bF$buf48),
    .D(\datapath.csr.csr_data [29])
);

FILL SFILL63880x38050 (
);

DFFPOSX1 _19854_ (
    .Q(\datapath.registers.828[3] [30]),
    .CLK(CLK_bF$buf5),
    .D(_4459_)
);

DFFPOSX1 _19434_ (
    .Q(\datapath.registers.828[24] [26]),
    .CLK(CLK_bF$buf91),
    .D(_4166_)
);

DFFPOSX1 _19014_ (
    .Q(\datapath.registers.828[18] [22]),
    .CLK(CLK_bF$buf13),
    .D(_3938_)
);

MUX2X1 _15774_ (
    .A(\datapath.registers.828[22] [0]),
    .B(\datapath.registers.828[20] [0]),
    .S(\datapath.idinstr_16_bF$buf5 ),
    .Y(_5702_)
);

OAI21X1 _15354_ (
    .A(_4675__bF$buf4),
    .B(_5470__bF$buf3),
    .C(_5472_),
    .Y(_4479_)
);

MUX2X1 _16979_ (
    .A(\datapath.registers.828[18] [27]),
    .B(\datapath.registers.828[16] [27]),
    .S(\datapath.idinstr_16_bF$buf17 ),
    .Y(_6880_)
);

NAND2X1 _16559_ (
    .A(\datapath.idinstr_17_bF$buf14 ),
    .B(_6469_),
    .Y(_6470_)
);

OAI21X1 _16139_ (
    .A(_5269_),
    .B(\datapath.idinstr_17_bF$buf2 ),
    .C(_6058_),
    .Y(_6059_)
);

MUX2X1 _11694_ (
    .A(_1434_),
    .B(_1717_),
    .S(\datapath.alu.b_0_bF$buf1 ),
    .Y(_1098_)
);

AOI21X1 _11274_ (
    .A(_2158_),
    .B(_1198_),
    .C(_2238_),
    .Y(_2239_)
);

NAND2X1 _17920_ (
    .A(_7092__bF$buf6),
    .B(_7799_),
    .Y(_7800_)
);

OAI21X1 _17500_ (
    .A(_4849_),
    .B(\datapath.idinstr_22_bF$buf4 ),
    .C(_7389_),
    .Y(_7390_)
);

OAI21X1 _9842_ (
    .A(_691_),
    .B(_698_),
    .C(_695_),
    .Y(_699_)
);

NAND2X1 _9422_ (
    .A(\datapath.registers.regb_data [13]),
    .B(_318__bF$buf3),
    .Y(_358_)
);

NAND2X1 _9002_ (
    .A(gnd),
    .B(\datapath.idpc [31]),
    .Y(_830_)
);

DFFPOSX1 _12899_ (
    .Q(\datapath.csr.mcause [25]),
    .CLK(CLK_bF$buf108),
    .D(\datapath.csr._32_ [25])
);

OAI21X1 _12479_ (
    .A(_2679_),
    .B(\controlunit.csrfile_trap_wen_bF$buf1 ),
    .C(_2680_),
    .Y(\datapath.csr._26_ [2])
);

OAI21X1 _12059_ (
    .A(_1488_),
    .B(\datapath.alu.b_2_bF$buf6 ),
    .C(_1483_),
    .Y(_1489_)
);

FILL SFILL38600x14050 (
);

OAI21X1 _18705_ (
    .A(_4677__bF$buf1),
    .B(_8531__bF$buf1),
    .C(_8534_),
    .Y(_4298_)
);

NAND3X1 _13840_ (
    .A(_3424__bF$buf3),
    .B(_3611_),
    .C(_3612_),
    .Y(_3613_)
);

OAI21X1 _13420_ (
    .A(_3233_),
    .B(_0__1_bF$buf3),
    .C(_3309_),
    .Y(_3310_)
);

NAND3X1 _13000_ (
    .A(\datapath.idinstr [14]),
    .B(_3018_),
    .C(_3017_),
    .Y(_3021_)
);

FILL SFILL43880x34050 (
);

FILL SFILL28600x57050 (
);

FILL SFILL59000x48050 (
);

FILL SFILL3240x13050 (
);

OAI21X1 _14625_ (
    .A(_5075_),
    .B(_5039__bF$buf1),
    .C(_5076_),
    .Y(_3808_)
);

NOR2X1 _14205_ (
    .A(\datapath.registers.828[20] [31]),
    .B(_4806__bF$buf5),
    .Y(_4838_)
);

NAND2X1 _17097_ (
    .A(_5684__bF$buf5),
    .B(_6995_),
    .Y(_6996_)
);

MUX2X1 _10965_ (
    .A(_1934_),
    .B(_1930_),
    .S(\datapath.alu.b_2_bF$buf5 ),
    .Y(_1935_)
);

DFFPOSX1 _10545_ (
    .Q(\datapath.idinstr [31]),
    .CLK(CLK_bF$buf46),
    .D(\datapath._05_ [31])
);

DFFPOSX1 _10125_ (
    .Q(_0_[3]),
    .CLK(CLK_bF$buf66),
    .D(\datapath.alu.c [3])
);

DFFPOSX1 _19663_ (
    .Q(\datapath.registers.828[26] [31]),
    .CLK(CLK_bF$buf135),
    .D(_4236_)
);

DFFPOSX1 _19243_ (
    .Q(\datapath.registers.828[20] [27]),
    .CLK(CLK_bF$buf4),
    .D(_4039_)
);

FILL SFILL18600x55050 (
);

FILL SFILL73960x28050 (
);

OAI21X1 _15583_ (
    .A(_5579__bF$buf1),
    .B(_4699__bF$buf0),
    .C(_5593_),
    .Y(_3992_)
);

AOI21X1 _15163_ (
    .A(_4681__bF$buf4),
    .B(_5369__bF$buf5),
    .C(_5374_),
    .Y(_4558_)
);

FILL SFILL33160x4050 (
);

FILL SFILL63560x57050 (
);

AND2X2 _16788_ (
    .A(\datapath.registers.828[15] [23]),
    .B(\datapath.idinstr_15_bF$buf15 ),
    .Y(_6693_)
);

OAI21X1 _16368_ (
    .A(_4942_),
    .B(\datapath.idinstr_17_bF$buf7 ),
    .C(_6282_),
    .Y(_6283_)
);

FILL SFILL18520x17050 (
);

AOI21X1 _11083_ (
    .A(_2050_),
    .B(_2051_),
    .C(_2049_),
    .Y(_2052_)
);

FILL SFILL84440x53050 (
);

XNOR2X1 _9651_ (
    .A(\datapath.alupc [2]),
    .B(\datapath.regimmalu [2]),
    .Y(_531_)
);

NOR2X1 _9231_ (
    .A(\controlunit.wb_sel [1]),
    .B(_212_),
    .Y(_213_)
);

INVX1 _12288_ (
    .A(\datapath.csr.mcause [13]),
    .Y(_2544_)
);

NAND2X1 _18934_ (
    .A(\datapath.rd [19]),
    .B(_8631__bF$buf4),
    .Y(_8651_)
);

NAND2X1 _18514_ (
    .A(_7092__bF$buf10),
    .B(_8380_),
    .Y(_8381_)
);

DFFPOSX1 _19719_ (
    .Q(\datapath.registers.828[0] [23]),
    .CLK(CLK_bF$buf116),
    .D(_3651_)
);

INVX1 _14854_ (
    .A(\datapath.registers.828[11] [27]),
    .Y(_5203_)
);

OAI21X1 _14434_ (
    .A(_4660__bF$buf4),
    .B(_4968__bF$buf0),
    .C(_4969_),
    .Y(_3860_)
);

AOI21X1 _14014_ (
    .A(_4675__bF$buf0),
    .B(_4738__bF$buf6),
    .C(_4740_),
    .Y(_4095_)
);

FILL SFILL8360x20050 (
);

FILL SFILL53560x10050 (
);

OAI21X1 _15639_ (
    .A(_4840__bF$buf7),
    .B(_5612__bF$buf0),
    .C(\datapath.registers.828[31] [8]),
    .Y(_5623_)
);

NOR2X1 _15219_ (
    .A(\datapath.registers.828[5] [0]),
    .B(_5402__bF$buf3),
    .Y(_5403_)
);

NAND2X1 _10774_ (
    .A(_1732_),
    .B(_1744_),
    .Y(_1745_)
);

DFFPOSX1 _10354_ (
    .Q(\datapath.alu.b [3]),
    .CLK(CLK_bF$buf37),
    .D(\datapath.muxbval [3])
);

DFFPOSX1 _19892_ (
    .Q(\datapath.registers.828[29] [4]),
    .CLK(CLK_bF$buf112),
    .D(_4334_)
);

DFFPOSX1 _19472_ (
    .Q(\datapath.registers.828[5] [0]),
    .CLK(CLK_bF$buf116),
    .D(_4500_)
);

DFFPOSX1 _19052_ (
    .Q(\datapath.registers.828[31] [28]),
    .CLK(CLK_bF$buf33),
    .D(_4424_)
);

OAI21X1 _8922_ (
    .A(_775_),
    .B(gnd),
    .C(_776_),
    .Y(\datapath._03_ [4])
);

OAI22X1 _11979_ (
    .A(_1878_),
    .B(_1403_),
    .C(_1886__bF$buf1),
    .D(_1758_),
    .Y(_1404_)
);

NOR2X1 _11559_ (
    .A(_1091__bF$buf4),
    .B(_2173_),
    .Y(_953_)
);

OAI21X1 _11139_ (
    .A(\datapath.alu.b_0_bF$buf1 ),
    .B(\datapath.alu.a [15]),
    .C(_1960_),
    .Y(_2107_)
);

DFFPOSX1 _12920_ (
    .Q(\datapath.csr.mepc [14]),
    .CLK(CLK_bF$buf15),
    .D(\datapath.csr._26_ [14])
);

OAI21X1 _12500_ (
    .A(_2695_),
    .B(\controlunit.csrfile_trap_wen_bF$buf5 ),
    .C(_2696_),
    .Y(\datapath.csr._26_ [7])
);

OAI21X1 _15392_ (
    .A(_4713__bF$buf1),
    .B(_5470__bF$buf7),
    .C(_5491_),
    .Y(_4480_)
);

INVX1 _9707_ (
    .A(_579_),
    .Y(_580_)
);

NOR2X1 _13705_ (
    .A(_3506_),
    .B(_3486_),
    .Y(_3507_)
);

AOI21X1 _16597_ (
    .A(_6500_),
    .B(_6506_),
    .C(\datapath.idinstr_18_bF$buf7 ),
    .Y(_6507_)
);

MUX2X1 _16177_ (
    .A(\datapath.registers.828[23] [9]),
    .B(\datapath.registers.828[21] [9]),
    .S(\datapath.idinstr_16_bF$buf42 ),
    .Y(_6096_)
);

FILL SFILL28200x38050 (
);

NAND2X1 _9880_ (
    .A(_730_),
    .B(_726_),
    .Y(_732_)
);

NAND2X1 _9460_ (
    .A(\datapath.csr.csr_data [22]),
    .B(_317__bF$buf1),
    .Y(_387_)
);

INVX1 _9040_ (
    .A(\datapath.nextpc [12]),
    .Y(_855_)
);

AOI21X1 _12097_ (
    .A(\datapath.alu.b [28]),
    .B(_1527_),
    .C(_1528_),
    .Y(_1529_)
);

OAI21X1 _18743_ (
    .A(_4715__bF$buf0),
    .B(_8531__bF$buf3),
    .C(_8553_),
    .Y(_4289_)
);

MUX2X1 _18323_ (
    .A(\datapath.registers.828[25] [25]),
    .B(\datapath.registers.828[24] [25]),
    .S(\datapath.idinstr_20_bF$buf53 ),
    .Y(_8194_)
);

FILL SFILL33400x56050 (
);

DFFPOSX1 _19948_ (
    .Q(\datapath.registers.828[28] [28]),
    .CLK(CLK_bF$buf106),
    .D(_4296_)
);

DFFPOSX1 _19528_ (
    .Q(\datapath.registers.828[11] [24]),
    .CLK(CLK_bF$buf2),
    .D(_3716_)
);

DFFPOSX1 _19108_ (
    .Q(\datapath.registers.828[14] [20]),
    .CLK(CLK_bF$buf59),
    .D(_3808_)
);

AOI21X1 _14663_ (
    .A(_4675__bF$buf3),
    .B(_5099__bF$buf4),
    .C(_5101_),
    .Y(_3775_)
);

OAI21X1 _14243_ (
    .A(_4860_),
    .B(_4842__bF$buf0),
    .C(_4861_),
    .Y(_3960_)
);

FILL FILL83160x42050 (
);

FILL SFILL23480x56050 (
);

FILL FILL83080x49050 (
);

AOI21X1 _15868_ (
    .A(\datapath.registers.828[13] [2]),
    .B(\datapath.idinstr_17_bF$buf5 ),
    .C(_5681__bF$buf5),
    .Y(_5794_)
);

NOR2X1 _15448_ (
    .A(\datapath.registers.828[3] [14]),
    .B(_5503__bF$buf7),
    .Y(_5522_)
);

OAI21X1 _15028_ (
    .A(_4679__bF$buf1),
    .B(_5300__bF$buf4),
    .C(_5304_),
    .Y(_4621_)
);

DFFPOSX1 _10583_ (
    .Q(\datapath.idpc [5]),
    .CLK(CLK_bF$buf107),
    .D(\datapath._03_ [5])
);

DFFPOSX1 _10163_ (
    .Q(\datapath.meminstr [2]),
    .CLK(CLK_bF$buf121),
    .D(\datapath.aluinstr [2])
);

DFFPOSX1 _19281_ (
    .Q(\datapath.registers.828[2] [1]),
    .CLK(CLK_bF$buf134),
    .D(_4351_)
);

FILL SFILL23480x11050 (
);

FILL SFILL8440x53050 (
);

BUFX2 _8731_ (
    .A(\datapath.programcounter.pc [2]),
    .Y(IMEM_ADDR[2])
);

NAND3X1 _11788_ (
    .A(_1705_),
    .B(_1791_),
    .C(_1197_),
    .Y(_1199_)
);

NOR2X1 _11368_ (
    .A(_1091__bF$buf3),
    .B(_940_),
    .Y(_2331_)
);

FILL SFILL84040x34050 (
);

FILL SFILL13480x54050 (
);

DFFPOSX1 _9936_ (
    .Q(\datapath.regcsrwb [22]),
    .CLK(CLK_bF$buf122),
    .D(\datapath.csr.csr_wdata [22])
);

NAND2X1 _9516_ (
    .A(\datapath.csr.csr_data [3]),
    .B(_417__bF$buf4),
    .Y(_430_)
);

INVX8 _13934_ (
    .A(\datapath.rd [7]),
    .Y(_4687_)
);

AOI21X1 _13514_ (
    .A(gnd),
    .B(_3368_),
    .C(_3369_),
    .Y(\datapath.programcounter._1_ [5])
);

FILL SFILL13400x52050 (
);

BUFX2 BUFX2_insert1080 (
    .A(\datapath.idinstr_16_hier0_bF$buf3 ),
    .Y(\datapath.idinstr_16_bF$buf33 )
);

BUFX2 BUFX2_insert1081 (
    .A(\datapath.idinstr_16_hier0_bF$buf2 ),
    .Y(\datapath.idinstr_16_bF$buf32 )
);

BUFX2 BUFX2_insert1082 (
    .A(\datapath.idinstr_16_hier0_bF$buf4 ),
    .Y(\datapath.idinstr_16_bF$buf31 )
);

BUFX2 BUFX2_insert1083 (
    .A(\datapath.idinstr_16_hier0_bF$buf4 ),
    .Y(\datapath.idinstr_16_bF$buf30 )
);

BUFX2 BUFX2_insert1084 (
    .A(\datapath.idinstr_16_hier0_bF$buf3 ),
    .Y(\datapath.idinstr_16_bF$buf29 )
);

BUFX2 BUFX2_insert1085 (
    .A(\datapath.idinstr_16_hier0_bF$buf5 ),
    .Y(\datapath.idinstr_16_bF$buf28 )
);

BUFX2 BUFX2_insert1086 (
    .A(\datapath.idinstr_16_hier0_bF$buf3 ),
    .Y(\datapath.idinstr_16_bF$buf27 )
);

BUFX2 BUFX2_insert1087 (
    .A(\datapath.idinstr_16_hier0_bF$buf3 ),
    .Y(\datapath.idinstr_16_bF$buf26 )
);

BUFX2 BUFX2_insert1088 (
    .A(\datapath.idinstr_16_hier0_bF$buf0 ),
    .Y(\datapath.idinstr_16_bF$buf25 )
);

BUFX2 BUFX2_insert1089 (
    .A(\datapath.idinstr_16_hier0_bF$buf0 ),
    .Y(\datapath.idinstr_16_bF$buf24 )
);

FILL SFILL13800x21050 (
);

AOI21X1 _14719_ (
    .A(_4731__bF$buf4),
    .B(_5099__bF$buf7),
    .C(_5129_),
    .Y(_3785_)
);

BUFX2 _18972_ (
    .A(\datapath.registers.828[0] [12]),
    .Y(_3639_)
);

OAI21X1 _18552_ (
    .A(_8413_),
    .B(_8414_),
    .C(_8417_),
    .Y(_8418_)
);

NAND3X1 _18132_ (
    .A(_7091__bF$buf4),
    .B(_8007_),
    .C(_8004_),
    .Y(_8008_)
);

NAND2X1 _10639_ (
    .A(\datapath.alu.b_4_bF$buf4 ),
    .B(_1230_),
    .Y(_1241_)
);

DFFPOSX1 _10219_ (
    .Q(\datapath.mempc_4 [26]),
    .CLK(CLK_bF$buf69),
    .D(\datapath.alupc_4 [26])
);

FILL SFILL43960x17050 (
);

DFFPOSX1 _19757_ (
    .Q(\datapath.registers.828[16] [29]),
    .CLK(CLK_bF$buf148),
    .D(_3881_)
);

DFFPOSX1 _19337_ (
    .Q(\datapath.registers.828[4] [25]),
    .CLK(CLK_bF$buf40),
    .D(_4485_)
);

AOI21X1 _14892_ (
    .A(_4691__bF$buf2),
    .B(_5212__bF$buf5),
    .C(_5226_),
    .Y(_3699_)
);

OAI21X1 _14472_ (
    .A(_4711__bF$buf2),
    .B(_4968__bF$buf3),
    .C(_4988_),
    .Y(_3870_)
);

AOI21X1 _14052_ (
    .A(_4713__bF$buf2),
    .B(_4738__bF$buf3),
    .C(_4759_),
    .Y(_4096_)
);

FILL SFILL78680x16050 (
);

FILL SFILL64040x30050 (
);

FILL SFILL84360x6050 (
);

OAI21X1 _15677_ (
    .A(_4840__bF$buf3),
    .B(_5612__bF$buf3),
    .C(\datapath.registers.828[31] [27]),
    .Y(_5642_)
);

NOR2X1 _15257_ (
    .A(\datapath.registers.828[5] [19]),
    .B(_5402__bF$buf0),
    .Y(_5422_)
);

DFFPOSX1 _10392_ (
    .Q(\datapath.alu.a [9]),
    .CLK(CLK_bF$buf55),
    .D(\datapath.muxaval [9])
);

DFFPOSX1 _19090_ (
    .Q(\datapath.registers.828[14] [2]),
    .CLK(CLK_bF$buf90),
    .D(_3818_)
);

NAND2X1 _8960_ (
    .A(gnd),
    .B(\datapath.idpc [17]),
    .Y(_802_)
);

AOI21X1 _11597_ (
    .A(_990_),
    .B(_992_),
    .C(_1906_),
    .Y(_993_)
);

AOI21X1 _11177_ (
    .A(\datapath.alu.b_3_bF$buf3 ),
    .B(_2143_),
    .C(_1871_),
    .Y(_2144_)
);

FILL SFILL68680x14050 (
);

AOI21X1 _17823_ (
    .A(_7701_),
    .B(_7705_),
    .C(\datapath.idinstr_23_bF$buf7 ),
    .Y(_7706_)
);

NOR2X1 _17403_ (
    .A(_5863_),
    .B(_7089__bF$buf6),
    .Y(_7295_)
);

FILL SFILL58760x50050 (
);

NAND2X1 _9745_ (
    .A(_609_),
    .B(_606_),
    .Y(_613_)
);

NAND2X1 _9325_ (
    .A(\datapath.regloadwb [22]),
    .B(_213__bF$buf4),
    .Y(_285_)
);

OAI21X1 _18608_ (
    .A(_8461_),
    .B(_8472_),
    .C(\datapath.idinstr_24_bF$buf3 ),
    .Y(_8473_)
);

OAI21X1 _13743_ (
    .A(_3536_),
    .B(_3394_),
    .C(_3396_),
    .Y(_3537_)
);

OAI22X1 _13323_ (
    .A(_0__0_bF$buf3),
    .B(_3134_),
    .C(_3238_),
    .D(_3133_),
    .Y(\datapath.memoryinterface.byte_size_store.storebyte [18])
);

FILL FILL83160x37050 (
);

INVX1 _14948_ (
    .A(\datapath.registers.828[9] [1]),
    .Y(_5259_)
);

OAI21X1 _14528_ (
    .A(_5003__bF$buf2),
    .B(_4699__bF$buf2),
    .C(_5018_),
    .Y(_3832_)
);

AOI21X1 _14108_ (
    .A(_4703__bF$buf1),
    .B(_4772__bF$buf1),
    .C(_4788_),
    .Y(_4058_)
);

FILL SFILL23400x49050 (
);

FILL SFILL79000x6050 (
);

FILL SFILL53720x2050 (
);

AOI21X1 _18781_ (
    .A(_4687__bF$buf3),
    .B(_8565__bF$buf5),
    .C(_8573_),
    .Y(_4273_)
);

FILL SFILL84120x22050 (
);

MUX2X1 _18361_ (
    .A(_8231_),
    .B(_8230_),
    .S(\datapath.idinstr_21_bF$buf10 ),
    .Y(_8232_)
);

FILL SFILL48680x55050 (
);

NAND2X1 _10868_ (
    .A(alusel[0]),
    .B(_1838_),
    .Y(_1839_)
);

DFFPOSX1 _10448_ (
    .Q(\datapath.aluinstr [30]),
    .CLK(CLK_bF$buf48),
    .D(\datapath.idinstr [30])
);

DFFPOSX1 _10028_ (
    .Q(\datapath.wbpc_4 [2]),
    .CLK(CLK_bF$buf6),
    .D(\datapath.mempc_4 [2])
);

DFFPOSX1 _19986_ (
    .Q(\datapath.registers.828[25] [2]),
    .CLK(CLK_bF$buf132),
    .D(_4202_)
);

DFFPOSX1 _19566_ (
    .Q(\datapath.registers.828[12] [30]),
    .CLK(CLK_bF$buf4),
    .D(_3755_)
);

DFFPOSX1 _19146_ (
    .Q(\datapath.registers.828[17] [26]),
    .CLK(CLK_bF$buf89),
    .D(_3910_)
);

FILL SFILL13480x49050 (
);

NAND2X1 _14281_ (
    .A(\datapath.rd [30]),
    .B(_4842__bF$buf7),
    .Y(_4883_)
);

FILL SFILL13400x47050 (
);

AOI21X1 _15486_ (
    .A(_4733__bF$buf1),
    .B(_5503__bF$buf4),
    .C(_5543_),
    .Y(_4459_)
);

OAI21X1 _15066_ (
    .A(_4717__bF$buf0),
    .B(_5300__bF$buf7),
    .C(_5323_),
    .Y(_4610_)
);

FILL SFILL13000x33050 (
);

FILL SFILL74040x27050 (
);

MUX2X1 _17632_ (
    .A(_7518_),
    .B(_7517_),
    .S(_7089__bF$buf4),
    .Y(_7519_)
);

AOI21X1 _17212_ (
    .A(\datapath.idinstr_20_bF$buf21 ),
    .B(_7107_),
    .C(\datapath.idinstr_22_bF$buf23 ),
    .Y(_7108_)
);

DFFPOSX1 _9974_ (
    .Q(\datapath.regloadwb [28]),
    .CLK(CLK_bF$buf147),
    .D(\datapath.memdataload [28])
);

NAND2X1 _9554_ (
    .A(\datapath.registers.rega_data [13]),
    .B(_418__bF$buf4),
    .Y(_458_)
);

NAND2X1 _9134_ (
    .A(gnd),
    .B(\datapath.idinstr [11]),
    .Y(_141_)
);

FILL SFILL23640x6050 (
);

FILL SFILL63880x4050 (
);

NOR2X1 _18837_ (
    .A(\datapath.registers.828[26] [3]),
    .B(_8598__bF$buf6),
    .Y(_8602_)
);

AOI21X1 _18417_ (
    .A(_8281_),
    .B(_8285_),
    .C(_7093__bF$buf1),
    .Y(_8286_)
);

AOI21X1 _13972_ (
    .A(_4711__bF$buf2),
    .B(_4673__bF$buf4),
    .C(_4712_),
    .Y(_4126_)
);

NOR2X1 _13552_ (
    .A(gnd),
    .B(\datapath.programcounter.pc_mux [18]),
    .Y(_3395_)
);

OAI21X1 _13132_ (
    .A(_3087_),
    .B(_0__1_bF$buf1),
    .C(_3088_),
    .Y(_3089_)
);

NAND2X1 _14757_ (
    .A(\datapath.registers.828[12] [16]),
    .B(_5132__bF$buf4),
    .Y(_5149_)
);

OAI21X1 _14337_ (
    .A(_4912_),
    .B(_4886__bF$buf7),
    .C(_4913_),
    .Y(_3939_)
);

MUX2X1 _18590_ (
    .A(_8454_),
    .B(_8453_),
    .S(\datapath.idinstr_21_bF$buf7 ),
    .Y(_8455_)
);

AOI21X1 _18170_ (
    .A(\datapath.registers.828[13] [21]),
    .B(\datapath.idinstr_20_bF$buf45 ),
    .C(\datapath.idinstr_21_bF$buf5 ),
    .Y(_8045_)
);

OR2X2 _10677_ (
    .A(_1604_),
    .B(_1636_),
    .Y(_1647_)
);

DFFPOSX1 _10257_ (
    .Q(\datapath.regimmalu [2]),
    .CLK(CLK_bF$buf0),
    .D(\datapath.imm [2])
);

MUX2X1 _16903_ (
    .A(\datapath.registers.828[13] [25]),
    .B(\datapath.registers.828[12] [25]),
    .S(\datapath.idinstr_15_bF$buf38 ),
    .Y(_6806_)
);

FILL SFILL58760x45050 (
);

DFFPOSX1 _19795_ (
    .Q(\datapath.registers.828[13] [3]),
    .CLK(CLK_bF$buf29),
    .D(_3789_)
);

DFFPOSX1 _19375_ (
    .Q(\datapath.registers.828[7] [31]),
    .CLK(CLK_bF$buf45),
    .D(_4588_)
);

AOI21X1 _14090_ (
    .A(_4685__bF$buf1),
    .B(_4772__bF$buf6),
    .C(_4779_),
    .Y(_4080_)
);

NAND2X1 _8825_ (
    .A(_35_),
    .B(_25_),
    .Y(_36_)
);

NAND2X1 _12823_ (
    .A(\datapath.csr.mvect [22]),
    .B(\datapath.csr.mvect [23]),
    .Y(_2940_)
);

INVX1 _12403_ (
    .A(\datapath.csr.csr_wdata [13]),
    .Y(_2627_)
);

FILL SFILL58280x38050 (
);

OAI21X1 _15295_ (
    .A(_4681__bF$buf0),
    .B(_5437__bF$buf6),
    .C(_5442_),
    .Y(_4174_)
);

AOI22X1 _13608_ (
    .A(_3427__bF$buf3),
    .B(\datapath.jumptarget [2]),
    .C(\datapath.csr.csr_pcaddr [2]),
    .D(_3429__bF$buf0),
    .Y(_3435_)
);

FILL SFILL8520x36050 (
);

FILL SFILL44040x21050 (
);

FILL SFILL84120x17050 (
);

AOI21X1 _17861_ (
    .A(\datapath.registers.828[30] [14]),
    .B(\datapath.idinstr_22_bF$buf23 ),
    .C(\datapath.idinstr_20_bF$buf21 ),
    .Y(_7743_)
);

OAI21X1 _17441_ (
    .A(_7331_),
    .B(_7322_),
    .C(_7088__bF$buf4),
    .Y(_7332_)
);

AOI21X1 _17021_ (
    .A(_6916_),
    .B(_6920_),
    .C(_5685__bF$buf3),
    .Y(_6921_)
);

FILL FILL83000x1050 (
);

NAND2X1 _9783_ (
    .A(_645_),
    .B(_646_),
    .Y(_647_)
);

NAND3X1 _9363_ (
    .A(_312_),
    .B(_313_),
    .C(_311_),
    .Y(\datapath.rd [31])
);

AOI21X1 _18646_ (
    .A(_4683__bF$buf3),
    .B(_8498__bF$buf0),
    .C(_8504_),
    .Y(_4335_)
);

MUX2X1 _18226_ (
    .A(\datapath.registers.828[23] [22]),
    .B(\datapath.registers.828[22] [22]),
    .S(\datapath.idinstr_20_bF$buf28 ),
    .Y(_8100_)
);

NAND2X1 _13781_ (
    .A(\datapath.csr.csr_pcaddr [23]),
    .B(_3429__bF$buf0),
    .Y(_3566_)
);

OAI21X1 _13361_ (
    .A(_3259_),
    .B(_0__1_bF$buf5),
    .C(_3260_),
    .Y(_3261_)
);

AOI21X1 _14986_ (
    .A(_4705__bF$buf0),
    .B(_5257__bF$buf4),
    .C(_5281_),
    .Y(_4635_)
);

NAND2X1 _14566_ (
    .A(\controlunit.regfile_wen ),
    .B(_4737_),
    .Y(_5038_)
);

FILL SFILL74120x15050 (
);

AOI21X1 _14146_ (
    .A(_4675__bF$buf3),
    .B(_4806__bF$buf4),
    .C(_4808_),
    .Y(_4031_)
);

FILL SFILL28520x3050 (
);

FILL SFILL38280x34050 (
);

DFFPOSX1 _10486_ (
    .Q(\datapath.alupc [4]),
    .CLK(CLK_bF$buf26),
    .D(\datapath.idpc [4])
);

DFFPOSX1 _10066_ (
    .Q(\datapath.csr.csr_wdata [8]),
    .CLK(CLK_bF$buf11),
    .D(\datapath.regcsralu [8])
);

FILL SFILL8360x4050 (
);

FILL SFILL8280x9050 (
);

MUX2X1 _16712_ (
    .A(\datapath.registers.828[23] [21]),
    .B(\datapath.registers.828[21] [21]),
    .S(\datapath.idinstr_16_bF$buf45 ),
    .Y(_6619_)
);

DFFPOSX1 _19184_ (
    .Q(\datapath.registers.828[19] [0]),
    .CLK(CLK_bF$buf127),
    .D(_3956_)
);

FILL SFILL59160x30050 (
);

FILL SFILL68840x35050 (
);

MUX2X1 _17917_ (
    .A(\datapath.registers.828[25] [16]),
    .B(\datapath.registers.828[24] [16]),
    .S(\datapath.idinstr_20_bF$buf25 ),
    .Y(_7797_)
);

OAI21X1 _12632_ (
    .A(_2797__bF$buf1),
    .B(\datapath.csr.csr_wdata [6]),
    .C(_2783__bF$buf0),
    .Y(_2800_)
);

NAND3X1 _12212_ (
    .A(\datapath.idinstr [29]),
    .B(\datapath.idinstr [28]),
    .C(_2480_),
    .Y(_2481_)
);

AND2X2 _9839_ (
    .A(_695_),
    .B(_696_),
    .Y(_697_)
);

NAND2X1 _9419_ (
    .A(\datapath.imm [12]),
    .B(_316__bF$buf3),
    .Y(_356_)
);

OAI21X1 _13837_ (
    .A(_3610_),
    .B(_3414_),
    .C(_3416_),
    .Y(_3611_)
);

NAND3X1 _13417_ (
    .A(_3304_),
    .B(_3307_),
    .C(_3291__bF$buf0),
    .Y(\datapath.memdataload [11])
);

MUX2X1 _17670_ (
    .A(\datapath.registers.828[9] [10]),
    .B(\datapath.registers.828[8] [10]),
    .S(\datapath.idinstr_20_bF$buf51 ),
    .Y(_7556_)
);

NAND2X1 _17250_ (
    .A(\datapath.idinstr_22_bF$buf19 ),
    .B(_7144_),
    .Y(_7145_)
);

FILL SFILL58840x33050 (
);

NAND2X1 _9592_ (
    .A(\datapath.csr.csr_data [22]),
    .B(_417__bF$buf4),
    .Y(_487_)
);

INVX1 _9172_ (
    .A(IMEM_DATA[24]),
    .Y(_166_)
);

FILL SFILL38680x5050 (
);

FILL SFILL54040x18050 (
);

NOR2X1 _18875_ (
    .A(\datapath.registers.828[26] [22]),
    .B(_8598__bF$buf6),
    .Y(_8621_)
);

MUX2X1 _18455_ (
    .A(_8322_),
    .B(_8321_),
    .S(\datapath.idinstr_21_bF$buf7 ),
    .Y(_8323_)
);

AOI21X1 _18035_ (
    .A(_7912_),
    .B(_7911_),
    .C(_7092__bF$buf2),
    .Y(_7913_)
);

FILL SFILL18280x30050 (
);

INVX1 _13590_ (
    .A(\datapath.programcounter.pc [31]),
    .Y(_3420_)
);

OAI21X1 _13170_ (
    .A(_3116_),
    .B(_3081_),
    .C(_3120_),
    .Y(_1_[15])
);

INVX1 _11903_ (
    .A(_1256_),
    .Y(_1322_)
);

NAND2X1 _14795_ (
    .A(\datapath.rd [1]),
    .B(_5167__bF$buf3),
    .Y(_5170_)
);

NOR2X1 _14375_ (
    .A(\datapath.registers.828[17] [8]),
    .B(_4924__bF$buf7),
    .Y(_4935_)
);

FILL SFILL48760x38050 (
);

DFFPOSX1 _10295_ (
    .Q(\datapath.regcsralu [8]),
    .CLK(CLK_bF$buf87),
    .D(\datapath.csr.csr_data [8])
);

MUX2X1 _16941_ (
    .A(\datapath.registers.828[3] [26]),
    .B(\datapath.registers.828[2] [26]),
    .S(\datapath.idinstr_15_bF$buf12 ),
    .Y(_6843_)
);

OAI21X1 _16521_ (
    .A(_5069_),
    .B(\datapath.idinstr_15_bF$buf44 ),
    .C(\datapath.idinstr_16_bF$buf26 ),
    .Y(_6432_)
);

INVX1 _16101_ (
    .A(\datapath.registers.828[16] [7]),
    .Y(_6022_)
);

NAND2X1 _8863_ (
    .A(_57_),
    .B(_62_),
    .Y(_69_)
);

OAI21X1 _17726_ (
    .A(_7609_),
    .B(\datapath.idinstr_22_bF$buf30 ),
    .C(_7610_),
    .Y(_7611_)
);

AOI21X1 _17306_ (
    .A(_7194_),
    .B(_7199_),
    .C(\datapath.idinstr_23_bF$buf6 ),
    .Y(_7200_)
);

NOR2X1 _12861_ (
    .A(_2933_),
    .B(_2467_),
    .Y(_2470_)
);

INVX1 _12441_ (
    .A(\datapath.csr.mvect [26]),
    .Y(_2652_)
);

AOI21X1 _12021_ (
    .A(_1445_),
    .B(_1443_),
    .C(_1447_),
    .Y(_1448_)
);

NAND2X1 _9648_ (
    .A(\datapath.alupc [0]),
    .B(\datapath.regimmalu [0]),
    .Y(_528_)
);

INVX1 _9228_ (
    .A(\datapath.csr.csr_irq ),
    .Y(_211_)
);

FILL SFILL38760x36050 (
);

OAI21X1 _13646_ (
    .A(_3441_),
    .B(_3461_),
    .C(_3374_),
    .Y(_3462_)
);

NAND3X1 _13226_ (
    .A(_3168_),
    .B(_3167_),
    .C(_3166_),
    .Y(_1_[23])
);

FILL SFILL3800x40050 (
);

AOI21X1 _18684_ (
    .A(_4721__bF$buf4),
    .B(_8498__bF$buf4),
    .C(_8523_),
    .Y(_4324_)
);

AOI21X1 _18264_ (
    .A(_8132_),
    .B(_8136_),
    .C(_7093__bF$buf3),
    .Y(_8137_)
);

FILL SFILL3320x33050 (
);

AND2X2 _11712_ (
    .A(_1116_),
    .B(_1716_),
    .Y(_1117_)
);

DFFPOSX1 _19889_ (
    .Q(\datapath.registers.828[29] [1]),
    .CLK(CLK_bF$buf72),
    .D(_4319_)
);

DFFPOSX1 _19469_ (
    .Q(\datapath.registers.828[23] [29]),
    .CLK(CLK_bF$buf31),
    .D(_4137_)
);

DFFPOSX1 _19049_ (
    .Q(\datapath.registers.828[31] [25]),
    .CLK(CLK_bF$buf130),
    .D(_4421_)
);

AOI21X1 _14184_ (
    .A(_4713__bF$buf2),
    .B(_4806__bF$buf2),
    .C(_4827_),
    .Y(_4032_)
);

OAI21X1 _8919_ (
    .A(_773_),
    .B(gnd),
    .C(_774_),
    .Y(\datapath._03_ [3])
);

DFFPOSX1 _12917_ (
    .Q(\datapath.csr.mepc [11]),
    .CLK(CLK_bF$buf68),
    .D(\datapath.csr._26_ [11])
);

FILL SFILL33960x52050 (
);

NAND2X1 _15389_ (
    .A(\datapath.registers.828[4] [19]),
    .B(_5470__bF$buf4),
    .Y(_5490_)
);

FILL SFILL18760x32050 (
);

NAND2X1 _16750_ (
    .A(_5681__bF$buf9),
    .B(_6655_),
    .Y(_6656_)
);

MUX2X1 _16330_ (
    .A(_6245_),
    .B(_6244_),
    .S(\datapath.idinstr_16_bF$buf43 ),
    .Y(_6246_)
);

FILL SFILL58840x28050 (
);

BUFX2 _8672_ (
    .A(_0_[8]),
    .Y(DMEM_ADDR[8])
);

BUFX2 BUFX2_insert140 (
    .A(_5680_),
    .Y(_5680__bF$buf2)
);

BUFX2 BUFX2_insert141 (
    .A(_5680_),
    .Y(_5680__bF$buf1)
);

BUFX2 BUFX2_insert142 (
    .A(_5680_),
    .Y(_5680__bF$buf0)
);

BUFX2 BUFX2_insert143 (
    .A(_2500_),
    .Y(_2500__bF$buf4)
);

BUFX2 BUFX2_insert144 (
    .A(_2500_),
    .Y(_2500__bF$buf3)
);

OAI21X1 _17955_ (
    .A(_5524_),
    .B(\datapath.idinstr_22_bF$buf36 ),
    .C(_7834_),
    .Y(_7835_)
);

BUFX2 BUFX2_insert145 (
    .A(_2500_),
    .Y(_2500__bF$buf2)
);

MUX2X1 _17535_ (
    .A(_7423_),
    .B(_7422_),
    .S(\datapath.idinstr_21_bF$buf32 ),
    .Y(_7424_)
);

BUFX2 BUFX2_insert146 (
    .A(_2500_),
    .Y(_2500__bF$buf1)
);

MUX2X1 _17115_ (
    .A(_7012_),
    .B(_7011_),
    .S(\datapath.idinstr_16_bF$buf25 ),
    .Y(_7013_)
);

BUFX2 BUFX2_insert147 (
    .A(_2500_),
    .Y(_2500__bF$buf0)
);

BUFX2 BUFX2_insert148 (
    .A(_4719_),
    .Y(_4719__bF$buf3)
);

OAI21X1 _12670_ (
    .A(_2797__bF$buf3),
    .B(\datapath.csr.csr_wdata [23]),
    .C(_2783__bF$buf3),
    .Y(_2821_)
);

BUFX2 BUFX2_insert149 (
    .A(_4719_),
    .Y(_4719__bF$buf2)
);

OAI21X1 _12250_ (
    .A(_2509_),
    .B(_2512_),
    .C(_2515_),
    .Y(\datapath.csr.csr_data [3])
);

NOR2X1 _9877_ (
    .A(_729_),
    .B(_728_),
    .Y(_730_)
);

NAND3X1 _9457_ (
    .A(_383_),
    .B(_384_),
    .C(_382_),
    .Y(\datapath.muxbval [21])
);

INVX1 _9037_ (
    .A(\datapath.nextpc [11]),
    .Y(_853_)
);

DFFPOSX1 _13875_ (
    .Q(\datapath.programcounter.pc [7]),
    .CLK(CLK_bF$buf102),
    .D(\datapath.programcounter._1_ [7])
);

NAND3X1 _13455_ (
    .A(_3291__bF$buf2),
    .B(_3333_),
    .C(_3326_),
    .Y(\datapath.memdataload [23])
);

NAND2X1 _13035_ (
    .A(\datapath.idinstr_24_bF$buf4 ),
    .B(_2973_),
    .Y(_2989_)
);

FILL SFILL63640x32050 (
);

OAI21X1 _15601_ (
    .A(_5579__bF$buf3),
    .B(_4717__bF$buf2),
    .C(_5602_),
    .Y(_4002_)
);

AOI21X1 _18493_ (
    .A(_8356_),
    .B(_8360_),
    .C(\datapath.idinstr_23_bF$buf4 ),
    .Y(_8361_)
);

NAND2X1 _18073_ (
    .A(\datapath.registers.828[26] [19]),
    .B(_7092__bF$buf6),
    .Y(_7950_)
);

AOI21X1 _16806_ (
    .A(\datapath.registers.828[31] [23]),
    .B(\datapath.idinstr_17_bF$buf11 ),
    .C(_5681__bF$buf7),
    .Y(_6711_)
);

FILL SFILL53640x30050 (
);

OAI21X1 _11941_ (
    .A(_1209__bF$buf1),
    .B(_1065_),
    .C(_1362_),
    .Y(_1363_)
);

NAND2X1 _11521_ (
    .A(\datapath.alu.b_4_bF$buf3 ),
    .B(_912_),
    .Y(_913_)
);

NAND3X1 _11101_ (
    .A(_1091__bF$buf0),
    .B(_2068_),
    .C(_2061_),
    .Y(_2069_)
);

DFFPOSX1 _19698_ (
    .Q(\datapath.registers.828[0] [2]),
    .CLK(CLK_bF$buf8),
    .D(_3658_)
);

DFFPOSX1 _19278_ (
    .Q(\datapath.registers.828[22] [30]),
    .CLK(CLK_bF$buf4),
    .D(_4107_)
);

BUFX2 _8728_ (
    .A(_2_),
    .Y(DMEM_WEN)
);

OAI21X1 _12726_ (
    .A(_2856_),
    .B(_2859_),
    .C(_2858_),
    .Y(_2860_)
);

INVX1 _12306_ (
    .A(\datapath.csr.mcause [19]),
    .Y(_2556_)
);

NOR2X1 _15198_ (
    .A(\datapath.registers.828[6] [22]),
    .B(_5369__bF$buf0),
    .Y(_5392_)
);

FILL SFILL3400x21050 (
);

NAND2X1 _17764_ (
    .A(_7092__bF$buf5),
    .B(_7647_),
    .Y(_7648_)
);

MUX2X1 _17344_ (
    .A(_7236_),
    .B(_7235_),
    .S(\datapath.idinstr_21_bF$buf20 ),
    .Y(_7237_)
);

INVX1 _9686_ (
    .A(_560_),
    .Y(_561_)
);

NAND2X1 _9266_ (
    .A(\datapath.regloadwb [7]),
    .B(_213__bF$buf1),
    .Y(_241_)
);

FILL SFILL28360x15050 (
);

BUFX2 _18969_ (
    .A(\datapath.registers.828[0] [9]),
    .Y(_3667_)
);

NAND2X1 _18549_ (
    .A(\datapath.registers.828[12] [30]),
    .B(_7089__bF$buf9),
    .Y(_8415_)
);

INVX1 _18129_ (
    .A(\datapath.registers.828[0] [20]),
    .Y(_8005_)
);

NOR2X1 _13684_ (
    .A(_3441_),
    .B(_3461_),
    .Y(_3490_)
);

OAI21X1 _13264_ (
    .A(_3199_),
    .B(_0__1_bF$buf1),
    .C(_3200_),
    .Y(_3201_)
);

DFFPOSX1 _19910_ (
    .Q(\datapath.registers.828[29] [22]),
    .CLK(CLK_bF$buf10),
    .D(_4322_)
);

NAND2X1 _14889_ (
    .A(\datapath.rd [8]),
    .B(_5212__bF$buf1),
    .Y(_5225_)
);

NAND2X1 _14469_ (
    .A(\datapath.registers.828[16] [18]),
    .B(_4968__bF$buf7),
    .Y(_4987_)
);

NOR2X1 _14049_ (
    .A(\datapath.registers.828[22] [19]),
    .B(_4738__bF$buf4),
    .Y(_4758_)
);

OAI21X1 _15830_ (
    .A(_5041_),
    .B(\datapath.idinstr_15_bF$buf44 ),
    .C(\datapath.idinstr_16_bF$buf35 ),
    .Y(_5757_)
);

OAI21X1 _15410_ (
    .A(_4731__bF$buf3),
    .B(_5470__bF$buf0),
    .C(_5500_),
    .Y(_4489_)
);

DFFPOSX1 _10389_ (
    .Q(\datapath.alu.a [6]),
    .CLK(CLK_bF$buf55),
    .D(\datapath.muxaval [6])
);

MUX2X1 _16615_ (
    .A(_6523_),
    .B(_6522_),
    .S(\datapath.idinstr_16_bF$buf31 ),
    .Y(_6524_)
);

OAI21X1 _11750_ (
    .A(_1713_),
    .B(_1720_),
    .C(_1712_),
    .Y(_1158_)
);

NAND2X1 _11330_ (
    .A(_1327_),
    .B(_1337_),
    .Y(_2294_)
);

DFFPOSX1 _19087_ (
    .Q(\datapath.registers.828[10] [31]),
    .CLK(CLK_bF$buf50),
    .D(_3692_)
);

NAND2X1 _8957_ (
    .A(gnd),
    .B(\datapath.idpc [16]),
    .Y(_800_)
);

FILL SFILL23560x31050 (
);

DFFPOSX1 _12955_ (
    .Q(\datapath.csr.mvect [16]),
    .CLK(CLK_bF$buf68),
    .D(\datapath.csr._13_ [16])
);

OAI21X1 _12535_ (
    .A(\datapath.csr.csr_wdata [18]),
    .B(_2672__bF$buf6),
    .C(_2722_),
    .Y(_2723_)
);

MUX2X1 _12115_ (
    .A(_1547_),
    .B(_1485_),
    .S(_994__bF$buf3),
    .Y(_1548_)
);

BUFX2 BUFX2_insert520 (
    .A(\datapath.idinstr_20_hier0_bF$buf6 ),
    .Y(\datapath.idinstr_20_bF$buf16 )
);

BUFX2 BUFX2_insert521 (
    .A(\datapath.idinstr_20_hier0_bF$buf3 ),
    .Y(\datapath.idinstr_20_bF$buf15 )
);

BUFX2 BUFX2_insert522 (
    .A(\datapath.idinstr_20_hier0_bF$buf6 ),
    .Y(\datapath.idinstr_20_bF$buf14 )
);

BUFX2 BUFX2_insert523 (
    .A(\datapath.idinstr_20_hier0_bF$buf0 ),
    .Y(\datapath.idinstr_20_bF$buf13 )
);

BUFX2 BUFX2_insert524 (
    .A(\datapath.idinstr_20_hier0_bF$buf3 ),
    .Y(\datapath.idinstr_20_bF$buf12 )
);

OAI21X1 _17993_ (
    .A(_7867_),
    .B(_7868_),
    .C(_7871_),
    .Y(_7872_)
);

NAND2X1 _17573_ (
    .A(_7089__bF$buf2),
    .B(_7460_),
    .Y(_7461_)
);

BUFX2 BUFX2_insert525 (
    .A(\datapath.idinstr_20_hier0_bF$buf5 ),
    .Y(\datapath.idinstr_20_bF$buf11 )
);

MUX2X1 _17153_ (
    .A(\datapath.registers.828[29] [31]),
    .B(\datapath.registers.828[28] [31]),
    .S(\datapath.idinstr_15_bF$buf8 ),
    .Y(_7050_)
);

BUFX2 BUFX2_insert526 (
    .A(\datapath.idinstr_20_hier0_bF$buf6 ),
    .Y(\datapath.idinstr_20_bF$buf10 )
);

BUFX2 BUFX2_insert527 (
    .A(\datapath.idinstr_20_hier0_bF$buf5 ),
    .Y(\datapath.idinstr_20_bF$buf9 )
);

BUFX2 BUFX2_insert528 (
    .A(\datapath.idinstr_20_hier0_bF$buf0 ),
    .Y(\datapath.idinstr_20_bF$buf8 )
);

BUFX2 BUFX2_insert529 (
    .A(\datapath.idinstr_20_hier0_bF$buf3 ),
    .Y(\datapath.idinstr_20_bF$buf7 )
);

NAND2X1 _9495_ (
    .A(\datapath.immediatedecoder._12_ ),
    .B(_316__bF$buf3),
    .Y(_413_)
);

OAI21X1 _9075_ (
    .A(_877_),
    .B(gnd),
    .C(_878_),
    .Y(\datapath._04_ [23])
);

FILL SFILL53640x25050 (
);

DFFPOSX1 _10601_ (
    .Q(\datapath.idpc [23]),
    .CLK(CLK_bF$buf110),
    .D(\datapath._03_ [23])
);

NOR2X1 _18778_ (
    .A(\datapath.registers.828[27] [6]),
    .B(_8565__bF$buf3),
    .Y(_8572_)
);

NAND2X1 _18358_ (
    .A(\datapath.idinstr_22_bF$buf2 ),
    .B(_8228_),
    .Y(_8229_)
);

AOI22X1 _13493_ (
    .A(DMEM_DATA_L[7]),
    .B(_3217_),
    .C(_3238_),
    .D(DMEM_DATA_L[23]),
    .Y(_3356_)
);

NAND3X1 _13073_ (
    .A(\datapath.memoryinterface.byte_size_store.storebyte [1]),
    .B(_3027__bF$buf3),
    .C(_3029__bF$buf4),
    .Y(_3038_)
);

NAND2X1 _11806_ (
    .A(_1209__bF$buf0),
    .B(_1217_),
    .Y(_1218_)
);

NOR2X1 _14698_ (
    .A(\datapath.registers.828[13] [19]),
    .B(_5099__bF$buf5),
    .Y(_5119_)
);

NOR2X1 _14278_ (
    .A(\datapath.registers.828[19] [29]),
    .B(_4842__bF$buf5),
    .Y(_4881_)
);

FILL SFILL63800x8050 (
);

FILL SFILL43640x23050 (
);

DFFPOSX1 _10198_ (
    .Q(\datapath.mempc_4 [5]),
    .CLK(CLK_bF$buf146),
    .D(\datapath.alupc_4 [5])
);

AOI21X1 _16844_ (
    .A(\datapath.registers.828[4] [24]),
    .B(\datapath.idinstr_17_bF$buf3 ),
    .C(\datapath.idinstr_15_bF$buf17 ),
    .Y(_6748_)
);

NAND2X1 _16424_ (
    .A(_5684__bF$buf11),
    .B(_6337_),
    .Y(_6338_)
);

MUX2X1 _16004_ (
    .A(\datapath.registers.828[9] [5]),
    .B(\datapath.registers.828[8] [5]),
    .S(\datapath.idinstr_15_bF$buf39 ),
    .Y(_5927_)
);

NOR2X1 _8766_ (
    .A(_100_),
    .B(_103_),
    .Y(_2_)
);

NAND2X1 _17629_ (
    .A(\datapath.idinstr_22_bF$buf24 ),
    .B(_7515_),
    .Y(_7516_)
);

MUX2X1 _17209_ (
    .A(\datapath.registers.828[18] [0]),
    .B(\datapath.registers.828[16] [0]),
    .S(\datapath.idinstr_21_bF$buf32 ),
    .Y(_7105_)
);

INVX1 _12764_ (
    .A(_2882_),
    .Y(_2891_)
);

OAI21X1 _12344_ (
    .A(_2580_),
    .B(_2490__bF$buf1),
    .C(_2581_),
    .Y(\datapath.csr.csr_data [31])
);

FILL SFILL33640x21050 (
);

AOI21X1 _13969_ (
    .A(_4709__bF$buf3),
    .B(_4673__bF$buf6),
    .C(_4710_),
    .Y(_4125_)
);

NOR2X1 _13549_ (
    .A(gnd),
    .B(\datapath.programcounter.pc_mux [17]),
    .Y(_3393_)
);

INVX1 _13129_ (
    .A(\datapath.memoryinterface.byte_size_store.storebyte [9]),
    .Y(_3086_)
);

FILL SFILL63800x53050 (
);

FILL SFILL33560x28050 (
);

NOR2X1 _14910_ (
    .A(\datapath.registers.828[10] [17]),
    .B(_5212__bF$buf3),
    .Y(_5237_)
);

MUX2X1 _17382_ (
    .A(\datapath.registers.828[29] [4]),
    .B(\datapath.registers.828[28] [4]),
    .S(\datapath.idinstr_20_bF$buf20 ),
    .Y(_7274_)
);

FILL SFILL79000x24050 (
);

NAND2X1 _10830_ (
    .A(_1800_),
    .B(_1684_),
    .Y(_1801_)
);

DFFPOSX1 _10410_ (
    .Q(\datapath.alu.a [27]),
    .CLK(CLK_bF$buf54),
    .D(\datapath.muxaval [27])
);

AOI21X1 _18587_ (
    .A(_8452_),
    .B(_8429_),
    .C(_7095__bF$buf4),
    .Y(\datapath.registers.regb_data [30])
);

NOR2X1 _18167_ (
    .A(_6628_),
    .B(_7089__bF$buf5),
    .Y(_8042_)
);

FILL SFILL53800x51050 (
);

FILL SFILL23560x26050 (
);

AND2X2 _11615_ (
    .A(_1010_),
    .B(_1012_),
    .Y(_1013_)
);

NOR2X1 _14087_ (
    .A(\datapath.registers.828[21] [5]),
    .B(_4772__bF$buf2),
    .Y(_4778_)
);

FILL SFILL69000x22050 (
);

FILL SFILL53720x58050 (
);

MUX2X1 _16653_ (
    .A(\datapath.registers.828[25] [20]),
    .B(\datapath.registers.828[24] [20]),
    .S(\datapath.idinstr_15_bF$buf27 ),
    .Y(_6561_)
);

NAND2X1 _16233_ (
    .A(_6147_),
    .B(_6150_),
    .Y(_6151_)
);

FILL SFILL53720x13050 (
);

INVX1 _8995_ (
    .A(\datapath.programcounter.pc [29]),
    .Y(_825_)
);

FILL SFILL13560x24050 (
);

AOI21X1 _17858_ (
    .A(\datapath.registers.828[31] [14]),
    .B(\datapath.idinstr_22_bF$buf23 ),
    .C(_7089__bF$buf1),
    .Y(_7740_)
);

MUX2X1 _17438_ (
    .A(_7328_),
    .B(_7327_),
    .S(\datapath.idinstr_21_bF$buf6 ),
    .Y(_7329_)
);

MUX2X1 _17018_ (
    .A(\datapath.registers.828[31] [28]),
    .B(\datapath.registers.828[30] [28]),
    .S(\datapath.idinstr_15_bF$buf51 ),
    .Y(_6918_)
);

AOI21X1 _12993_ (
    .A(\controlunit.imm_sel [1]),
    .B(\controlunit.imm_sel [0]),
    .C(\controlunit.imm_sel [2]),
    .Y(_3016_)
);

FILL SFILL43720x56050 (
);

INVX1 _12573_ (
    .A(\datapath.csr.mepc [24]),
    .Y(_2753_)
);

AOI21X1 _12153_ (
    .A(_1728_),
    .B(_2154_),
    .C(_1588_),
    .Y(_1589_)
);

FILL SFILL43640x3050 (
);

FILL SFILL43560x8050 (
);

FILL SFILL43240x2050 (
);

INVX1 _13778_ (
    .A(_3563_),
    .Y(\datapath.nextpc [23])
);

INVX1 _13358_ (
    .A(\datapath.memoryinterface.byte_size_load.byteval [2]),
    .Y(_3258_)
);

BUFX2 BUFX2_insert900 (
    .A(_5614_),
    .Y(_5614__bF$buf0)
);

BUFX2 BUFX2_insert901 (
    .A(_5003_),
    .Y(_5003__bF$buf4)
);

BUFX2 BUFX2_insert902 (
    .A(_5003_),
    .Y(_5003__bF$buf3)
);

BUFX2 BUFX2_insert903 (
    .A(_5003_),
    .Y(_5003__bF$buf2)
);

BUFX2 BUFX2_insert904 (
    .A(_5003_),
    .Y(_5003__bF$buf1)
);

BUFX2 BUFX2_insert905 (
    .A(_5003_),
    .Y(_5003__bF$buf0)
);

BUFX2 BUFX2_insert906 (
    .A(_4673_),
    .Y(_4673__bF$buf7)
);

AOI21X1 _17191_ (
    .A(_7066_),
    .B(_7087_),
    .C(_5687__bF$buf1),
    .Y(\datapath.registers.rega_data [31])
);

BUFX2 BUFX2_insert907 (
    .A(_4673_),
    .Y(_4673__bF$buf6)
);

BUFX2 BUFX2_insert908 (
    .A(_4673_),
    .Y(_4673__bF$buf5)
);

BUFX2 BUFX2_insert909 (
    .A(_4673_),
    .Y(_4673__bF$buf4)
);

MUX2X1 _15924_ (
    .A(\datapath.registers.828[5] [3]),
    .B(\datapath.registers.828[4] [3]),
    .S(\datapath.idinstr_15_bF$buf10 ),
    .Y(_5849_)
);

OAI21X1 _15504_ (
    .A(_5546__bF$buf1),
    .B(_4685__bF$buf0),
    .C(_5553_),
    .Y(_4368_)
);

OAI21X1 _18396_ (
    .A(_8261_),
    .B(_8262_),
    .C(_8265_),
    .Y(_8266_)
);

NAND2X1 _16709_ (
    .A(_6613_),
    .B(_6615_),
    .Y(_6616_)
);

MUX2X1 _11844_ (
    .A(_1258_),
    .B(_1099_),
    .S(_1123__bF$buf6),
    .Y(_1259_)
);

AOI21X1 _11424_ (
    .A(_2384_),
    .B(_2385_),
    .C(_2383_),
    .Y(_2386_)
);

NAND2X1 _11004_ (
    .A(_1027_),
    .B(_1037_),
    .Y(_1974_)
);

FILL SFILL18440x50 (
);

FILL SFILL39000x1050 (
);

FILL SFILL38600x9050 (
);

AOI21X1 _12629_ (
    .A(_2516_),
    .B(_2797__bF$buf0),
    .C(_2798_),
    .Y(\datapath.csr._32_ [4])
);

NOR3X1 _12209_ (
    .A(\datapath.alu.c [31]),
    .B(_1630_),
    .C(_1648_),
    .Y(\datapath.alu.z )
);

FILL SFILL63800x48050 (
);

MUX2X1 _16882_ (
    .A(\datapath.registers.828[29] [25]),
    .B(\datapath.registers.828[28] [25]),
    .S(\datapath.idinstr_15_bF$buf52 ),
    .Y(_6785_)
);

MUX2X1 _16462_ (
    .A(\datapath.registers.828[3] [15]),
    .B(\datapath.registers.828[2] [15]),
    .S(\datapath.idinstr_15_bF$buf1 ),
    .Y(_6375_)
);

MUX2X1 _16042_ (
    .A(\datapath.registers.828[1] [6]),
    .B(\datapath.registers.828[0] [6]),
    .S(\datapath.idinstr_15_bF$buf48 ),
    .Y(_5964_)
);

FILL SFILL8280x44050 (
);

NAND2X1 _17667_ (
    .A(_7550_),
    .B(_7552_),
    .Y(_7553_)
);

MUX2X1 _17247_ (
    .A(\datapath.registers.828[29] [1]),
    .B(\datapath.registers.828[28] [1]),
    .S(\datapath.idinstr_20_bF$buf23 ),
    .Y(_7142_)
);

FILL SFILL23640x14050 (
);

INVX1 _12382_ (
    .A(\datapath.csr.csr_wdata [6]),
    .Y(_2613_)
);

FILL SFILL8600x56050 (
);

NAND3X1 _9589_ (
    .A(_483_),
    .B(_484_),
    .C(_482_),
    .Y(\datapath.muxaval [21])
);

INVX1 _9169_ (
    .A(IMEM_DATA[23]),
    .Y(_164_)
);

FILL SFILL8200x42050 (
);

INVX2 _13587_ (
    .A(\datapath.programcounter.pc [30]),
    .Y(_3418_)
);

NAND2X1 _13167_ (
    .A(_0__1_bF$buf1),
    .B(DMEM_DATA_L[15]),
    .Y(_3118_)
);

FILL SFILL53400x32050 (
);

DFFPOSX1 _19813_ (
    .Q(\datapath.registers.828[13] [21]),
    .CLK(CLK_bF$buf18),
    .D(_3777_)
);

FILL SFILL13240x43050 (
);

AOI21X1 _15733_ (
    .A(_4717__bF$buf3),
    .B(_5647__bF$buf2),
    .C(_5670_),
    .Y(_4386_)
);

OAI21X1 _15313_ (
    .A(_4699__bF$buf4),
    .B(_5437__bF$buf7),
    .C(_5451_),
    .Y(_4152_)
);

BUFX2 BUFX2_insert50 (
    .A(_3429_),
    .Y(_3429__bF$buf3)
);

BUFX2 BUFX2_insert51 (
    .A(_3429_),
    .Y(_3429__bF$buf2)
);

BUFX2 BUFX2_insert52 (
    .A(_3429_),
    .Y(_3429__bF$buf1)
);

BUFX2 BUFX2_insert53 (
    .A(_3429_),
    .Y(_3429__bF$buf0)
);

BUFX2 BUFX2_insert54 (
    .A(_2585_),
    .Y(_2585__bF$buf5)
);

BUFX2 BUFX2_insert55 (
    .A(_2585_),
    .Y(_2585__bF$buf4)
);

FILL SFILL78920x57050 (
);

BUFX2 BUFX2_insert56 (
    .A(_2585_),
    .Y(_2585__bF$buf3)
);

BUFX2 BUFX2_insert57 (
    .A(_2585_),
    .Y(_2585__bF$buf2)
);

BUFX2 BUFX2_insert58 (
    .A(_2585_),
    .Y(_2585__bF$buf1)
);

FILL SFILL13560x19050 (
);

BUFX2 BUFX2_insert59 (
    .A(_2585_),
    .Y(_2585__bF$buf0)
);

FILL SFILL43400x30050 (
);

MUX2X1 _16938_ (
    .A(_6839_),
    .B(_6838_),
    .S(\datapath.idinstr_16_bF$buf25 ),
    .Y(_6840_)
);

NAND2X1 _16518_ (
    .A(_5684__bF$buf1),
    .B(_6428_),
    .Y(_6429_)
);

OAI21X1 _11653_ (
    .A(_1053_),
    .B(_2079_),
    .C(_1049_),
    .Y(_1054_)
);

OAI21X1 _11233_ (
    .A(_2117_),
    .B(\datapath.alu.b_1_bF$buf5 ),
    .C(_1970_),
    .Y(_2199_)
);

AND2X2 _9801_ (
    .A(_662_),
    .B(_661_),
    .Y(_663_)
);

NAND3X1 _12858_ (
    .A(_2862_),
    .B(_2957_),
    .C(_2968_),
    .Y(_2467_)
);

INVX1 _12438_ (
    .A(\datapath.csr.mvect [25]),
    .Y(_2650_)
);

NOR2X1 _12018_ (
    .A(_1757_),
    .B(_1383_),
    .Y(_1445_)
);

FILL SFILL64200x33050 (
);

MUX2X1 _16691_ (
    .A(_6598_),
    .B(_6597_),
    .S(\datapath.idinstr_16_bF$buf0 ),
    .Y(_6599_)
);

OAI21X1 _16271_ (
    .A(_6176_),
    .B(_6187_),
    .C(\datapath.idinstr_19_bF$buf4 ),
    .Y(_6188_)
);

FILL SFILL33720x49050 (
);

MUX2X1 _17896_ (
    .A(\datapath.registers.828[11] [15]),
    .B(\datapath.registers.828[10] [15]),
    .S(\datapath.idinstr_20_bF$buf34 ),
    .Y(_7777_)
);

AOI21X1 _17476_ (
    .A(_7361_),
    .B(_7365_),
    .C(\datapath.idinstr_23_bF$buf3 ),
    .Y(_7366_)
);

AOI21X1 _17056_ (
    .A(_6933_),
    .B(_6955_),
    .C(_5687__bF$buf2),
    .Y(\datapath.registers.rega_data [28])
);

NOR3X1 _12191_ (
    .A(\datapath.alu.c [26]),
    .B(\datapath.alu.c [25]),
    .C(\datapath.alu.c [28]),
    .Y(_1629_)
);

NAND2X1 _9398_ (
    .A(\datapath.registers.regb_data [7]),
    .B(_318__bF$buf1),
    .Y(_340_)
);

NAND2X1 _10924_ (
    .A(_1091__bF$buf5),
    .B(_1894_),
    .Y(_1895_)
);

DFFPOSX1 _10504_ (
    .Q(\datapath.alupc [22]),
    .CLK(CLK_bF$buf98),
    .D(\datapath.idpc [22])
);

FILL SFILL58920x53050 (
);

NOR2X1 _13396_ (
    .A(\datapath.meminstr [14]),
    .B(_3289_),
    .Y(_3290_)
);

DFFPOSX1 _19622_ (
    .Q(\datapath.registers.828[9] [22]),
    .CLK(CLK_bF$buf25),
    .D(_4642_)
);

DFFPOSX1 _19202_ (
    .Q(\datapath.registers.828[19] [18]),
    .CLK(CLK_bF$buf89),
    .D(_3965_)
);

OAI21X1 _11709_ (
    .A(_900_),
    .B(_1108_),
    .C(_1113_),
    .Y(_1114_)
);

FILL SFILL23320x33050 (
);

AOI21X1 _15962_ (
    .A(_5885_),
    .B(_5884_),
    .C(_5683__bF$buf1),
    .Y(_5886_)
);

OAI21X1 _15542_ (
    .A(_5546__bF$buf0),
    .B(_4723__bF$buf2),
    .C(_5572_),
    .Y(_4357_)
);

OAI21X1 _15122_ (
    .A(_5335__bF$buf3),
    .B(_4705__bF$buf1),
    .C(_5353_),
    .Y(_4571_)
);

NAND2X1 _16747_ (
    .A(\datapath.idinstr_17_bF$buf0 ),
    .B(_6652_),
    .Y(_6653_)
);

AOI21X1 _16327_ (
    .A(_6242_),
    .B(_6235_),
    .C(_5685__bF$buf2),
    .Y(_6243_)
);

NAND2X1 _11882_ (
    .A(_1225_),
    .B(_1266_),
    .Y(_1299_)
);

AND2X2 _11462_ (
    .A(_2419_),
    .B(_2422_),
    .Y(_2423_)
);

MUX2X1 _11042_ (
    .A(_2004_),
    .B(_2007_),
    .S(_1123__bF$buf4),
    .Y(_2011_)
);

FILL SFILL48840x58050 (
);

FILL SFILL13720x45050 (
);

BUFX2 _8669_ (
    .A(_0_[5]),
    .Y(DMEM_ADDR[5])
);

FILL SFILL8200x37050 (
);

NAND2X1 _9610_ (
    .A(\datapath.registers.rega_data [27]),
    .B(_418__bF$buf1),
    .Y(_500_)
);

AOI21X1 _12667_ (
    .A(_2560_),
    .B(_2797__bF$buf5),
    .C(_2819_),
    .Y(\datapath.csr._32_ [21])
);

NAND2X1 _12247_ (
    .A(\datapath.csr.mepc [1]),
    .B(_2507__bF$buf2),
    .Y(_2513_)
);

AOI21X1 _16080_ (
    .A(_6000_),
    .B(_5999_),
    .C(_5684__bF$buf8),
    .Y(_6001_)
);

OAI21X1 _14813_ (
    .A(_5179_),
    .B(_5167__bF$buf0),
    .C(_5180_),
    .Y(_3730_)
);

FILL SFILL38840x56050 (
);

FILL SFILL78600x31050 (
);

OAI21X1 _17285_ (
    .A(_7179_),
    .B(_7170_),
    .C(_7088__bF$buf2),
    .Y(_7180_)
);

FILL SFILL83880x51050 (
);

NAND2X1 _10733_ (
    .A(_1702_),
    .B(_1703_),
    .Y(_1704_)
);

DFFPOSX1 _10313_ (
    .Q(\datapath.regcsralu [26]),
    .CLK(CLK_bF$buf108),
    .D(\datapath.csr.csr_data [26])
);

DFFPOSX1 _19851_ (
    .Q(\datapath.registers.828[3] [27]),
    .CLK(CLK_bF$buf134),
    .D(_4455_)
);

FILL SFILL3080x41050 (
);

DFFPOSX1 _19431_ (
    .Q(\datapath.registers.828[24] [23]),
    .CLK(CLK_bF$buf111),
    .D(_4163_)
);

DFFPOSX1 _19011_ (
    .Q(\datapath.registers.828[18] [19]),
    .CLK(CLK_bF$buf60),
    .D(_3934_)
);

OAI21X1 _11938_ (
    .A(_1810_),
    .B(_1880_),
    .C(_1358_),
    .Y(_1360_)
);

OAI21X1 _11518_ (
    .A(_909_),
    .B(_2331_),
    .C(_1920_),
    .Y(_910_)
);

FILL SFILL3480x10050 (
);

FILL SFILL33800x37050 (
);

MUX2X1 _15771_ (
    .A(\datapath.registers.828[19] [0]),
    .B(\datapath.registers.828[17] [0]),
    .S(\datapath.idinstr_16_bF$buf5 ),
    .Y(_5699_)
);

NAND2X1 _15351_ (
    .A(\datapath.registers.828[4] [0]),
    .B(_5470__bF$buf1),
    .Y(_5471_)
);

MUX2X1 _16976_ (
    .A(_6876_),
    .B(_6875_),
    .S(\datapath.idinstr_16_bF$buf38 ),
    .Y(_6877_)
);

MUX2X1 _16556_ (
    .A(\datapath.registers.828[21] [17]),
    .B(\datapath.registers.828[20] [17]),
    .S(\datapath.idinstr_15_bF$buf54 ),
    .Y(_6467_)
);

AOI21X1 _16136_ (
    .A(_6050_),
    .B(_6055_),
    .C(\datapath.idinstr_18_bF$buf5 ),
    .Y(_6056_)
);

NAND2X1 _11691_ (
    .A(_1092_),
    .B(_1094_),
    .Y(_1095_)
);

AOI21X1 _11271_ (
    .A(_2229_),
    .B(_2231_),
    .C(_2235_),
    .Y(_2236_)
);

OR2X2 _8898_ (
    .A(_77_),
    .B(_95_),
    .Y(_96_)
);

FILL FILL83000x59050 (
);

FILL SFILL58920x48050 (
);

DFFPOSX1 _12896_ (
    .Q(\datapath.csr.mcause [22]),
    .CLK(CLK_bF$buf108),
    .D(\datapath.csr._32_ [22])
);

OAI21X1 _12476_ (
    .A(_2677_),
    .B(\controlunit.csrfile_trap_wen_bF$buf6 ),
    .C(_2678_),
    .Y(\datapath.csr._26_ [1])
);

OAI21X1 _12056_ (
    .A(\datapath.alu.b_0_bF$buf4 ),
    .B(\datapath.alu.a [27]),
    .C(_1484_),
    .Y(_1485_)
);

NAND2X1 _18702_ (
    .A(\datapath.registers.828[28] [1]),
    .B(_8531__bF$buf0),
    .Y(_8533_)
);

DFFPOSX1 _19907_ (
    .Q(\datapath.registers.828[29] [19]),
    .CLK(CLK_bF$buf106),
    .D(_4318_)
);

OAI21X1 _14622_ (
    .A(_5073_),
    .B(_5039__bF$buf7),
    .C(_5074_),
    .Y(_3806_)
);

AOI21X1 _14202_ (
    .A(_4731__bF$buf2),
    .B(_4806__bF$buf4),
    .C(_4836_),
    .Y(_4041_)
);

MUX2X1 _17094_ (
    .A(\datapath.registers.828[1] [29]),
    .B(\datapath.registers.828[0] [29]),
    .S(\datapath.idinstr_15_bF$buf2 ),
    .Y(_6993_)
);

MUX2X1 _15827_ (
    .A(_5753_),
    .B(_5752_),
    .S(\datapath.idinstr_16_bF$buf35 ),
    .Y(_5754_)
);

NAND2X1 _15407_ (
    .A(\datapath.registers.828[4] [28]),
    .B(_5470__bF$buf1),
    .Y(_5499_)
);

OAI21X1 _10962_ (
    .A(_1733_),
    .B(\datapath.alu.b_0_bF$buf8 ),
    .C(_1931_),
    .Y(_1932_)
);

DFFPOSX1 _10542_ (
    .Q(\datapath.idinstr [28]),
    .CLK(CLK_bF$buf34),
    .D(\datapath._05_ [28])
);

DFFPOSX1 _10122_ (
    .Q(_0_[0]),
    .CLK(CLK_bF$buf15),
    .D(\datapath.alu.condtrue )
);

AOI21X1 _18299_ (
    .A(_8165_),
    .B(_8170_),
    .C(\datapath.idinstr_23_bF$buf1 ),
    .Y(_8171_)
);

DFFPOSX1 _19660_ (
    .Q(\datapath.registers.828[26] [28]),
    .CLK(CLK_bF$buf106),
    .D(_4232_)
);

DFFPOSX1 _19240_ (
    .Q(\datapath.registers.828[20] [24]),
    .CLK(CLK_bF$buf127),
    .D(_4036_)
);

FILL SFILL13320x26050 (
);

OAI21X1 _11747_ (
    .A(_1117_),
    .B(_1118_),
    .C(_1154_),
    .Y(\datapath.alu.c [17])
);

AOI22X1 _11327_ (
    .A(_2262_),
    .B(_1888_),
    .C(_2041__bF$buf2),
    .D(_2290_),
    .Y(_2291_)
);

OAI21X1 _15580_ (
    .A(_5098__bF$buf4),
    .B(_4668__bF$buf2),
    .C(\datapath.registers.828[1] [12]),
    .Y(_5592_)
);

NOR2X1 _15160_ (
    .A(\datapath.registers.828[6] [3]),
    .B(_5369__bF$buf1),
    .Y(_5373_)
);

MUX2X1 _16785_ (
    .A(\datapath.registers.828[11] [23]),
    .B(\datapath.registers.828[10] [23]),
    .S(\datapath.idinstr_15_bF$buf24 ),
    .Y(_6690_)
);

AOI21X1 _16365_ (
    .A(_6279_),
    .B(_6278_),
    .C(_5683__bF$buf2),
    .Y(_6280_)
);

NAND2X1 _11080_ (
    .A(_2045_),
    .B(_2048_),
    .Y(_2049_)
);

BUFX2 BUFX2_insert490 (
    .A(\datapath.idinstr_20_hier0_bF$buf1 ),
    .Y(\datapath.idinstr_20_bF$buf46 )
);

BUFX2 BUFX2_insert491 (
    .A(\datapath.idinstr_20_hier0_bF$buf1 ),
    .Y(\datapath.idinstr_20_bF$buf45 )
);

BUFX2 BUFX2_insert492 (
    .A(\datapath.idinstr_20_hier0_bF$buf0 ),
    .Y(\datapath.idinstr_20_bF$buf44 )
);

BUFX2 BUFX2_insert493 (
    .A(\datapath.idinstr_20_hier0_bF$buf6 ),
    .Y(\datapath.idinstr_20_bF$buf43 )
);

BUFX2 BUFX2_insert494 (
    .A(\datapath.idinstr_20_hier0_bF$buf3 ),
    .Y(\datapath.idinstr_20_bF$buf42 )
);

BUFX2 BUFX2_insert495 (
    .A(\datapath.idinstr_20_hier0_bF$buf3 ),
    .Y(\datapath.idinstr_20_bF$buf41 )
);

BUFX2 BUFX2_insert496 (
    .A(\datapath.idinstr_20_hier0_bF$buf5 ),
    .Y(\datapath.idinstr_20_bF$buf40 )
);

BUFX2 BUFX2_insert497 (
    .A(\datapath.idinstr_20_hier0_bF$buf2 ),
    .Y(\datapath.idinstr_20_bF$buf39 )
);

BUFX2 BUFX2_insert498 (
    .A(\datapath.idinstr_20_hier0_bF$buf2 ),
    .Y(\datapath.idinstr_20_bF$buf38 )
);

FILL SFILL68920x8050 (
);

BUFX2 BUFX2_insert499 (
    .A(\datapath.idinstr_20_hier0_bF$buf1 ),
    .Y(\datapath.idinstr_20_bF$buf37 )
);

FILL SFILL43960x1050 (
);

NAND2X1 _12285_ (
    .A(\datapath.csr.mvect [12]),
    .B(_2500__bF$buf0),
    .Y(_2542_)
);

OAI21X1 _18931_ (
    .A(_6455_),
    .B(_8631__bF$buf6),
    .C(_8649_),
    .Y(_4188_)
);

MUX2X1 _18511_ (
    .A(\datapath.registers.828[1] [29]),
    .B(\datapath.registers.828[0] [29]),
    .S(\datapath.idinstr_20_bF$buf6 ),
    .Y(_8378_)
);

DFFPOSX1 _19716_ (
    .Q(\datapath.registers.828[0] [20]),
    .CLK(CLK_bF$buf40),
    .D(_3648_)
);

AOI21X1 _14851_ (
    .A(_4723__bF$buf0),
    .B(_5167__bF$buf6),
    .C(_5201_),
    .Y(_3717_)
);

NOR2X1 _14431_ (
    .A(_4664_),
    .B(_4669_),
    .Y(_4967_)
);

NOR2X1 _14011_ (
    .A(\datapath.registers.828[22] [0]),
    .B(_4738__bF$buf7),
    .Y(_4739_)
);

FILL SFILL73880x44050 (
);

OAI21X1 _15636_ (
    .A(_5614__bF$buf1),
    .B(_4685__bF$buf2),
    .C(_5621_),
    .Y(_4432_)
);

NOR2X1 _15216_ (
    .A(\datapath.registers.828[6] [31]),
    .B(_5369__bF$buf2),
    .Y(_5401_)
);

NAND2X1 _10771_ (
    .A(_1741_),
    .B(_1740_),
    .Y(_1742_)
);

DFFPOSX1 _10351_ (
    .Q(\datapath.alu.b [0]),
    .CLK(CLK_bF$buf61),
    .D(\datapath.muxbval [0])
);

FILL SFILL58600x22050 (
);

AOI21X1 _11976_ (
    .A(_1890__bF$buf0),
    .B(_1399_),
    .C(_1760_),
    .Y(_1400_)
);

NOR2X1 _11556_ (
    .A(_1209__bF$buf0),
    .B(_948_),
    .Y(_949_)
);

FILL SFILL18440x33050 (
);

XNOR2X1 _11136_ (
    .A(\datapath.alu.b_3_bF$buf6 ),
    .B(\datapath.alu.a [3]),
    .Y(_2104_)
);

FILL SFILL58520x29050 (
);

FILL SFILL63880x42050 (
);

INVX1 _9704_ (
    .A(\datapath.alupc [8]),
    .Y(_577_)
);

AOI21X1 _13702_ (
    .A(\datapath.jumptarget [14]),
    .B(_3427__bF$buf4),
    .C(_3504_),
    .Y(_3505_)
);

AOI21X1 _16594_ (
    .A(\datapath.registers.828[20] [18]),
    .B(\datapath.idinstr_17_bF$buf7 ),
    .C(\datapath.idinstr_15_bF$buf0 ),
    .Y(_6504_)
);

NAND2X1 _16174_ (
    .A(_6090_),
    .B(_6092_),
    .Y(_6093_)
);

OAI21X1 _14907_ (
    .A(_5234_),
    .B(_5212__bF$buf1),
    .C(_5235_),
    .Y(_3674_)
);

MUX2X1 _17799_ (
    .A(\datapath.registers.828[23] [13]),
    .B(\datapath.registers.828[21] [13]),
    .S(\datapath.idinstr_21_bF$buf40 ),
    .Y(_7682_)
);

MUX2X1 _17379_ (
    .A(\datapath.registers.828[27] [4]),
    .B(\datapath.registers.828[26] [4]),
    .S(\datapath.idinstr_20_bF$buf20 ),
    .Y(_7271_)
);

AOI22X1 _12094_ (
    .A(_2041__bF$buf0),
    .B(_1525_),
    .C(_1740_),
    .D(_2154_),
    .Y(_1526_)
);

NAND2X1 _18740_ (
    .A(\datapath.registers.828[28] [20]),
    .B(_8531__bF$buf4),
    .Y(_8552_)
);

AOI21X1 _18320_ (
    .A(_8186_),
    .B(_8191_),
    .C(\datapath.idinstr_23_bF$buf2 ),
    .Y(_8192_)
);

AOI21X1 _10827_ (
    .A(_1797_),
    .B(_1693_),
    .C(_1796_),
    .Y(_1798_)
);

DFFPOSX1 _10407_ (
    .Q(\datapath.alu.a [24]),
    .CLK(CLK_bF$buf8),
    .D(\datapath.muxaval [24])
);

OAI21X1 _13299_ (
    .A(_0__1_bF$buf8),
    .B(_0__0_bF$buf0),
    .C(DMEM_DATA_L[7]),
    .Y(_3226_)
);

DFFPOSX1 _19945_ (
    .Q(\datapath.registers.828[28] [25]),
    .CLK(CLK_bF$buf130),
    .D(_4293_)
);

DFFPOSX1 _19525_ (
    .Q(\datapath.registers.828[11] [21]),
    .CLK(CLK_bF$buf114),
    .D(_3713_)
);

DFFPOSX1 _19105_ (
    .Q(\datapath.registers.828[14] [17]),
    .CLK(CLK_bF$buf124),
    .D(_3804_)
);

NOR2X1 _14660_ (
    .A(\datapath.registers.828[13] [0]),
    .B(_5099__bF$buf2),
    .Y(_5100_)
);

AOI21X1 _14240_ (
    .A(_4697__bF$buf3),
    .B(_4842__bF$buf2),
    .C(_4859_),
    .Y(_3959_)
);

FILL SFILL59000x52050 (
);

NAND2X1 _15865_ (
    .A(_5788_),
    .B(_5790_),
    .Y(_5791_)
);

AOI21X1 _15445_ (
    .A(_4697__bF$buf0),
    .B(_5503__bF$buf0),
    .C(_5520_),
    .Y(_4439_)
);

NAND2X1 _15025_ (
    .A(\datapath.registers.828[8] [2]),
    .B(_5300__bF$buf5),
    .Y(_5303_)
);

FILL SFILL3560x38050 (
);

DFFPOSX1 _10580_ (
    .Q(\datapath.idpc [2]),
    .CLK(CLK_bF$buf110),
    .D(\datapath._03_ [2])
);

DFFPOSX1 _10160_ (
    .Q(\datapath.memexecptions [2]),
    .CLK(CLK_bF$buf0),
    .D(\datapath.aluexecptions [2])
);

FILL SFILL28120x54050 (
);

NAND3X1 _11785_ (
    .A(_1193_),
    .B(_1709_),
    .C(_1194_),
    .Y(_1195_)
);

NOR2X1 _11365_ (
    .A(_2307_),
    .B(_2327_),
    .Y(_2328_)
);

DFFPOSX1 _9933_ (
    .Q(\datapath.regcsrwb [19]),
    .CLK(CLK_bF$buf100),
    .D(\datapath.csr.csr_wdata [19])
);

NAND3X1 _9513_ (
    .A(_426_),
    .B(_427_),
    .C(_425_),
    .Y(\datapath.muxaval [2])
);

INVX8 _13931_ (
    .A(\datapath.rd [6]),
    .Y(_4685_)
);

AOI21X1 _13511_ (
    .A(gnd),
    .B(_3366_),
    .C(_3367_),
    .Y(\datapath.programcounter._1_ [4])
);

FILL SFILL73880x39050 (
);

FILL SFILL53640x50 (
);

FILL SFILL28040x16050 (
);

BUFX2 BUFX2_insert1050 (
    .A(_5681_),
    .Y(_5681__bF$buf8)
);

BUFX2 BUFX2_insert1051 (
    .A(_5681_),
    .Y(_5681__bF$buf7)
);

BUFX2 BUFX2_insert1052 (
    .A(_5681_),
    .Y(_5681__bF$buf6)
);

BUFX2 BUFX2_insert1053 (
    .A(_5681_),
    .Y(_5681__bF$buf5)
);

BUFX2 BUFX2_insert1054 (
    .A(_5681_),
    .Y(_5681__bF$buf4)
);

BUFX2 BUFX2_insert1055 (
    .A(_5681_),
    .Y(_5681__bF$buf3)
);

BUFX2 BUFX2_insert1056 (
    .A(_5681_),
    .Y(_5681__bF$buf2)
);

BUFX2 BUFX2_insert1057 (
    .A(_5681_),
    .Y(_5681__bF$buf1)
);

BUFX2 BUFX2_insert1058 (
    .A(_5681_),
    .Y(_5681__bF$buf0)
);

BUFX2 BUFX2_insert1059 (
    .A(_5546_),
    .Y(_5546__bF$buf4)
);

NOR2X1 _14716_ (
    .A(\datapath.registers.828[13] [28]),
    .B(_5099__bF$buf1),
    .Y(_5128_)
);

BUFX2 BUFX2_insert870 (
    .A(\datapath.alu.b [0]),
    .Y(\datapath.alu.b_0_bF$buf8 )
);

BUFX2 BUFX2_insert871 (
    .A(\datapath.alu.b [0]),
    .Y(\datapath.alu.b_0_bF$buf7 )
);

BUFX2 BUFX2_insert872 (
    .A(\datapath.alu.b [0]),
    .Y(\datapath.alu.b_0_bF$buf6 )
);

BUFX2 BUFX2_insert873 (
    .A(\datapath.alu.b [0]),
    .Y(\datapath.alu.b_0_bF$buf5 )
);

BUFX2 BUFX2_insert874 (
    .A(\datapath.alu.b [0]),
    .Y(\datapath.alu.b_0_bF$buf4 )
);

BUFX2 BUFX2_insert875 (
    .A(\datapath.alu.b [0]),
    .Y(\datapath.alu.b_0_bF$buf3 )
);

NAND2X1 _17188_ (
    .A(_5684__bF$buf5),
    .B(_7084_),
    .Y(_7085_)
);

BUFX2 BUFX2_insert876 (
    .A(\datapath.alu.b [0]),
    .Y(\datapath.alu.b_0_bF$buf2 )
);

BUFX2 BUFX2_insert877 (
    .A(\datapath.alu.b [0]),
    .Y(\datapath.alu.b_0_bF$buf1 )
);

BUFX2 BUFX2_insert878 (
    .A(\datapath.alu.b [0]),
    .Y(\datapath.alu.b_0_bF$buf0 )
);

BUFX2 BUFX2_insert879 (
    .A(_8565_),
    .Y(_8565__bF$buf7)
);

FILL SFILL18760x2050 (
);

FILL SFILL63960x30050 (
);

FILL SFILL18440x28050 (
);

INVX8 _10636_ (
    .A(\datapath.alu.b_4_bF$buf0 ),
    .Y(_1209_)
);

DFFPOSX1 _10216_ (
    .Q(\datapath.mempc_4 [23]),
    .CLK(CLK_bF$buf27),
    .D(\datapath.alupc_4 [23])
);

FILL SFILL63880x37050 (
);

DFFPOSX1 _19754_ (
    .Q(\datapath.registers.828[16] [26]),
    .CLK(CLK_bF$buf142),
    .D(_3878_)
);

DFFPOSX1 _19334_ (
    .Q(\datapath.registers.828[4] [22]),
    .CLK(CLK_bF$buf99),
    .D(_4482_)
);

OAI21X1 _15674_ (
    .A(_5614__bF$buf0),
    .B(_4723__bF$buf3),
    .C(_5640_),
    .Y(_4421_)
);

AOI21X1 _15254_ (
    .A(_4707__bF$buf2),
    .B(_5402__bF$buf6),
    .C(_5420_),
    .Y(_4508_)
);

FILL SFILL48600x15050 (
);

MUX2X1 _16879_ (
    .A(\datapath.registers.828[27] [25]),
    .B(\datapath.registers.828[26] [25]),
    .S(\datapath.idinstr_15_bF$buf4 ),
    .Y(_6782_)
);

NAND3X1 _16459_ (
    .A(\datapath.idinstr_16_bF$buf24 ),
    .B(_6371_),
    .C(_6369_),
    .Y(_6372_)
);

MUX2X1 _16039_ (
    .A(\datapath.registers.828[7] [6]),
    .B(\datapath.registers.828[6] [6]),
    .S(\datapath.idinstr_15_bF$buf10 ),
    .Y(_5961_)
);

XNOR2X1 _11594_ (
    .A(\datapath.alu.a [14]),
    .B(\datapath.alu.b [14]),
    .Y(_990_)
);

NOR2X1 _11174_ (
    .A(\datapath.alu.b_2_bF$buf1 ),
    .B(_1868_),
    .Y(_2141_)
);

MUX2X1 _17820_ (
    .A(\datapath.registers.828[3] [13]),
    .B(\datapath.registers.828[2] [13]),
    .S(\datapath.idinstr_20_bF$buf14 ),
    .Y(_7703_)
);

MUX2X1 _17400_ (
    .A(\datapath.registers.828[11] [4]),
    .B(\datapath.registers.828[10] [4]),
    .S(\datapath.idinstr_20_bF$buf15 ),
    .Y(_7292_)
);

FILL SFILL38200x44050 (
);

NAND2X1 _9742_ (
    .A(\datapath.alupc [13]),
    .B(\datapath.regimmalu [13]),
    .Y(_610_)
);

NAND2X1 _9322_ (
    .A(\datapath.regloadwb [21]),
    .B(_213__bF$buf2),
    .Y(_283_)
);

AND2X2 _12799_ (
    .A(_2919_),
    .B(_2640_),
    .Y(_2920_)
);

INVX1 _12379_ (
    .A(\datapath.csr.csr_wdata [5]),
    .Y(_2611_)
);

FILL SFILL3560x9050 (
);

FILL SFILL38600x13050 (
);

AOI21X1 _18605_ (
    .A(\datapath.idinstr_20_bF$buf13 ),
    .B(_8469_),
    .C(_7092__bF$buf9),
    .Y(_8470_)
);

FILL SFILL59080x49050 (
);

AOI22X1 _13740_ (
    .A(_3423__bF$buf3),
    .B(\datapath.alu.c [18]),
    .C(\datapath.csr.csr_pcaddr [18]),
    .D(_3429__bF$buf3),
    .Y(_3535_)
);

NOR2X1 _13320_ (
    .A(_0__0_bF$buf1),
    .B(_3237_),
    .Y(_3238_)
);

FILL SFILL3240x3050 (
);

FILL SFILL43880x33050 (
);

FILL SFILL28600x56050 (
);

FILL SFILL3240x12050 (
);

NOR2X1 _14945_ (
    .A(_4669_),
    .B(_5256_),
    .Y(_5257_)
);

OAI21X1 _14525_ (
    .A(_5004__bF$buf0),
    .B(_4840__bF$buf4),
    .C(\datapath.registers.828[15] [12]),
    .Y(_5017_)
);

NOR2X1 _14105_ (
    .A(\datapath.registers.828[21] [14]),
    .B(_4772__bF$buf5),
    .Y(_4787_)
);

FILL SFILL3160x19050 (
);

MUX2X1 _10865_ (
    .A(_1829_),
    .B(_1835_),
    .S(\datapath.alu.b_2_bF$buf0 ),
    .Y(_1836_)
);

DFFPOSX1 _10445_ (
    .Q(\datapath.aluinstr [27]),
    .CLK(CLK_bF$buf46),
    .D(\datapath.idinstr [27])
);

DFFPOSX1 _10025_ (
    .Q(\datapath.wbinstr [14]),
    .CLK(CLK_bF$buf94),
    .D(\datapath.meminstr [14])
);

DFFPOSX1 _19983_ (
    .Q(\datapath.registers.828[6] [31]),
    .CLK(CLK_bF$buf85),
    .D(_4556_)
);

DFFPOSX1 _19563_ (
    .Q(\datapath.registers.828[12] [27]),
    .CLK(CLK_bF$buf138),
    .D(_3751_)
);

DFFPOSX1 _19143_ (
    .Q(\datapath.registers.828[17] [23]),
    .CLK(CLK_bF$buf149),
    .D(_3907_)
);

FILL SFILL12920x33050 (
);

FILL SFILL73960x27050 (
);

FILL SFILL33400x60050 (
);

NOR2X1 _15483_ (
    .A(\datapath.registers.828[3] [29]),
    .B(_5503__bF$buf4),
    .Y(_5542_)
);

NAND2X1 _15063_ (
    .A(\datapath.registers.828[8] [21]),
    .B(_5300__bF$buf1),
    .Y(_5322_)
);

FILL FILL83080x53050 (
);

NAND2X1 _16688_ (
    .A(\datapath.idinstr_17_bF$buf10 ),
    .B(_6595_),
    .Y(_6596_)
);

AOI21X1 _16268_ (
    .A(\datapath.idinstr_15_bF$buf37 ),
    .B(_6184_),
    .C(_5684__bF$buf0),
    .Y(_6185_)
);

FILL SFILL18520x16050 (
);

FILL SFILL63960x25050 (
);

FILL SFILL39000x43050 (
);

DFFPOSX1 _9971_ (
    .Q(\datapath.regloadwb [25]),
    .CLK(CLK_bF$buf147),
    .D(\datapath.memdataload [25])
);

NAND2X1 _9551_ (
    .A(\datapath.idpc [12]),
    .B(_416__bF$buf0),
    .Y(_456_)
);

NAND2X1 _9131_ (
    .A(gnd),
    .B(\datapath.idinstr [10]),
    .Y(_139_)
);

AOI21X1 _12188_ (
    .A(_1605_),
    .B(_1603_),
    .C(_1625_),
    .Y(_1627_)
);

AOI21X1 _18834_ (
    .A(_4675__bF$buf2),
    .B(_8598__bF$buf3),
    .C(_8600_),
    .Y(_4223_)
);

MUX2X1 _18414_ (
    .A(\datapath.registers.828[31] [27]),
    .B(\datapath.registers.828[30] [27]),
    .S(\datapath.idinstr_20_bF$buf32 ),
    .Y(_8283_)
);

FILL SFILL84360x59050 (
);

DFFPOSX1 _19619_ (
    .Q(\datapath.registers.828[9] [19]),
    .CLK(CLK_bF$buf16),
    .D(_4638_)
);

OAI21X1 _14754_ (
    .A(_4701__bF$buf0),
    .B(_5132__bF$buf5),
    .C(_5147_),
    .Y(_3737_)
);

AOI21X1 _14334_ (
    .A(_4717__bF$buf4),
    .B(_4886__bF$buf3),
    .C(_4911_),
    .Y(_3938_)
);

OAI21X1 _15959_ (
    .A(\datapath.idinstr_17_bF$buf13 ),
    .B(_5881_),
    .C(_5882_),
    .Y(_5883_)
);

OAI21X1 _15539_ (
    .A(_5038__bF$buf3),
    .B(_4668__bF$buf6),
    .C(\datapath.registers.828[2] [24]),
    .Y(_5571_)
);

OAI21X1 _15119_ (
    .A(_5336__bF$buf4),
    .B(_4840__bF$buf6),
    .C(\datapath.registers.828[7] [15]),
    .Y(_5352_)
);

XNOR2X1 _10674_ (
    .A(\datapath.alu.a [11]),
    .B(\datapath.alu.b [11]),
    .Y(_1615_)
);

DFFPOSX1 _10254_ (
    .Q(\datapath.csr.csr_mepc [31]),
    .CLK(CLK_bF$buf115),
    .D(\datapath.alupc [31])
);

MUX2X1 _16900_ (
    .A(\datapath.registers.828[11] [25]),
    .B(\datapath.registers.828[10] [25]),
    .S(\datapath.idinstr_15_bF$buf26 ),
    .Y(_6803_)
);

DFFPOSX1 _19792_ (
    .Q(\datapath.registers.828[13] [0]),
    .CLK(CLK_bF$buf75),
    .D(_3764_)
);

DFFPOSX1 _19372_ (
    .Q(\datapath.registers.828[7] [28]),
    .CLK(CLK_bF$buf116),
    .D(_4584_)
);

NOR3X1 _8822_ (
    .A(_32_),
    .B(\datapath.aluinstr [3]),
    .C(_20_),
    .Y(_33_)
);

AND2X2 _11879_ (
    .A(_1296_),
    .B(_1271_),
    .Y(_1297_)
);

INVX1 _11459_ (
    .A(_2416_),
    .Y(_2420_)
);

OAI21X1 _11039_ (
    .A(_2007_),
    .B(_2006_),
    .C(\datapath.alu.b_2_bF$buf2 ),
    .Y(_2008_)
);

FILL SFILL43960x21050 (
);

OR2X2 _12820_ (
    .A(_2937_),
    .B(\datapath.csr.mvect [23]),
    .Y(_2938_)
);

INVX1 _12400_ (
    .A(\datapath.csr.csr_wdata [12]),
    .Y(_2625_)
);

NAND2X1 _15292_ (
    .A(\datapath.registers.828[24] [3]),
    .B(_5437__bF$buf1),
    .Y(_5441_)
);

NAND2X1 _9607_ (
    .A(\datapath.idpc [26]),
    .B(_416__bF$buf3),
    .Y(_498_)
);

NAND2X1 _13605_ (
    .A(gnd),
    .B(_3429__bF$buf3),
    .Y(_3433_)
);

AND2X2 _16497_ (
    .A(\datapath.registers.828[15] [16]),
    .B(\datapath.idinstr_15_bF$buf15 ),
    .Y(_6409_)
);

OAI21X1 _16077_ (
    .A(_5052_),
    .B(\datapath.idinstr_15_bF$buf30 ),
    .C(\datapath.idinstr_16_bF$buf12 ),
    .Y(_5998_)
);

AOI21X1 _9780_ (
    .A(_643_),
    .B(_628_),
    .C(_641_),
    .Y(_644_)
);

AOI22X1 _9360_ (
    .A(_219__bF$buf1),
    .B(\datapath.wbpc_4 [31]),
    .C(\datapath.regcsrwb [31]),
    .D(_216__bF$buf3),
    .Y(_311_)
);

NOR2X1 _18643_ (
    .A(\datapath.registers.828[29] [4]),
    .B(_8498__bF$buf0),
    .Y(_8503_)
);

MUX2X1 _18223_ (
    .A(_8096_),
    .B(_8095_),
    .S(\datapath.idinstr_21_bF$buf25 ),
    .Y(_8097_)
);

FILL SFILL18600x49050 (
);

DFFPOSX1 _19848_ (
    .Q(\datapath.registers.828[3] [24]),
    .CLK(CLK_bF$buf47),
    .D(_4452_)
);

DFFPOSX1 _19428_ (
    .Q(\datapath.registers.828[24] [20]),
    .CLK(CLK_bF$buf125),
    .D(_4160_)
);

DFFPOSX1 _19008_ (
    .Q(\datapath.registers.828[18] [16]),
    .CLK(CLK_bF$buf78),
    .D(_3931_)
);

NAND2X1 _14983_ (
    .A(\datapath.rd [15]),
    .B(_5257__bF$buf5),
    .Y(_5280_)
);

OAI21X1 _14563_ (
    .A(_5004__bF$buf1),
    .B(_4840__bF$buf1),
    .C(\datapath.registers.828[15] [31]),
    .Y(_5036_)
);

NOR2X1 _14143_ (
    .A(\datapath.registers.828[20] [0]),
    .B(_4806__bF$buf1),
    .Y(_4807_)
);

FILL SFILL23480x55050 (
);

AOI21X1 _15768_ (
    .A(_5691_),
    .B(_5695_),
    .C(_5685__bF$buf4),
    .Y(_5696_)
);

NAND2X1 _15348_ (
    .A(\datapath.registers.828[24] [31]),
    .B(_5437__bF$buf1),
    .Y(_5469_)
);

DFFPOSX1 _10483_ (
    .Q(\datapath.alupc [1]),
    .CLK(CLK_bF$buf39),
    .D(\datapath.idpc [1])
);

DFFPOSX1 _10063_ (
    .Q(\datapath.csr.csr_wdata [5]),
    .CLK(CLK_bF$buf35),
    .D(\datapath.regcsralu [5])
);

DFFPOSX1 _19181_ (
    .Q(\datapath.registers.828[15] [29]),
    .CLK(CLK_bF$buf57),
    .D(_3849_)
);

FILL SFILL23480x10050 (
);

FILL SFILL8440x52050 (
);

AOI22X1 _11688_ (
    .A(_1090_),
    .B(_1719_),
    .C(\datapath.alu.a [16]),
    .D(_1088_),
    .Y(_1092_)
);

AOI22X1 _11268_ (
    .A(_2232_),
    .B(_1888_),
    .C(_2041__bF$buf2),
    .D(_2230_),
    .Y(_2233_)
);

FILL SFILL23800x22050 (
);

AOI21X1 _17914_ (
    .A(_7790_),
    .B(_7794_),
    .C(\datapath.idinstr_23_bF$buf7 ),
    .Y(_7795_)
);

FILL SFILL8360x59050 (
);

NOR2X1 _9836_ (
    .A(_692_),
    .B(_693_),
    .Y(_694_)
);

NAND2X1 _9416_ (
    .A(\datapath.csr.csr_data [11]),
    .B(_317__bF$buf1),
    .Y(_354_)
);

FILL SFILL8760x28050 (
);

NAND3X1 _13834_ (
    .A(_3607_),
    .B(_3608_),
    .C(_3606_),
    .Y(\datapath.programcounter.pc_mux [28])
);

NAND2X1 _13414_ (
    .A(_0__1_bF$buf2),
    .B(DMEM_DATA_L[27]),
    .Y(_3305_)
);

FILL SFILL8360x14050 (
);

FILL SFILL13400x51050 (
);

FILL SFILL29000x36050 (
);

FILL SFILL13800x20050 (
);

OAI21X1 _14619_ (
    .A(_5071_),
    .B(_5039__bF$buf1),
    .C(_5072_),
    .Y(_3805_)
);

AOI21X1 _18872_ (
    .A(_4713__bF$buf3),
    .B(_8598__bF$buf5),
    .C(_8619_),
    .Y(_4224_)
);

AOI21X1 _18452_ (
    .A(_8298_),
    .B(_8320_),
    .C(_7095__bF$buf4),
    .Y(\datapath.registers.regb_data [27])
);

OAI21X1 _18032_ (
    .A(_5071_),
    .B(\datapath.idinstr_20_bF$buf50 ),
    .C(\datapath.idinstr_21_bF$buf9 ),
    .Y(_7910_)
);

MUX2X1 _10959_ (
    .A(\datapath.alu.a [26]),
    .B(\datapath.alu.a [25]),
    .S(\datapath.alu.b_0_bF$buf4 ),
    .Y(_1929_)
);

DFFPOSX1 _10539_ (
    .Q(\datapath.idinstr [25]),
    .CLK(CLK_bF$buf6),
    .D(\datapath._05_ [25])
);

DFFPOSX1 _10119_ (
    .Q(\datapath.memoryinterface.data_store [29]),
    .CLK(CLK_bF$buf30),
    .D(\datapath.regrs2alu [29])
);

AOI21X1 _11900_ (
    .A(\datapath.alu.b [22]),
    .B(_1317_),
    .C(_1318_),
    .Y(_1319_)
);

DFFPOSX1 _19657_ (
    .Q(\datapath.registers.828[26] [25]),
    .CLK(CLK_bF$buf41),
    .D(_4229_)
);

DFFPOSX1 _19237_ (
    .Q(\datapath.registers.828[20] [21]),
    .CLK(CLK_bF$buf76),
    .D(_4033_)
);

NAND2X1 _14792_ (
    .A(\datapath.rd [0]),
    .B(_5167__bF$buf6),
    .Y(_5168_)
);

INVX1 _14372_ (
    .A(\datapath.registers.828[17] [7]),
    .Y(_4933_)
);

MUX2X1 _15997_ (
    .A(\datapath.registers.828[22] [5]),
    .B(\datapath.registers.828[20] [5]),
    .S(\datapath.idinstr_16_bF$buf3 ),
    .Y(_5920_)
);

OAI21X1 _15577_ (
    .A(_5579__bF$buf1),
    .B(_4693__bF$buf0),
    .C(_5590_),
    .Y(_3989_)
);

AOI21X1 _15157_ (
    .A(_4675__bF$buf4),
    .B(_5369__bF$buf3),
    .C(_5371_),
    .Y(_4543_)
);

DFFPOSX1 _10292_ (
    .Q(\datapath.regcsralu [5]),
    .CLK(CLK_bF$buf35),
    .D(\datapath.csr.csr_data [5])
);

NAND3X1 _8860_ (
    .A(\datapath.idinstr [1]),
    .B(\datapath.idinstr [0]),
    .C(\datapath.idinstr [2]),
    .Y(_66_)
);

AOI21X1 _11497_ (
    .A(\datapath.alu.b_4_bF$buf1 ),
    .B(_2435_),
    .C(_2456_),
    .Y(_2457_)
);

NAND2X1 _11077_ (
    .A(\datapath.alu.b_2_bF$buf7 ),
    .B(_1857_),
    .Y(_2046_)
);

FILL SFILL68680x13050 (
);

FILL SFILL33080x38050 (
);

OAI21X1 _17723_ (
    .A(_4939_),
    .B(\datapath.idinstr_22_bF$buf17 ),
    .C(_7607_),
    .Y(_7608_)
);

MUX2X1 _17303_ (
    .A(\datapath.registers.828[23] [2]),
    .B(\datapath.registers.828[21] [2]),
    .S(\datapath.idinstr_21_bF$buf32 ),
    .Y(_7197_)
);

OR2X2 _9645_ (
    .A(\datapath.alupc [1]),
    .B(\datapath.regimmalu [1]),
    .Y(_526_)
);

AOI21X1 _9225_ (
    .A(\datapath.meminstr [5]),
    .B(_207_),
    .C(_209_),
    .Y(_210_)
);

NOR2X1 _18928_ (
    .A(\datapath.registers.828[25] [16]),
    .B(_8631__bF$buf1),
    .Y(_8648_)
);

MUX2X1 _18508_ (
    .A(\datapath.registers.828[7] [29]),
    .B(\datapath.registers.828[6] [29]),
    .S(\datapath.idinstr_20_bF$buf17 ),
    .Y(_8375_)
);

AOI22X1 _13643_ (
    .A(_3423__bF$buf1),
    .B(\datapath.alu.c [7]),
    .C(\datapath.csr.csr_pcaddr [7]),
    .D(_3429__bF$buf1),
    .Y(_3460_)
);

NAND2X1 _13223_ (
    .A(_3033__bF$buf3),
    .B(_3165_),
    .Y(_3166_)
);

FILL FILL83160x36050 (
);

NOR2X1 _14848_ (
    .A(\datapath.registers.828[11] [24]),
    .B(_5167__bF$buf3),
    .Y(_5200_)
);

OAI21X1 _14428_ (
    .A(_4964_),
    .B(_4924__bF$buf7),
    .C(_4965_),
    .Y(_3915_)
);

AOI21X1 _14008_ (
    .A(_4735__bF$buf3),
    .B(_4673__bF$buf0),
    .C(_4736_),
    .Y(_4140_)
);

FILL SFILL8520x40050 (
);

FILL SFILL23400x48050 (
);

FILL SFILL79000x5050 (
);

FILL SFILL53720x1050 (
);

NOR2X1 _18681_ (
    .A(\datapath.registers.828[29] [23]),
    .B(_8498__bF$buf4),
    .Y(_8522_)
);

MUX2X1 _18261_ (
    .A(\datapath.registers.828[26] [23]),
    .B(\datapath.registers.828[24] [23]),
    .S(\datapath.idinstr_21_bF$buf35 ),
    .Y(_8134_)
);

FILL SFILL53640x6050 (
);

FILL SFILL48680x54050 (
);

INVX1 _10768_ (
    .A(\datapath.alu.b [28]),
    .Y(_1739_)
);

DFFPOSX1 _10348_ (
    .Q(\datapath.regrs2alu [29]),
    .CLK(CLK_bF$buf83),
    .D(\datapath.registers.regb_data [29])
);

DFFPOSX1 _19886_ (
    .Q(\datapath.registers.828[1] [30]),
    .CLK(CLK_bF$buf5),
    .D(_4011_)
);

DFFPOSX1 _19466_ (
    .Q(\datapath.registers.828[23] [26]),
    .CLK(CLK_bF$buf142),
    .D(_4134_)
);

DFFPOSX1 _19046_ (
    .Q(\datapath.registers.828[31] [22]),
    .CLK(CLK_bF$buf10),
    .D(_4418_)
);

NOR2X1 _14181_ (
    .A(\datapath.registers.828[20] [19]),
    .B(_4806__bF$buf7),
    .Y(_4826_)
);

OAI21X1 _8916_ (
    .A(_771_),
    .B(gnd),
    .C(_772_),
    .Y(\datapath._03_ [2])
);

DFFPOSX1 _12914_ (
    .Q(\datapath.csr.mepc [8]),
    .CLK(CLK_bF$buf15),
    .D(\datapath.csr._26_ [8])
);

FILL SFILL13400x46050 (
);

OAI21X1 _15386_ (
    .A(_4707__bF$buf2),
    .B(_5470__bF$buf2),
    .C(_5488_),
    .Y(_4476_)
);

FILL SFILL38680x52050 (
);

FILL SFILL13000x32050 (
);

FILL SFILL78760x48050 (
);

BUFX2 BUFX2_insert110 (
    .A(\datapath.idinstr_21_hier0_bF$buf2 ),
    .Y(\datapath.idinstr_21_bF$buf14 )
);

BUFX2 BUFX2_insert111 (
    .A(\datapath.idinstr_21_hier0_bF$buf1 ),
    .Y(\datapath.idinstr_21_bF$buf13 )
);

BUFX2 BUFX2_insert112 (
    .A(\datapath.idinstr_21_hier0_bF$buf3 ),
    .Y(\datapath.idinstr_21_bF$buf12 )
);

BUFX2 BUFX2_insert113 (
    .A(\datapath.idinstr_21_hier0_bF$buf5 ),
    .Y(\datapath.idinstr_21_bF$buf11 )
);

BUFX2 BUFX2_insert114 (
    .A(\datapath.idinstr_21_hier0_bF$buf5 ),
    .Y(\datapath.idinstr_21_bF$buf10 )
);

OAI21X1 _17952_ (
    .A(_7830_),
    .B(\datapath.idinstr_22_bF$buf31 ),
    .C(_7831_),
    .Y(_7832_)
);

BUFX2 BUFX2_insert115 (
    .A(\datapath.idinstr_21_hier0_bF$buf4 ),
    .Y(\datapath.idinstr_21_bF$buf9 )
);

OAI21X1 _17532_ (
    .A(_7409_),
    .B(_7420_),
    .C(\datapath.idinstr_24_bF$buf0 ),
    .Y(_7421_)
);

BUFX2 BUFX2_insert116 (
    .A(\datapath.idinstr_21_hier0_bF$buf1 ),
    .Y(\datapath.idinstr_21_bF$buf8 )
);

AOI21X1 _17112_ (
    .A(_7009_),
    .B(_7002_),
    .C(_5685__bF$buf0),
    .Y(_7010_)
);

BUFX2 BUFX2_insert117 (
    .A(\datapath.idinstr_21_hier0_bF$buf2 ),
    .Y(\datapath.idinstr_21_bF$buf7 )
);

BUFX2 BUFX2_insert118 (
    .A(\datapath.idinstr_21_hier0_bF$buf5 ),
    .Y(\datapath.idinstr_21_bF$buf6 )
);

BUFX2 BUFX2_insert119 (
    .A(\datapath.idinstr_21_hier0_bF$buf4 ),
    .Y(\datapath.idinstr_21_bF$buf5 )
);

AOI21X1 _9874_ (
    .A(_726_),
    .B(_722_),
    .C(_724_),
    .Y(_727_)
);

NAND2X1 _9454_ (
    .A(\datapath.registers.regb_data [21]),
    .B(_318__bF$buf1),
    .Y(_382_)
);

INVX1 _9034_ (
    .A(\datapath.nextpc [10]),
    .Y(_851_)
);

FILL SFILL23640x5050 (
);

FILL SFILL63880x3050 (
);

OAI21X1 _18737_ (
    .A(_4709__bF$buf4),
    .B(_8531__bF$buf6),
    .C(_8550_),
    .Y(_4285_)
);

AOI21X1 _18317_ (
    .A(\datapath.registers.828[20] [24]),
    .B(\datapath.idinstr_22_bF$buf29 ),
    .C(\datapath.idinstr_20_bF$buf54 ),
    .Y(_8189_)
);

DFFPOSX1 _13872_ (
    .Q(\datapath.programcounter.pc [4]),
    .CLK(CLK_bF$buf107),
    .D(\datapath.programcounter._1_ [4])
);

NAND2X1 _13452_ (
    .A(DMEM_DATA_L[22]),
    .B(_3031__bF$buf0),
    .Y(_3332_)
);

NAND3X1 _13032_ (
    .A(\controlunit.imm_sel [2]),
    .B(\datapath.idinstr_18_bF$buf1 ),
    .C(_2980_),
    .Y(_2987_)
);

FILL SFILL28680x50050 (
);

OAI21X1 _14657_ (
    .A(_5096_),
    .B(_5039__bF$buf0),
    .C(_5097_),
    .Y(_3820_)
);

NAND2X1 _14237_ (
    .A(\datapath.rd [11]),
    .B(_4842__bF$buf3),
    .Y(_4858_)
);

MUX2X1 _18490_ (
    .A(\datapath.registers.828[3] [28]),
    .B(\datapath.registers.828[2] [28]),
    .S(\datapath.idinstr_20_bF$buf10 ),
    .Y(_8358_)
);

INVX1 _18070_ (
    .A(\datapath.registers.828[27] [19]),
    .Y(_7947_)
);

NAND2X1 _10997_ (
    .A(_994__bF$buf2),
    .B(_1966_),
    .Y(_1967_)
);

DFFPOSX1 _10577_ (
    .Q(\datapath.idpc_4 [31]),
    .CLK(CLK_bF$buf9),
    .D(\datapath._04_ [31])
);

DFFPOSX1 _10157_ (
    .Q(\datapath.regisbranch ),
    .CLK(CLK_bF$buf39),
    .D(\datapath._12_ )
);

AOI21X1 _16803_ (
    .A(_6703_),
    .B(_6707_),
    .C(\datapath.idinstr_18_bF$buf6 ),
    .Y(_6708_)
);

FILL SFILL58760x44050 (
);

DFFPOSX1 _19695_ (
    .Q(\datapath.registers.828[27] [31]),
    .CLK(CLK_bF$buf70),
    .D(_4268_)
);

DFFPOSX1 _19275_ (
    .Q(\datapath.registers.828[22] [27]),
    .CLK(CLK_bF$buf4),
    .D(_4103_)
);

BUFX2 _8725_ (
    .A(_1_[29]),
    .Y(DMEM_DATA_S[29])
);

FILL SFILL58920x4050 (
);

FILL SFILL58840x9050 (
);

OAI22X1 _12723_ (
    .A(_2683_),
    .B(_2585__bF$buf3),
    .C(_2857_),
    .D(_2855_),
    .Y(\datapath.csr.csr_pcaddr [6])
);

INVX1 _12303_ (
    .A(\datapath.csr.mcause [18]),
    .Y(_2554_)
);

AOI21X1 _15195_ (
    .A(_4713__bF$buf1),
    .B(_5369__bF$buf5),
    .C(_5390_),
    .Y(_4544_)
);

FILL SFILL33480x1050 (
);

INVX8 _13928_ (
    .A(\datapath.rd [5]),
    .Y(_4683_)
);

AOI21X1 _13508_ (
    .A(gnd),
    .B(_3364_),
    .C(_3365_),
    .Y(\datapath.programcounter._1_ [3])
);

FILL SFILL8520x35050 (
);

FILL SFILL84120x16050 (
);

MUX2X1 _17761_ (
    .A(\datapath.registers.828[9] [12]),
    .B(\datapath.registers.828[8] [12]),
    .S(\datapath.idinstr_20_bF$buf37 ),
    .Y(_7645_)
);

AOI21X1 _17341_ (
    .A(_7233_),
    .B(_7227_),
    .C(_7093__bF$buf4),
    .Y(_7234_)
);

XNOR2X1 _9683_ (
    .A(\datapath.alupc [6]),
    .B(\datapath.regimmalu [6]),
    .Y(_559_)
);

NAND3X1 _9263_ (
    .A(_237_),
    .B(_238_),
    .C(_236_),
    .Y(\datapath.rd [6])
);

BUFX2 _18966_ (
    .A(\datapath.registers.828[0] [6]),
    .Y(_3664_)
);

NAND2X1 _18546_ (
    .A(_7092__bF$buf4),
    .B(_8411_),
    .Y(_8412_)
);

INVX1 _18126_ (
    .A(\datapath.registers.828[1] [20]),
    .Y(_8002_)
);

NAND2X1 _13681_ (
    .A(\datapath.jumptarget [12]),
    .B(_3427__bF$buf4),
    .Y(_3488_)
);

NAND3X1 _13261_ (
    .A(_3198_),
    .B(_3197_),
    .C(_3196_),
    .Y(_1_[28])
);

FILL SFILL78840x36050 (
);

NOR2X1 _14886_ (
    .A(\datapath.registers.828[10] [7]),
    .B(_5212__bF$buf6),
    .Y(_5223_)
);

OAI21X1 _14466_ (
    .A(_4705__bF$buf2),
    .B(_4968__bF$buf7),
    .C(_4985_),
    .Y(_3867_)
);

AOI21X1 _14046_ (
    .A(_4707__bF$buf3),
    .B(_4738__bF$buf2),
    .C(_4756_),
    .Y(_4092_)
);

FILL SFILL38680x47050 (
);

FILL SFILL28520x2050 (
);

DFFPOSX1 _10386_ (
    .Q(\datapath.alu.a [3]),
    .CLK(CLK_bF$buf139),
    .D(\datapath.muxaval [3])
);

FILL SFILL8280x8050 (
);

NAND2X1 _16612_ (
    .A(_5684__bF$buf8),
    .B(_6520_),
    .Y(_6521_)
);

DFFPOSX1 _19084_ (
    .Q(\datapath.registers.828[10] [28]),
    .CLK(CLK_bF$buf94),
    .D(_3688_)
);

NAND2X1 _8954_ (
    .A(gnd),
    .B(\datapath.idpc [15]),
    .Y(_798_)
);

MUX2X1 _17817_ (
    .A(_7699_),
    .B(_7698_),
    .S(\datapath.idinstr_21_bF$buf20 ),
    .Y(_7700_)
);

DFFPOSX1 _12952_ (
    .Q(\datapath.csr.mvect [13]),
    .CLK(CLK_bF$buf83),
    .D(\datapath.csr._13_ [13])
);

OAI21X1 _12532_ (
    .A(_2719_),
    .B(\controlunit.csrfile_trap_wen_bF$buf5 ),
    .C(_2720_),
    .Y(\datapath.csr._26_ [15])
);

NOR2X1 _12112_ (
    .A(_1429_),
    .B(_965_),
    .Y(_1545_)
);

OAI21X1 _9739_ (
    .A(_603_),
    .B(_605_),
    .C(_607_),
    .Y(_608_)
);

NAND3X1 _9319_ (
    .A(_279_),
    .B(_280_),
    .C(_278_),
    .Y(\datapath.rd [20])
);

FILL SFILL54120x55050 (
);

AND2X2 _13737_ (
    .A(_3532_),
    .B(_3531_),
    .Y(\datapath.nextpc [18])
);

INVX1 _13317_ (
    .A(DMEM_DATA_L[15]),
    .Y(_3236_)
);

NAND2X1 _17990_ (
    .A(\datapath.registers.828[12] [17]),
    .B(_7089__bF$buf9),
    .Y(_7869_)
);

AOI21X1 _17570_ (
    .A(\datapath.idinstr_20_bF$buf13 ),
    .B(_7457_),
    .C(\datapath.idinstr_22_bF$buf20 ),
    .Y(_7458_)
);

MUX2X1 _17150_ (
    .A(\datapath.registers.828[27] [31]),
    .B(\datapath.registers.828[26] [31]),
    .S(\datapath.idinstr_15_bF$buf25 ),
    .Y(_7047_)
);

FILL SFILL58840x32050 (
);

NAND2X1 _9492_ (
    .A(\datapath.csr.csr_data [30]),
    .B(_317__bF$buf0),
    .Y(_411_)
);

OAI21X1 _9072_ (
    .A(_875_),
    .B(gnd),
    .C(_876_),
    .Y(\datapath._04_ [22])
);

FILL SFILL58760x39050 (
);

OAI21X1 _18775_ (
    .A(_5881_),
    .B(_8565__bF$buf1),
    .C(_8570_),
    .Y(_4270_)
);

MUX2X1 _18355_ (
    .A(\datapath.registers.828[5] [25]),
    .B(\datapath.registers.828[4] [25]),
    .S(\datapath.idinstr_20_bF$buf40 ),
    .Y(_8226_)
);

AOI22X1 _13490_ (
    .A(_3238_),
    .B(DMEM_DATA_L[22]),
    .C(DMEM_DATA_L[30]),
    .D(_3239__bF$buf2),
    .Y(_3354_)
);

OAI21X1 _13070_ (
    .A(_3034_),
    .B(_0__1_bF$buf6),
    .C(_3035_),
    .Y(_3036_)
);

OAI21X1 _11803_ (
    .A(_1214_),
    .B(\datapath.alu.b_2_bF$buf5 ),
    .C(_1210_),
    .Y(_1215_)
);

AOI21X1 _14695_ (
    .A(_4707__bF$buf1),
    .B(_5099__bF$buf7),
    .C(_5117_),
    .Y(_3772_)
);

AOI21X1 _14275_ (
    .A(_4727__bF$buf0),
    .B(_4842__bF$buf3),
    .C(_4879_),
    .Y(_3975_)
);

FILL SFILL48760x37050 (
);

DFFPOSX1 _10195_ (
    .Q(\datapath.mempc_4 [2]),
    .CLK(CLK_bF$buf6),
    .D(\datapath.alupc_4 [2])
);

AOI21X1 _16841_ (
    .A(\datapath.registers.828[5] [24]),
    .B(\datapath.idinstr_17_bF$buf3 ),
    .C(_5681__bF$buf1),
    .Y(_6745_)
);

MUX2X1 _16421_ (
    .A(\datapath.registers.828[1] [14]),
    .B(\datapath.registers.828[0] [14]),
    .S(\datapath.idinstr_15_bF$buf12 ),
    .Y(_6335_)
);

NAND2X1 _16001_ (
    .A(_5921_),
    .B(_5923_),
    .Y(_5924_)
);

FILL SFILL48360x23050 (
);

INVX1 _8763_ (
    .A(\datapath.meminstr [6]),
    .Y(_101_)
);

FILL SFILL34040x58050 (
);

MUX2X1 _17626_ (
    .A(\datapath.registers.828[31] [9]),
    .B(\datapath.registers.828[29] [9]),
    .S(\datapath.idinstr_21_bF$buf23 ),
    .Y(_7513_)
);

MUX2X1 _17206_ (
    .A(_7101_),
    .B(_7100_),
    .S(\datapath.idinstr_21_bF$buf23 ),
    .Y(_7102_)
);

OAI22X1 _12761_ (
    .A(_2703_),
    .B(_2585__bF$buf4),
    .C(_2886_),
    .D(_2888_),
    .Y(\datapath.csr.csr_pcaddr [13])
);

NAND2X1 _12341_ (
    .A(_2578_),
    .B(_2579_),
    .Y(\datapath.csr.csr_data [30])
);

DFFPOSX1 _9968_ (
    .Q(\datapath.regloadwb [22]),
    .CLK(CLK_bF$buf97),
    .D(\datapath.memdataload [22])
);

NAND2X1 _9548_ (
    .A(\datapath.csr.csr_data [11]),
    .B(_417__bF$buf4),
    .Y(_454_)
);

NAND2X1 _9128_ (
    .A(gnd),
    .B(\datapath.idinstr [9]),
    .Y(_137_)
);

AOI21X1 _13966_ (
    .A(_4707__bF$buf3),
    .B(_4673__bF$buf0),
    .C(_4708_),
    .Y(_4124_)
);

NOR2X1 _13546_ (
    .A(gnd),
    .B(\datapath.programcounter.pc_mux [16]),
    .Y(_3391_)
);

OAI21X1 _13126_ (
    .A(_3082_),
    .B(_0__1_bF$buf4),
    .C(_3083_),
    .Y(_3084_)
);

NAND2X1 _18584_ (
    .A(_7092__bF$buf9),
    .B(_8449_),
    .Y(_8450_)
);

MUX2X1 _18164_ (
    .A(\datapath.registers.828[11] [21]),
    .B(\datapath.registers.828[10] [21]),
    .S(\datapath.idinstr_20_bF$buf36 ),
    .Y(_8039_)
);

FILL SFILL3320x32050 (
);

FILL SFILL59160x24050 (
);

FILL SFILL68840x29050 (
);

NOR2X1 _11612_ (
    .A(_1009_),
    .B(_1008_),
    .Y(_1010_)
);

DFFPOSX1 _19789_ (
    .Q(\datapath.registers.828[30] [29]),
    .CLK(CLK_bF$buf117),
    .D(_4393_)
);

DFFPOSX1 _19369_ (
    .Q(\datapath.registers.828[7] [25]),
    .CLK(CLK_bF$buf17),
    .D(_4581_)
);

AOI21X1 _14084_ (
    .A(_4679__bF$buf3),
    .B(_4772__bF$buf0),
    .C(_4776_),
    .Y(_4077_)
);

NAND2X1 _8819_ (
    .A(\datapath.aluinstr [6]),
    .B(\datapath.aluinstr [5]),
    .Y(_30_)
);

OAI21X1 _12817_ (
    .A(\datapath.csr.mvect [22]),
    .B(_2934_),
    .C(_2935_),
    .Y(_2936_)
);

OAI21X1 _15289_ (
    .A(_4675__bF$buf2),
    .B(_5437__bF$buf2),
    .C(_5439_),
    .Y(_4159_)
);

AOI21X1 _16650_ (
    .A(_6554_),
    .B(_6558_),
    .C(\datapath.idinstr_18_bF$buf6 ),
    .Y(_6559_)
);

NAND2X1 _16230_ (
    .A(\datapath.registers.828[8] [10]),
    .B(_5684__bF$buf11),
    .Y(_6148_)
);

FILL SFILL58840x27050 (
);

INVX1 _8992_ (
    .A(\datapath.programcounter.pc [28]),
    .Y(_823_)
);

FILL SFILL18680x38050 (
);

NAND2X1 _17855_ (
    .A(\datapath.idinstr_22_bF$buf18 ),
    .B(_7736_),
    .Y(_7737_)
);

NAND2X1 _17435_ (
    .A(\datapath.idinstr_22_bF$buf22 ),
    .B(_7325_),
    .Y(_7326_)
);

MUX2X1 _17015_ (
    .A(_6914_),
    .B(_6913_),
    .S(\datapath.idinstr_16_bF$buf11 ),
    .Y(_6915_)
);

INVX2 _12990_ (
    .A(\controlunit.imm_sel [0]),
    .Y(_3013_)
);

OAI21X1 _12570_ (
    .A(\datapath.csr.csr_wdata [25]),
    .B(_2672__bF$buf2),
    .C(_2750_),
    .Y(_2751_)
);

OAI21X1 _12150_ (
    .A(_1585_),
    .B(_1899_),
    .C(_1004_),
    .Y(_1586_)
);

OAI21X1 _9777_ (
    .A(_635_),
    .B(_636_),
    .C(_640_),
    .Y(_641_)
);

NAND2X1 _9357_ (
    .A(\datapath.regloadwb [30]),
    .B(_213__bF$buf3),
    .Y(_309_)
);

AOI22X1 _13775_ (
    .A(_3423__bF$buf2),
    .B(\datapath.alu.c [22]),
    .C(\datapath.csr.csr_pcaddr [22]),
    .D(_3429__bF$buf2),
    .Y(_3562_)
);

OAI21X1 _13355_ (
    .A(_3254_),
    .B(_0__1_bF$buf1),
    .C(_3255_),
    .Y(_3256_)
);

AOI21X1 _15921_ (
    .A(_5845_),
    .B(_5844_),
    .C(_5684__bF$buf2),
    .Y(_5846_)
);

OAI21X1 _15501_ (
    .A(_5038__bF$buf4),
    .B(_4668__bF$buf3),
    .C(\datapath.registers.828[2] [5]),
    .Y(_5552_)
);

NAND2X1 _18393_ (
    .A(\datapath.registers.828[12] [26]),
    .B(_7089__bF$buf5),
    .Y(_8263_)
);

NAND2X1 _16706_ (
    .A(_5681__bF$buf9),
    .B(_6612_),
    .Y(_6613_)
);

MUX2X1 _11841_ (
    .A(_1702_),
    .B(_1695_),
    .S(\datapath.alu.b_0_bF$buf2 ),
    .Y(_1256_)
);

NAND2X1 _11421_ (
    .A(_2381_),
    .B(_2382_),
    .Y(_2383_)
);

NAND3X1 _11001_ (
    .A(_1123__bF$buf1),
    .B(_1967_),
    .C(_1970_),
    .Y(_1971_)
);

DFFPOSX1 _19598_ (
    .Q(\datapath.registers.828[21] [30]),
    .CLK(CLK_bF$buf149),
    .D(_4075_)
);

DFFPOSX1 _19178_ (
    .Q(\datapath.registers.828[15] [26]),
    .CLK(CLK_bF$buf59),
    .D(_3846_)
);

NOR2X1 _12626_ (
    .A(_2795_),
    .B(_2794_),
    .Y(_2796_)
);

NAND3X1 _12206_ (
    .A(_1918_),
    .B(_1187_),
    .C(_1644_),
    .Y(_1645_)
);

OAI21X1 _15098_ (
    .A(_5335__bF$buf0),
    .B(_4681__bF$buf2),
    .C(_5341_),
    .Y(_4590_)
);

FILL SFILL3400x20050 (
);

NAND2X1 _17664_ (
    .A(_7089__bF$buf10),
    .B(_7549_),
    .Y(_7550_)
);

MUX2X1 _17244_ (
    .A(\datapath.registers.828[27] [1]),
    .B(\datapath.registers.828[26] [1]),
    .S(\datapath.idinstr_20_bF$buf53 ),
    .Y(_7139_)
);

FILL SFILL28760x28050 (
);

NAND2X1 _9586_ (
    .A(\datapath.registers.rega_data [21]),
    .B(_418__bF$buf2),
    .Y(_482_)
);

INVX1 _9166_ (
    .A(IMEM_DATA[22]),
    .Y(_162_)
);

FILL SFILL28360x14050 (
);

NOR2X1 _18869_ (
    .A(\datapath.registers.828[26] [19]),
    .B(_8598__bF$buf6),
    .Y(_8618_)
);

NAND2X1 _18449_ (
    .A(\datapath.idinstr_22_bF$buf10 ),
    .B(_8317_),
    .Y(_8318_)
);

MUX2X1 _18029_ (
    .A(_7906_),
    .B(_7905_),
    .S(\datapath.idinstr_21_bF$buf42 ),
    .Y(_7907_)
);

INVX1 _13584_ (
    .A(\datapath.programcounter.pc [29]),
    .Y(_3416_)
);

OAI21X1 _13164_ (
    .A(_3111_),
    .B(_3081_),
    .C(_3115_),
    .Y(_1_[14])
);

DFFPOSX1 _19810_ (
    .Q(\datapath.registers.828[13] [18]),
    .CLK(CLK_bF$buf124),
    .D(_3773_)
);

FILL SFILL73720x21050 (
);

INVX1 _14789_ (
    .A(\datapath.registers.828[11] [0]),
    .Y(_5165_)
);

INVX2 _14369_ (
    .A(\datapath.registers.828[17] [6]),
    .Y(_4931_)
);

FILL SFILL18760x26050 (
);

FILL SFILL33560x32050 (
);

NOR2X1 _15730_ (
    .A(\datapath.registers.828[30] [21]),
    .B(_5647__bF$buf4),
    .Y(_5669_)
);

NAND2X1 _15310_ (
    .A(\datapath.registers.828[24] [12]),
    .B(_5437__bF$buf2),
    .Y(_5450_)
);

BUFX2 BUFX2_insert20 (
    .A(_5369_),
    .Y(_5369__bF$buf5)
);

BUFX2 BUFX2_insert21 (
    .A(_5369_),
    .Y(_5369__bF$buf4)
);

BUFX2 BUFX2_insert22 (
    .A(_5369_),
    .Y(_5369__bF$buf3)
);

BUFX2 BUFX2_insert23 (
    .A(_5369_),
    .Y(_5369__bF$buf2)
);

BUFX2 BUFX2_insert24 (
    .A(_5369_),
    .Y(_5369__bF$buf1)
);

BUFX2 BUFX2_insert25 (
    .A(_5369_),
    .Y(_5369__bF$buf0)
);

FILL SFILL18360x12050 (
);

BUFX2 BUFX2_insert26 (
    .A(\controlunit.mret ),
    .Y(\controlunit.mret_bF$buf4 )
);

BUFX2 BUFX2_insert27 (
    .A(\controlunit.mret ),
    .Y(\controlunit.mret_bF$buf3 )
);

BUFX2 BUFX2_insert28 (
    .A(\controlunit.mret ),
    .Y(\controlunit.mret_bF$buf2 )
);

BUFX2 BUFX2_insert29 (
    .A(\controlunit.mret ),
    .Y(\controlunit.mret_bF$buf1 )
);

DFFPOSX1 _10289_ (
    .Q(\datapath.regcsralu [2]),
    .CLK(CLK_bF$buf141),
    .D(\datapath.csr.csr_data [2])
);

AOI21X1 _16935_ (
    .A(_6836_),
    .B(_6829_),
    .C(_5685__bF$buf6),
    .Y(_6837_)
);

MUX2X1 _16515_ (
    .A(\datapath.registers.828[9] [17]),
    .B(\datapath.registers.828[8] [17]),
    .S(\datapath.idinstr_15_bF$buf11 ),
    .Y(_6426_)
);

OAI21X1 _11650_ (
    .A(_2269_),
    .B(_1091__bF$buf0),
    .C(_1209__bF$buf2),
    .Y(_1051_)
);

OAI21X1 _11230_ (
    .A(_2194_),
    .B(_1198_),
    .C(_2103__bF$buf2),
    .Y(_2196_)
);

NAND2X1 _8857_ (
    .A(\datapath.idinstr [6]),
    .B(_62_),
    .Y(_63_)
);

AOI22X1 _12855_ (
    .A(_2765_),
    .B(\controlunit.mret_bF$buf3 ),
    .C(_2966_),
    .D(_2964_),
    .Y(\datapath.csr.csr_pcaddr [29])
);

INVX1 _12435_ (
    .A(\datapath.csr.mvect [24]),
    .Y(_2648_)
);

NOR2X1 _12015_ (
    .A(_1749_),
    .B(_1751_),
    .Y(_1441_)
);

FILL SFILL63640x26050 (
);

AOI21X1 _17893_ (
    .A(_7768_),
    .B(_7773_),
    .C(\datapath.idinstr_23_bF$buf3 ),
    .Y(_7774_)
);

MUX2X1 _17473_ (
    .A(\datapath.registers.828[7] [6]),
    .B(\datapath.registers.828[6] [6]),
    .S(\datapath.idinstr_20_bF$buf30 ),
    .Y(_7363_)
);

NAND2X1 _17053_ (
    .A(\datapath.idinstr_17_bF$buf12 ),
    .B(_6952_),
    .Y(_6953_)
);

FILL SFILL13960x42050 (
);

NAND2X1 _9395_ (
    .A(\datapath.imm [6]),
    .B(_316__bF$buf4),
    .Y(_338_)
);

AOI21X1 _10921_ (
    .A(\datapath.alu.b_0_bF$buf6 ),
    .B(_1891_),
    .C(_1887_),
    .Y(_1892_)
);

DFFPOSX1 _10501_ (
    .Q(\datapath.alupc [19]),
    .CLK(CLK_bF$buf26),
    .D(\datapath.idpc [19])
);

AOI21X1 _18678_ (
    .A(_4715__bF$buf0),
    .B(_8498__bF$buf6),
    .C(_8520_),
    .Y(_4321_)
);

MUX2X1 _18258_ (
    .A(_8130_),
    .B(_8129_),
    .S(_7089__bF$buf1),
    .Y(_8131_)
);

NAND2X1 _13393_ (
    .A(_3033__bF$buf2),
    .B(_3287_),
    .Y(_3288_)
);

FILL SFILL43720x60050 (
);

FILL SFILL83800x56050 (
);

OAI21X1 _11706_ (
    .A(\datapath.alu.a [15]),
    .B(\datapath.alu.b [15]),
    .C(_1006_),
    .Y(_1110_)
);

OAI21X1 _14598_ (
    .A(_5057_),
    .B(_5039__bF$buf1),
    .C(_5058_),
    .Y(_3798_)
);

AOI21X1 _14178_ (
    .A(_4707__bF$buf4),
    .B(_4806__bF$buf6),
    .C(_4824_),
    .Y(_4028_)
);

FILL SFILL83800x11050 (
);

FILL SFILL3400x15050 (
);

FILL SFILL63400x6050 (
);

FILL SFILL43640x22050 (
);

FILL SFILL83720x18050 (
);

DFFPOSX1 _10098_ (
    .Q(\datapath.memoryinterface.data_store [8]),
    .CLK(CLK_bF$buf147),
    .D(\datapath.regrs2alu [8])
);

MUX2X1 _16744_ (
    .A(\datapath.registers.828[29] [22]),
    .B(\datapath.registers.828[28] [22]),
    .S(\datapath.idinstr_15_bF$buf19 ),
    .Y(_6650_)
);

AOI21X1 _16324_ (
    .A(\datapath.registers.828[13] [12]),
    .B(\datapath.idinstr_15_bF$buf17 ),
    .C(\datapath.idinstr_16_bF$buf23 ),
    .Y(_6240_)
);

FILL SFILL73800x54050 (
);

BUFX2 _8666_ (
    .A(_0_[2]),
    .Y(DMEM_ADDR[2])
);

OAI21X1 _17949_ (
    .A(_7827_),
    .B(\datapath.idinstr_22_bF$buf31 ),
    .C(_7828_),
    .Y(_7829_)
);

AOI21X1 _17529_ (
    .A(\datapath.idinstr_20_bF$buf17 ),
    .B(_7417_),
    .C(_7092__bF$buf8),
    .Y(_7418_)
);

AOI21X1 _17109_ (
    .A(\datapath.registers.828[13] [30]),
    .B(\datapath.idinstr_15_bF$buf15 ),
    .C(\datapath.idinstr_16_bF$buf7 ),
    .Y(_7007_)
);

OAI21X1 _12664_ (
    .A(_2797__bF$buf5),
    .B(\datapath.csr.csr_wdata [20]),
    .C(_2783__bF$buf4),
    .Y(_2818_)
);

NOR2X1 _12244_ (
    .A(\datapath.idinstr_21_bF$buf29 ),
    .B(\datapath.idinstr_20_bF$buf48 ),
    .Y(_2510_)
);

FILL SFILL33640x20050 (
);

DFFPOSX1 _13869_ (
    .Q(\datapath.programcounter.pc [1]),
    .CLK(CLK_bF$buf115),
    .D(\datapath.programcounter._1_ [1])
);

NAND3X1 _13449_ (
    .A(_3291__bF$buf3),
    .B(_3330_),
    .C(_3326_),
    .Y(\datapath.memdataload [20])
);

NAND3X1 _13029_ (
    .A(_2983_),
    .B(_2984_),
    .C(_2982_),
    .Y(\datapath.imm [2])
);

FILL SFILL79400x37050 (
);

FILL SFILL33560x27050 (
);

AOI21X1 _14810_ (
    .A(_4687__bF$buf0),
    .B(_5167__bF$buf4),
    .C(_5178_),
    .Y(_3729_)
);

MUX2X1 _17282_ (
    .A(_7176_),
    .B(_7175_),
    .S(\datapath.idinstr_21_bF$buf12 ),
    .Y(_7177_)
);

FILL SFILL79000x23050 (
);

FILL SFILL63720x59050 (
);

NAND2X1 _10730_ (
    .A(\datapath.alu.a [19]),
    .B(\datapath.alu.b [19]),
    .Y(_1701_)
);

DFFPOSX1 _10310_ (
    .Q(\datapath.regcsralu [23]),
    .CLK(CLK_bF$buf7),
    .D(\datapath.csr.csr_data [23])
);

MUX2X1 _18487_ (
    .A(_8354_),
    .B(_8353_),
    .S(\datapath.idinstr_21_bF$buf31 ),
    .Y(_8355_)
);

NAND2X1 _18067_ (
    .A(_7092__bF$buf10),
    .B(_7943_),
    .Y(_7944_)
);

FILL SFILL53800x50050 (
);

FILL SFILL23560x25050 (
);

OAI21X1 _11935_ (
    .A(\datapath.alu.a [23]),
    .B(\datapath.alu.b [23]),
    .C(_2154_),
    .Y(_1356_)
);

AOI21X1 _11515_ (
    .A(_1540_),
    .B(_906_),
    .C(_1907_),
    .Y(_907_)
);

FILL SFILL53720x57050 (
);

NAND2X1 _16973_ (
    .A(_5684__bF$buf10),
    .B(_6873_),
    .Y(_6874_)
);

MUX2X1 _16553_ (
    .A(\datapath.registers.828[19] [17]),
    .B(\datapath.registers.828[18] [17]),
    .S(\datapath.idinstr_15_bF$buf54 ),
    .Y(_6464_)
);

MUX2X1 _16133_ (
    .A(\datapath.registers.828[23] [8]),
    .B(\datapath.registers.828[21] [8]),
    .S(\datapath.idinstr_16_bF$buf42 ),
    .Y(_6053_)
);

AOI21X1 _8895_ (
    .A(_63_),
    .B(_76_),
    .C(_94_),
    .Y(asel[0])
);

FILL SFILL13560x23050 (
);

NAND2X1 _17758_ (
    .A(_7639_),
    .B(_7641_),
    .Y(_7642_)
);

AOI21X1 _17338_ (
    .A(\datapath.registers.828[13] [3]),
    .B(\datapath.idinstr_20_bF$buf50 ),
    .C(\datapath.idinstr_21_bF$buf5 ),
    .Y(_7231_)
);

DFFPOSX1 _12893_ (
    .Q(\datapath.csr.mcause [19]),
    .CLK(CLK_bF$buf51),
    .D(\datapath.csr._32_ [19])
);

OAI21X1 _12473_ (
    .A(_2675_),
    .B(\controlunit.csrfile_trap_wen_bF$buf6 ),
    .C(_2676_),
    .Y(\datapath.csr._26_ [0])
);

NAND2X1 _12053_ (
    .A(_1407_),
    .B(_2443_),
    .Y(_1482_)
);

FILL SFILL43560x7050 (
);

FILL SFILL43320x41050 (
);

NAND3X1 _13678_ (
    .A(_3436_),
    .B(_3483_),
    .C(_3485_),
    .Y(_3486_)
);

NAND2X1 _13258_ (
    .A(_3033__bF$buf1),
    .B(_3195_),
    .Y(_3196_)
);

FILL SFILL43720x10050 (
);

DFFPOSX1 _19904_ (
    .Q(\datapath.registers.828[29] [16]),
    .CLK(CLK_bF$buf70),
    .D(_4315_)
);

MUX2X1 _17091_ (
    .A(\datapath.registers.828[7] [29]),
    .B(\datapath.registers.828[6] [29]),
    .S(\datapath.idinstr_15_bF$buf23 ),
    .Y(_6990_)
);

OAI21X1 _15824_ (
    .A(_5739_),
    .B(_5750_),
    .C(\datapath.idinstr_19_bF$buf5 ),
    .Y(_5751_)
);

OAI21X1 _15404_ (
    .A(_4725__bF$buf2),
    .B(_5470__bF$buf1),
    .C(_5497_),
    .Y(_4486_)
);

AOI21X1 _18296_ (
    .A(\datapath.registers.828[6] [24]),
    .B(\datapath.idinstr_22_bF$buf2 ),
    .C(\datapath.idinstr_20_bF$buf34 ),
    .Y(_8168_)
);

MUX2X1 _16609_ (
    .A(\datapath.registers.828[25] [19]),
    .B(\datapath.registers.828[24] [19]),
    .S(\datapath.idinstr_15_bF$buf35 ),
    .Y(_6518_)
);

AOI21X1 _11744_ (
    .A(_1151_),
    .B(_1149_),
    .C(_1138_),
    .Y(_1152_)
);

OAI21X1 _11324_ (
    .A(_1123__bF$buf5),
    .B(_2091_),
    .C(_2287_),
    .Y(_2288_)
);

FILL SFILL33640x15050 (
);

FILL SFILL13640x1050 (
);

FILL SFILL13560x6050 (
);

DFFPOSX1 _12949_ (
    .Q(\datapath.csr.mvect [10]),
    .CLK(CLK_bF$buf30),
    .D(\datapath.csr._13_ [10])
);

NAND2X1 _12529_ (
    .A(_2717_),
    .B(_2672__bF$buf1),
    .Y(_2718_)
);

NAND2X1 _12109_ (
    .A(_1541_),
    .B(_1538_),
    .Y(_1542_)
);

OAI21X1 _16782_ (
    .A(_6687_),
    .B(_6678_),
    .C(_5680__bF$buf4),
    .Y(_6688_)
);

OAI21X1 _16362_ (
    .A(_4860_),
    .B(\datapath.idinstr_17_bF$buf7 ),
    .C(_6276_),
    .Y(_6277_)
);

FILL SFILL79000x18050 (
);

FILL SFILL84280x38050 (
);

BUFX2 BUFX2_insert460 (
    .A(_1890_),
    .Y(_1890__bF$buf3)
);

BUFX2 BUFX2_insert461 (
    .A(_1890_),
    .Y(_1890__bF$buf2)
);

BUFX2 BUFX2_insert462 (
    .A(_1890_),
    .Y(_1890__bF$buf1)
);

BUFX2 BUFX2_insert463 (
    .A(_1890_),
    .Y(_1890__bF$buf0)
);

NAND2X1 _17987_ (
    .A(_7092__bF$buf3),
    .B(_7865_),
    .Y(_7866_)
);

BUFX2 BUFX2_insert464 (
    .A(_8498_),
    .Y(_8498__bF$buf7)
);

MUX2X1 _17567_ (
    .A(\datapath.registers.828[18] [8]),
    .B(\datapath.registers.828[16] [8]),
    .S(\datapath.idinstr_21_bF$buf15 ),
    .Y(_7455_)
);

BUFX2 BUFX2_insert465 (
    .A(_8498_),
    .Y(_8498__bF$buf6)
);

OAI21X1 _17147_ (
    .A(_7044_),
    .B(_7035_),
    .C(\datapath.idinstr_19_bF$buf3 ),
    .Y(_7045_)
);

BUFX2 BUFX2_insert466 (
    .A(_8498_),
    .Y(_8498__bF$buf5)
);

BUFX2 BUFX2_insert467 (
    .A(_8498_),
    .Y(_8498__bF$buf4)
);

BUFX2 BUFX2_insert468 (
    .A(_8498_),
    .Y(_8498__bF$buf3)
);

BUFX2 BUFX2_insert469 (
    .A(_8498_),
    .Y(_8498__bF$buf2)
);

OAI21X1 _12282_ (
    .A(_2535_),
    .B(_2537_),
    .C(_2539_),
    .Y(_2540_)
);

FILL SFILL8600x55050 (
);

NAND3X1 _9489_ (
    .A(_407_),
    .B(_408_),
    .C(_406_),
    .Y(\datapath.muxbval [29])
);

OAI21X1 _9069_ (
    .A(_873_),
    .B(gnd),
    .C(_874_),
    .Y(\datapath._04_ [21])
);

FILL SFILL8200x41050 (
);

FILL SFILL84200x36050 (
);

AOI22X1 _13487_ (
    .A(_3238_),
    .B(DMEM_DATA_L[21]),
    .C(DMEM_DATA_L[29]),
    .D(_3239__bF$buf0),
    .Y(_3352_)
);

NOR2X1 _13067_ (
    .A(\datapath.meminstr [13]),
    .B(_3026_),
    .Y(_3033_)
);

DFFPOSX1 _19713_ (
    .Q(\datapath.registers.828[0] [17]),
    .CLK(CLK_bF$buf5),
    .D(_3644_)
);

FILL SFILL8600x10050 (
);

OAI21X1 _15633_ (
    .A(_4840__bF$buf7),
    .B(_5612__bF$buf1),
    .C(\datapath.registers.828[31] [5]),
    .Y(_5620_)
);

AOI21X1 _15213_ (
    .A(_4731__bF$buf1),
    .B(_5369__bF$buf1),
    .C(_5399_),
    .Y(_4553_)
);

FILL SFILL43800x43050 (
);

FILL SFILL13560x18050 (
);

NAND2X1 _16838_ (
    .A(\datapath.idinstr_17_bF$buf5 ),
    .B(_6741_),
    .Y(_6742_)
);

MUX2X1 _16418_ (
    .A(\datapath.registers.828[7] [14]),
    .B(\datapath.registers.828[6] [14]),
    .S(\datapath.idinstr_15_bF$buf43 ),
    .Y(_6332_)
);

MUX2X1 _11973_ (
    .A(_1396_),
    .B(_1100_),
    .S(_1091__bF$buf0),
    .Y(_1397_)
);

OAI21X1 _11553_ (
    .A(_1091__bF$buf3),
    .B(_940_),
    .C(_945_),
    .Y(_946_)
);

NAND3X1 _11133_ (
    .A(_2098_),
    .B(_2100_),
    .C(_2092_),
    .Y(_2101_)
);

NOR2X1 _9701_ (
    .A(_574_),
    .B(_569_),
    .Y(_575_)
);

INVX1 _12758_ (
    .A(_2885_),
    .Y(_2886_)
);

OAI21X1 _12338_ (
    .A(_2576_),
    .B(_2490__bF$buf4),
    .C(_2577_),
    .Y(\datapath.csr.csr_data [29])
);

FILL SFILL68920x54050 (
);

AOI21X1 _16591_ (
    .A(\datapath.registers.828[21] [18]),
    .B(\datapath.idinstr_17_bF$buf14 ),
    .C(_5681__bF$buf10),
    .Y(_6501_)
);

NAND2X1 _16171_ (
    .A(_5681__bF$buf10),
    .B(_6089_),
    .Y(_6090_)
);

OAI21X1 _14904_ (
    .A(_5232_),
    .B(_5212__bF$buf7),
    .C(_5233_),
    .Y(_3673_)
);

NAND2X1 _17796_ (
    .A(_7676_),
    .B(_7678_),
    .Y(_7679_)
);

OAI21X1 _17376_ (
    .A(_7268_),
    .B(_7259_),
    .C(\datapath.idinstr_24_bF$buf5 ),
    .Y(_7269_)
);

FILL SFILL33320x34050 (
);

OAI21X1 _12091_ (
    .A(_1521_),
    .B(_1522_),
    .C(_1209__bF$buf2),
    .Y(_1523_)
);

NAND2X1 _9298_ (
    .A(\datapath.regloadwb [15]),
    .B(_213__bF$buf2),
    .Y(_265_)
);

INVX2 _10824_ (
    .A(\datapath.alu.a [21]),
    .Y(_1795_)
);

DFFPOSX1 _10404_ (
    .Q(\datapath.alu.a [21]),
    .CLK(CLK_bF$buf54),
    .D(\datapath.muxaval [21])
);

FILL SFILL58920x52050 (
);

OAI21X1 _13296_ (
    .A(_3218_),
    .B(_3064_),
    .C(_3224_),
    .Y(\datapath.memoryinterface.byte_size_store.storebyte [5])
);

DFFPOSX1 _19942_ (
    .Q(\datapath.registers.828[28] [22]),
    .CLK(CLK_bF$buf10),
    .D(_4290_)
);

DFFPOSX1 _19522_ (
    .Q(\datapath.registers.828[11] [18]),
    .CLK(CLK_bF$buf50),
    .D(_3709_)
);

DFFPOSX1 _19102_ (
    .Q(\datapath.registers.828[14] [14]),
    .CLK(CLK_bF$buf75),
    .D(_3801_)
);

FILL SFILL58840x59050 (
);

INVX2 _11609_ (
    .A(_1006_),
    .Y(_1007_)
);

NAND2X1 _15862_ (
    .A(_5681__bF$buf7),
    .B(_5787_),
    .Y(_5788_)
);

FILL SFILL63400x28050 (
);

NOR2X1 _15442_ (
    .A(\datapath.registers.828[3] [11]),
    .B(_5503__bF$buf6),
    .Y(_5519_)
);

OAI21X1 _15022_ (
    .A(_4660__bF$buf2),
    .B(_5300__bF$buf0),
    .C(_5301_),
    .Y(_4596_)
);

FILL SFILL8280x38050 (
);

MUX2X1 _16647_ (
    .A(\datapath.registers.828[7] [19]),
    .B(\datapath.registers.828[6] [19]),
    .S(\datapath.idinstr_15_bF$buf46 ),
    .Y(_6556_)
);

OAI21X1 _16227_ (
    .A(_6133_),
    .B(_6144_),
    .C(\datapath.idinstr_19_bF$buf2 ),
    .Y(_6145_)
);

NAND2X1 _11782_ (
    .A(_1705_),
    .B(_1191_),
    .Y(_1192_)
);

AOI21X1 _11362_ (
    .A(_1359_),
    .B(_2255_),
    .C(_2261_),
    .Y(_2325_)
);

FILL SFILL13720x44050 (
);

FILL SFILL44120x35050 (
);

INVX1 _8989_ (
    .A(\datapath.programcounter.pc [27]),
    .Y(_821_)
);

DFFPOSX1 _9930_ (
    .Q(\datapath.regcsrwb [16]),
    .CLK(CLK_bF$buf68),
    .D(\datapath.csr.csr_wdata [16])
);

NAND2X1 _9510_ (
    .A(\datapath.registers.rega_data [2]),
    .B(_418__bF$buf0),
    .Y(_425_)
);

NOR2X1 _12987_ (
    .A(_3011_),
    .B(_3006_),
    .Y(\datapath.imm [10])
);

OAI21X1 _12567_ (
    .A(_2747_),
    .B(\controlunit.csrfile_trap_wen_bF$buf4 ),
    .C(_2748_),
    .Y(\datapath.csr._26_ [22])
);

MUX2X1 _12147_ (
    .A(_1581_),
    .B(_1516_),
    .S(_994__bF$buf3),
    .Y(_1582_)
);

FILL SFILL13240x37050 (
);

BUFX2 BUFX2_insert1020 (
    .A(_3424_),
    .Y(_3424__bF$buf4)
);

BUFX2 BUFX2_insert1021 (
    .A(_3424_),
    .Y(_3424__bF$buf3)
);

BUFX2 BUFX2_insert1022 (
    .A(_3424_),
    .Y(_3424__bF$buf2)
);

BUFX2 BUFX2_insert1023 (
    .A(_3424_),
    .Y(_3424__bF$buf1)
);

BUFX2 BUFX2_insert1024 (
    .A(_3424_),
    .Y(_3424__bF$buf0)
);

BUFX2 BUFX2_insert1025 (
    .A(_5167_),
    .Y(_5167__bF$buf7)
);

BUFX2 BUFX2_insert1026 (
    .A(_5167_),
    .Y(_5167__bF$buf6)
);

BUFX2 BUFX2_insert1027 (
    .A(_5167_),
    .Y(_5167__bF$buf5)
);

BUFX2 BUFX2_insert1028 (
    .A(_5167_),
    .Y(_5167__bF$buf4)
);

BUFX2 BUFX2_insert1029 (
    .A(_5167_),
    .Y(_5167__bF$buf3)
);

AOI21X1 _14713_ (
    .A(_4725__bF$buf4),
    .B(_5099__bF$buf0),
    .C(_5126_),
    .Y(_3782_)
);

BUFX2 BUFX2_insert840 (
    .A(\datapath.alu.b [3]),
    .Y(\datapath.alu.b_3_bF$buf4 )
);

BUFX2 BUFX2_insert841 (
    .A(\datapath.alu.b [3]),
    .Y(\datapath.alu.b_3_bF$buf3 )
);

BUFX2 BUFX2_insert842 (
    .A(\datapath.alu.b [3]),
    .Y(\datapath.alu.b_3_bF$buf2 )
);

BUFX2 BUFX2_insert843 (
    .A(\datapath.alu.b [3]),
    .Y(\datapath.alu.b_3_bF$buf1 )
);

BUFX2 BUFX2_insert844 (
    .A(\datapath.alu.b [3]),
    .Y(\datapath.alu.b_3_bF$buf0 )
);

BUFX2 BUFX2_insert845 (
    .A(_4679_),
    .Y(_4679__bF$buf4)
);

BUFX2 BUFX2_insert846 (
    .A(_4679_),
    .Y(_4679__bF$buf3)
);

MUX2X1 _17185_ (
    .A(\datapath.registers.828[1] [31]),
    .B(\datapath.registers.828[0] [31]),
    .S(\datapath.idinstr_15_bF$buf46 ),
    .Y(_7082_)
);

BUFX2 BUFX2_insert847 (
    .A(_4679_),
    .Y(_4679__bF$buf2)
);

BUFX2 BUFX2_insert848 (
    .A(_4679_),
    .Y(_4679__bF$buf1)
);

BUFX2 BUFX2_insert849 (
    .A(_4679_),
    .Y(_4679__bF$buf0)
);

FILL SFILL43800x38050 (
);

FILL SFILL83880x50050 (
);

OAI21X1 _15918_ (
    .A(_5044_),
    .B(\datapath.idinstr_15_bF$buf3 ),
    .C(\datapath.idinstr_16_bF$buf4 ),
    .Y(_5843_)
);

XOR2X1 _10633_ (
    .A(\datapath.alu.a [6]),
    .B(\datapath.alu.b [6]),
    .Y(_1177_)
);

DFFPOSX1 _10213_ (
    .Q(\datapath.mempc_4 [20]),
    .CLK(CLK_bF$buf48),
    .D(\datapath.alupc_4 [20])
);

DFFPOSX1 _19751_ (
    .Q(\datapath.registers.828[16] [23]),
    .CLK(CLK_bF$buf149),
    .D(_3875_)
);

DFFPOSX1 _19331_ (
    .Q(\datapath.registers.828[4] [19]),
    .CLK(CLK_bF$buf145),
    .D(_4478_)
);

AOI21X1 _11838_ (
    .A(\datapath.alu.b [20]),
    .B(_1250_),
    .C(_1251_),
    .Y(_1253_)
);

NOR2X1 _11418_ (
    .A(_1964_),
    .B(_1653_),
    .Y(_2380_)
);

FILL SFILL68920x49050 (
);

OAI21X1 _15671_ (
    .A(_4840__bF$buf7),
    .B(_5612__bF$buf1),
    .C(\datapath.registers.828[31] [24]),
    .Y(_5639_)
);

NOR2X1 _15251_ (
    .A(\datapath.registers.828[5] [16]),
    .B(_5402__bF$buf0),
    .Y(_5419_)
);

OAI21X1 _16876_ (
    .A(_6767_),
    .B(_6779_),
    .C(\datapath.idinstr_19_bF$buf4 ),
    .Y(_6780_)
);

OAI21X1 _16456_ (
    .A(_5189_),
    .B(\datapath.idinstr_17_bF$buf3 ),
    .C(_6368_),
    .Y(_6369_)
);

OAI21X1 _16036_ (
    .A(_5953_),
    .B(_5954_),
    .C(_5957_),
    .Y(_5958_)
);

OAI21X1 _11591_ (
    .A(\datapath.alu.a [13]),
    .B(\datapath.alu.b [13]),
    .C(_986_),
    .Y(_987_)
);

AOI21X1 _11171_ (
    .A(_1252_),
    .B(_1155_),
    .C(_1907_),
    .Y(_2138_)
);

AND2X2 _8798_ (
    .A(_116_),
    .B(_119_),
    .Y(_11_)
);

FILL SFILL18840x51050 (
);

OAI21X1 _12796_ (
    .A(_2905_),
    .B(_2917_),
    .C(_2585__bF$buf1),
    .Y(_2918_)
);

INVX1 _12376_ (
    .A(\datapath.csr.csr_wdata [4]),
    .Y(_2609_)
);

MUX2X1 _18602_ (
    .A(\datapath.registers.828[22] [31]),
    .B(\datapath.registers.828[20] [31]),
    .S(\datapath.idinstr_21_bF$buf43 ),
    .Y(_8467_)
);

DFFPOSX1 _19807_ (
    .Q(\datapath.registers.828[13] [15]),
    .CLK(CLK_bF$buf95),
    .D(_3770_)
);

AOI21X1 _14942_ (
    .A(_4735__bF$buf3),
    .B(_5212__bF$buf3),
    .C(_5254_),
    .Y(_3692_)
);

OAI21X1 _14522_ (
    .A(_5003__bF$buf4),
    .B(_4693__bF$buf3),
    .C(_5015_),
    .Y(_3829_)
);

AOI21X1 _14102_ (
    .A(_4697__bF$buf2),
    .B(_4772__bF$buf0),
    .C(_4785_),
    .Y(_4055_)
);

AOI21X1 _15727_ (
    .A(_4711__bF$buf4),
    .B(_5647__bF$buf2),
    .C(_5667_),
    .Y(_4382_)
);

OAI21X1 _15307_ (
    .A(_4693__bF$buf4),
    .B(_5437__bF$buf0),
    .C(_5448_),
    .Y(_4149_)
);

OAI21X1 _10862_ (
    .A(_1717_),
    .B(\datapath.alu.b_0_bF$buf1 ),
    .C(_1832_),
    .Y(_1833_)
);

DFFPOSX1 _10442_ (
    .Q(\datapath.aluinstr [24]),
    .CLK(CLK_bF$buf109),
    .D(\datapath.idinstr_24_bF$buf4 )
);

DFFPOSX1 _10022_ (
    .Q(\datapath.wbinstr [11]),
    .CLK(CLK_bF$buf103),
    .D(\datapath.meminstr [11])
);

NAND2X1 _18199_ (
    .A(\datapath.idinstr_22_bF$buf39 ),
    .B(_8072_),
    .Y(_8073_)
);

DFFPOSX1 _19980_ (
    .Q(\datapath.registers.828[6] [28]),
    .CLK(CLK_bF$buf116),
    .D(_4552_)
);

DFFPOSX1 _19560_ (
    .Q(\datapath.registers.828[12] [24]),
    .CLK(CLK_bF$buf105),
    .D(_3748_)
);

DFFPOSX1 _19140_ (
    .Q(\datapath.registers.828[17] [20]),
    .CLK(CLK_bF$buf60),
    .D(_3904_)
);

OAI21X1 _11647_ (
    .A(_1412_),
    .B(_1890__bF$buf2),
    .C(_1046_),
    .Y(_1047_)
);

AOI21X1 _11227_ (
    .A(_2191_),
    .B(_2190_),
    .C(_2192_),
    .Y(_2193_)
);

AOI21X1 _15480_ (
    .A(_4727__bF$buf3),
    .B(_5503__bF$buf3),
    .C(_5540_),
    .Y(_4455_)
);

OAI21X1 _15060_ (
    .A(_4711__bF$buf3),
    .B(_5300__bF$buf5),
    .C(_5320_),
    .Y(_4606_)
);

MUX2X1 _16685_ (
    .A(\datapath.registers.828[5] [20]),
    .B(\datapath.registers.828[4] [20]),
    .S(\datapath.idinstr_15_bF$buf13 ),
    .Y(_6593_)
);

MUX2X1 _16265_ (
    .A(\datapath.registers.828[22] [11]),
    .B(\datapath.registers.828[20] [11]),
    .S(\datapath.idinstr_16_bF$buf10 ),
    .Y(_6182_)
);

FILL SFILL3560x42050 (
);

FILL SFILL83880x45050 (
);

FILL SFILL68920x7050 (
);

NAND3X1 _12185_ (
    .A(_1619_),
    .B(_1621_),
    .C(_1622_),
    .Y(_1623_)
);

NOR2X1 _18831_ (
    .A(\datapath.registers.828[26] [0]),
    .B(_8598__bF$buf6),
    .Y(_8599_)
);

MUX2X1 _18411_ (
    .A(_8279_),
    .B(_8278_),
    .S(\datapath.idinstr_21_bF$buf3 ),
    .Y(_8280_)
);

INVX8 _10918_ (
    .A(_1888_),
    .Y(_1889_)
);

DFFPOSX1 _19616_ (
    .Q(\datapath.registers.828[9] [16]),
    .CLK(CLK_bF$buf50),
    .D(_4635_)
);

NAND2X1 _14751_ (
    .A(\datapath.registers.828[12] [13]),
    .B(_5132__bF$buf7),
    .Y(_5146_)
);

NOR2X1 _14331_ (
    .A(\datapath.registers.828[18] [21]),
    .B(_4886__bF$buf6),
    .Y(_4910_)
);

FILL SFILL73880x43050 (
);

OAI21X1 _15956_ (
    .A(_5879_),
    .B(_5870_),
    .C(_5680__bF$buf2),
    .Y(_5880_)
);

OAI21X1 _15536_ (
    .A(_5546__bF$buf4),
    .B(_4717__bF$buf2),
    .C(_5569_),
    .Y(_4354_)
);

OAI21X1 _15116_ (
    .A(_5335__bF$buf1),
    .B(_4699__bF$buf0),
    .C(_5350_),
    .Y(_4568_)
);

XNOR2X1 _10671_ (
    .A(\datapath.alu.a [9]),
    .B(\datapath.alu.b [9]),
    .Y(_1583_)
);

DFFPOSX1 _10251_ (
    .Q(\datapath.csr.csr_mepc [28]),
    .CLK(CLK_bF$buf19),
    .D(\datapath.alupc [28])
);

FILL SFILL79080x57050 (
);

AOI21X1 _11876_ (
    .A(_1292_),
    .B(_1291_),
    .C(_1285_),
    .Y(_1293_)
);

OAI21X1 _11456_ (
    .A(_1878_),
    .B(_2416_),
    .C(_2415_),
    .Y(_2417_)
);

NAND2X1 _11036_ (
    .A(_1123__bF$buf4),
    .B(_2004_),
    .Y(_2005_)
);

NAND2X1 _9604_ (
    .A(\datapath.csr.csr_data [25]),
    .B(_417__bF$buf2),
    .Y(_496_)
);

FILL SFILL78760x3050 (
);

NAND3X1 _13602_ (
    .A(_3428_),
    .B(_3430_),
    .C(_3425_),
    .Y(\datapath.programcounter.pc_mux [0])
);

MUX2X1 _16494_ (
    .A(\datapath.registers.828[11] [16]),
    .B(\datapath.registers.828[10] [16]),
    .S(\datapath.idinstr_15_bF$buf11 ),
    .Y(_6406_)
);

MUX2X1 _16074_ (
    .A(_5994_),
    .B(_5993_),
    .S(\datapath.idinstr_16_bF$buf12 ),
    .Y(_5995_)
);

NAND2X1 _14807_ (
    .A(\datapath.rd [6]),
    .B(_5167__bF$buf2),
    .Y(_5177_)
);

NOR2X1 _17699_ (
    .A(_6193_),
    .B(_7089__bF$buf6),
    .Y(_7584_)
);

NAND2X1 _17279_ (
    .A(_7092__bF$buf0),
    .B(_7173_),
    .Y(_7174_)
);

AOI21X1 _18640_ (
    .A(_4677__bF$buf1),
    .B(_8498__bF$buf6),
    .C(_8501_),
    .Y(_4330_)
);

AOI21X1 _18220_ (
    .A(_8086_),
    .B(_8093_),
    .C(_7093__bF$buf7),
    .Y(_8094_)
);

OAI21X1 _10727_ (
    .A(_1694_),
    .B(_1697_),
    .C(_1693_),
    .Y(_1698_)
);

DFFPOSX1 _10307_ (
    .Q(\datapath.regcsralu [20]),
    .CLK(CLK_bF$buf51),
    .D(\datapath.csr.csr_data [20])
);

INVX1 _13199_ (
    .A(DMEM_DATA_L[20]),
    .Y(_3145_)
);

DFFPOSX1 _19845_ (
    .Q(\datapath.registers.828[3] [21]),
    .CLK(CLK_bF$buf126),
    .D(_4449_)
);

DFFPOSX1 _19425_ (
    .Q(\datapath.registers.828[24] [17]),
    .CLK(CLK_bF$buf111),
    .D(_4156_)
);

DFFPOSX1 _19005_ (
    .Q(\datapath.registers.828[18] [13]),
    .CLK(CLK_bF$buf142),
    .D(_3928_)
);

NAND2X1 _14980_ (
    .A(\datapath.rd [14]),
    .B(_5257__bF$buf6),
    .Y(_5278_)
);

OAI21X1 _14560_ (
    .A(_5003__bF$buf2),
    .B(_4731__bF$buf4),
    .C(_5034_),
    .Y(_3849_)
);

AOI21X1 _14140_ (
    .A(_4735__bF$buf1),
    .B(_4772__bF$buf5),
    .C(_4804_),
    .Y(_4076_)
);

FILL SFILL38920x38050 (
);

FILL SFILL83960x33050 (
);

MUX2X1 _15765_ (
    .A(\datapath.registers.828[31] [0]),
    .B(\datapath.registers.828[30] [0]),
    .S(\datapath.idinstr_15_bF$buf35 ),
    .Y(_5693_)
);

OAI21X1 _15345_ (
    .A(_4731__bF$buf4),
    .B(_5437__bF$buf3),
    .C(_5467_),
    .Y(_4169_)
);

DFFPOSX1 _10480_ (
    .Q(\datapath.alupc_4 [30]),
    .CLK(CLK_bF$buf69),
    .D(\datapath.idpc_4 [30])
);

DFFPOSX1 _10060_ (
    .Q(\datapath.csr.csr_wdata [2]),
    .CLK(CLK_bF$buf141),
    .D(\datapath.regcsralu [2])
);

FILL SFILL3160x23050 (
);

OAI21X1 _11685_ (
    .A(_1878_),
    .B(_1718_),
    .C(_1882__bF$buf3),
    .Y(_1088_)
);

NOR2X1 _11265_ (
    .A(_1348_),
    .B(_2228_),
    .Y(_2230_)
);

FILL SFILL28920x36050 (
);

MUX2X1 _17911_ (
    .A(\datapath.registers.828[3] [15]),
    .B(\datapath.registers.828[2] [15]),
    .S(\datapath.idinstr_20_bF$buf52 ),
    .Y(_7792_)
);

NOR2X1 _9833_ (
    .A(_690_),
    .B(_685_),
    .Y(_691_)
);

NAND3X1 _9413_ (
    .A(_350_),
    .B(_351_),
    .C(_349_),
    .Y(\datapath.muxbval [10])
);

FILL SFILL73960x31050 (
);

FILL SFILL28440x29050 (
);

NAND3X1 _13831_ (
    .A(_3424__bF$buf3),
    .B(_3603_),
    .C(_3605_),
    .Y(_3606_)
);

NAND2X1 _13411_ (
    .A(_3033__bF$buf5),
    .B(_3302_),
    .Y(_3303_)
);

OAI21X1 _14616_ (
    .A(_5069_),
    .B(_5039__bF$buf6),
    .C(_5070_),
    .Y(_3804_)
);

OAI21X1 _17088_ (
    .A(_6982_),
    .B(_6983_),
    .C(_6986_),
    .Y(_6987_)
);

FILL SFILL18760x1050 (
);

MUX2X1 _10956_ (
    .A(_1925_),
    .B(_1924_),
    .S(_994__bF$buf0),
    .Y(_1926_)
);

FILL SFILL18440x27050 (
);

DFFPOSX1 _10536_ (
    .Q(\datapath.idinstr [22]),
    .CLK(CLK_bF$buf76),
    .D(\datapath._05_ [22])
);

DFFPOSX1 _10116_ (
    .Q(\datapath.memoryinterface.data_store [26]),
    .CLK(CLK_bF$buf11),
    .D(\datapath.regrs2alu [26])
);

DFFPOSX1 _19654_ (
    .Q(\datapath.registers.828[26] [22]),
    .CLK(CLK_bF$buf82),
    .D(_4226_)
);

DFFPOSX1 _19234_ (
    .Q(\datapath.registers.828[20] [18]),
    .CLK(CLK_bF$buf78),
    .D(_4029_)
);

CLKBUF1 CLKBUF1_insert760 (
    .A(CLK_hier0_bF$buf2),
    .Y(CLK_bF$buf26)
);

CLKBUF1 CLKBUF1_insert761 (
    .A(CLK_hier0_bF$buf0),
    .Y(CLK_bF$buf25)
);

CLKBUF1 CLKBUF1_insert762 (
    .A(CLK_hier0_bF$buf1),
    .Y(CLK_bF$buf24)
);

CLKBUF1 CLKBUF1_insert763 (
    .A(CLK_hier0_bF$buf4),
    .Y(CLK_bF$buf23)
);

CLKBUF1 CLKBUF1_insert764 (
    .A(CLK_hier0_bF$buf11),
    .Y(CLK_bF$buf22)
);

CLKBUF1 CLKBUF1_insert765 (
    .A(CLK_hier0_bF$buf9),
    .Y(CLK_bF$buf21)
);

CLKBUF1 CLKBUF1_insert766 (
    .A(CLK_hier0_bF$buf4),
    .Y(CLK_bF$buf20)
);

CLKBUF1 CLKBUF1_insert767 (
    .A(CLK_hier0_bF$buf7),
    .Y(CLK_bF$buf19)
);

CLKBUF1 CLKBUF1_insert768 (
    .A(CLK_hier0_bF$buf0),
    .Y(CLK_bF$buf18)
);

CLKBUF1 CLKBUF1_insert769 (
    .A(CLK_hier0_bF$buf0),
    .Y(CLK_bF$buf17)
);

MUX2X1 _15994_ (
    .A(\datapath.registers.828[19] [5]),
    .B(\datapath.registers.828[17] [5]),
    .S(\datapath.idinstr_16_bF$buf3 ),
    .Y(_5917_)
);

OAI21X1 _15574_ (
    .A(_5098__bF$buf5),
    .B(_4668__bF$buf6),
    .C(\datapath.registers.828[1] [9]),
    .Y(_5589_)
);

NOR2X1 _15154_ (
    .A(\datapath.registers.828[6] [0]),
    .B(_5369__bF$buf5),
    .Y(_5370_)
);

FILL SFILL48600x14050 (
);

MUX2X1 _16779_ (
    .A(_6684_),
    .B(_6683_),
    .S(\datapath.idinstr_16_bF$buf18 ),
    .Y(_6685_)
);

AOI21X1 _16359_ (
    .A(_6269_),
    .B(_6273_),
    .C(\datapath.idinstr_18_bF$buf2 ),
    .Y(_6274_)
);

OAI21X1 _11494_ (
    .A(_1990__bF$buf2),
    .B(_2450_),
    .C(_1886__bF$buf2),
    .Y(_2454_)
);

NAND2X1 _11074_ (
    .A(\datapath.alu.b_2_bF$buf7 ),
    .B(\datapath.alu.a [2]),
    .Y(_2043_)
);

FILL SFILL38600x57050 (
);

AOI21X1 _17720_ (
    .A(_7604_),
    .B(_7603_),
    .C(_7091__bF$buf4),
    .Y(_7605_)
);

NAND2X1 _17300_ (
    .A(_7191_),
    .B(_7193_),
    .Y(_7194_)
);

FILL SFILL53480x20050 (
);

NAND2X1 _9642_ (
    .A(_523_),
    .B(_520_),
    .Y(\datapath._36_ )
);

NOR2X1 _9222_ (
    .A(_201_),
    .B(_206_),
    .Y(_207_)
);

NOR2X1 _12699_ (
    .A(\controlunit.mret_bF$buf0 ),
    .B(\controlunit.csrfile_trap_wen_bF$buf6 ),
    .Y(_2839_)
);

NOR2X1 _12279_ (
    .A(_2536_),
    .B(_2494_),
    .Y(_2537_)
);

FILL SFILL3240x56050 (
);

OAI21X1 _18925_ (
    .A(_7746_),
    .B(_8631__bF$buf4),
    .C(_8646_),
    .Y(_4185_)
);

FILL SFILL38600x12050 (
);

OAI21X1 _18505_ (
    .A(_8367_),
    .B(_8368_),
    .C(_8371_),
    .Y(_8372_)
);

AND2X2 _13640_ (
    .A(_3457_),
    .B(_3456_),
    .Y(\datapath.nextpc [7])
);

INVX1 _13220_ (
    .A(DMEM_DATA_L[23]),
    .Y(_3163_)
);

FILL SFILL28600x55050 (
);

AOI21X1 _14845_ (
    .A(_4717__bF$buf1),
    .B(_5167__bF$buf4),
    .C(_5198_),
    .Y(_3714_)
);

AOI21X1 _14425_ (
    .A(_4731__bF$buf2),
    .B(_4924__bF$buf0),
    .C(_4963_),
    .Y(_3913_)
);

AOI21X1 _14005_ (
    .A(_4733__bF$buf0),
    .B(_4673__bF$buf4),
    .C(_4734_),
    .Y(_4139_)
);

FILL SFILL28600x10050 (
);

NOR2X1 _10765_ (
    .A(\datapath.alu.a [29]),
    .B(\datapath.alu.b [29]),
    .Y(_1736_)
);

DFFPOSX1 _10345_ (
    .Q(\datapath.regrs2alu [26]),
    .CLK(CLK_bF$buf141),
    .D(\datapath.registers.regb_data [26])
);

DFFPOSX1 _19883_ (
    .Q(\datapath.registers.828[1] [27]),
    .CLK(CLK_bF$buf12),
    .D(_4007_)
);

DFFPOSX1 _19463_ (
    .Q(\datapath.registers.828[23] [23]),
    .CLK(CLK_bF$buf149),
    .D(_4131_)
);

DFFPOSX1 _19043_ (
    .Q(\datapath.registers.828[31] [19]),
    .CLK(CLK_bF$buf106),
    .D(_4414_)
);

FILL SFILL12920x32050 (
);

OAI21X1 _8913_ (
    .A(_769_),
    .B(gnd),
    .C(_770_),
    .Y(\datapath._03_ [1])
);

DFFPOSX1 _12911_ (
    .Q(\datapath.csr.mepc [5]),
    .CLK(CLK_bF$buf11),
    .D(\datapath.csr._26_ [5])
);

NAND2X1 _15383_ (
    .A(\datapath.registers.828[4] [16]),
    .B(_5470__bF$buf0),
    .Y(_5487_)
);

FILL FILL83080x52050 (
);

AOI21X1 _16588_ (
    .A(\datapath.registers.828[22] [18]),
    .B(\datapath.idinstr_17_bF$buf7 ),
    .C(\datapath.idinstr_15_bF$buf0 ),
    .Y(_6498_)
);

NAND2X1 _16168_ (
    .A(\datapath.idinstr_17_bF$buf0 ),
    .B(_6086_),
    .Y(_6087_)
);

FILL SFILL39000x42050 (
);

NOR2X1 _9871_ (
    .A(\datapath.alupc [28]),
    .B(\datapath.regimmalu [28]),
    .Y(_725_)
);

NAND2X1 _9451_ (
    .A(\datapath.imm [20]),
    .B(_316__bF$buf2),
    .Y(_380_)
);

INVX1 _9031_ (
    .A(\datapath.nextpc [9]),
    .Y(_849_)
);

MUX2X1 _12088_ (
    .A(_1518_),
    .B(_1395_),
    .S(_1123__bF$buf3),
    .Y(_1520_)
);

NAND2X1 _18734_ (
    .A(\datapath.registers.828[28] [17]),
    .B(_8531__bF$buf5),
    .Y(_8549_)
);

NAND3X1 _18314_ (
    .A(\datapath.idinstr_21_bF$buf44 ),
    .B(_8185_),
    .C(_8183_),
    .Y(_8186_)
);

DFFPOSX1 _19939_ (
    .Q(\datapath.registers.828[28] [19]),
    .CLK(CLK_bF$buf10),
    .D(_4286_)
);

DFFPOSX1 _19519_ (
    .Q(\datapath.registers.828[11] [15]),
    .CLK(CLK_bF$buf95),
    .D(_3706_)
);

OAI21X1 _14654_ (
    .A(_5094_),
    .B(_5039__bF$buf3),
    .C(_5095_),
    .Y(_3819_)
);

NOR2X1 _14234_ (
    .A(\datapath.registers.828[19] [10]),
    .B(_4842__bF$buf6),
    .Y(_4856_)
);

FILL SFILL29000x40050 (
);

FILL SFILL53880x29050 (
);

AOI21X1 _15859_ (
    .A(\datapath.idinstr_15_bF$buf14 ),
    .B(_5784_),
    .C(\datapath.idinstr_17_bF$buf0 ),
    .Y(_5785_)
);

INVX1 _15439_ (
    .A(\datapath.registers.828[3] [10]),
    .Y(_5517_)
);

AOI21X1 _15019_ (
    .A(_4735__bF$buf0),
    .B(_5257__bF$buf2),
    .C(_5299_),
    .Y(_4652_)
);

INVX2 _10994_ (
    .A(\datapath.alu.a [9]),
    .Y(_1964_)
);

DFFPOSX1 _10574_ (
    .Q(\datapath.idpc_4 [28]),
    .CLK(CLK_bF$buf77),
    .D(\datapath._04_ [28])
);

DFFPOSX1 _10154_ (
    .Q(\datapath.regjmpalign [0]),
    .CLK(CLK_bF$buf48),
    .D(\datapath.jumptarget [0])
);

MUX2X1 _16800_ (
    .A(\datapath.registers.828[3] [23]),
    .B(\datapath.registers.828[2] [23]),
    .S(\datapath.idinstr_15_bF$buf29 ),
    .Y(_6705_)
);

DFFPOSX1 _19692_ (
    .Q(\datapath.registers.828[27] [28]),
    .CLK(CLK_bF$buf33),
    .D(_4264_)
);

DFFPOSX1 _19272_ (
    .Q(\datapath.registers.828[22] [24]),
    .CLK(CLK_bF$buf127),
    .D(_4100_)
);

BUFX2 _8722_ (
    .A(_1_[26]),
    .Y(DMEM_DATA_S[26])
);

INVX1 _11779_ (
    .A(_1710_),
    .Y(_1189_)
);

NOR2X1 _11359_ (
    .A(_2320_),
    .B(_2321_),
    .Y(_2322_)
);

FILL SFILL43480x58050 (
);

AOI21X1 _12720_ (
    .A(_2840_),
    .B(_2854_),
    .C(\datapath.csr.mvect [6]),
    .Y(_2855_)
);

INVX1 _12300_ (
    .A(\datapath.csr.mcause [17]),
    .Y(_2552_)
);

NOR2X1 _15192_ (
    .A(\datapath.registers.828[6] [19]),
    .B(_5369__bF$buf7),
    .Y(_5389_)
);

DFFPOSX1 _9927_ (
    .Q(\datapath.regcsrwb [13]),
    .CLK(CLK_bF$buf80),
    .D(\datapath.csr.csr_wdata [13])
);

NAND2X1 _9507_ (
    .A(\datapath.idpc [1]),
    .B(_416__bF$buf1),
    .Y(_423_)
);

FILL SFILL43880x27050 (
);

INVX8 _13925_ (
    .A(\datapath.rd [4]),
    .Y(_4681_)
);

AOI21X1 _13505_ (
    .A(gnd),
    .B(\datapath.nextpc [2]),
    .C(_3363_),
    .Y(\datapath.programcounter._1_ [2])
);

AOI21X1 _16397_ (
    .A(\datapath.idinstr_15_bF$buf22 ),
    .B(_6310_),
    .C(\datapath.idinstr_17_bF$buf9 ),
    .Y(_6311_)
);

FILL SFILL33480x56050 (
);

XOR2X1 _9680_ (
    .A(\datapath.alupc [5]),
    .B(\datapath.regimmalu [5]),
    .Y(_556_)
);

AOI22X1 _9260_ (
    .A(\datapath.regcwb [6]),
    .B(_218__bF$buf0),
    .C(_219__bF$buf1),
    .D(\datapath.wbpc_4 [6]),
    .Y(_236_)
);

BUFX2 _18963_ (
    .A(\datapath.registers.828[0] [3]),
    .Y(_3661_)
);

MUX2X1 _18543_ (
    .A(\datapath.registers.828[9] [30]),
    .B(\datapath.registers.828[8] [30]),
    .S(\datapath.idinstr_20_bF$buf7 ),
    .Y(_8409_)
);

MUX2X1 _18123_ (
    .A(_7998_),
    .B(_7997_),
    .S(\datapath.idinstr_21_bF$buf33 ),
    .Y(_7999_)
);

FILL SFILL18600x48050 (
);

FILL SFILL33480x11050 (
);

FILL SFILL58680x60050 (
);

DFFPOSX1 _19748_ (
    .Q(\datapath.registers.828[16] [20]),
    .CLK(CLK_bF$buf60),
    .D(_3872_)
);

DFFPOSX1 _19328_ (
    .Q(\datapath.registers.828[4] [16]),
    .CLK(CLK_bF$buf45),
    .D(_4475_)
);

INVX1 _14883_ (
    .A(\datapath.registers.828[10] [6]),
    .Y(_5221_)
);

NAND2X1 _14463_ (
    .A(\datapath.registers.828[16] [15]),
    .B(_4968__bF$buf6),
    .Y(_4984_)
);

NOR2X1 _14043_ (
    .A(\datapath.registers.828[22] [16]),
    .B(_4738__bF$buf2),
    .Y(_4755_)
);

FILL FILL83160x40050 (
);

OAI21X1 _15668_ (
    .A(_5614__bF$buf3),
    .B(_4717__bF$buf3),
    .C(_5637_),
    .Y(_4418_)
);

AOI21X1 _15248_ (
    .A(_4701__bF$buf2),
    .B(_5402__bF$buf4),
    .C(_5417_),
    .Y(_4505_)
);

DFFPOSX1 _10383_ (
    .Q(\datapath.alu.a [0]),
    .CLK(CLK_bF$buf86),
    .D(\datapath.muxaval [0])
);

FILL SFILL63960x19050 (
);

FILL SFILL39000x37050 (
);

DFFPOSX1 _19081_ (
    .Q(\datapath.registers.828[10] [25]),
    .CLK(CLK_bF$buf118),
    .D(_3685_)
);

FILL SFILL8440x51050 (
);

NAND2X1 _8951_ (
    .A(gnd),
    .B(\datapath.idpc [14]),
    .Y(_796_)
);

OAI21X1 _11588_ (
    .A(_982_),
    .B(_1669_),
    .C(_2463_),
    .Y(_984_)
);

NOR2X1 _11168_ (
    .A(_1091__bF$buf6),
    .B(_2132_),
    .Y(_2135_)
);

AOI21X1 _17814_ (
    .A(_7696_),
    .B(_7690_),
    .C(_7093__bF$buf6),
    .Y(_7697_)
);

FILL SFILL8360x58050 (
);

FILL SFILL13480x52050 (
);

NOR2X1 _9736_ (
    .A(_605_),
    .B(_604_),
    .Y(_606_)
);

AOI22X1 _9316_ (
    .A(_219__bF$buf4),
    .B(\datapath.wbpc_4 [20]),
    .C(\datapath.regcsrwb [20]),
    .D(_216__bF$buf4),
    .Y(_278_)
);

NAND2X1 _13734_ (
    .A(\datapath.programcounter.pc [16]),
    .B(\datapath.programcounter.pc [17]),
    .Y(_3530_)
);

MUX2X1 _13314_ (
    .A(_3064_),
    .B(_3234_),
    .S(_3229_),
    .Y(\datapath.memoryinterface.byte_size_store.storebyte [13])
);

FILL SFILL53960x17050 (
);

FILL SFILL13400x50050 (
);

FILL SFILL29000x35050 (
);

NOR2X1 _14939_ (
    .A(\datapath.registers.828[10] [30]),
    .B(_5212__bF$buf0),
    .Y(_5253_)
);

OAI21X1 _14519_ (
    .A(_5004__bF$buf3),
    .B(_4840__bF$buf1),
    .C(\datapath.registers.828[15] [9]),
    .Y(_5014_)
);

NAND2X1 _18772_ (
    .A(\datapath.rd [3]),
    .B(_8565__bF$buf4),
    .Y(_8569_)
);

AOI21X1 _18352_ (
    .A(_8222_),
    .B(_8221_),
    .C(_7092__bF$buf7),
    .Y(_8223_)
);

NAND2X1 _10859_ (
    .A(\datapath.alu.b_0_bF$buf2 ),
    .B(_1702_),
    .Y(_1830_)
);

DFFPOSX1 _10439_ (
    .Q(\datapath.aluinstr [21]),
    .CLK(CLK_bF$buf109),
    .D(\datapath.idinstr_21_bF$buf29 )
);

DFFPOSX1 _10019_ (
    .Q(\datapath.wbinstr [8]),
    .CLK(CLK_bF$buf14),
    .D(\datapath.meminstr [8])
);

OAI21X1 _11800_ (
    .A(_1016_),
    .B(\datapath.alu.a [18]),
    .C(_2062_),
    .Y(_1212_)
);

DFFPOSX1 _19977_ (
    .Q(\datapath.registers.828[6] [25]),
    .CLK(CLK_bF$buf40),
    .D(_4549_)
);

DFFPOSX1 _19557_ (
    .Q(\datapath.registers.828[12] [21]),
    .CLK(CLK_bF$buf25),
    .D(_3745_)
);

DFFPOSX1 _19137_ (
    .Q(\datapath.registers.828[17] [17]),
    .CLK(CLK_bF$buf62),
    .D(_3900_)
);

NOR2X1 _14692_ (
    .A(\datapath.registers.828[13] [16]),
    .B(_5099__bF$buf7),
    .Y(_5116_)
);

NAND2X1 _14272_ (
    .A(\datapath.rd [26]),
    .B(_4842__bF$buf0),
    .Y(_4878_)
);

FILL SFILL68760x50050 (
);

MUX2X1 _15897_ (
    .A(_5821_),
    .B(_5820_),
    .S(\datapath.idinstr_16_bF$buf31 ),
    .Y(_5822_)
);

NOR2X1 _15477_ (
    .A(\datapath.registers.828[3] [26]),
    .B(_5503__bF$buf0),
    .Y(_5539_)
);

NAND2X1 _15057_ (
    .A(\datapath.registers.828[8] [18]),
    .B(_5300__bF$buf2),
    .Y(_5319_)
);

FILL SFILL68680x57050 (
);

DFFPOSX1 _10192_ (
    .Q(\datapath.meminstr [31]),
    .CLK(CLK_bF$buf34),
    .D(\datapath.aluinstr [31])
);

BUFX2 _8760_ (
    .A(\datapath.programcounter.pc [31]),
    .Y(IMEM_ADDR[31])
);

NAND2X1 _11397_ (
    .A(_1583_),
    .B(_2358_),
    .Y(_2359_)
);

FILL SFILL68680x12050 (
);

NAND3X1 _17623_ (
    .A(\datapath.idinstr_21_bF$buf31 ),
    .B(_7509_),
    .C(_7507_),
    .Y(_7510_)
);

NAND2X1 _17203_ (
    .A(_7092__bF$buf1),
    .B(_7098_),
    .Y(_7099_)
);

DFFPOSX1 _9965_ (
    .Q(\datapath.regloadwb [19]),
    .CLK(CLK_bF$buf7),
    .D(\datapath.memdataload [19])
);

NAND3X1 _9545_ (
    .A(_450_),
    .B(_451_),
    .C(_449_),
    .Y(\datapath.muxaval [10])
);

NAND2X1 _9125_ (
    .A(gnd),
    .B(\datapath.idinstr [8]),
    .Y(_135_)
);

NOR2X1 _18828_ (
    .A(\datapath.registers.828[27] [31]),
    .B(_8565__bF$buf6),
    .Y(_8597_)
);

AOI21X1 _18408_ (
    .A(_8256_),
    .B(_8277_),
    .C(_7095__bF$buf1),
    .Y(\datapath.registers.regb_data [26])
);

AOI21X1 _13963_ (
    .A(_4705__bF$buf2),
    .B(_4673__bF$buf6),
    .C(_4706_),
    .Y(_4123_)
);

NOR2X1 _13543_ (
    .A(gnd),
    .B(\datapath.programcounter.pc_mux [15]),
    .Y(_3389_)
);

NAND2X1 _13123_ (
    .A(_3027__bF$buf2),
    .B(_3029__bF$buf1),
    .Y(_3081_)
);

FILL FILL83160x35050 (
);

FILL SFILL23480x49050 (
);

OAI21X1 _14748_ (
    .A(_4695__bF$buf2),
    .B(_5132__bF$buf2),
    .C(_5144_),
    .Y(_3734_)
);

AOI21X1 _14328_ (
    .A(_4711__bF$buf3),
    .B(_4886__bF$buf5),
    .C(_4908_),
    .Y(_3934_)
);

FILL SFILL79000x4050 (
);

MUX2X1 _18581_ (
    .A(\datapath.registers.828[27] [30]),
    .B(\datapath.registers.828[25] [30]),
    .S(\datapath.idinstr_21_bF$buf28 ),
    .Y(_8447_)
);

AOI21X1 _18161_ (
    .A(_8030_),
    .B(_8035_),
    .C(\datapath.idinstr_23_bF$buf3 ),
    .Y(_8036_)
);

NAND2X1 _10668_ (
    .A(_1530_),
    .B(_1540_),
    .Y(_1551_)
);

DFFPOSX1 _10248_ (
    .Q(\datapath.csr.csr_mepc [25]),
    .CLK(CLK_bF$buf19),
    .D(\datapath.alupc [25])
);

FILL SFILL84040x27050 (
);

DFFPOSX1 _19786_ (
    .Q(\datapath.registers.828[30] [26]),
    .CLK(CLK_bF$buf91),
    .D(_4390_)
);

DFFPOSX1 _19366_ (
    .Q(\datapath.registers.828[7] [22]),
    .CLK(CLK_bF$buf58),
    .D(_4578_)
);

NOR2X1 _14081_ (
    .A(\datapath.registers.828[21] [2]),
    .B(_4772__bF$buf6),
    .Y(_4775_)
);

NOR2X1 _8816_ (
    .A(\datapath.aluinstr [6]),
    .B(_27_),
    .Y(_28_)
);

FILL SFILL13080x33050 (
);

NAND3X1 _12814_ (
    .A(_2881_),
    .B(_2922_),
    .C(_2932_),
    .Y(_2933_)
);

NAND2X1 _15286_ (
    .A(\datapath.registers.828[24] [0]),
    .B(_5437__bF$buf4),
    .Y(_5438_)
);

FILL SFILL74040x25050 (
);

MUX2X1 _17852_ (
    .A(\datapath.registers.828[21] [14]),
    .B(\datapath.registers.828[20] [14]),
    .S(\datapath.idinstr_20_bF$buf8 ),
    .Y(_7734_)
);

MUX2X1 _17432_ (
    .A(\datapath.registers.828[5] [5]),
    .B(\datapath.registers.828[4] [5]),
    .S(\datapath.idinstr_20_bF$buf31 ),
    .Y(_7323_)
);

AOI21X1 _17012_ (
    .A(_6891_),
    .B(_6912_),
    .C(_5687__bF$buf3),
    .Y(\datapath.registers.rega_data [27])
);

NOR2X1 _9774_ (
    .A(_638_),
    .B(_637_),
    .Y(_639_)
);

NAND2X1 _9354_ (
    .A(\datapath.regloadwb [29]),
    .B(_213__bF$buf0),
    .Y(_307_)
);

FILL SFILL23640x4050 (
);

FILL SFILL63880x2050 (
);

NOR2X1 _18637_ (
    .A(\datapath.registers.828[29] [1]),
    .B(_8498__bF$buf7),
    .Y(_8500_)
);

AOI21X1 _18217_ (
    .A(\datapath.registers.828[28] [22]),
    .B(\datapath.idinstr_22_bF$buf6 ),
    .C(\datapath.idinstr_20_bF$buf28 ),
    .Y(_8091_)
);

AND2X2 _13772_ (
    .A(_3559_),
    .B(_3557_),
    .Y(\datapath.nextpc [22])
);

INVX1 _13352_ (
    .A(\datapath.memoryinterface.byte_size_load.byteval [1]),
    .Y(_3253_)
);

FILL SFILL64040x23050 (
);

NOR2X1 _14977_ (
    .A(\datapath.registers.828[9] [13]),
    .B(_5257__bF$buf2),
    .Y(_5276_)
);

OAI21X1 _14557_ (
    .A(_5004__bF$buf4),
    .B(_4840__bF$buf4),
    .C(\datapath.registers.828[15] [28]),
    .Y(_5033_)
);

NOR2X1 _14137_ (
    .A(\datapath.registers.828[21] [30]),
    .B(_4772__bF$buf4),
    .Y(_4803_)
);

NAND2X1 _18390_ (
    .A(_7092__bF$buf2),
    .B(_8259_),
    .Y(_8260_)
);

OAI21X1 _10897_ (
    .A(_994__bF$buf1),
    .B(_1864_),
    .C(_1867_),
    .Y(_1868_)
);

DFFPOSX1 _10477_ (
    .Q(\datapath.alupc_4 [27]),
    .CLK(CLK_bF$buf129),
    .D(\datapath.idpc_4 [27])
);

DFFPOSX1 _10057_ (
    .Q(\datapath.wbpc_4 [31]),
    .CLK(CLK_bF$buf66),
    .D(\datapath.mempc_4 [31])
);

NAND2X1 _16703_ (
    .A(\datapath.idinstr_17_bF$buf8 ),
    .B(_6609_),
    .Y(_6610_)
);

FILL SFILL58760x43050 (
);

DFFPOSX1 _19595_ (
    .Q(\datapath.registers.828[21] [27]),
    .CLK(CLK_bF$buf57),
    .D(_4071_)
);

DFFPOSX1 _19175_ (
    .Q(\datapath.registers.828[15] [23]),
    .CLK(CLK_bF$buf124),
    .D(_3843_)
);

FILL SFILL58920x3050 (
);

MUX2X1 _17908_ (
    .A(_7788_),
    .B(_7787_),
    .S(\datapath.idinstr_21_bF$buf12 ),
    .Y(_7789_)
);

OAI21X1 _12623_ (
    .A(_2792_),
    .B(_2793_),
    .C(_2791_),
    .Y(\datapath.csr._32_ [3])
);

NOR3X1 _12203_ (
    .A(_995_),
    .B(_1030_),
    .C(\datapath.alu.c [17]),
    .Y(_1642_)
);

OAI21X1 _15095_ (
    .A(_5336__bF$buf3),
    .B(_4840__bF$buf6),
    .C(\datapath.registers.828[7] [3]),
    .Y(_5340_)
);

FILL SFILL58440x7050 (
);

NOR2X1 _13828_ (
    .A(_3602_),
    .B(_3572_),
    .Y(_3604_)
);

NAND2X1 _13408_ (
    .A(DMEM_DATA_L[10]),
    .B(_3031__bF$buf5),
    .Y(_3300_)
);

FILL SFILL48760x41050 (
);

AOI21X1 _17661_ (
    .A(\datapath.idinstr_20_bF$buf17 ),
    .B(_7546_),
    .C(\datapath.idinstr_22_bF$buf27 ),
    .Y(_7547_)
);

OAI21X1 _17241_ (
    .A(_7136_),
    .B(_7127_),
    .C(_7088__bF$buf0),
    .Y(_7137_)
);

NAND2X1 _9583_ (
    .A(\datapath.idpc [20]),
    .B(_416__bF$buf1),
    .Y(_480_)
);

INVX1 _9163_ (
    .A(IMEM_DATA[21]),
    .Y(_160_)
);

AOI21X1 _18866_ (
    .A(_4707__bF$buf4),
    .B(_8598__bF$buf2),
    .C(_8616_),
    .Y(_4220_)
);

FILL SFILL74120x58050 (
);

MUX2X1 _18446_ (
    .A(\datapath.registers.828[5] [27]),
    .B(\datapath.registers.828[4] [27]),
    .S(\datapath.idinstr_20_bF$buf30 ),
    .Y(_8315_)
);

OAI21X1 _18026_ (
    .A(_7892_),
    .B(_7903_),
    .C(\datapath.idinstr_24_bF$buf3 ),
    .Y(_7904_)
);

INVX2 _13581_ (
    .A(\datapath.programcounter.pc [28]),
    .Y(_3414_)
);

NAND2X1 _13161_ (
    .A(_0__1_bF$buf6),
    .B(DMEM_DATA_L[14]),
    .Y(_3113_)
);

OAI21X1 _14786_ (
    .A(_4733__bF$buf3),
    .B(_5132__bF$buf4),
    .C(_5163_),
    .Y(_3755_)
);

AOI21X1 _14366_ (
    .A(_4681__bF$buf2),
    .B(_4924__bF$buf0),
    .C(_4929_),
    .Y(_3918_)
);

FILL SFILL28440x6050 (
);

DFFPOSX1 _10286_ (
    .Q(\datapath.regimmalu [31]),
    .CLK(CLK_bF$buf144),
    .D(\datapath.immediatedecoder._12_ )
);

FILL SFILL8360x2050 (
);

AOI21X1 _16932_ (
    .A(\datapath.registers.828[13] [26]),
    .B(\datapath.idinstr_15_bF$buf3 ),
    .C(\datapath.idinstr_16_bF$buf24 ),
    .Y(_6834_)
);

FILL SFILL8280x7050 (
);

AOI21X1 _16512_ (
    .A(_6419_),
    .B(_6423_),
    .C(\datapath.idinstr_18_bF$buf4 ),
    .Y(_6424_)
);

NAND2X1 _8854_ (
    .A(\datapath.idinstr [1]),
    .B(\datapath.idinstr [0]),
    .Y(_60_)
);

FILL SFILL68840x33050 (
);

OAI21X1 _17717_ (
    .A(_4857_),
    .B(\datapath.idinstr_22_bF$buf17 ),
    .C(_7601_),
    .Y(_7602_)
);

NAND3X1 _12852_ (
    .A(\datapath.csr.mvect [28]),
    .B(_2658_),
    .C(_2959_),
    .Y(_2964_)
);

INVX1 _12432_ (
    .A(\datapath.csr.mvect [23]),
    .Y(_2646_)
);

NAND2X1 _12012_ (
    .A(_1438_),
    .B(_1428_),
    .Y(_1439_)
);

FILL SFILL28680x44050 (
);

NOR2X1 _9639_ (
    .A(\controlunit.pc_sel [0]),
    .B(\controlunit.mret_bF$buf3 ),
    .Y(_522_)
);

INVX1 _9219_ (
    .A(\datapath.meminstr [12]),
    .Y(_204_)
);

NAND3X1 _13637_ (
    .A(_3454_),
    .B(_3455_),
    .C(_3453_),
    .Y(\datapath.programcounter.pc_mux [6])
);

NAND3X1 _13217_ (
    .A(\datapath.memoryinterface.byte_size_store.storebyte [22]),
    .B(_3027__bF$buf0),
    .C(_3029__bF$buf2),
    .Y(_3161_)
);

MUX2X1 _17890_ (
    .A(\datapath.registers.828[23] [15]),
    .B(\datapath.registers.828[21] [15]),
    .S(\datapath.idinstr_21_bF$buf34 ),
    .Y(_7771_)
);

MUX2X1 _17470_ (
    .A(_7359_),
    .B(_7358_),
    .S(\datapath.idinstr_21_bF$buf12 ),
    .Y(_7360_)
);

MUX2X1 _17050_ (
    .A(\datapath.registers.828[5] [28]),
    .B(\datapath.registers.828[4] [28]),
    .S(\datapath.idinstr_15_bF$buf13 ),
    .Y(_6950_)
);

FILL SFILL58840x31050 (
);

NAND2X1 _9392_ (
    .A(\datapath.csr.csr_data [5]),
    .B(_317__bF$buf0),
    .Y(_336_)
);

NOR2X1 _18675_ (
    .A(\datapath.registers.828[29] [20]),
    .B(_8498__bF$buf1),
    .Y(_8519_)
);

OAI21X1 _18255_ (
    .A(_8113_),
    .B(_8127_),
    .C(_7088__bF$buf3),
    .Y(_8128_)
);

INVX1 _13390_ (
    .A(DMEM_DATA_L[7]),
    .Y(_3285_)
);

FILL SFILL3240x50 (
);

NOR2X1 _11703_ (
    .A(_1034_),
    .B(_990_),
    .Y(_1107_)
);

FILL SFILL44040x59050 (
);

AOI21X1 _14595_ (
    .A(_4693__bF$buf3),
    .B(_5039__bF$buf2),
    .C(_5056_),
    .Y(_3797_)
);

NOR2X1 _14175_ (
    .A(\datapath.registers.828[20] [16]),
    .B(_4806__bF$buf6),
    .Y(_4823_)
);

DFFPOSX1 _12908_ (
    .Q(\datapath.csr.mepc [2]),
    .CLK(CLK_bF$buf87),
    .D(\datapath.csr._26_ [2])
);

FILL SFILL8520x29050 (
);

DFFPOSX1 _10095_ (
    .Q(\datapath.memoryinterface.data_store [5]),
    .CLK(CLK_bF$buf1),
    .D(\datapath.regrs2alu [5])
);

FILL SFILL8120x15050 (
);

MUX2X1 _16741_ (
    .A(\datapath.registers.828[27] [22]),
    .B(\datapath.registers.828[26] [22]),
    .S(\datapath.idinstr_15_bF$buf19 ),
    .Y(_6647_)
);

NOR2X1 _16321_ (
    .A(_6236_),
    .B(_5681__bF$buf1),
    .Y(_6237_)
);

AOI21X1 _17946_ (
    .A(_7821_),
    .B(_7825_),
    .C(_7093__bF$buf6),
    .Y(_7826_)
);

MUX2X1 _17526_ (
    .A(\datapath.registers.828[22] [7]),
    .B(\datapath.registers.828[20] [7]),
    .S(\datapath.idinstr_21_bF$buf0 ),
    .Y(_7415_)
);

NOR2X1 _17106_ (
    .A(_7003_),
    .B(_5681__bF$buf0),
    .Y(_7004_)
);

AOI21X1 _12661_ (
    .A(_2554_),
    .B(_2797__bF$buf4),
    .C(_2816_),
    .Y(\datapath.csr._32_ [18])
);

AOI22X1 _12241_ (
    .A(_2500__bF$buf3),
    .B(\datapath.csr.mvect [2]),
    .C(\datapath.csr.mepc [0]),
    .D(_2507__bF$buf2),
    .Y(_2508_)
);

OAI21X1 _9868_ (
    .A(_691_),
    .B(_718_),
    .C(_721_),
    .Y(_722_)
);

NAND2X1 _9448_ (
    .A(\datapath.csr.csr_data [19]),
    .B(_317__bF$buf1),
    .Y(_378_)
);

INVX1 _9028_ (
    .A(\datapath.nextpc [8]),
    .Y(_847_)
);

FILL SFILL34040x12050 (
);

AOI21X1 _13866_ (
    .A(\datapath.alu.c [31]),
    .B(_3423__bF$buf2),
    .C(_3634_),
    .Y(_3635_)
);

NAND2X1 _13446_ (
    .A(DMEM_DATA_L[19]),
    .B(_3031__bF$buf7),
    .Y(_3329_)
);

NAND3X1 _13026_ (
    .A(\datapath.idinstr [9]),
    .B(_3003_),
    .C(_2977_),
    .Y(_2982_)
);

AOI21X1 _18484_ (
    .A(_8351_),
    .B(_8345_),
    .C(_7093__bF$buf4),
    .Y(_8352_)
);

MUX2X1 _18064_ (
    .A(\datapath.registers.828[1] [19]),
    .B(\datapath.registers.828[0] [19]),
    .S(\datapath.idinstr_20_bF$buf16 ),
    .Y(_7941_)
);

FILL SFILL3320x31050 (
);

FILL SFILL68840x28050 (
);

NOR2X1 _11932_ (
    .A(\datapath.alu.b_4_bF$buf3 ),
    .B(_1352_),
    .Y(_1353_)
);

OR2X2 _11512_ (
    .A(_902_),
    .B(_2463_),
    .Y(_904_)
);

FILL SFILL28680x39050 (
);

DFFPOSX1 _19689_ (
    .Q(\datapath.registers.828[27] [25]),
    .CLK(CLK_bF$buf72),
    .D(_4261_)
);

DFFPOSX1 _19269_ (
    .Q(\datapath.registers.828[22] [21]),
    .CLK(CLK_bF$buf76),
    .D(_4097_)
);

BUFX2 _8719_ (
    .A(_1_[23]),
    .Y(DMEM_DATA_S[23])
);

NAND2X1 _12717_ (
    .A(\datapath.csr.mepc [3]),
    .B(\controlunit.mret_bF$buf1 ),
    .Y(_2853_)
);

AOI21X1 _15189_ (
    .A(_4707__bF$buf0),
    .B(_5369__bF$buf4),
    .C(_5387_),
    .Y(_4540_)
);

MUX2X1 _16970_ (
    .A(\datapath.registers.828[25] [27]),
    .B(\datapath.registers.828[24] [27]),
    .S(\datapath.idinstr_15_bF$buf32 ),
    .Y(_6871_)
);

NAND3X1 _16550_ (
    .A(_5683__bF$buf1),
    .B(_6460_),
    .C(_6457_),
    .Y(_6461_)
);

NAND2X1 _16130_ (
    .A(_6047_),
    .B(_6049_),
    .Y(_6050_)
);

FILL SFILL58840x26050 (
);

OAI21X1 _8892_ (
    .A(_78_),
    .B(_77_),
    .C(_93_),
    .Y(bsel[0])
);

NAND2X1 _17755_ (
    .A(_7089__bF$buf10),
    .B(_7638_),
    .Y(_7639_)
);

NOR2X1 _17335_ (
    .A(_5841_),
    .B(_7089__bF$buf5),
    .Y(_7228_)
);

DFFPOSX1 _12890_ (
    .Q(\datapath.csr.mcause [16]),
    .CLK(CLK_bF$buf100),
    .D(\datapath.csr._32_ [16])
);

NAND2X1 _12470_ (
    .A(_2673_),
    .B(_2672__bF$buf5),
    .Y(_2674_)
);

AOI21X1 _12050_ (
    .A(_1442_),
    .B(_1451_),
    .C(_1780_),
    .Y(_1479_)
);

OAI21X1 _9677_ (
    .A(\datapath.alupc [5]),
    .B(\datapath.regimmalu [5]),
    .C(_552_),
    .Y(_553_)
);

NAND2X1 _9257_ (
    .A(\datapath.regcwb [5]),
    .B(_218__bF$buf0),
    .Y(_234_)
);

NOR2X1 _13675_ (
    .A(_3481_),
    .B(_3482_),
    .Y(_3483_)
);

INVX1 _13255_ (
    .A(DMEM_DATA_L[28]),
    .Y(_3193_)
);

DFFPOSX1 _19901_ (
    .Q(\datapath.registers.828[29] [13]),
    .CLK(CLK_bF$buf133),
    .D(_4312_)
);

AOI21X1 _15821_ (
    .A(\datapath.idinstr_15_bF$buf16 ),
    .B(_5747_),
    .C(_5684__bF$buf7),
    .Y(_5748_)
);

NAND2X1 _15401_ (
    .A(\datapath.registers.828[4] [25]),
    .B(_5470__bF$buf7),
    .Y(_5496_)
);

NAND2X1 _18293_ (
    .A(_8161_),
    .B(_8164_),
    .Y(_8165_)
);

AOI21X1 _16606_ (
    .A(_6511_),
    .B(_6515_),
    .C(_5685__bF$buf3),
    .Y(_6516_)
);

NAND3X1 _11741_ (
    .A(_1209__bF$buf3),
    .B(_1148_),
    .C(_1141_),
    .Y(_1149_)
);

NAND2X1 _11321_ (
    .A(_994__bF$buf5),
    .B(_2284_),
    .Y(_2285_)
);

DFFPOSX1 _19498_ (
    .Q(\datapath.registers.828[5] [26]),
    .CLK(CLK_bF$buf17),
    .D(_4518_)
);

DFFPOSX1 _19078_ (
    .Q(\datapath.registers.828[10] [22]),
    .CLK(CLK_bF$buf114),
    .D(_3682_)
);

FILL SFILL53720x50 (
);

NAND2X1 _8948_ (
    .A(gnd),
    .B(\datapath.idpc [13]),
    .Y(_794_)
);

FILL SFILL38760x29050 (
);

DFFPOSX1 _12946_ (
    .Q(\datapath.csr.mvect [7]),
    .CLK(CLK_bF$buf43),
    .D(\datapath.csr._13_ [7])
);

NAND2X1 _12526_ (
    .A(\controlunit.csrfile_trap_wen_bF$buf2 ),
    .B(\datapath.csr.csr_mepc [16]),
    .Y(_2716_)
);

NAND2X1 _12106_ (
    .A(_1742_),
    .B(_1513_),
    .Y(_1538_)
);

FILL SFILL3000x50050 (
);

BUFX2 BUFX2_insert430 (
    .A(_5685_),
    .Y(_5685__bF$buf4)
);

BUFX2 BUFX2_insert431 (
    .A(_5685_),
    .Y(_5685__bF$buf3)
);

BUFX2 BUFX2_insert432 (
    .A(_5685_),
    .Y(_5685__bF$buf2)
);

BUFX2 BUFX2_insert433 (
    .A(_5685_),
    .Y(_5685__bF$buf1)
);

MUX2X1 _17984_ (
    .A(\datapath.registers.828[9] [17]),
    .B(\datapath.registers.828[8] [17]),
    .S(\datapath.idinstr_20_bF$buf42 ),
    .Y(_7863_)
);

BUFX2 BUFX2_insert434 (
    .A(_5685_),
    .Y(_5685__bF$buf0)
);

BUFX2 BUFX2_insert435 (
    .A(_2602_),
    .Y(_2602__bF$buf4)
);

MUX2X1 _17564_ (
    .A(_7451_),
    .B(_7450_),
    .S(\datapath.idinstr_21_bF$buf39 ),
    .Y(_7452_)
);

BUFX2 BUFX2_insert436 (
    .A(_2602_),
    .Y(_2602__bF$buf3)
);

MUX2X1 _17144_ (
    .A(_7041_),
    .B(_7040_),
    .S(\datapath.idinstr_16_bF$buf20 ),
    .Y(_7042_)
);

BUFX2 BUFX2_insert437 (
    .A(_2602_),
    .Y(_2602__bF$buf2)
);

BUFX2 BUFX2_insert438 (
    .A(_2602_),
    .Y(_2602__bF$buf1)
);

BUFX2 BUFX2_insert439 (
    .A(_2602_),
    .Y(_2602__bF$buf0)
);

FILL SFILL28760x27050 (
);

FILL SFILL83640x29050 (
);

NAND2X1 _9486_ (
    .A(\datapath.registers.regb_data [29]),
    .B(_318__bF$buf4),
    .Y(_406_)
);

OAI21X1 _9066_ (
    .A(_871_),
    .B(gnd),
    .C(_872_),
    .Y(\datapath._04_ [20])
);

FILL SFILL13400x50 (
);

AOI21X1 _18769_ (
    .A(_4675__bF$buf2),
    .B(_8565__bF$buf0),
    .C(_8567_),
    .Y(_4255_)
);

OAI21X1 _18349_ (
    .A(_5084_),
    .B(\datapath.idinstr_20_bF$buf46 ),
    .C(\datapath.idinstr_21_bF$buf16 ),
    .Y(_8220_)
);

AOI22X1 _13484_ (
    .A(_3238_),
    .B(DMEM_DATA_L[20]),
    .C(DMEM_DATA_L[28]),
    .D(_3239__bF$buf2),
    .Y(_3350_)
);

NAND3X1 _13064_ (
    .A(\datapath.memoryinterface.byte_size_store.storebyte [0]),
    .B(_3027__bF$buf1),
    .C(_3029__bF$buf3),
    .Y(_3030_)
);

DFFPOSX1 _19710_ (
    .Q(\datapath.registers.828[0] [14]),
    .CLK(CLK_bF$buf67),
    .D(_3641_)
);

FILL SFILL18360x56050 (
);

AOI21X1 _14689_ (
    .A(_4701__bF$buf0),
    .B(_5099__bF$buf2),
    .C(_5114_),
    .Y(_3769_)
);

NOR2X1 _14269_ (
    .A(\datapath.registers.828[19] [25]),
    .B(_4842__bF$buf2),
    .Y(_4876_)
);

FILL SFILL33560x31050 (
);

OAI21X1 _15630_ (
    .A(_5614__bF$buf3),
    .B(_4679__bF$buf0),
    .C(_5618_),
    .Y(_4429_)
);

NOR2X1 _15210_ (
    .A(\datapath.registers.828[6] [28]),
    .B(_5369__bF$buf7),
    .Y(_5398_)
);

FILL SFILL38680x50 (
);

DFFPOSX1 _10189_ (
    .Q(\datapath.meminstr [28]),
    .CLK(CLK_bF$buf109),
    .D(\datapath.aluinstr [28])
);

MUX2X1 _16835_ (
    .A(\datapath.registers.828[13] [24]),
    .B(\datapath.registers.828[12] [24]),
    .S(\datapath.idinstr_15_bF$buf5 ),
    .Y(_6739_)
);

OAI21X1 _16415_ (
    .A(_6324_),
    .B(_6325_),
    .C(_6328_),
    .Y(_6329_)
);

MUX2X1 _11970_ (
    .A(_1681_),
    .B(_1759_),
    .S(\datapath.alu.b_0_bF$buf0 ),
    .Y(_1394_)
);

AND2X2 _11550_ (
    .A(_942_),
    .B(_1530_),
    .Y(_943_)
);

NOR2X1 _11130_ (
    .A(_2097_),
    .B(_2096_),
    .Y(_2098_)
);

FILL SFILL23160x60050 (
);

BUFX2 _8757_ (
    .A(\datapath.programcounter.pc [28]),
    .Y(IMEM_ADDR[28])
);

NAND2X1 _12755_ (
    .A(\datapath.csr.mepc [10]),
    .B(\controlunit.mret_bF$buf4 ),
    .Y(_2884_)
);

OAI21X1 _12335_ (
    .A(_2574_),
    .B(_2490__bF$buf2),
    .C(_2575_),
    .Y(\datapath.csr.csr_data [28])
);

FILL SFILL69320x46050 (
);

AOI21X1 _14901_ (
    .A(_4699__bF$buf2),
    .B(_5212__bF$buf3),
    .C(_5231_),
    .Y(_3672_)
);

NAND2X1 _17793_ (
    .A(_7089__bF$buf0),
    .B(_7675_),
    .Y(_7676_)
);

MUX2X1 _17373_ (
    .A(_7265_),
    .B(_7264_),
    .S(\datapath.idinstr_21_bF$buf0 ),
    .Y(_7266_)
);

NAND3X1 _9295_ (
    .A(_261_),
    .B(_262_),
    .C(_260_),
    .Y(\datapath.rd [14])
);

FILL SFILL53640x23050 (
);

NAND2X1 _10821_ (
    .A(\datapath.alu.a [19]),
    .B(_1703_),
    .Y(_1792_)
);

DFFPOSX1 _10401_ (
    .Q(\datapath.alu.a [18]),
    .CLK(CLK_bF$buf139),
    .D(\datapath.muxaval [18])
);

DFFPOSX1 _18998_ (
    .Q(\datapath.registers.828[18] [6]),
    .CLK(CLK_bF$buf22),
    .D(_3952_)
);

MUX2X1 _18578_ (
    .A(\datapath.registers.828[30] [30]),
    .B(\datapath.registers.828[28] [30]),
    .S(\datapath.idinstr_21_bF$buf35 ),
    .Y(_8444_)
);

MUX2X1 _18158_ (
    .A(\datapath.registers.828[23] [21]),
    .B(\datapath.registers.828[21] [21]),
    .S(\datapath.idinstr_21_bF$buf25 ),
    .Y(_8033_)
);

OAI21X1 _13293_ (
    .A(_0__1_bF$buf9),
    .B(_0__0_bF$buf3),
    .C(DMEM_DATA_L[4]),
    .Y(_3223_)
);

FILL SFILL3400x59050 (
);

NAND2X1 _11606_ (
    .A(_2222_),
    .B(_2367_),
    .Y(_1003_)
);

NOR2X1 _14498_ (
    .A(_4665_),
    .B(_5001_),
    .Y(_5002_)
);

AOI21X1 _14078_ (
    .A(_4660__bF$buf4),
    .B(_4772__bF$buf6),
    .C(_4773_),
    .Y(_4052_)
);

MUX2X1 _16644_ (
    .A(_6552_),
    .B(_6551_),
    .S(\datapath.idinstr_16_bF$buf13 ),
    .Y(_6553_)
);

AOI21X1 _16224_ (
    .A(\datapath.idinstr_15_bF$buf31 ),
    .B(_6141_),
    .C(_5684__bF$buf10),
    .Y(_6142_)
);

FILL SFILL73800x53050 (
);

FILL SFILL43560x28050 (
);

INVX1 _8986_ (
    .A(\datapath.programcounter.pc [26]),
    .Y(_819_)
);

FILL SFILL49240x49050 (
);

MUX2X1 _17849_ (
    .A(\datapath.registers.828[19] [14]),
    .B(\datapath.registers.828[18] [14]),
    .S(\datapath.idinstr_20_bF$buf44 ),
    .Y(_7731_)
);

AOI21X1 _17429_ (
    .A(_7319_),
    .B(_7318_),
    .C(_7092__bF$buf2),
    .Y(_7320_)
);

NAND2X1 _17009_ (
    .A(_5684__bF$buf3),
    .B(_6909_),
    .Y(_6910_)
);

INVX1 _12984_ (
    .A(\datapath.idinstr [29]),
    .Y(_3010_)
);

NAND2X1 _12564_ (
    .A(_2745_),
    .B(_2672__bF$buf3),
    .Y(_2746_)
);

OAI21X1 _12144_ (
    .A(_1577_),
    .B(_1564_),
    .C(_1908__bF$buf0),
    .Y(_1579_)
);

OAI21X1 _13769_ (
    .A(_3545_),
    .B(_3551_),
    .C(_3402_),
    .Y(_3557_)
);

OAI21X1 _13349_ (
    .A(_3249_),
    .B(_0__1_bF$buf4),
    .C(_3250_),
    .Y(_3251_)
);

FILL SFILL63800x51050 (
);

FILL SFILL33560x26050 (
);

NOR2X1 _14710_ (
    .A(\datapath.registers.828[13] [25]),
    .B(_5099__bF$buf5),
    .Y(_5125_)
);

BUFX2 BUFX2_insert810 (
    .A(_1123_),
    .Y(_1123__bF$buf0)
);

BUFX2 BUFX2_insert811 (
    .A(_4703_),
    .Y(_4703__bF$buf4)
);

BUFX2 BUFX2_insert812 (
    .A(_4703_),
    .Y(_4703__bF$buf3)
);

BUFX2 BUFX2_insert813 (
    .A(_4703_),
    .Y(_4703__bF$buf2)
);

BUFX2 BUFX2_insert814 (
    .A(_4703_),
    .Y(_4703__bF$buf1)
);

BUFX2 BUFX2_insert815 (
    .A(_4703_),
    .Y(_4703__bF$buf0)
);

BUFX2 BUFX2_insert816 (
    .A(_5470_),
    .Y(_5470__bF$buf7)
);

MUX2X1 _17182_ (
    .A(\datapath.registers.828[7] [31]),
    .B(\datapath.registers.828[6] [31]),
    .S(\datapath.idinstr_15_bF$buf34 ),
    .Y(_7079_)
);

BUFX2 BUFX2_insert817 (
    .A(_5470_),
    .Y(_5470__bF$buf6)
);

FILL SFILL79000x22050 (
);

BUFX2 BUFX2_insert818 (
    .A(_5470_),
    .Y(_5470__bF$buf5)
);

BUFX2 BUFX2_insert819 (
    .A(_5470_),
    .Y(_5470__bF$buf4)
);

FILL SFILL74280x5050 (
);

NAND2X1 _15915_ (
    .A(_5684__bF$buf0),
    .B(_5839_),
    .Y(_5840_)
);

OAI21X1 _10630_ (
    .A(_1112_),
    .B(_1134_),
    .C(_1102_),
    .Y(_1145_)
);

DFFPOSX1 _10210_ (
    .Q(\datapath.mempc_4 [17]),
    .CLK(CLK_bF$buf94),
    .D(\datapath.alupc_4 [17])
);

MUX2X1 _18387_ (
    .A(\datapath.registers.828[9] [26]),
    .B(\datapath.registers.828[8] [26]),
    .S(\datapath.idinstr_20_bF$buf45 ),
    .Y(_8257_)
);

FILL SFILL63720x13050 (
);

FILL SFILL23560x24050 (
);

NAND2X1 _11835_ (
    .A(_1695_),
    .B(_1888_),
    .Y(_1249_)
);

AND2X2 _11415_ (
    .A(_1971_),
    .B(_1963_),
    .Y(_2377_)
);

OAI21X1 _16873_ (
    .A(_6775_),
    .B(\datapath.idinstr_17_bF$buf6 ),
    .C(_6776_),
    .Y(_6777_)
);

AOI21X1 _16453_ (
    .A(_6365_),
    .B(_6364_),
    .C(\datapath.idinstr_16_bF$buf24 ),
    .Y(_6366_)
);

NAND2X1 _16033_ (
    .A(\datapath.registers.828[12] [6]),
    .B(_5681__bF$buf0),
    .Y(_5955_)
);

FILL SFILL53720x11050 (
);

NOR2X1 _8795_ (
    .A(_8_),
    .B(_7_),
    .Y(_9_)
);

FILL SFILL13560x22050 (
);

MUX2X1 _17658_ (
    .A(\datapath.registers.828[18] [10]),
    .B(\datapath.registers.828[16] [10]),
    .S(\datapath.idinstr_21_bF$buf19 ),
    .Y(_7544_)
);

MUX2X1 _17238_ (
    .A(_7133_),
    .B(_7132_),
    .S(\datapath.idinstr_21_bF$buf6 ),
    .Y(_7134_)
);

AOI21X1 _12793_ (
    .A(_2914_),
    .B(_2903_),
    .C(\datapath.csr.mvect [19]),
    .Y(_2915_)
);

INVX1 _12373_ (
    .A(\datapath.csr.csr_wdata [3]),
    .Y(_2607_)
);

NOR2X1 _13998_ (
    .A(\datapath.registers.828[23] [28]),
    .B(_4673__bF$buf7),
    .Y(_4730_)
);

INVX1 _13578_ (
    .A(\datapath.programcounter.pc [27]),
    .Y(_3412_)
);

OAI21X1 _13158_ (
    .A(_3106_),
    .B(_3081_),
    .C(_3110_),
    .Y(_1_[13])
);

DFFPOSX1 _19804_ (
    .Q(\datapath.registers.828[13] [12]),
    .CLK(CLK_bF$buf95),
    .D(_3767_)
);

FILL SFILL44120x50 (
);

NOR2X1 _15724_ (
    .A(\datapath.registers.828[30] [18]),
    .B(_5647__bF$buf5),
    .Y(_5666_)
);

NAND2X1 _15304_ (
    .A(\datapath.registers.828[24] [9]),
    .B(_5437__bF$buf1),
    .Y(_5447_)
);

MUX2X1 _18196_ (
    .A(\datapath.registers.828[5] [22]),
    .B(\datapath.registers.828[4] [22]),
    .S(\datapath.idinstr_20_bF$buf31 ),
    .Y(_8070_)
);

NOR2X1 _16929_ (
    .A(_6830_),
    .B(_5681__bF$buf5),
    .Y(_6831_)
);

FILL SFILL33240x45050 (
);

MUX2X1 _16509_ (
    .A(\datapath.registers.828[3] [16]),
    .B(\datapath.registers.828[2] [16]),
    .S(\datapath.idinstr_15_bF$buf46 ),
    .Y(_6421_)
);

OAI21X1 _11644_ (
    .A(_1434_),
    .B(_1882__bF$buf3),
    .C(_1043_),
    .Y(_1044_)
);

OAI21X1 _11224_ (
    .A(_1975_),
    .B(_1876_),
    .C(_1991_),
    .Y(_2190_)
);

FILL SFILL38600x7050 (
);

NAND3X1 _12849_ (
    .A(_2863_),
    .B(_2957_),
    .C(_2961_),
    .Y(_2962_)
);

INVX1 _12429_ (
    .A(\datapath.csr.mvect [22]),
    .Y(_2644_)
);

AOI21X1 _12009_ (
    .A(\datapath.alu.b [25]),
    .B(_1433_),
    .C(_1435_),
    .Y(_1436_)
);

FILL SFILL63800x46050 (
);

AOI21X1 _16682_ (
    .A(_6589_),
    .B(_6588_),
    .C(_5684__bF$buf6),
    .Y(_6590_)
);

MUX2X1 _16262_ (
    .A(\datapath.registers.828[19] [11]),
    .B(\datapath.registers.828[17] [11]),
    .S(\datapath.idinstr_16_bF$buf10 ),
    .Y(_6179_)
);

FILL SFILL8680x56050 (
);

FILL SFILL8280x42050 (
);

NAND2X1 _17887_ (
    .A(_7765_),
    .B(_7767_),
    .Y(_7768_)
);

AOI21X1 _17467_ (
    .A(_7357_),
    .B(_7332_),
    .C(_7095__bF$buf4),
    .Y(\datapath.registers.regb_data [5])
);

MUX2X1 _17047_ (
    .A(\datapath.registers.828[3] [28]),
    .B(\datapath.registers.828[2] [28]),
    .S(\datapath.idinstr_15_bF$buf12 ),
    .Y(_6947_)
);

FILL SFILL23640x12050 (
);

OAI21X1 _12182_ (
    .A(_983_),
    .B(_1990__bF$buf0),
    .C(_1065_),
    .Y(_1620_)
);

NAND3X1 _9389_ (
    .A(_332_),
    .B(_333_),
    .C(_331_),
    .Y(\datapath.muxbval [4])
);

FILL SFILL53800x44050 (
);

FILL SFILL84200x35050 (
);

NAND2X1 _10915_ (
    .A(_1885_),
    .B(_1877_),
    .Y(_1886_)
);

OAI21X1 _13387_ (
    .A(_3278_),
    .B(_3081_),
    .C(_3282_),
    .Y(\datapath.memdataload [6])
);

FILL SFILL69000x15050 (
);

DFFPOSX1 _19613_ (
    .Q(\datapath.registers.828[9] [13]),
    .CLK(CLK_bF$buf92),
    .D(_4632_)
);

FILL SFILL13240x41050 (
);

MUX2X1 _15953_ (
    .A(_5876_),
    .B(_5875_),
    .S(\datapath.idinstr_16_bF$buf13 ),
    .Y(_5877_)
);

OAI21X1 _15533_ (
    .A(_5038__bF$buf1),
    .B(_4668__bF$buf7),
    .C(\datapath.registers.828[2] [21]),
    .Y(_5568_)
);

OAI21X1 _15113_ (
    .A(_5336__bF$buf2),
    .B(_4840__bF$buf0),
    .C(\datapath.registers.828[7] [12]),
    .Y(_5349_)
);

FILL SFILL78920x55050 (
);

FILL SFILL43800x42050 (
);

FILL SFILL13560x17050 (
);

OAI21X1 _16738_ (
    .A(_6644_),
    .B(_6635_),
    .C(_5680__bF$buf1),
    .Y(_6645_)
);

MUX2X1 _16318_ (
    .A(_6233_),
    .B(_6232_),
    .S(\datapath.idinstr_16_bF$buf23 ),
    .Y(_6234_)
);

FILL SFILL43720x49050 (
);

AOI21X1 _11873_ (
    .A(\datapath.alu.b_3_bF$buf5 ),
    .B(_964_),
    .C(\datapath.alu.b_4_bF$buf3 ),
    .Y(_1290_)
);

NAND2X1 _11453_ (
    .A(_1900_),
    .B(_2413_),
    .Y(_2414_)
);

MUX2X1 _11033_ (
    .A(_2001_),
    .B(_2000_),
    .S(_1123__bF$buf6),
    .Y(_2002_)
);

FILL SFILL78920x10050 (
);

FILL SFILL64280x33050 (
);

NAND3X1 _9601_ (
    .A(_492_),
    .B(_493_),
    .C(_491_),
    .Y(\datapath.muxaval [24])
);

OAI21X1 _12658_ (
    .A(_2797__bF$buf2),
    .B(\datapath.csr.csr_wdata [17]),
    .C(_2783__bF$buf0),
    .Y(_2815_)
);

INVX1 _12238_ (
    .A(_2486_),
    .Y(_2505_)
);

FILL SFILL68920x53050 (
);

FILL SFILL33800x40050 (
);

AOI21X1 _16491_ (
    .A(_6397_),
    .B(_6402_),
    .C(\datapath.idinstr_18_bF$buf7 ),
    .Y(_6403_)
);

AOI21X1 _16071_ (
    .A(_5992_),
    .B(_5969_),
    .C(_5687__bF$buf0),
    .Y(\datapath.registers.rega_data [6])
);

NOR2X1 _14804_ (
    .A(\datapath.registers.828[11] [5]),
    .B(_5167__bF$buf5),
    .Y(_5175_)
);

MUX2X1 _17696_ (
    .A(\datapath.registers.828[11] [11]),
    .B(\datapath.registers.828[10] [11]),
    .S(\datapath.idinstr_20_bF$buf15 ),
    .Y(_7581_)
);

MUX2X1 _17276_ (
    .A(\datapath.registers.828[1] [1]),
    .B(\datapath.registers.828[0] [1]),
    .S(\datapath.idinstr_20_bF$buf52 ),
    .Y(_7171_)
);

FILL SFILL18360x7050 (
);

NAND2X1 _9198_ (
    .A(\datapath.meminstr [1]),
    .B(\datapath.meminstr [0]),
    .Y(_184_)
);

INVX4 _10724_ (
    .A(\datapath.alu.a [20]),
    .Y(_1695_)
);

DFFPOSX1 _10304_ (
    .Q(\datapath.regcsralu [17]),
    .CLK(CLK_bF$buf36),
    .D(\datapath.csr.csr_data [17])
);

NAND3X1 _13196_ (
    .A(\datapath.memoryinterface.byte_size_store.storebyte [19]),
    .B(_3027__bF$buf3),
    .C(_3029__bF$buf4),
    .Y(_3143_)
);

DFFPOSX1 _19842_ (
    .Q(\datapath.registers.828[3] [18]),
    .CLK(CLK_bF$buf126),
    .D(_4445_)
);

DFFPOSX1 _19422_ (
    .Q(\datapath.registers.828[24] [14]),
    .CLK(CLK_bF$buf117),
    .D(_4153_)
);

DFFPOSX1 _19002_ (
    .Q(\datapath.registers.828[18] [10]),
    .CLK(CLK_bF$buf49),
    .D(_3925_)
);

NAND2X1 _11929_ (
    .A(\datapath.alu.b_2_bF$buf5 ),
    .B(_1214_),
    .Y(_1350_)
);

NAND2X1 _11509_ (
    .A(_2390_),
    .B(_2464_),
    .Y(_901_)
);

MUX2X1 _15762_ (
    .A(_5689_),
    .B(_5688_),
    .S(\datapath.idinstr_16_bF$buf31 ),
    .Y(_5690_)
);

NAND2X1 _15342_ (
    .A(\datapath.registers.828[24] [28]),
    .B(_5437__bF$buf1),
    .Y(_5466_)
);

FILL SFILL8280x37050 (
);

AOI21X1 _16967_ (
    .A(_6864_),
    .B(_6868_),
    .C(_5685__bF$buf3),
    .Y(_6869_)
);

INVX1 _16547_ (
    .A(\datapath.registers.828[24] [17]),
    .Y(_6458_)
);

NAND2X1 _16127_ (
    .A(_5681__bF$buf10),
    .B(_6046_),
    .Y(_6047_)
);

OAI21X1 _11682_ (
    .A(_1722_),
    .B(_1083_),
    .C(_1084_),
    .Y(_1085_)
);

AOI22X1 _11262_ (
    .A(_2224_),
    .B(_1920_),
    .C(_1919_),
    .D(_2226_),
    .Y(_2227_)
);

FILL SFILL8600x49050 (
);

FILL SFILL48840x56050 (
);

OAI21X1 _8889_ (
    .A(_90_),
    .B(_68_),
    .C(_77_),
    .Y(\controlunit.imm_sel [2])
);

FILL SFILL53800x39050 (
);

AOI21X1 _9830_ (
    .A(_673_),
    .B(_679_),
    .C(_677_),
    .Y(_688_)
);

NAND2X1 _9410_ (
    .A(\datapath.registers.regb_data [10]),
    .B(_318__bF$buf3),
    .Y(_349_)
);

DFFPOSX1 _12887_ (
    .Q(\datapath.csr.mcause [13]),
    .CLK(CLK_bF$buf140),
    .D(\datapath.csr._32_ [13])
);

NOR2X1 _12467_ (
    .A(_2670_),
    .B(_2593_),
    .Y(_2671_)
);

OR2X2 _12047_ (
    .A(_1473_),
    .B(_1748_),
    .Y(_1475_)
);

OAI21X1 _14613_ (
    .A(_5067_),
    .B(_5039__bF$buf6),
    .C(_5068_),
    .Y(_3803_)
);

NAND2X1 _17085_ (
    .A(\datapath.registers.828[12] [29]),
    .B(_5681__bF$buf0),
    .Y(_6984_)
);

FILL SFILL43800x37050 (
);

FILL SFILL38440x40050 (
);

MUX2X1 _15818_ (
    .A(\datapath.registers.828[22] [1]),
    .B(\datapath.registers.828[20] [1]),
    .S(\datapath.idinstr_16_bF$buf3 ),
    .Y(_5745_)
);

MUX2X1 _10953_ (
    .A(_1922_),
    .B(_1921_),
    .S(_994__bF$buf7),
    .Y(_1923_)
);

FILL SFILL3480x53050 (
);

DFFPOSX1 _10533_ (
    .Q(\datapath.idinstr [19]),
    .CLK(CLK_bF$buf20),
    .D(\datapath._05_ [19])
);

DFFPOSX1 _10113_ (
    .Q(\datapath.memoryinterface.data_store [23]),
    .CLK(CLK_bF$buf146),
    .D(\datapath.regrs2alu [23])
);

FILL FILL83080x50 (
);

DFFPOSX1 _19651_ (
    .Q(\datapath.registers.828[26] [19]),
    .CLK(CLK_bF$buf82),
    .D(_4222_)
);

DFFPOSX1 _19231_ (
    .Q(\datapath.registers.828[20] [15]),
    .CLK(CLK_bF$buf63),
    .D(_4026_)
);

CLKBUF1 CLKBUF1_insert730 (
    .A(CLK_hier0_bF$buf9),
    .Y(CLK_bF$buf56)
);

CLKBUF1 CLKBUF1_insert731 (
    .A(CLK_hier0_bF$buf6),
    .Y(CLK_bF$buf55)
);

CLKBUF1 CLKBUF1_insert732 (
    .A(CLK_hier0_bF$buf2),
    .Y(CLK_bF$buf54)
);

CLKBUF1 CLKBUF1_insert733 (
    .A(CLK_hier0_bF$buf0),
    .Y(CLK_bF$buf53)
);

CLKBUF1 CLKBUF1_insert734 (
    .A(CLK_hier0_bF$buf5),
    .Y(CLK_bF$buf52)
);

CLKBUF1 CLKBUF1_insert735 (
    .A(CLK_hier0_bF$buf9),
    .Y(CLK_bF$buf51)
);

NAND3X1 _11738_ (
    .A(_1123__bF$buf6),
    .B(_1142_),
    .C(_1144_),
    .Y(_1146_)
);

CLKBUF1 CLKBUF1_insert736 (
    .A(CLK_hier0_bF$buf1),
    .Y(CLK_bF$buf50)
);

NAND2X1 _11318_ (
    .A(_2278_),
    .B(_2281_),
    .Y(_2282_)
);

CLKBUF1 CLKBUF1_insert737 (
    .A(CLK_hier0_bF$buf4),
    .Y(CLK_bF$buf49)
);

CLKBUF1 CLKBUF1_insert738 (
    .A(CLK_hier0_bF$buf7),
    .Y(CLK_bF$buf48)
);

CLKBUF1 CLKBUF1_insert739 (
    .A(CLK_hier0_bF$buf2),
    .Y(CLK_bF$buf47)
);

FILL SFILL68920x48050 (
);

FILL SFILL33800x35050 (
);

AOI21X1 _15991_ (
    .A(_5909_),
    .B(_5913_),
    .C(_5685__bF$buf5),
    .Y(_5914_)
);

OAI21X1 _15571_ (
    .A(_5579__bF$buf3),
    .B(_4687__bF$buf1),
    .C(_5587_),
    .Y(_4017_)
);

OAI21X1 _15151_ (
    .A(_5336__bF$buf4),
    .B(_4840__bF$buf6),
    .C(\datapath.registers.828[7] [31]),
    .Y(_5368_)
);

FILL SFILL68520x34050 (
);

NAND2X1 _16776_ (
    .A(\datapath.idinstr_17_bF$buf12 ),
    .B(_6681_),
    .Y(_6682_)
);

MUX2X1 _16356_ (
    .A(\datapath.registers.828[3] [13]),
    .B(\datapath.registers.828[2] [13]),
    .S(\datapath.idinstr_15_bF$buf48 ),
    .Y(_6271_)
);

AOI22X1 _11491_ (
    .A(_2041__bF$buf3),
    .B(_2450_),
    .C(_2042_),
    .D(\datapath.alu.a [11]),
    .Y(_2451_)
);

OAI21X1 _11071_ (
    .A(_1048_),
    .B(_2035_),
    .C(_2039_),
    .Y(_2040_)
);

BUFX2 _8698_ (
    .A(_1_[2]),
    .Y(DMEM_DATA_S[2])
);

FILL FILL83000x57050 (
);

OAI21X1 _12696_ (
    .A(_2585__bF$buf3),
    .B(\datapath.csr.mstatus [1]),
    .C(_2783__bF$buf2),
    .Y(_2837_)
);

INVX1 _12276_ (
    .A(\datapath.csr.mip ),
    .Y(_2534_)
);

NOR2X1 _18922_ (
    .A(\datapath.registers.828[25] [13]),
    .B(_8631__bF$buf3),
    .Y(_8645_)
);

NAND2X1 _18502_ (
    .A(\datapath.registers.828[12] [29]),
    .B(_7089__bF$buf9),
    .Y(_8369_)
);

DFFPOSX1 _19707_ (
    .Q(\datapath.registers.828[0] [11]),
    .CLK(CLK_bF$buf14),
    .D(_3638_)
);

NOR2X1 _14842_ (
    .A(\datapath.registers.828[11] [21]),
    .B(_5167__bF$buf4),
    .Y(_5197_)
);

NOR2X1 _14422_ (
    .A(\datapath.registers.828[17] [28]),
    .B(_4924__bF$buf3),
    .Y(_4962_)
);

AOI21X1 _14002_ (
    .A(_4731__bF$buf0),
    .B(_4673__bF$buf7),
    .C(_4732_),
    .Y(_4137_)
);

OAI21X1 _15627_ (
    .A(_4840__bF$buf3),
    .B(_5612__bF$buf3),
    .C(\datapath.registers.828[31] [2]),
    .Y(_5617_)
);

AOI21X1 _15207_ (
    .A(_4725__bF$buf3),
    .B(_5369__bF$buf0),
    .C(_5396_),
    .Y(_4550_)
);

INVX2 _10762_ (
    .A(\datapath.alu.a [29]),
    .Y(_1733_)
);

DFFPOSX1 _10342_ (
    .Q(\datapath.regrs2alu [23]),
    .CLK(CLK_bF$buf84),
    .D(\datapath.registers.regb_data [23])
);

NAND2X1 _18099_ (
    .A(_7092__bF$buf6),
    .B(_7974_),
    .Y(_7975_)
);

DFFPOSX1 _19880_ (
    .Q(\datapath.registers.828[1] [24]),
    .CLK(CLK_bF$buf88),
    .D(_4004_)
);

DFFPOSX1 _19460_ (
    .Q(\datapath.registers.828[23] [20]),
    .CLK(CLK_bF$buf60),
    .D(_4128_)
);

DFFPOSX1 _19040_ (
    .Q(\datapath.registers.828[31] [16]),
    .CLK(CLK_bF$buf70),
    .D(_4411_)
);

OAI21X1 _8910_ (
    .A(_767_),
    .B(gnd),
    .C(_768_),
    .Y(\datapath._03_ [0])
);

AOI21X1 _11967_ (
    .A(_1370_),
    .B(_1389_),
    .C(_1907_),
    .Y(_1390_)
);

OAI21X1 _11547_ (
    .A(_1636_),
    .B(_2397_),
    .C(_938_),
    .Y(_939_)
);

INVX1 _11127_ (
    .A(_2094_),
    .Y(_2095_)
);

OAI21X1 _15380_ (
    .A(_4701__bF$buf3),
    .B(_5470__bF$buf2),
    .C(_5485_),
    .Y(_4473_)
);

AOI21X1 _16585_ (
    .A(\datapath.registers.828[23] [18]),
    .B(\datapath.idinstr_17_bF$buf14 ),
    .C(_5681__bF$buf10),
    .Y(_6495_)
);

MUX2X1 _16165_ (
    .A(\datapath.registers.828[29] [9]),
    .B(\datapath.registers.828[28] [9]),
    .S(\datapath.idinstr_15_bF$buf51 ),
    .Y(_6084_)
);

FILL SFILL43400x18050 (
);

FILL SFILL68920x6050 (
);

MUX2X1 _12085_ (
    .A(_1781_),
    .B(_1738_),
    .S(\datapath.alu.b_0_bF$buf8 ),
    .Y(_1516_)
);

FILL SFILL28920x40050 (
);

OAI21X1 _18731_ (
    .A(_4703__bF$buf3),
    .B(_8531__bF$buf3),
    .C(_8547_),
    .Y(_4282_)
);

OAI21X1 _18311_ (
    .A(_4874_),
    .B(\datapath.idinstr_22_bF$buf30 ),
    .C(_8182_),
    .Y(_8183_)
);

OAI21X1 _10818_ (
    .A(_1787_),
    .B(_1713_),
    .C(_1788_),
    .Y(_1789_)
);

DFFPOSX1 _19936_ (
    .Q(\datapath.registers.828[28] [16]),
    .CLK(CLK_bF$buf125),
    .D(_4283_)
);

DFFPOSX1 _19516_ (
    .Q(\datapath.registers.828[11] [12]),
    .CLK(CLK_bF$buf16),
    .D(_3703_)
);

FILL SFILL28440x33050 (
);

OAI21X1 _14651_ (
    .A(_5092_),
    .B(_5039__bF$buf3),
    .C(_5093_),
    .Y(_3817_)
);

INVX1 _14231_ (
    .A(\datapath.registers.828[19] [9]),
    .Y(_4854_)
);

FILL SFILL73880x42050 (
);

MUX2X1 _15856_ (
    .A(\datapath.registers.828[18] [2]),
    .B(\datapath.registers.828[16] [2]),
    .S(\datapath.idinstr_16_bF$buf5 ),
    .Y(_5782_)
);

INVX2 _15436_ (
    .A(\datapath.registers.828[3] [9]),
    .Y(_5515_)
);

NOR2X1 _15016_ (
    .A(\datapath.registers.828[9] [30]),
    .B(_5257__bF$buf2),
    .Y(_5298_)
);

NAND2X1 _10991_ (
    .A(_1016_),
    .B(_1434_),
    .Y(_1961_)
);

DFFPOSX1 _10571_ (
    .Q(\datapath.idpc_4 [25]),
    .CLK(CLK_bF$buf104),
    .D(\datapath._04_ [25])
);

DFFPOSX1 _10151_ (
    .Q(_0_[29]),
    .CLK(CLK_bF$buf37),
    .D(\datapath.alu.c [29])
);

FILL SFILL79080x56050 (
);

FILL SFILL54200x19050 (
);

OAI21X1 _11776_ (
    .A(_1164_),
    .B(_1165_),
    .C(_1185_),
    .Y(_1186_)
);

NOR2X1 _11356_ (
    .A(_2304_),
    .B(_2318_),
    .Y(_2319_)
);

FILL SFILL63880x40050 (
);

DFFPOSX1 _9924_ (
    .Q(\datapath.regcsrwb [10]),
    .CLK(CLK_bF$buf80),
    .D(\datapath.csr.csr_wdata [10])
);

NAND2X1 _9504_ (
    .A(\datapath.csr.csr_data [0]),
    .B(_417__bF$buf2),
    .Y(_421_)
);

FILL SFILL79080x11050 (
);

INVX8 _13922_ (
    .A(\datapath.rd [3]),
    .Y(_4679_)
);

OAI21X1 _13502_ (
    .A(_3361_),
    .B(gnd),
    .C(_3362_),
    .Y(\datapath.programcounter._1_ [1])
);

MUX2X1 _16394_ (
    .A(\datapath.registers.828[18] [14]),
    .B(\datapath.registers.828[16] [14]),
    .S(\datapath.idinstr_16_bF$buf15 ),
    .Y(_6308_)
);

FILL SFILL48920x39050 (
);

AOI21X1 _14707_ (
    .A(_4719__bF$buf3),
    .B(_5099__bF$buf4),
    .C(_5123_),
    .Y(_3779_)
);

OAI21X1 _17599_ (
    .A(_7485_),
    .B(\datapath.idinstr_22_bF$buf33 ),
    .C(_7486_),
    .Y(_7487_)
);

OAI21X1 _17179_ (
    .A(_7071_),
    .B(_7072_),
    .C(_7075_),
    .Y(_7076_)
);

BUFX2 BUFX2_insert787 (
    .A(_4685_),
    .Y(_4685__bF$buf3)
);

BUFX2 BUFX2_insert788 (
    .A(_4685_),
    .Y(_4685__bF$buf2)
);

BUFX2 BUFX2_insert789 (
    .A(_4685_),
    .Y(_4685__bF$buf1)
);

BUFX2 _18960_ (
    .A(\datapath.registers.828[0] [0]),
    .Y(_3636_)
);

AOI21X1 _18540_ (
    .A(_8402_),
    .B(_8406_),
    .C(\datapath.idinstr_23_bF$buf0 ),
    .Y(_8407_)
);

NAND2X1 _18120_ (
    .A(_7092__bF$buf7),
    .B(_7995_),
    .Y(_7996_)
);

NOR2X1 _10627_ (
    .A(\datapath.alu.a [3]),
    .B(_1091__bF$buf5),
    .Y(_1112_)
);

DFFPOSX1 _10207_ (
    .Q(\datapath.mempc_4 [14]),
    .CLK(CLK_bF$buf69),
    .D(\datapath.alupc_4 [14])
);

NAND2X1 _13099_ (
    .A(_3033__bF$buf1),
    .B(_3060_),
    .Y(_3061_)
);

FILL SFILL3240x60050 (
);

DFFPOSX1 _19745_ (
    .Q(\datapath.registers.828[16] [17]),
    .CLK(CLK_bF$buf65),
    .D(_3868_)
);

DFFPOSX1 _19325_ (
    .Q(\datapath.registers.828[4] [13]),
    .CLK(CLK_bF$buf42),
    .D(_4472_)
);

FILL SFILL59080x52050 (
);

AOI21X1 _14880_ (
    .A(_4681__bF$buf1),
    .B(_5212__bF$buf5),
    .C(_5219_),
    .Y(_3694_)
);

OAI21X1 _14460_ (
    .A(_4699__bF$buf4),
    .B(_4968__bF$buf1),
    .C(_4982_),
    .Y(_3864_)
);

AOI21X1 _14040_ (
    .A(_4701__bF$buf1),
    .B(_4738__bF$buf6),
    .C(_4753_),
    .Y(_4089_)
);

FILL SFILL78600x19050 (
);

FILL SFILL48760x1050 (
);

OAI21X1 _15665_ (
    .A(_4840__bF$buf5),
    .B(_5612__bF$buf4),
    .C(\datapath.registers.828[31] [21]),
    .Y(_5636_)
);

NOR2X1 _15245_ (
    .A(\datapath.registers.828[5] [13]),
    .B(_5402__bF$buf7),
    .Y(_5416_)
);

FILL SFILL48680x6050 (
);

DFFPOSX1 _10380_ (
    .Q(\datapath.alu.b [29]),
    .CLK(CLK_bF$buf73),
    .D(\datapath.muxbval [29])
);

AND2X2 _11585_ (
    .A(_2390_),
    .B(_2464_),
    .Y(_980_)
);

NAND2X1 _11165_ (
    .A(_1123__bF$buf4),
    .B(_1821_),
    .Y(_2132_)
);

FILL SFILL28920x35050 (
);

AOI21X1 _17811_ (
    .A(\datapath.registers.828[13] [13]),
    .B(\datapath.idinstr_20_bF$buf0 ),
    .C(\datapath.idinstr_21_bF$buf24 ),
    .Y(_7694_)
);

NOR2X1 _9733_ (
    .A(_599_),
    .B(_602_),
    .Y(_603_)
);

NAND2X1 _9313_ (
    .A(\datapath.regcwb [19]),
    .B(_218__bF$buf3),
    .Y(_276_)
);

NOR3X1 _13731_ (
    .A(_3450_),
    .B(_3506_),
    .C(_3526_),
    .Y(_3527_)
);

INVX1 _13311_ (
    .A(DMEM_DATA_L[12]),
    .Y(_3233_)
);

FILL SFILL73880x37050 (
);

OAI21X1 _14936_ (
    .A(_5250_),
    .B(_5212__bF$buf2),
    .C(_5251_),
    .Y(_3688_)
);

OAI21X1 _14516_ (
    .A(_5003__bF$buf4),
    .B(_4687__bF$buf4),
    .C(_5012_),
    .Y(_3857_)
);

FILL SFILL18040x57050 (
);

NAND2X1 _10856_ (
    .A(\datapath.alu.b_0_bF$buf2 ),
    .B(_1795_),
    .Y(_1827_)
);

DFFPOSX1 _10436_ (
    .Q(\datapath.aluinstr [18]),
    .CLK(CLK_bF$buf21),
    .D(\datapath.idinstr_18_bF$buf5 )
);

DFFPOSX1 _10016_ (
    .Q(\datapath.wbinstr [5]),
    .CLK(CLK_bF$buf121),
    .D(\datapath.meminstr [5])
);

FILL SFILL63880x35050 (
);

DFFPOSX1 _19974_ (
    .Q(\datapath.registers.828[6] [22]),
    .CLK(CLK_bF$buf99),
    .D(_4546_)
);

DFFPOSX1 _19554_ (
    .Q(\datapath.registers.828[12] [18]),
    .CLK(CLK_bF$buf124),
    .D(_3741_)
);

DFFPOSX1 _19134_ (
    .Q(\datapath.registers.828[17] [14]),
    .CLK(CLK_bF$buf148),
    .D(_3897_)
);

NAND2X1 _15894_ (
    .A(_5684__bF$buf8),
    .B(_5818_),
    .Y(_5819_)
);

INVX1 _15474_ (
    .A(\datapath.registers.828[3] [25]),
    .Y(_5537_)
);

OAI21X1 _15054_ (
    .A(_4705__bF$buf0),
    .B(_5300__bF$buf2),
    .C(_5317_),
    .Y(_4603_)
);

FILL SFILL48600x13050 (
);

FILL SFILL69080x49050 (
);

FILL SFILL53880x33050 (
);

OAI21X1 _16679_ (
    .A(_5075_),
    .B(\datapath.idinstr_15_bF$buf28 ),
    .C(\datapath.idinstr_16_bF$buf26 ),
    .Y(_6587_)
);

AOI21X1 _16259_ (
    .A(_6171_),
    .B(_6175_),
    .C(_5685__bF$buf5),
    .Y(_6176_)
);

NAND2X1 _11394_ (
    .A(_1654_),
    .B(_2355_),
    .Y(_2356_)
);

OAI21X1 _17620_ (
    .A(_5515_),
    .B(\datapath.idinstr_22_bF$buf25 ),
    .C(_7506_),
    .Y(_7507_)
);

MUX2X1 _17200_ (
    .A(\datapath.registers.828[25] [0]),
    .B(\datapath.registers.828[24] [0]),
    .S(\datapath.idinstr_20_bF$buf31 ),
    .Y(_7096_)
);

DFFPOSX1 _9962_ (
    .Q(\datapath.regloadwb [16]),
    .CLK(CLK_bF$buf97),
    .D(\datapath.memdataload [16])
);

NAND2X1 _9542_ (
    .A(\datapath.registers.rega_data [10]),
    .B(_418__bF$buf0),
    .Y(_449_)
);

NAND2X1 _9122_ (
    .A(gnd),
    .B(\datapath.idinstr [7]),
    .Y(_133_)
);

NAND2X1 _12599_ (
    .A(_2773_),
    .B(_2672__bF$buf6),
    .Y(_2774_)
);

NAND2X1 _12179_ (
    .A(_962_),
    .B(_2041__bF$buf1),
    .Y(_1617_)
);

FILL SFILL3240x55050 (
);

OAI21X1 _18825_ (
    .A(_8384_),
    .B(_8565__bF$buf7),
    .C(_8595_),
    .Y(_4265_)
);

FILL SFILL38600x11050 (
);

NAND2X1 _18405_ (
    .A(_7092__bF$buf10),
    .B(_8274_),
    .Y(_8275_)
);

AOI21X1 _13960_ (
    .A(_4703__bF$buf1),
    .B(_4673__bF$buf1),
    .C(_4704_),
    .Y(_4122_)
);

NOR2X1 _13540_ (
    .A(gnd),
    .B(\datapath.programcounter.pc_mux [14]),
    .Y(_3387_)
);

NAND2X1 _13120_ (
    .A(_3033__bF$buf6),
    .B(_3078_),
    .Y(_3079_)
);

FILL SFILL43880x31050 (
);

FILL SFILL83960x27050 (
);

NAND2X1 _14745_ (
    .A(\datapath.registers.828[12] [10]),
    .B(_5132__bF$buf0),
    .Y(_5143_)
);

NOR2X1 _14325_ (
    .A(\datapath.registers.828[18] [18]),
    .B(_4886__bF$buf0),
    .Y(_4907_)
);

FILL SFILL33480x60050 (
);

NOR2X1 _10665_ (
    .A(_1455_),
    .B(_1508_),
    .Y(_1519_)
);

DFFPOSX1 _10245_ (
    .Q(\datapath.csr.csr_mepc [22]),
    .CLK(CLK_bF$buf110),
    .D(\datapath.alupc [22])
);

DFFPOSX1 _19783_ (
    .Q(\datapath.registers.828[30] [23]),
    .CLK(CLK_bF$buf111),
    .D(_4387_)
);

DFFPOSX1 _19363_ (
    .Q(\datapath.registers.828[7] [19]),
    .CLK(CLK_bF$buf116),
    .D(_4574_)
);

NOR3X1 _8813_ (
    .A(\datapath.aluinstr [2]),
    .B(\datapath.aluinstr [3]),
    .C(_20_),
    .Y(_25_)
);

FILL SFILL18600x52050 (
);

FILL SFILL73960x25050 (
);

FILL SFILL49000x43050 (
);

NAND2X1 _12811_ (
    .A(\datapath.csr.mvect [18]),
    .B(\datapath.csr.mvect [19]),
    .Y(_2930_)
);

FILL SFILL18520x59050 (
);

NAND2X1 _15283_ (
    .A(\datapath.wbinstr [10]),
    .B(\datapath.wbinstr [11]),
    .Y(_5435_)
);

FILL SFILL18120x45050 (
);

FILL SFILL39080x43050 (
);

FILL FILL83080x51050 (
);

MUX2X1 _16488_ (
    .A(\datapath.registers.828[23] [16]),
    .B(\datapath.registers.828[21] [16]),
    .S(\datapath.idinstr_16_bF$buf40 ),
    .Y(_6400_)
);

NAND2X1 _16068_ (
    .A(_5684__bF$buf4),
    .B(_5989_),
    .Y(_5990_)
);

FILL SFILL18520x14050 (
);

FILL SFILL63960x23050 (
);

FILL SFILL39000x41050 (
);

INVX1 _9771_ (
    .A(\datapath.regimmalu [17]),
    .Y(_636_)
);

NAND3X1 _9351_ (
    .A(_303_),
    .B(_304_),
    .C(_302_),
    .Y(\datapath.rd [28])
);

NOR2X1 _18634_ (
    .A(_5612__bF$buf2),
    .B(_5098__bF$buf5),
    .Y(_8498_)
);

AOI21X1 _18214_ (
    .A(\datapath.registers.828[29] [22]),
    .B(\datapath.idinstr_22_bF$buf6 ),
    .C(_7089__bF$buf4),
    .Y(_8088_)
);

FILL SFILL63480x16050 (
);

DFFPOSX1 _19839_ (
    .Q(\datapath.registers.828[3] [15]),
    .CLK(CLK_bF$buf134),
    .D(_4442_)
);

DFFPOSX1 _19419_ (
    .Q(\datapath.registers.828[24] [11]),
    .CLK(CLK_bF$buf120),
    .D(_4150_)
);

AOI21X1 _14974_ (
    .A(_4695__bF$buf2),
    .B(_5257__bF$buf1),
    .C(_5274_),
    .Y(_4630_)
);

OAI21X1 _14554_ (
    .A(_5003__bF$buf3),
    .B(_4725__bF$buf4),
    .C(_5031_),
    .Y(_3846_)
);

AOI21X1 _14134_ (
    .A(_4729__bF$buf4),
    .B(_4772__bF$buf7),
    .C(_4801_),
    .Y(_4072_)
);

FILL SFILL53880x28050 (
);

NOR2X1 _15759_ (
    .A(_5682_),
    .B(_5686_),
    .Y(_5687_)
);

OAI21X1 _15339_ (
    .A(_4725__bF$buf0),
    .B(_5437__bF$buf5),
    .C(_5464_),
    .Y(_4166_)
);

NAND2X1 _10894_ (
    .A(\datapath.alu.b_0_bF$buf7 ),
    .B(\datapath.alu.a [5]),
    .Y(_1865_)
);

DFFPOSX1 _10474_ (
    .Q(\datapath.alupc_4 [24]),
    .CLK(CLK_bF$buf27),
    .D(\datapath.idpc_4 [24])
);

DFFPOSX1 _10054_ (
    .Q(\datapath.wbpc_4 [28]),
    .CLK(CLK_bF$buf48),
    .D(\datapath.mempc_4 [28])
);

MUX2X1 _16700_ (
    .A(\datapath.registers.828[29] [21]),
    .B(\datapath.registers.828[28] [21]),
    .S(\datapath.idinstr_15_bF$buf52 ),
    .Y(_6607_)
);

FILL SFILL53480x14050 (
);

DFFPOSX1 _19592_ (
    .Q(\datapath.registers.828[21] [24]),
    .CLK(CLK_bF$buf117),
    .D(_4068_)
);

DFFPOSX1 _19172_ (
    .Q(\datapath.registers.828[15] [20]),
    .CLK(CLK_bF$buf59),
    .D(_3840_)
);

AOI21X1 _11679_ (
    .A(_1078_),
    .B(_1074_),
    .C(_1081_),
    .Y(_1082_)
);

OAI21X1 _11259_ (
    .A(_2220_),
    .B(\datapath.alu.b_3_bF$buf4 ),
    .C(_2223_),
    .Y(_2224_)
);

AOI21X1 _17905_ (
    .A(_7785_),
    .B(_7779_),
    .C(_7093__bF$buf5),
    .Y(_7786_)
);

FILL SFILL43480x57050 (
);

NAND2X1 _12620_ (
    .A(\controlunit.csrfile_trap_wen_bF$buf3 ),
    .B(\datapath.csr.csr_mcause [3]),
    .Y(_2791_)
);

NAND3X1 _12200_ (
    .A(_2354_),
    .B(_2254_),
    .C(_2212_),
    .Y(_1639_)
);

OAI21X1 _15092_ (
    .A(_5335__bF$buf1),
    .B(_4675__bF$buf1),
    .C(_5338_),
    .Y(_4575_)
);

AOI21X1 _9827_ (
    .A(_627_),
    .B(_681_),
    .C(_684_),
    .Y(_685_)
);

NAND2X1 _9407_ (
    .A(\datapath.imm [9]),
    .B(_316__bF$buf0),
    .Y(_347_)
);

FILL SFILL43880x26050 (
);

FILL SFILL28600x49050 (
);

NAND2X1 _13825_ (
    .A(\datapath.programcounter.pc [26]),
    .B(\datapath.programcounter.pc [27]),
    .Y(_3601_)
);

OAI21X1 _13405_ (
    .A(_3230_),
    .B(_0__1_bF$buf1),
    .C(_3297_),
    .Y(_3298_)
);

MUX2X1 _16297_ (
    .A(_6212_),
    .B(_6211_),
    .S(\datapath.idinstr_16_bF$buf14 ),
    .Y(_6213_)
);

NAND2X1 _9580_ (
    .A(\datapath.csr.csr_data [19]),
    .B(_417__bF$buf4),
    .Y(_478_)
);

INVX1 _9160_ (
    .A(IMEM_DATA[20]),
    .Y(_158_)
);

NOR2X1 _18863_ (
    .A(\datapath.registers.828[26] [16]),
    .B(_8598__bF$buf5),
    .Y(_8615_)
);

MUX2X1 _18443_ (
    .A(\datapath.registers.828[3] [27]),
    .B(\datapath.registers.828[2] [27]),
    .S(\datapath.idinstr_20_bF$buf14 ),
    .Y(_8312_)
);

AOI21X1 _18023_ (
    .A(\datapath.idinstr_20_bF$buf35 ),
    .B(_7900_),
    .C(_7092__bF$buf9),
    .Y(_7901_)
);

DFFPOSX1 _19648_ (
    .Q(\datapath.registers.828[26] [16]),
    .CLK(CLK_bF$buf125),
    .D(_4219_)
);

DFFPOSX1 _19228_ (
    .Q(\datapath.registers.828[20] [12]),
    .CLK(CLK_bF$buf20),
    .D(_4023_)
);

NAND2X1 _14783_ (
    .A(\datapath.registers.828[12] [29]),
    .B(_5132__bF$buf4),
    .Y(_5162_)
);

NOR2X1 _14363_ (
    .A(\datapath.registers.828[17] [3]),
    .B(_4924__bF$buf1),
    .Y(_4928_)
);

MUX2X1 _15988_ (
    .A(\datapath.registers.828[31] [5]),
    .B(\datapath.registers.828[30] [5]),
    .S(\datapath.idinstr_15_bF$buf7 ),
    .Y(_5911_)
);

OAI21X1 _15568_ (
    .A(_5098__bF$buf0),
    .B(_4668__bF$buf7),
    .C(\datapath.registers.828[1] [6]),
    .Y(_5586_)
);

OAI21X1 _15148_ (
    .A(_5335__bF$buf3),
    .B(_4731__bF$buf1),
    .C(_5366_),
    .Y(_4585_)
);

DFFPOSX1 _10283_ (
    .Q(\datapath.regimmalu [28]),
    .CLK(CLK_bF$buf38),
    .D(\datapath.imm [28])
);

FILL SFILL23880x22050 (
);

FILL SFILL63960x18050 (
);

FILL SFILL23400x51050 (
);

INVX2 _8851_ (
    .A(\datapath.idinstr [6]),
    .Y(_57_)
);

OAI21X1 _11488_ (
    .A(_2447_),
    .B(_2446_),
    .C(_1872_),
    .Y(_2448_)
);

AOI21X1 _11068_ (
    .A(_2035_),
    .B(_2036_),
    .C(_1906_),
    .Y(_2037_)
);

FILL SFILL23800x20050 (
);

FILL SFILL84040x31050 (
);

AOI21X1 _17714_ (
    .A(_7594_),
    .B(_7598_),
    .C(\datapath.idinstr_23_bF$buf4 ),
    .Y(_7599_)
);

FILL SFILL73800x9050 (
);

OAI21X1 _9636_ (
    .A(_201_),
    .B(_206_),
    .C(\datapath.csr.csr_mcause [2]),
    .Y(\controlunit.csrfile_trap_wen )
);

OAI21X1 _9216_ (
    .A(_0__1_bF$buf0),
    .B(_0__0_bF$buf2),
    .C(_192_),
    .Y(_201_)
);

FILL SFILL53560x47050 (
);

AOI21X1 _18919_ (
    .A(_4695__bF$buf0),
    .B(_8631__bF$buf6),
    .C(_8643_),
    .Y(_4182_)
);

FILL SFILL13880x20050 (
);

NAND2X1 _13634_ (
    .A(_3424__bF$buf0),
    .B(\datapath.nextpc [6]),
    .Y(_3453_)
);

NAND2X1 _13214_ (
    .A(_0__1_bF$buf9),
    .B(\datapath.memoryinterface.data_store [6]),
    .Y(_3158_)
);

FILL SFILL53960x16050 (
);

FILL SFILL8360x12050 (
);

OAI21X1 _14839_ (
    .A(_5194_),
    .B(_5167__bF$buf0),
    .C(_5195_),
    .Y(_3710_)
);

OAI21X1 _14419_ (
    .A(_4959_),
    .B(_4924__bF$buf4),
    .C(_4960_),
    .Y(_3910_)
);

FILL SFILL43960x59050 (
);

AOI21X1 _18672_ (
    .A(_4709__bF$buf4),
    .B(_8498__bF$buf4),
    .C(_8517_),
    .Y(_4317_)
);

OAI21X1 _18252_ (
    .A(_8123_),
    .B(\datapath.idinstr_22_bF$buf39 ),
    .C(_8124_),
    .Y(_8125_)
);

NAND2X1 _10759_ (
    .A(_1729_),
    .B(_1728_),
    .Y(_1730_)
);

DFFPOSX1 _10339_ (
    .Q(\datapath.regrs2alu [20]),
    .CLK(CLK_bF$buf39),
    .D(\datapath.registers.regb_data [20])
);

OAI21X1 _11700_ (
    .A(_1101_),
    .B(_1103_),
    .C(_1104_),
    .Y(_1105_)
);

DFFPOSX1 _19877_ (
    .Q(\datapath.registers.828[1] [21]),
    .CLK(CLK_bF$buf12),
    .D(_4001_)
);

DFFPOSX1 _19457_ (
    .Q(\datapath.registers.828[23] [17]),
    .CLK(CLK_bF$buf24),
    .D(_4124_)
);

DFFPOSX1 _19037_ (
    .Q(\datapath.registers.828[31] [13]),
    .CLK(CLK_bF$buf132),
    .D(_4408_)
);

NOR2X1 _14592_ (
    .A(\datapath.registers.828[14] [9]),
    .B(_5039__bF$buf0),
    .Y(_5055_)
);

AOI21X1 _14172_ (
    .A(_4701__bF$buf1),
    .B(_4806__bF$buf5),
    .C(_4821_),
    .Y(_4025_)
);

NOR2X1 _8907_ (
    .A(_764_),
    .B(_766_),
    .Y(\datapath._12_ )
);

FILL SFILL84360x3050 (
);

DFFPOSX1 _12905_ (
    .Q(\datapath.csr.mcause [31]),
    .CLK(CLK_bF$buf141),
    .D(\datapath.csr._32_ [31])
);

MUX2X1 _15797_ (
    .A(\datapath.registers.828[5] [0]),
    .B(\datapath.registers.828[4] [0]),
    .S(\datapath.idinstr_15_bF$buf29 ),
    .Y(_5725_)
);

NAND2X1 _15377_ (
    .A(\datapath.registers.828[4] [13]),
    .B(_5470__bF$buf5),
    .Y(_5484_)
);

FILL SFILL68680x56050 (
);

DFFPOSX1 _10092_ (
    .Q(\datapath.memoryinterface.data_store [2]),
    .CLK(CLK_bF$buf97),
    .D(\datapath.regrs2alu [2])
);

FILL SFILL83640x5050 (
);

NOR2X1 _11297_ (
    .A(\datapath.alu.b [7]),
    .B(_1327_),
    .Y(_2261_)
);

FILL SFILL68680x11050 (
);

MUX2X1 _17943_ (
    .A(\datapath.registers.828[15] [16]),
    .B(\datapath.registers.828[14] [16]),
    .S(\datapath.idinstr_20_bF$buf47 ),
    .Y(_7823_)
);

MUX2X1 _17523_ (
    .A(\datapath.registers.828[19] [7]),
    .B(\datapath.registers.828[17] [7]),
    .S(\datapath.idinstr_21_bF$buf0 ),
    .Y(_7412_)
);

MUX2X1 _17103_ (
    .A(_7000_),
    .B(_6999_),
    .S(\datapath.idinstr_16_bF$buf7 ),
    .Y(_7001_)
);

AOI21X1 _9865_ (
    .A(_709_),
    .B(_715_),
    .C(_713_),
    .Y(_719_)
);

NAND3X1 _9445_ (
    .A(_374_),
    .B(_375_),
    .C(_373_),
    .Y(\datapath.muxbval [18])
);

INVX1 _9025_ (
    .A(\datapath.nextpc [7]),
    .Y(_845_)
);

FILL SFILL58680x54050 (
);

NAND2X1 _18728_ (
    .A(\datapath.registers.828[28] [14]),
    .B(_8531__bF$buf7),
    .Y(_8546_)
);

NAND2X1 _18308_ (
    .A(_7092__bF$buf6),
    .B(_8179_),
    .Y(_8180_)
);

INVX1 _13863_ (
    .A(\datapath.jumptarget [31]),
    .Y(_3632_)
);

NAND3X1 _13443_ (
    .A(_3291__bF$buf2),
    .B(_3327_),
    .C(_3326_),
    .Y(\datapath.memdataload [17])
);

NOR2X1 _13023_ (
    .A(\controlunit.imm_sel [1]),
    .B(_3013_),
    .Y(_2980_)
);

FILL SFILL23480x48050 (
);

OAI21X1 _14648_ (
    .A(_5090_),
    .B(_5039__bF$buf4),
    .C(_5091_),
    .Y(_3816_)
);

OAI21X1 _14228_ (
    .A(_4851_),
    .B(_4842__bF$buf6),
    .C(_4852_),
    .Y(_3985_)
);

FILL SFILL23400x46050 (
);

AOI21X1 _18481_ (
    .A(\datapath.registers.828[13] [28]),
    .B(\datapath.idinstr_20_bF$buf27 ),
    .C(\datapath.idinstr_21_bF$buf33 ),
    .Y(_8349_)
);

MUX2X1 _18061_ (
    .A(\datapath.registers.828[7] [19]),
    .B(\datapath.registers.828[6] [19]),
    .S(\datapath.idinstr_20_bF$buf9 ),
    .Y(_7938_)
);

FILL SFILL8440x45050 (
);

FILL SFILL53560x9050 (
);

FILL SFILL48680x52050 (
);

OAI21X1 _10988_ (
    .A(_1668_),
    .B(\datapath.alu.b_0_bF$buf1 ),
    .C(_1957_),
    .Y(_1958_)
);

DFFPOSX1 _10568_ (
    .Q(\datapath.idpc_4 [22]),
    .CLK(CLK_bF$buf107),
    .D(\datapath._04_ [22])
);

DFFPOSX1 _10148_ (
    .Q(_0_[26]),
    .CLK(CLK_bF$buf15),
    .D(\datapath.alu.c [26])
);

FILL SFILL84040x26050 (
);

DFFPOSX1 _19686_ (
    .Q(\datapath.registers.828[27] [22]),
    .CLK(CLK_bF$buf82),
    .D(_4258_)
);

DFFPOSX1 _19266_ (
    .Q(\datapath.registers.828[22] [18]),
    .CLK(CLK_bF$buf78),
    .D(_4093_)
);

FILL SFILL13480x46050 (
);

BUFX2 _8716_ (
    .A(_1_[20]),
    .Y(DMEM_DATA_S[20])
);

FILL SFILL13080x32050 (
);

OAI21X1 _12714_ (
    .A(_2849_),
    .B(\controlunit.mret_bF$buf2 ),
    .C(_2850_),
    .Y(\datapath.csr.csr_pcaddr [4])
);

NOR2X1 _15186_ (
    .A(\datapath.registers.828[6] [16]),
    .B(_5369__bF$buf2),
    .Y(_5386_)
);

INVX8 _13919_ (
    .A(\datapath.rd [2]),
    .Y(_4677_)
);

FILL SFILL74040x24050 (
);

FILL SFILL64120x60050 (
);

AOI21X1 _17752_ (
    .A(\datapath.idinstr_20_bF$buf17 ),
    .B(_7635_),
    .C(\datapath.idinstr_22_bF$buf16 ),
    .Y(_7636_)
);

MUX2X1 _17332_ (
    .A(\datapath.registers.828[11] [3]),
    .B(\datapath.registers.828[10] [3]),
    .S(\datapath.idinstr_20_bF$buf7 ),
    .Y(_7225_)
);

XNOR2X1 _9674_ (
    .A(_549_),
    .B(_550_),
    .Y(\datapath.jumptarget [5])
);

NAND2X1 _9254_ (
    .A(\datapath.regloadwb [4]),
    .B(_213__bF$buf4),
    .Y(_232_)
);

FILL SFILL23640x3050 (
);

FILL SFILL63880x1050 (
);

OAI21X1 _18957_ (
    .A(_7028_),
    .B(_8631__bF$buf2),
    .C(_8662_),
    .Y(_4203_)
);

MUX2X1 _18537_ (
    .A(\datapath.registers.828[23] [29]),
    .B(\datapath.registers.828[22] [29]),
    .S(\datapath.idinstr_20_bF$buf44 ),
    .Y(_8404_)
);

MUX2X1 _18117_ (
    .A(\datapath.registers.828[9] [20]),
    .B(\datapath.registers.828[8] [20]),
    .S(\datapath.idinstr_20_bF$buf4 ),
    .Y(_7993_)
);

NAND3X1 _13672_ (
    .A(_3479_),
    .B(_3480_),
    .C(_3478_),
    .Y(\datapath.programcounter.pc_mux [11])
);

NAND3X1 _13252_ (
    .A(\datapath.memoryinterface.byte_size_store.storebyte [27]),
    .B(_3027__bF$buf3),
    .C(_3029__bF$buf4),
    .Y(_3191_)
);

FILL SFILL68760x44050 (
);

NOR2X1 _14877_ (
    .A(\datapath.registers.828[10] [3]),
    .B(_5212__bF$buf0),
    .Y(_5218_)
);

NAND2X1 _14457_ (
    .A(\datapath.registers.828[16] [12]),
    .B(_4968__bF$buf2),
    .Y(_4981_)
);

NOR2X1 _14037_ (
    .A(\datapath.registers.828[22] [13]),
    .B(_4738__bF$buf4),
    .Y(_4752_)
);

NAND2X1 _18290_ (
    .A(\datapath.registers.828[0] [24]),
    .B(_7092__bF$buf5),
    .Y(_8162_)
);

NOR2X1 _10797_ (
    .A(\datapath.alu.b [28]),
    .B(_1738_),
    .Y(_1768_)
);

DFFPOSX1 _10377_ (
    .Q(\datapath.alu.b [26]),
    .CLK(CLK_bF$buf73),
    .D(\datapath.muxbval [26])
);

MUX2X1 _16603_ (
    .A(\datapath.registers.828[26] [18]),
    .B(\datapath.registers.828[24] [18]),
    .S(\datapath.idinstr_16_bF$buf39 ),
    .Y(_6513_)
);

FILL SFILL2920x50050 (
);

DFFPOSX1 _19495_ (
    .Q(\datapath.registers.828[5] [23]),
    .CLK(CLK_bF$buf116),
    .D(_4515_)
);

DFFPOSX1 _19075_ (
    .Q(\datapath.registers.828[10] [19]),
    .CLK(CLK_bF$buf16),
    .D(_3678_)
);

NAND2X1 _8945_ (
    .A(gnd),
    .B(\datapath.idpc [12]),
    .Y(_792_)
);

NOR2X1 _17808_ (
    .A(_6258_),
    .B(_7089__bF$buf9),
    .Y(_7691_)
);

FILL SFILL18600x9050 (
);

DFFPOSX1 _12943_ (
    .Q(\datapath.csr.mvect [4]),
    .CLK(CLK_bF$buf11),
    .D(\datapath.csr._13_ [4])
);

INVX1 _12523_ (
    .A(\datapath.csr.mepc [14]),
    .Y(_2713_)
);

OAI21X1 _12103_ (
    .A(_1509_),
    .B(_1742_),
    .C(_1741_),
    .Y(_1535_)
);

FILL FILL83160x29050 (
);

AOI22X1 _13728_ (
    .A(_3423__bF$buf4),
    .B(\datapath.alu.c [17]),
    .C(\datapath.csr.csr_pcaddr [17]),
    .D(_3429__bF$buf2),
    .Y(_3525_)
);

MUX2X1 _13308_ (
    .A(_3046_),
    .B(_3231_),
    .S(_3229_),
    .Y(\datapath.memoryinterface.byte_size_store.storebyte [10])
);

FILL SFILL48760x40050 (
);

BUFX2 BUFX2_insert400 (
    .A(_8598_),
    .Y(_8598__bF$buf6)
);

BUFX2 BUFX2_insert401 (
    .A(_8598_),
    .Y(_8598__bF$buf5)
);

BUFX2 BUFX2_insert402 (
    .A(_8598_),
    .Y(_8598__bF$buf4)
);

BUFX2 BUFX2_insert403 (
    .A(_8598_),
    .Y(_8598__bF$buf3)
);

NAND2X1 _17981_ (
    .A(_7857_),
    .B(_7859_),
    .Y(_7860_)
);

BUFX2 BUFX2_insert404 (
    .A(_8598_),
    .Y(_8598__bF$buf2)
);

NAND2X1 _17561_ (
    .A(_7092__bF$buf6),
    .B(_7448_),
    .Y(_7449_)
);

BUFX2 BUFX2_insert405 (
    .A(_8598_),
    .Y(_8598__bF$buf1)
);

NAND2X1 _17141_ (
    .A(_5684__bF$buf7),
    .B(_7038_),
    .Y(_7039_)
);

BUFX2 BUFX2_insert406 (
    .A(_8598_),
    .Y(_8598__bF$buf0)
);

BUFX2 BUFX2_insert407 (
    .A(_1091_),
    .Y(_1091__bF$buf6)
);

BUFX2 BUFX2_insert408 (
    .A(_1091_),
    .Y(_1091__bF$buf5)
);

BUFX2 BUFX2_insert409 (
    .A(_1091_),
    .Y(_1091__bF$buf4)
);

FILL SFILL48680x47050 (
);

NAND2X1 _9483_ (
    .A(\datapath.imm [28]),
    .B(_316__bF$buf0),
    .Y(_404_)
);

OAI21X1 _9063_ (
    .A(_869_),
    .B(gnd),
    .C(_870_),
    .Y(\datapath._04_ [19])
);

FILL SFILL8040x26050 (
);

NOR2X1 _18766_ (
    .A(\datapath.registers.828[27] [0]),
    .B(_8565__bF$buf4),
    .Y(_8566_)
);

FILL SFILL74120x57050 (
);

MUX2X1 _18346_ (
    .A(_8216_),
    .B(_8215_),
    .S(\datapath.idinstr_21_bF$buf33 ),
    .Y(_8217_)
);

AOI22X1 _13481_ (
    .A(_3238_),
    .B(DMEM_DATA_L[19]),
    .C(DMEM_DATA_L[27]),
    .D(_3239__bF$buf1),
    .Y(_3348_)
);

NAND2X1 _13061_ (
    .A(\datapath.meminstr [13]),
    .B(_3026_),
    .Y(_3027_)
);

FILL SFILL13400x39050 (
);

NOR2X1 _14686_ (
    .A(\datapath.registers.828[13] [13]),
    .B(_5099__bF$buf3),
    .Y(_5113_)
);

INVX2 _14266_ (
    .A(\datapath.registers.828[19] [24]),
    .Y(_4874_)
);

FILL SFILL28920x1050 (
);

FILL SFILL38680x45050 (
);

FILL SFILL74040x19050 (
);

FILL SFILL28440x5050 (
);

FILL SFILL38280x31050 (
);

DFFPOSX1 _10186_ (
    .Q(\datapath.meminstr [25]),
    .CLK(CLK_bF$buf6),
    .D(\datapath.aluinstr [25])
);

FILL SFILL8360x1050 (
);

MUX2X1 _16832_ (
    .A(\datapath.registers.828[11] [24]),
    .B(\datapath.registers.828[10] [24]),
    .S(\datapath.idinstr_15_bF$buf26 ),
    .Y(_6736_)
);

NAND2X1 _16412_ (
    .A(\datapath.registers.828[12] [14]),
    .B(_5681__bF$buf3),
    .Y(_6326_)
);

BUFX2 _8754_ (
    .A(\datapath.programcounter.pc [25]),
    .Y(IMEM_ADDR[25])
);

AOI21X1 _17617_ (
    .A(_7503_),
    .B(_7502_),
    .C(\datapath.idinstr_21_bF$buf18 ),
    .Y(_7504_)
);

NOR2X1 _12752_ (
    .A(_2869_),
    .B(_2877_),
    .Y(_2881_)
);

OAI21X1 _12332_ (
    .A(_2572_),
    .B(_2490__bF$buf2),
    .C(_2573_),
    .Y(\datapath.csr.csr_data [27])
);

FILL SFILL28680x43050 (
);

DFFPOSX1 _9959_ (
    .Q(\datapath.regloadwb [13]),
    .CLK(CLK_bF$buf27),
    .D(\datapath.memdataload [13])
);

NAND2X1 _9539_ (
    .A(\datapath.idpc [9]),
    .B(_416__bF$buf4),
    .Y(_447_)
);

NAND2X1 _9119_ (
    .A(gnd),
    .B(\datapath.idinstr [6]),
    .Y(_131_)
);

AOI21X1 _13957_ (
    .A(_4701__bF$buf1),
    .B(_4673__bF$buf0),
    .C(_4702_),
    .Y(_4121_)
);

NOR2X1 _13537_ (
    .A(gnd),
    .B(\datapath.programcounter.pc_mux [13]),
    .Y(_3385_)
);

INVX2 _13117_ (
    .A(\datapath.memoryinterface.data_store [7]),
    .Y(_3076_)
);

NAND2X1 _17790_ (
    .A(\datapath.idinstr_22_bF$buf19 ),
    .B(_7672_),
    .Y(_7673_)
);

NAND2X1 _17370_ (
    .A(_7092__bF$buf8),
    .B(_7262_),
    .Y(_7263_)
);

AOI22X1 _9292_ (
    .A(\datapath.regcwb [14]),
    .B(_218__bF$buf2),
    .C(_219__bF$buf3),
    .D(\datapath.wbpc_4 [14]),
    .Y(_260_)
);

FILL SFILL38680x2050 (
);

DFFPOSX1 _18995_ (
    .Q(\datapath.registers.828[18] [3]),
    .CLK(CLK_bF$buf13),
    .D(_3949_)
);

NAND3X1 _18575_ (
    .A(_7091__bF$buf0),
    .B(_8440_),
    .C(_8437_),
    .Y(_8441_)
);

NAND2X1 _18155_ (
    .A(_8027_),
    .B(_8029_),
    .Y(_8030_)
);

OAI21X1 _13290_ (
    .A(_3218_),
    .B(_3046_),
    .C(_3221_),
    .Y(\datapath.memoryinterface.byte_size_store.storebyte [2])
);

OAI21X1 _11603_ (
    .A(_2222_),
    .B(_2221_),
    .C(_1091__bF$buf6),
    .Y(_1000_)
);

NAND2X1 _14495_ (
    .A(\datapath.registers.828[16] [31]),
    .B(_4968__bF$buf7),
    .Y(_5000_)
);

NOR2X1 _14075_ (
    .A(\datapath.wbinstr [8]),
    .B(_4662_),
    .Y(_4771_)
);

NAND3X1 _12808_ (
    .A(_2910_),
    .B(_2916_),
    .C(_2927_),
    .Y(_2928_)
);

AOI21X1 _16641_ (
    .A(_6544_),
    .B(_6549_),
    .C(_5685__bF$buf2),
    .Y(_6550_)
);

MUX2X1 _16221_ (
    .A(\datapath.registers.828[22] [10]),
    .B(\datapath.registers.828[20] [10]),
    .S(\datapath.idinstr_16_bF$buf45 ),
    .Y(_6139_)
);

INVX1 _8983_ (
    .A(\datapath.programcounter.pc [25]),
    .Y(_817_)
);

AOI21X1 _17846_ (
    .A(_7722_),
    .B(_7727_),
    .C(_7093__bF$buf0),
    .Y(_7728_)
);

OAI21X1 _17426_ (
    .A(_5048_),
    .B(\datapath.idinstr_20_bF$buf50 ),
    .C(\datapath.idinstr_21_bF$buf9 ),
    .Y(_7317_)
);

MUX2X1 _17006_ (
    .A(\datapath.registers.828[1] [27]),
    .B(\datapath.registers.828[0] [27]),
    .S(\datapath.idinstr_15_bF$buf48 ),
    .Y(_6907_)
);

NOR2X1 _12981_ (
    .A(_3008_),
    .B(_3006_),
    .Y(\datapath.imm [7])
);

NAND2X1 _12561_ (
    .A(\controlunit.csrfile_trap_wen_bF$buf4 ),
    .B(\datapath.csr.csr_mepc [23]),
    .Y(_2744_)
);

AOI21X1 _12141_ (
    .A(_1573_),
    .B(_1575_),
    .C(_1906_),
    .Y(_1576_)
);

INVX1 _9768_ (
    .A(_629_),
    .Y(_633_)
);

AOI22X1 _9348_ (
    .A(_219__bF$buf4),
    .B(\datapath.wbpc_4 [28]),
    .C(\datapath.regcsrwb [28]),
    .D(_216__bF$buf4),
    .Y(_302_)
);

FILL SFILL38760x33050 (
);

FILL SFILL78840x29050 (
);

NAND2X1 _13766_ (
    .A(\datapath.jumptarget [21]),
    .B(_3427__bF$buf2),
    .Y(_3555_)
);

INVX1 _13346_ (
    .A(\datapath.memoryinterface.byte_size_load.byteval [0]),
    .Y(_3248_)
);

MUX2X1 _15912_ (
    .A(\datapath.registers.828[9] [3]),
    .B(\datapath.registers.828[8] [3]),
    .S(\datapath.idinstr_15_bF$buf39 ),
    .Y(_5837_)
);

NAND2X1 _18384_ (
    .A(_8251_),
    .B(_8253_),
    .Y(_8254_)
);

FILL SFILL3320x30050 (
);

FILL SFILL28760x31050 (
);

FILL SFILL68840x27050 (
);

AOI21X1 _11832_ (
    .A(_2134_),
    .B(_2136_),
    .C(\datapath.alu.b_4_bF$buf0 ),
    .Y(_1246_)
);

OAI21X1 _11412_ (
    .A(_1123__bF$buf0),
    .B(_2207_),
    .C(_2373_),
    .Y(_2374_)
);

DFFPOSX1 _19589_ (
    .Q(\datapath.registers.828[21] [21]),
    .CLK(CLK_bF$buf63),
    .D(_4065_)
);

DFFPOSX1 _19169_ (
    .Q(\datapath.registers.828[15] [17]),
    .CLK(CLK_bF$buf124),
    .D(_3836_)
);

NOR2X1 _12617_ (
    .A(\datapath.csr.mcause [2]),
    .B(_2781_),
    .Y(_2789_)
);

OAI21X1 _15089_ (
    .A(_5336__bF$buf1),
    .B(_4840__bF$buf2),
    .C(\datapath.registers.828[7] [0]),
    .Y(_5337_)
);

OAI21X1 _16870_ (
    .A(_4956_),
    .B(\datapath.idinstr_17_bF$buf6 ),
    .C(_6773_),
    .Y(_6774_)
);

OAI21X1 _16450_ (
    .A(_5279_),
    .B(\datapath.idinstr_17_bF$buf3 ),
    .C(_6362_),
    .Y(_6363_)
);

NAND2X1 _16030_ (
    .A(_5684__bF$buf8),
    .B(_5951_),
    .Y(_5952_)
);

NAND2X1 _8792_ (
    .A(_4_),
    .B(_5_),
    .Y(_6_)
);

MUX2X1 _17655_ (
    .A(_7540_),
    .B(_7539_),
    .S(\datapath.idinstr_21_bF$buf22 ),
    .Y(_7541_)
);

NAND2X1 _17235_ (
    .A(\datapath.idinstr_22_bF$buf15 ),
    .B(_7130_),
    .Y(_7131_)
);

OAI21X1 _12790_ (
    .A(_2905_),
    .B(_2912_),
    .C(_2585__bF$buf1),
    .Y(_2913_)
);

INVX1 _12370_ (
    .A(\datapath.csr.csr_wdata [2]),
    .Y(_2605_)
);

DFFPOSX1 _9997_ (
    .Q(\datapath.regcwb [19]),
    .CLK(CLK_bF$buf51),
    .D(_0_[19])
);

NAND3X1 _9577_ (
    .A(_474_),
    .B(_475_),
    .C(_473_),
    .Y(\datapath.muxaval [18])
);

INVX1 _9157_ (
    .A(IMEM_DATA[19]),
    .Y(_156_)
);

NOR2X1 _13995_ (
    .A(\datapath.registers.828[23] [27]),
    .B(_4673__bF$buf5),
    .Y(_4728_)
);

INVX2 _13575_ (
    .A(\datapath.programcounter.pc [26]),
    .Y(_3410_)
);

NAND2X1 _13155_ (
    .A(_0__1_bF$buf8),
    .B(DMEM_DATA_L[13]),
    .Y(_3108_)
);

DFFPOSX1 _19801_ (
    .Q(\datapath.registers.828[13] [9]),
    .CLK(CLK_bF$buf123),
    .D(_3795_)
);

AOI21X1 _15721_ (
    .A(_4705__bF$buf2),
    .B(_5647__bF$buf1),
    .C(_5664_),
    .Y(_4379_)
);

OAI21X1 _15301_ (
    .A(_4687__bF$buf3),
    .B(_5437__bF$buf0),
    .C(_5445_),
    .Y(_4177_)
);

AOI21X1 _18193_ (
    .A(_8066_),
    .B(_8065_),
    .C(_7092__bF$buf5),
    .Y(_8067_)
);

MUX2X1 _16926_ (
    .A(_6827_),
    .B(_6826_),
    .S(\datapath.idinstr_16_bF$buf24 ),
    .Y(_6828_)
);

MUX2X1 _16506_ (
    .A(_6417_),
    .B(_6416_),
    .S(\datapath.idinstr_16_bF$buf22 ),
    .Y(_6418_)
);

AOI21X1 _11641_ (
    .A(_1034_),
    .B(_1040_),
    .C(_1907_),
    .Y(_1041_)
);

NOR2X1 _11221_ (
    .A(_2183_),
    .B(_2186_),
    .Y(_2187_)
);

DFFPOSX1 _19398_ (
    .Q(\datapath.registers.828[8] [22]),
    .CLK(CLK_bF$buf114),
    .D(_4610_)
);

NOR2X1 _8848_ (
    .A(_18_),
    .B(_55_),
    .Y(\controlunit.pc_sel [0])
);

NOR3X1 _12846_ (
    .A(_2867_),
    .B(_2958_),
    .C(_2933_),
    .Y(_2959_)
);

INVX1 _12426_ (
    .A(\datapath.csr.mvect [21]),
    .Y(_2642_)
);

AOI21X1 _12006_ (
    .A(_1755_),
    .B(_2041__bF$buf0),
    .C(_1431_),
    .Y(_1432_)
);

FILL SFILL83720x21050 (
);

NAND2X1 _17884_ (
    .A(_7089__bF$buf8),
    .B(_7764_),
    .Y(_7765_)
);

NAND2X1 _17464_ (
    .A(\datapath.idinstr_22_bF$buf18 ),
    .B(_7354_),
    .Y(_7355_)
);

NAND3X1 _17044_ (
    .A(\datapath.idinstr_16_bF$buf8 ),
    .B(_6943_),
    .C(_6941_),
    .Y(_6944_)
);

FILL SFILL3320x25050 (
);

NAND2X1 _9386_ (
    .A(\datapath.registers.regb_data [4]),
    .B(_318__bF$buf2),
    .Y(_331_)
);

FILL SFILL28360x12050 (
);

OAI22X1 _10912_ (
    .A(_1875_),
    .B(_1882__bF$buf0),
    .C(_1878_),
    .D(_1876_),
    .Y(_1883_)
);

NOR2X1 _18669_ (
    .A(\datapath.registers.828[29] [17]),
    .B(_8498__bF$buf0),
    .Y(_8516_)
);

OAI21X1 _18249_ (
    .A(_5533_),
    .B(\datapath.idinstr_22_bF$buf39 ),
    .C(_8121_),
    .Y(_8122_)
);

NAND2X1 _13384_ (
    .A(_0__1_bF$buf6),
    .B(DMEM_DATA_L[22]),
    .Y(_3280_)
);

DFFPOSX1 _19610_ (
    .Q(\datapath.registers.828[9] [10]),
    .CLK(CLK_bF$buf25),
    .D(_4629_)
);

FILL SFILL28280x19050 (
);

OAI21X1 _14589_ (
    .A(_5052_),
    .B(_5039__bF$buf2),
    .C(_5053_),
    .Y(_3825_)
);

NOR2X1 _14169_ (
    .A(\datapath.registers.828[20] [13]),
    .B(_4806__bF$buf2),
    .Y(_4820_)
);

NAND2X1 _15950_ (
    .A(\datapath.idinstr_17_bF$buf12 ),
    .B(_5873_),
    .Y(_5874_)
);

OAI21X1 _15530_ (
    .A(_5546__bF$buf4),
    .B(_4711__bF$buf1),
    .C(_5566_),
    .Y(_4350_)
);

OAI21X1 _15110_ (
    .A(_5335__bF$buf3),
    .B(_4693__bF$buf0),
    .C(_5347_),
    .Y(_4565_)
);

FILL SFILL73640x26050 (
);

FILL SFILL18360x10050 (
);

DFFPOSX1 _10089_ (
    .Q(\datapath.csr.csr_wdata [31]),
    .CLK(CLK_bF$buf87),
    .D(\datapath.regcsralu [31])
);

MUX2X1 _16735_ (
    .A(_6641_),
    .B(_6640_),
    .S(\datapath.idinstr_16_bF$buf2 ),
    .Y(_6642_)
);

OAI21X1 _16315_ (
    .A(_6219_),
    .B(_6230_),
    .C(\datapath.idinstr_19_bF$buf2 ),
    .Y(_6231_)
);

MUX2X1 _11870_ (
    .A(_1286_),
    .B(_1212_),
    .S(_994__bF$buf0),
    .Y(_1287_)
);

OAI21X1 _11450_ (
    .A(_994__bF$buf2),
    .B(_2348_),
    .C(_2410_),
    .Y(_2411_)
);

OAI21X1 _11030_ (
    .A(_1209__bF$buf4),
    .B(_1942_),
    .C(_1999_),
    .Y(\datapath.alu.c [1])
);

AOI21X1 _12655_ (
    .A(_2548_),
    .B(_2797__bF$buf3),
    .C(_2813_),
    .Y(\datapath.csr._32_ [15])
);

NAND2X1 _12235_ (
    .A(\datapath.csr.mcause [1]),
    .B(_2491_),
    .Y(_2503_)
);

FILL SFILL63640x24050 (
);

FILL SFILL53720x60050 (
);

FILL SFILL69320x45050 (
);

AOI21X1 _14801_ (
    .A(_4679__bF$buf1),
    .B(_5167__bF$buf5),
    .C(_5173_),
    .Y(_3725_)
);

OAI21X1 _17693_ (
    .A(_7564_),
    .B(_7578_),
    .C(_7088__bF$buf1),
    .Y(_7579_)
);

OAI21X1 _17273_ (
    .A(_5214_),
    .B(\datapath.idinstr_22_bF$buf37 ),
    .C(_7167_),
    .Y(_7168_)
);

OAI21X1 _9195_ (
    .A(_180_),
    .B(gnd),
    .C(_181_),
    .Y(\datapath._05_ [31])
);

OR2X2 _10721_ (
    .A(\datapath.alu.a [21]),
    .B(\datapath.alu.b [21]),
    .Y(_1692_)
);

DFFPOSX1 _10301_ (
    .Q(\datapath.regcsralu [14]),
    .CLK(CLK_bF$buf140),
    .D(\datapath.csr.csr_data [14])
);

NOR2X1 _18898_ (
    .A(\datapath.registers.828[25] [1]),
    .B(_8631__bF$buf1),
    .Y(_8633_)
);

AND2X2 _18478_ (
    .A(\datapath.registers.828[15] [28]),
    .B(\datapath.idinstr_20_bF$buf46 ),
    .Y(_8346_)
);

OAI21X1 _18058_ (
    .A(_7930_),
    .B(_7931_),
    .C(_7934_),
    .Y(_7935_)
);

NAND2X1 _13193_ (
    .A(_0__1_bF$buf0),
    .B(\datapath.memoryinterface.data_store [3]),
    .Y(_3140_)
);

FILL SFILL3400x58050 (
);

MUX2X1 _11926_ (
    .A(_1685_),
    .B(_1681_),
    .S(\datapath.alu.b_0_bF$buf4 ),
    .Y(_1346_)
);

AOI21X1 _11506_ (
    .A(_2453_),
    .B(_2420_),
    .C(_2450_),
    .Y(_2465_)
);

INVX1 _14398_ (
    .A(\datapath.registers.828[17] [18]),
    .Y(_4948_)
);

FILL SFILL63800x5050 (
);

FILL SFILL3400x13050 (
);

FILL SFILL43640x20050 (
);

MUX2X1 _16964_ (
    .A(\datapath.registers.828[26] [26]),
    .B(\datapath.registers.828[24] [26]),
    .S(\datapath.idinstr_16_bF$buf39 ),
    .Y(_6866_)
);

INVX1 _16544_ (
    .A(\datapath.registers.828[25] [17]),
    .Y(_6455_)
);

NAND2X1 _16124_ (
    .A(\datapath.idinstr_17_bF$buf11 ),
    .B(_6043_),
    .Y(_6044_)
);

OAI21X1 _8886_ (
    .A(_66_),
    .B(_90_),
    .C(_89_),
    .Y(_91_)
);

MUX2X1 _17749_ (
    .A(\datapath.registers.828[18] [12]),
    .B(\datapath.registers.828[16] [12]),
    .S(\datapath.idinstr_21_bF$buf2 ),
    .Y(_7633_)
);

OAI21X1 _17329_ (
    .A(_7222_),
    .B(_7213_),
    .C(_7088__bF$buf0),
    .Y(_7223_)
);

DFFPOSX1 _12884_ (
    .Q(\datapath.csr.mcause [10]),
    .CLK(CLK_bF$buf36),
    .D(\datapath.csr._32_ [10])
);

OAI21X1 _12464_ (
    .A(_2623_),
    .B(_2667_),
    .C(_2668_),
    .Y(\datapath.csr._20_ )
);

NAND3X1 _12044_ (
    .A(_1453_),
    .B(_1472_),
    .C(_1450_),
    .Y(\datapath.alu.c [26])
);

FILL SFILL73720x14050 (
);

NAND2X1 _13669_ (
    .A(_3424__bF$buf4),
    .B(\datapath.nextpc [11]),
    .Y(_3478_)
);

NAND2X1 _13249_ (
    .A(_0__1_bF$buf2),
    .B(\datapath.memoryinterface.data_store [11]),
    .Y(_3188_)
);

FILL SFILL33560x25050 (
);

OAI21X1 _14610_ (
    .A(_5065_),
    .B(_5039__bF$buf7),
    .C(_5066_),
    .Y(_3802_)
);

INVX1 _17082_ (
    .A(\datapath.registers.828[15] [29]),
    .Y(_6981_)
);

FILL SFILL79000x21050 (
);

FILL SFILL33720x9050 (
);

MUX2X1 _15815_ (
    .A(\datapath.registers.828[19] [1]),
    .B(\datapath.registers.828[17] [1]),
    .S(\datapath.idinstr_16_bF$buf3 ),
    .Y(_5742_)
);

NOR2X1 _10950_ (
    .A(_1880_),
    .B(_1839_),
    .Y(_1920_)
);

DFFPOSX1 _10530_ (
    .Q(\datapath.idinstr [16]),
    .CLK(CLK_bF$buf76),
    .D(\datapath._05_ [16])
);

DFFPOSX1 _10110_ (
    .Q(\datapath.memoryinterface.data_store [20]),
    .CLK(CLK_bF$buf36),
    .D(\datapath.regrs2alu [20])
);

FILL SFILL73560x6050 (
);

AOI21X1 _18287_ (
    .A(_8154_),
    .B(_8158_),
    .C(_7093__bF$buf0),
    .Y(_8159_)
);

FILL SFILL63720x12050 (
);

CLKBUF1 CLKBUF1_insert700 (
    .A(CLK_hier0_bF$buf5),
    .Y(CLK_bF$buf86)
);

CLKBUF1 CLKBUF1_insert701 (
    .A(CLK_hier0_bF$buf4),
    .Y(CLK_bF$buf85)
);

CLKBUF1 CLKBUF1_insert702 (
    .A(CLK_hier0_bF$buf3),
    .Y(CLK_bF$buf84)
);

CLKBUF1 CLKBUF1_insert703 (
    .A(CLK_hier0_bF$buf10),
    .Y(CLK_bF$buf83)
);

CLKBUF1 CLKBUF1_insert704 (
    .A(CLK_hier0_bF$buf0),
    .Y(CLK_bF$buf82)
);

CLKBUF1 CLKBUF1_insert705 (
    .A(CLK_hier0_bF$buf6),
    .Y(CLK_bF$buf81)
);

NAND2X1 _11735_ (
    .A(\datapath.alu.b_1_bF$buf1 ),
    .B(_1057_),
    .Y(_1142_)
);

CLKBUF1 CLKBUF1_insert706 (
    .A(CLK_hier0_bF$buf3),
    .Y(CLK_bF$buf80)
);

OAI21X1 _11315_ (
    .A(_994__bF$buf7),
    .B(_1922_),
    .C(_2064_),
    .Y(_2279_)
);

CLKBUF1 CLKBUF1_insert707 (
    .A(CLK_hier0_bF$buf0),
    .Y(CLK_bF$buf79)
);

CLKBUF1 CLKBUF1_insert708 (
    .A(CLK_hier0_bF$buf11),
    .Y(CLK_bF$buf78)
);

CLKBUF1 CLKBUF1_insert709 (
    .A(CLK_hier0_bF$buf6),
    .Y(CLK_bF$buf77)
);

MUX2X1 _16773_ (
    .A(\datapath.registers.828[5] [22]),
    .B(\datapath.registers.828[4] [22]),
    .S(\datapath.idinstr_15_bF$buf50 ),
    .Y(_6679_)
);

MUX2X1 _16353_ (
    .A(_6267_),
    .B(_6266_),
    .S(\datapath.idinstr_16_bF$buf44 ),
    .Y(_6268_)
);

BUFX2 _8695_ (
    .A(_0_[31]),
    .Y(DMEM_ADDR[31])
);

BUFX2 BUFX2_insert370 (
    .A(_1209_),
    .Y(_1209__bF$buf1)
);

BUFX2 BUFX2_insert371 (
    .A(_1209_),
    .Y(_1209__bF$buf0)
);

BUFX2 BUFX2_insert372 (
    .A(_4733_),
    .Y(_4733__bF$buf4)
);

BUFX2 BUFX2_insert373 (
    .A(_4733_),
    .Y(_4733__bF$buf3)
);

NAND2X1 _17978_ (
    .A(_7089__bF$buf7),
    .B(_7856_),
    .Y(_7857_)
);

BUFX2 BUFX2_insert374 (
    .A(_4733_),
    .Y(_4733__bF$buf2)
);

BUFX2 BUFX2_insert375 (
    .A(_4733_),
    .Y(_4733__bF$buf1)
);

MUX2X1 _17558_ (
    .A(\datapath.registers.828[25] [8]),
    .B(\datapath.registers.828[24] [8]),
    .S(\datapath.idinstr_20_bF$buf25 ),
    .Y(_7446_)
);

MUX2X1 _17138_ (
    .A(\datapath.registers.828[17] [30]),
    .B(\datapath.registers.828[16] [30]),
    .S(\datapath.idinstr_15_bF$buf40 ),
    .Y(_7036_)
);

BUFX2 BUFX2_insert376 (
    .A(_4733_),
    .Y(_4733__bF$buf0)
);

BUFX2 BUFX2_insert377 (
    .A(_5039_),
    .Y(_5039__bF$buf7)
);

BUFX2 BUFX2_insert378 (
    .A(_5039_),
    .Y(_5039__bF$buf6)
);

NAND3X1 _12693_ (
    .A(_2669_),
    .B(_2833_),
    .C(_2597_),
    .Y(_2834_)
);

BUFX2 BUFX2_insert379 (
    .A(_5039_),
    .Y(_5039__bF$buf5)
);

FILL SFILL43720x53050 (
);

AOI22X1 _12273_ (
    .A(_2500__bF$buf1),
    .B(\datapath.csr.mvect [10]),
    .C(\datapath.csr.mepc [8]),
    .D(_2507__bF$buf3),
    .Y(_2532_)
);

DFFPOSX1 _13898_ (
    .Q(\datapath.programcounter.pc [30]),
    .CLK(CLK_bF$buf84),
    .D(\datapath.programcounter._1_ [30])
);

AOI22X1 _13478_ (
    .A(_3238_),
    .B(DMEM_DATA_L[18]),
    .C(DMEM_DATA_L[26]),
    .D(_3239__bF$buf0),
    .Y(_3346_)
);

OAI21X1 _13058_ (
    .A(_3010_),
    .B(_2996_),
    .C(_2995_),
    .Y(\datapath.imm [29])
);

DFFPOSX1 _19704_ (
    .Q(\datapath.registers.828[0] [8]),
    .CLK(CLK_bF$buf47),
    .D(_3666_)
);

FILL SFILL43640x15050 (
);

FILL SFILL33720x51050 (
);

OAI21X1 _15624_ (
    .A(_5614__bF$buf3),
    .B(_4660__bF$buf0),
    .C(_5615_),
    .Y(_4404_)
);

NOR2X1 _15204_ (
    .A(\datapath.registers.828[6] [25]),
    .B(_5369__bF$buf6),
    .Y(_5395_)
);

FILL SFILL73800x47050 (
);

MUX2X1 _18096_ (
    .A(\datapath.registers.828[25] [20]),
    .B(\datapath.registers.828[24] [20]),
    .S(\datapath.idinstr_20_bF$buf24 ),
    .Y(_7972_)
);

OAI21X1 _16829_ (
    .A(_6733_),
    .B(_6724_),
    .C(\datapath.idinstr_19_bF$buf3 ),
    .Y(_6734_)
);

NAND2X1 _16409_ (
    .A(_5684__bF$buf6),
    .B(_6322_),
    .Y(_6323_)
);

NAND3X1 _11964_ (
    .A(_1383_),
    .B(_1379_),
    .C(_1386_),
    .Y(_1387_)
);

XNOR2X1 _11544_ (
    .A(_935_),
    .B(_1530_),
    .Y(_936_)
);

NAND3X1 _11124_ (
    .A(_1123__bF$buf5),
    .B(_2091_),
    .C(_1987_),
    .Y(_2092_)
);

FILL SFILL33640x13050 (
);

FILL SFILL38600x6050 (
);

FILL SFILL13480x9050 (
);

OAI21X1 _12749_ (
    .A(_2867_),
    .B(_2878_),
    .C(_2876_),
    .Y(_2879_)
);

OAI21X1 _12329_ (
    .A(_2570_),
    .B(_2490__bF$buf4),
    .C(_2571_),
    .Y(\datapath.csr.csr_data [26])
);

NAND2X1 _16582_ (
    .A(_5684__bF$buf5),
    .B(_6491_),
    .Y(_6492_)
);

MUX2X1 _16162_ (
    .A(\datapath.registers.828[27] [9]),
    .B(\datapath.registers.828[26] [9]),
    .S(\datapath.idinstr_15_bF$buf51 ),
    .Y(_6081_)
);

FILL SFILL8280x41050 (
);

MUX2X1 _17787_ (
    .A(\datapath.registers.828[29] [13]),
    .B(\datapath.registers.828[28] [13]),
    .S(\datapath.idinstr_20_bF$buf32 ),
    .Y(_7670_)
);

MUX2X1 _17367_ (
    .A(\datapath.registers.828[17] [3]),
    .B(\datapath.registers.828[16] [3]),
    .S(\datapath.idinstr_20_bF$buf18 ),
    .Y(_7260_)
);

OAI21X1 _12082_ (
    .A(_1389_),
    .B(_1763_),
    .C(_1512_),
    .Y(_1513_)
);

NAND2X1 _9289_ (
    .A(\datapath.regcwb [13]),
    .B(_218__bF$buf0),
    .Y(_258_)
);

FILL SFILL53800x43050 (
);

FILL SFILL84200x34050 (
);

INVX2 _10815_ (
    .A(\datapath.alu.a [17]),
    .Y(_1786_)
);

OAI21X1 _13287_ (
    .A(_0__1_bF$buf2),
    .B(_0__0_bF$buf2),
    .C(DMEM_DATA_L[1]),
    .Y(_3220_)
);

DFFPOSX1 _19933_ (
    .Q(\datapath.registers.828[28] [13]),
    .CLK(CLK_bF$buf133),
    .D(_4280_)
);

DFFPOSX1 _19513_ (
    .Q(\datapath.registers.828[11] [9]),
    .CLK(CLK_bF$buf101),
    .D(_3731_)
);

MUX2X1 _15853_ (
    .A(_5778_),
    .B(_5777_),
    .S(\datapath.idinstr_16_bF$buf9 ),
    .Y(_5779_)
);

INVX1 _15433_ (
    .A(\datapath.registers.828[3] [8]),
    .Y(_5513_)
);

OAI21X1 _15013_ (
    .A(_5295_),
    .B(_5257__bF$buf7),
    .C(_5296_),
    .Y(_4648_)
);

FILL SFILL78920x54050 (
);

FILL SFILL74200x32050 (
);

FILL SFILL13560x16050 (
);

AOI21X1 _16638_ (
    .A(\datapath.registers.828[14] [19]),
    .B(\datapath.idinstr_17_bF$buf3 ),
    .C(\datapath.idinstr_15_bF$buf41 ),
    .Y(_6547_)
);

MUX2X1 _16218_ (
    .A(\datapath.registers.828[19] [10]),
    .B(\datapath.registers.828[17] [10]),
    .S(\datapath.idinstr_16_bF$buf37 ),
    .Y(_6136_)
);

FILL SFILL43720x48050 (
);

AOI21X1 _11773_ (
    .A(_2032_),
    .B(_2031_),
    .C(_1900_),
    .Y(_1183_)
);

AOI21X1 _11353_ (
    .A(_2311_),
    .B(_2314_),
    .C(_2315_),
    .Y(_2316_)
);

DFFPOSX1 _9921_ (
    .Q(\datapath.regcsrwb [7]),
    .CLK(CLK_bF$buf7),
    .D(\datapath.csr.csr_wdata [7])
);

NOR2X1 _9501_ (
    .A(_417__bF$buf2),
    .B(_416__bF$buf1),
    .Y(_418_)
);

INVX1 _12978_ (
    .A(\datapath.idinstr [26]),
    .Y(_3007_)
);

INVX1 _12558_ (
    .A(\datapath.csr.mepc [21]),
    .Y(_2741_)
);

NAND3X1 _12138_ (
    .A(_1564_),
    .B(_1567_),
    .C(_1571_),
    .Y(_1573_)
);

FILL SFILL68920x52050 (
);

MUX2X1 _16391_ (
    .A(_6304_),
    .B(_6303_),
    .S(\datapath.idinstr_16_bF$buf11 ),
    .Y(_6305_)
);

FILL SFILL33720x46050 (
);

NOR2X1 _14704_ (
    .A(\datapath.registers.828[13] [22]),
    .B(_5099__bF$buf6),
    .Y(_5122_)
);

OAI21X1 _17596_ (
    .A(_5513_),
    .B(\datapath.idinstr_22_bF$buf21 ),
    .C(_7483_),
    .Y(_7484_)
);

NAND2X1 _17176_ (
    .A(\datapath.registers.828[12] [31]),
    .B(_5681__bF$buf3),
    .Y(_7073_)
);

NAND2X1 _9098_ (
    .A(gnd),
    .B(\datapath.idpc_4 [31]),
    .Y(_894_)
);

NAND2X1 _15909_ (
    .A(_5831_),
    .B(_5833_),
    .Y(_5834_)
);

NOR2X1 _10624_ (
    .A(_1059_),
    .B(_1070_),
    .Y(_1080_)
);

DFFPOSX1 _10204_ (
    .Q(\datapath.mempc_4 [11]),
    .CLK(CLK_bF$buf107),
    .D(\datapath.alupc_4 [11])
);

INVX2 _13096_ (
    .A(\datapath.memoryinterface.data_store [4]),
    .Y(_3058_)
);

DFFPOSX1 _19742_ (
    .Q(\datapath.registers.828[16] [14]),
    .CLK(CLK_bF$buf148),
    .D(_3865_)
);

DFFPOSX1 _19322_ (
    .Q(\datapath.registers.828[4] [10]),
    .CLK(CLK_bF$buf45),
    .D(_4469_)
);

FILL SFILL58840x57050 (
);

AOI21X1 _11829_ (
    .A(_1242_),
    .B(_1129_),
    .C(_1240_),
    .Y(_1243_)
);

OR2X2 _11409_ (
    .A(_2370_),
    .B(\datapath.alu.b_1_bF$buf5 ),
    .Y(_2371_)
);

FILL SFILL23320x30050 (
);

OAI21X1 _15662_ (
    .A(_5614__bF$buf3),
    .B(_4711__bF$buf4),
    .C(_5634_),
    .Y(_4414_)
);

AOI21X1 _15242_ (
    .A(_4695__bF$buf1),
    .B(_5402__bF$buf6),
    .C(_5414_),
    .Y(_4502_)
);

OAI21X1 _16867_ (
    .A(_4914_),
    .B(\datapath.idinstr_17_bF$buf6 ),
    .C(_6770_),
    .Y(_6771_)
);

AOI21X1 _16447_ (
    .A(_6354_),
    .B(_6359_),
    .C(\datapath.idinstr_18_bF$buf3 ),
    .Y(_6360_)
);

MUX2X1 _16027_ (
    .A(\datapath.registers.828[9] [6]),
    .B(\datapath.registers.828[8] [6]),
    .S(\datapath.idinstr_15_bF$buf14 ),
    .Y(_5949_)
);

INVX1 _11582_ (
    .A(_977_),
    .Y(\datapath.alu.c [13])
);

NAND2X1 _11162_ (
    .A(_1123__bF$buf6),
    .B(_1829_),
    .Y(_2129_)
);

NOR3X1 _8789_ (
    .A(_122_),
    .B(_113_),
    .C(_115_),
    .Y(_3_)
);

FILL SFILL53800x38050 (
);

FILL SFILL8200x34050 (
);

NOR2X1 _9730_ (
    .A(_590_),
    .B(_596_),
    .Y(_600_)
);

NAND2X1 _9310_ (
    .A(\datapath.regloadwb [18]),
    .B(_213__bF$buf0),
    .Y(_274_)
);

FILL SFILL13640x49050 (
);

AND2X2 _12787_ (
    .A(\datapath.csr.mvect [16]),
    .B(\datapath.csr.mvect [17]),
    .Y(_2910_)
);

INVX1 _12367_ (
    .A(\datapath.csr.csr_wdata [1]),
    .Y(_2603_)
);

FILL SFILL53400x24050 (
);

FILL SFILL17960x57050 (
);

FILL SFILL48840x10050 (
);

FILL SFILL13240x35050 (
);

OAI21X1 _14933_ (
    .A(_5248_),
    .B(_5212__bF$buf0),
    .C(_5249_),
    .Y(_3687_)
);

OAI21X1 _14513_ (
    .A(_5004__bF$buf2),
    .B(_4840__bF$buf8),
    .C(\datapath.registers.828[15] [6]),
    .Y(_5011_)
);

FILL SFILL38840x53050 (
);

NOR2X1 _15718_ (
    .A(\datapath.registers.828[30] [15]),
    .B(_5647__bF$buf3),
    .Y(_5663_)
);

MUX2X1 _10853_ (
    .A(_1823_),
    .B(_1822_),
    .S(_994__bF$buf6),
    .Y(_1824_)
);

FILL SFILL3480x52050 (
);

DFFPOSX1 _10433_ (
    .Q(\datapath.aluinstr [15]),
    .CLK(CLK_bF$buf109),
    .D(\datapath.idinstr_15_bF$buf26 )
);

DFFPOSX1 _10013_ (
    .Q(\datapath.wbinstr [2]),
    .CLK(CLK_bF$buf94),
    .D(\datapath.meminstr [2])
);

DFFPOSX1 _19971_ (
    .Q(\datapath.registers.828[6] [19]),
    .CLK(CLK_bF$buf99),
    .D(_4542_)
);

DFFPOSX1 _19551_ (
    .Q(\datapath.registers.828[12] [15]),
    .CLK(CLK_bF$buf53),
    .D(_3738_)
);

DFFPOSX1 _19131_ (
    .Q(\datapath.registers.828[17] [11]),
    .CLK(CLK_bF$buf29),
    .D(_3894_)
);

NAND2X1 _11638_ (
    .A(_990_),
    .B(_996_),
    .Y(_1038_)
);

AOI21X1 _11218_ (
    .A(\datapath.alu.a [5]),
    .B(_2041__bF$buf2),
    .C(_1996_),
    .Y(_2184_)
);

FILL SFILL68920x47050 (
);

MUX2X1 _15891_ (
    .A(\datapath.registers.828[25] [3]),
    .B(\datapath.registers.828[24] [3]),
    .S(\datapath.idinstr_15_bF$buf35 ),
    .Y(_5816_)
);

INVX2 _15471_ (
    .A(\datapath.registers.828[3] [24]),
    .Y(_5535_)
);

NAND2X1 _15051_ (
    .A(\datapath.registers.828[8] [15]),
    .B(_5300__bF$buf5),
    .Y(_5316_)
);

MUX2X1 _16676_ (
    .A(_6583_),
    .B(_6582_),
    .S(\datapath.idinstr_16_bF$buf29 ),
    .Y(_6584_)
);

MUX2X1 _16256_ (
    .A(\datapath.registers.828[31] [11]),
    .B(\datapath.registers.828[30] [11]),
    .S(\datapath.idinstr_15_bF$buf25 ),
    .Y(_6173_)
);

NOR3X1 _11391_ (
    .A(_2319_),
    .B(_2330_),
    .C(_2353_),
    .Y(_2354_)
);

FILL SFILL79080x60050 (
);

NAND2X1 _12596_ (
    .A(\controlunit.csrfile_trap_wen_bF$buf7 ),
    .B(\datapath.csr.csr_mepc [30]),
    .Y(_2772_)
);

NOR2X1 _12176_ (
    .A(\datapath.alu.b_3_bF$buf2 ),
    .B(_1612_),
    .Y(_1613_)
);

NOR2X1 _18822_ (
    .A(\datapath.registers.828[27] [28]),
    .B(_8565__bF$buf3),
    .Y(_8594_)
);

MUX2X1 _18402_ (
    .A(\datapath.registers.828[1] [26]),
    .B(\datapath.registers.828[0] [26]),
    .S(\datapath.idinstr_20_bF$buf10 ),
    .Y(_8272_)
);

NAND2X1 _10909_ (
    .A(alusel[3]),
    .B(alusel[2]),
    .Y(_1880_)
);

FILL SFILL58440x38050 (
);

DFFPOSX1 _19607_ (
    .Q(\datapath.registers.828[9] [7]),
    .CLK(CLK_bF$buf114),
    .D(_4657_)
);

OAI21X1 _14742_ (
    .A(_4689__bF$buf4),
    .B(_5132__bF$buf6),
    .C(_5141_),
    .Y(_3762_)
);

AOI21X1 _14322_ (
    .A(_4705__bF$buf2),
    .B(_4886__bF$buf0),
    .C(_4905_),
    .Y(_3931_)
);

FILL SFILL48920x43050 (
);

MUX2X1 _15947_ (
    .A(\datapath.registers.828[5] [4]),
    .B(\datapath.registers.828[4] [4]),
    .S(\datapath.idinstr_15_bF$buf13 ),
    .Y(_5871_)
);

OAI21X1 _15527_ (
    .A(_5038__bF$buf2),
    .B(_4668__bF$buf5),
    .C(\datapath.registers.828[2] [18]),
    .Y(_5565_)
);

OAI21X1 _15107_ (
    .A(_5336__bF$buf1),
    .B(_4840__bF$buf2),
    .C(\datapath.registers.828[7] [9]),
    .Y(_5346_)
);

INVX2 _10662_ (
    .A(\datapath.alu.a [14]),
    .Y(_1487_)
);

DFFPOSX1 _10242_ (
    .Q(\datapath.csr.csr_mepc [19]),
    .CLK(CLK_bF$buf15),
    .D(\datapath.alupc [19])
);

DFFPOSX1 _19780_ (
    .Q(\datapath.registers.828[30] [20]),
    .CLK(CLK_bF$buf143),
    .D(_4384_)
);

DFFPOSX1 _19360_ (
    .Q(\datapath.registers.828[7] [16]),
    .CLK(CLK_bF$buf45),
    .D(_4571_)
);

NAND3X1 _8810_ (
    .A(\datapath.aluinstr [6]),
    .B(\datapath.aluinstr [4]),
    .C(\datapath.aluinstr [5]),
    .Y(_22_)
);

AOI21X1 _11867_ (
    .A(\datapath.alu.b [21]),
    .B(_1281_),
    .C(_1282_),
    .Y(_1283_)
);

NAND2X1 _11447_ (
    .A(\datapath.alu.b_0_bF$buf5 ),
    .B(\datapath.alu.a [9]),
    .Y(_2408_)
);

OAI21X1 _11027_ (
    .A(_1993_),
    .B(_1996_),
    .C(\datapath.alu.b_1_bF$buf3 ),
    .Y(_1997_)
);

AOI21X1 _15280_ (
    .A(_4733__bF$buf1),
    .B(_5402__bF$buf2),
    .C(_5433_),
    .Y(_4523_)
);

FILL SFILL38840x48050 (
);

NAND2X1 _16485_ (
    .A(_6394_),
    .B(_6396_),
    .Y(_6397_)
);

MUX2X1 _16065_ (
    .A(\datapath.registers.828[27] [6]),
    .B(\datapath.registers.828[25] [6]),
    .S(\datapath.idinstr_16_bF$buf19 ),
    .Y(_5987_)
);

FILL SFILL69240x2050 (
);

FILL SFILL68920x5050 (
);

AOI21X1 _18631_ (
    .A(_8489_),
    .B(_8495_),
    .C(\datapath.idinstr_23_bF$buf7 ),
    .Y(_8496_)
);

AOI21X1 _18211_ (
    .A(_8084_),
    .B(_8083_),
    .C(_7091__bF$buf2),
    .Y(_8085_)
);

NAND2X1 _10718_ (
    .A(_1688_),
    .B(_1687_),
    .Y(_1689_)
);

FILL SFILL28840x46050 (
);

FILL SFILL33800x29050 (
);

DFFPOSX1 _19836_ (
    .Q(\datapath.registers.828[3] [12]),
    .CLK(CLK_bF$buf14),
    .D(_4439_)
);

DFFPOSX1 _19416_ (
    .Q(\datapath.registers.828[24] [8]),
    .CLK(CLK_bF$buf91),
    .D(_4178_)
);

NAND2X1 _14971_ (
    .A(\datapath.rd [10]),
    .B(_5257__bF$buf5),
    .Y(_5273_)
);

FILL SFILL28440x32050 (
);

OAI21X1 _14551_ (
    .A(_5004__bF$buf0),
    .B(_4840__bF$buf4),
    .C(\datapath.registers.828[15] [25]),
    .Y(_5030_)
);

NOR2X1 _14131_ (
    .A(\datapath.registers.828[21] [27]),
    .B(_4772__bF$buf7),
    .Y(_4800_)
);

FILL SFILL73880x41050 (
);

INVX8 _15756_ (
    .A(\datapath.idinstr_17_bF$buf8 ),
    .Y(_5684_)
);

NAND2X1 _15336_ (
    .A(\datapath.registers.828[24] [25]),
    .B(_5437__bF$buf2),
    .Y(_5463_)
);

AOI21X1 _10891_ (
    .A(_1860_),
    .B(_1861_),
    .C(\datapath.alu.b_1_bF$buf3 ),
    .Y(_1862_)
);

DFFPOSX1 _10471_ (
    .Q(\datapath.alupc_4 [21]),
    .CLK(CLK_bF$buf66),
    .D(\datapath.idpc_4 [21])
);

DFFPOSX1 _10051_ (
    .Q(\datapath.wbpc_4 [25]),
    .CLK(CLK_bF$buf68),
    .D(\datapath.mempc_4 [25])
);

FILL SFILL79080x55050 (
);

FILL SFILL54200x18050 (
);

OAI21X1 _11676_ (
    .A(_1077_),
    .B(_1076_),
    .C(_2465_),
    .Y(_1078_)
);

INVX1 _11256_ (
    .A(_2174_),
    .Y(_2221_)
);

FILL SFILL18440x30050 (
);

AOI21X1 _17902_ (
    .A(\datapath.registers.828[13] [15]),
    .B(\datapath.idinstr_20_bF$buf5 ),
    .C(\datapath.idinstr_21_bF$buf30 ),
    .Y(_7783_)
);

NAND2X1 _9824_ (
    .A(_675_),
    .B(_679_),
    .Y(_682_)
);

NAND2X1 _9404_ (
    .A(\datapath.csr.csr_data [8]),
    .B(_317__bF$buf4),
    .Y(_345_)
);

FILL SFILL78760x1050 (
);

NAND2X1 _13822_ (
    .A(\datapath.csr.csr_pcaddr [27]),
    .B(_3429__bF$buf0),
    .Y(_3599_)
);

NAND3X1 _13402_ (
    .A(_3292_),
    .B(_3295_),
    .C(_3291__bF$buf1),
    .Y(\datapath.memdataload [8])
);

AOI21X1 _16294_ (
    .A(_6188_),
    .B(_6210_),
    .C(_5687__bF$buf1),
    .Y(\datapath.registers.rega_data [11])
);

FILL SFILL48920x38050 (
);

OAI21X1 _14607_ (
    .A(_5063_),
    .B(_5039__bF$buf4),
    .C(_5064_),
    .Y(_3801_)
);

AOI21X1 _17499_ (
    .A(\datapath.registers.828[23] [6]),
    .B(\datapath.idinstr_22_bF$buf4 ),
    .C(_7089__bF$buf0),
    .Y(_7389_)
);

MUX2X1 _17079_ (
    .A(\datapath.registers.828[11] [29]),
    .B(\datapath.registers.828[10] [29]),
    .S(\datapath.idinstr_15_bF$buf22 ),
    .Y(_6978_)
);

OAI21X1 _18860_ (
    .A(_7742_),
    .B(_8598__bF$buf7),
    .C(_8613_),
    .Y(_4217_)
);

NAND3X1 _18440_ (
    .A(\datapath.idinstr_21_bF$buf9 ),
    .B(_8308_),
    .C(_8306_),
    .Y(_8309_)
);

MUX2X1 _18020_ (
    .A(\datapath.registers.828[22] [18]),
    .B(\datapath.registers.828[20] [18]),
    .S(\datapath.idinstr_21_bF$buf40 ),
    .Y(_7898_)
);

AOI21X1 _10947_ (
    .A(_1807_),
    .B(_1813_),
    .C(_1917_),
    .Y(_1918_)
);

DFFPOSX1 _10527_ (
    .Q(\datapath.idinstr [13]),
    .CLK(CLK_bF$buf8),
    .D(\datapath._05_ [13])
);

DFFPOSX1 _10107_ (
    .Q(\datapath.memoryinterface.data_store [17]),
    .CLK(CLK_bF$buf30),
    .D(\datapath.regrs2alu [17])
);

DFFPOSX1 _19645_ (
    .Q(\datapath.registers.828[26] [13]),
    .CLK(CLK_bF$buf70),
    .D(_4216_)
);

DFFPOSX1 _19225_ (
    .Q(\datapath.registers.828[20] [9]),
    .CLK(CLK_bF$buf4),
    .D(_4051_)
);

OAI21X1 _14780_ (
    .A(_4727__bF$buf1),
    .B(_5132__bF$buf7),
    .C(_5160_),
    .Y(_3751_)
);

AOI21X1 _14360_ (
    .A(_4675__bF$buf0),
    .B(_4924__bF$buf3),
    .C(_4926_),
    .Y(_3903_)
);

CLKBUF1 CLKBUF1_insert670 (
    .A(CLK_hier0_bF$buf0),
    .Y(CLK_bF$buf116)
);

CLKBUF1 CLKBUF1_insert671 (
    .A(CLK_hier0_bF$buf6),
    .Y(CLK_bF$buf115)
);

CLKBUF1 CLKBUF1_insert672 (
    .A(CLK_hier0_bF$buf0),
    .Y(CLK_bF$buf114)
);

CLKBUF1 CLKBUF1_insert673 (
    .A(CLK_hier0_bF$buf2),
    .Y(CLK_bF$buf113)
);

CLKBUF1 CLKBUF1_insert674 (
    .A(CLK_hier0_bF$buf11),
    .Y(CLK_bF$buf112)
);

CLKBUF1 CLKBUF1_insert675 (
    .A(CLK_hier0_bF$buf11),
    .Y(CLK_bF$buf111)
);

CLKBUF1 CLKBUF1_insert676 (
    .A(CLK_hier0_bF$buf6),
    .Y(CLK_bF$buf110)
);

CLKBUF1 CLKBUF1_insert677 (
    .A(CLK_hier0_bF$buf9),
    .Y(CLK_bF$buf109)
);

CLKBUF1 CLKBUF1_insert678 (
    .A(CLK_hier0_bF$buf7),
    .Y(CLK_bF$buf108)
);

CLKBUF1 CLKBUF1_insert679 (
    .A(CLK_hier0_bF$buf6),
    .Y(CLK_bF$buf107)
);

FILL SFILL83960x31050 (
);

MUX2X1 _15985_ (
    .A(_5907_),
    .B(_5906_),
    .S(\datapath.idinstr_16_bF$buf28 ),
    .Y(_5908_)
);

OAI21X1 _15565_ (
    .A(_5579__bF$buf2),
    .B(_4681__bF$buf4),
    .C(_5584_),
    .Y(_4014_)
);

OAI21X1 _15145_ (
    .A(_5336__bF$buf0),
    .B(_4840__bF$buf0),
    .C(\datapath.registers.828[7] [28]),
    .Y(_5365_)
);

FILL SFILL48680x5050 (
);

DFFPOSX1 _10280_ (
    .Q(\datapath.regimmalu [25]),
    .CLK(CLK_bF$buf38),
    .D(\datapath.imm [25])
);

OAI21X1 _11485_ (
    .A(_2279_),
    .B(\datapath.alu.b_2_bF$buf0 ),
    .C(_2061_),
    .Y(_2445_)
);

NAND2X1 _11065_ (
    .A(_2033_),
    .B(_2027_),
    .Y(_2034_)
);

MUX2X1 _17711_ (
    .A(\datapath.registers.828[3] [11]),
    .B(\datapath.registers.828[2] [11]),
    .S(\datapath.idinstr_20_bF$buf29 ),
    .Y(_7596_)
);

NOR2X1 _9633_ (
    .A(\datapath.meminstr [16]),
    .B(\datapath.meminstr [15]),
    .Y(_518_)
);

NAND3X1 _9213_ (
    .A(_182_),
    .B(\datapath.memexecptions [2]),
    .C(_198_),
    .Y(_199_)
);

FILL SFILL68600x16050 (
);

NOR2X1 _18916_ (
    .A(\datapath.registers.828[25] [10]),
    .B(_8631__bF$buf7),
    .Y(_8642_)
);

NOR2X1 _13631_ (
    .A(_3450_),
    .B(_3441_),
    .Y(_3451_)
);

NAND2X1 _13211_ (
    .A(\datapath.memoryinterface.data_store [21]),
    .B(_3031__bF$buf6),
    .Y(_3156_)
);

FILL SFILL73880x36050 (
);

AOI21X1 _14836_ (
    .A(_4709__bF$buf1),
    .B(_5167__bF$buf7),
    .C(_5193_),
    .Y(_3709_)
);

AOI21X1 _14416_ (
    .A(_4723__bF$buf4),
    .B(_4924__bF$buf2),
    .C(_4958_),
    .Y(_3909_)
);

INVX2 _10756_ (
    .A(\datapath.alu.b [30]),
    .Y(_1727_)
);

FILL SFILL18440x25050 (
);

DFFPOSX1 _10336_ (
    .Q(\datapath.regrs2alu [17]),
    .CLK(CLK_bF$buf35),
    .D(\datapath.registers.regb_data [17])
);

DFFPOSX1 _20014_ (
    .Q(\datapath.registers.828[25] [30]),
    .CLK(CLK_bF$buf112),
    .D(_4203_)
);

DFFPOSX1 _19874_ (
    .Q(\datapath.registers.828[1] [18]),
    .CLK(CLK_bF$buf126),
    .D(_3997_)
);

DFFPOSX1 _19454_ (
    .Q(\datapath.registers.828[23] [14]),
    .CLK(CLK_bF$buf65),
    .D(_4121_)
);

DFFPOSX1 _19034_ (
    .Q(\datapath.registers.828[31] [10]),
    .CLK(CLK_bF$buf130),
    .D(_4405_)
);

FILL SFILL48600x57050 (
);

NAND3X1 _8904_ (
    .A(\datapath.aluinstr [5]),
    .B(\datapath.aluinstr [6]),
    .C(_763_),
    .Y(_764_)
);

DFFPOSX1 _12902_ (
    .Q(\datapath.csr.mcause [28]),
    .CLK(CLK_bF$buf100),
    .D(\datapath.csr._32_ [28])
);

MUX2X1 _15794_ (
    .A(\datapath.registers.828[3] [0]),
    .B(\datapath.registers.828[2] [0]),
    .S(\datapath.idinstr_15_bF$buf20 ),
    .Y(_5722_)
);

OAI21X1 _15374_ (
    .A(_4695__bF$buf4),
    .B(_5470__bF$buf6),
    .C(_5482_),
    .Y(_4470_)
);

FILL SFILL48600x12050 (
);

AOI21X1 _16999_ (
    .A(_6899_),
    .B(_6898_),
    .C(_5684__bF$buf0),
    .Y(_6900_)
);

MUX2X1 _16579_ (
    .A(\datapath.registers.828[1] [18]),
    .B(\datapath.registers.828[0] [18]),
    .S(\datapath.idinstr_15_bF$buf2 ),
    .Y(_6489_)
);

OAI21X1 _16159_ (
    .A(_6078_),
    .B(_6069_),
    .C(_5680__bF$buf2),
    .Y(_6079_)
);

NAND3X1 _11294_ (
    .A(_2255_),
    .B(_2257_),
    .C(_2256_),
    .Y(_2258_)
);

FILL SFILL38600x55050 (
);

MUX2X1 _17940_ (
    .A(_7819_),
    .B(_7818_),
    .S(\datapath.idinstr_21_bF$buf42 ),
    .Y(_7820_)
);

AOI21X1 _17520_ (
    .A(_7404_),
    .B(_7408_),
    .C(_7093__bF$buf7),
    .Y(_7409_)
);

AOI21X1 _17100_ (
    .A(_6976_),
    .B(_6998_),
    .C(_5687__bF$buf3),
    .Y(\datapath.registers.rega_data [29])
);

NAND2X1 _9862_ (
    .A(_715_),
    .B(_711_),
    .Y(_716_)
);

NAND2X1 _9442_ (
    .A(\datapath.registers.regb_data [18]),
    .B(_318__bF$buf2),
    .Y(_373_)
);

INVX1 _9022_ (
    .A(\datapath.nextpc [6]),
    .Y(_843_)
);

NAND2X1 _12499_ (
    .A(\controlunit.csrfile_trap_wen_bF$buf2 ),
    .B(\datapath.csr.csr_mepc [9]),
    .Y(_2696_)
);

AOI21X1 _12079_ (
    .A(_1742_),
    .B(_1509_),
    .C(_1906_),
    .Y(_1510_)
);

FILL SFILL3240x54050 (
);

OAI21X1 _18725_ (
    .A(_4697__bF$buf3),
    .B(_8531__bF$buf0),
    .C(_8544_),
    .Y(_4279_)
);

FILL SFILL38600x10050 (
);

MUX2X1 _18305_ (
    .A(\datapath.registers.828[27] [24]),
    .B(\datapath.registers.828[25] [24]),
    .S(\datapath.idinstr_21_bF$buf39 ),
    .Y(_8177_)
);

NAND3X1 _13860_ (
    .A(\datapath.programcounter.pc [30]),
    .B(\datapath.programcounter.pc [31]),
    .C(_3629_),
    .Y(_3630_)
);

NAND3X1 _13440_ (
    .A(_3325_),
    .B(_3033__bF$buf2),
    .C(_3321_),
    .Y(_3326_)
);

FILL SFILL38760x50 (
);

OAI21X1 _13020_ (
    .A(_3013_),
    .B(\controlunit.imm_sel [2]),
    .C(_3004_),
    .Y(_2977_)
);

FILL SFILL38520x17050 (
);

FILL SFILL28600x53050 (
);

FILL SFILL83960x26050 (
);

OAI21X1 _14645_ (
    .A(_5088_),
    .B(_5039__bF$buf3),
    .C(_5089_),
    .Y(_3815_)
);

OAI21X1 _14225_ (
    .A(_4849_),
    .B(_4842__bF$buf1),
    .C(_4850_),
    .Y(_3984_)
);

FILL SFILL3160x16050 (
);

MUX2X1 _10985_ (
    .A(_1954_),
    .B(_1949_),
    .S(\datapath.alu.b_2_bF$buf1 ),
    .Y(_1955_)
);

DFFPOSX1 _10565_ (
    .Q(\datapath.idpc_4 [19]),
    .CLK(CLK_bF$buf28),
    .D(\datapath._04_ [19])
);

DFFPOSX1 _10145_ (
    .Q(_0_[23]),
    .CLK(CLK_bF$buf39),
    .D(\datapath.alu.c [23])
);

DFFPOSX1 _19683_ (
    .Q(\datapath.registers.828[27] [19]),
    .CLK(CLK_bF$buf82),
    .D(_4254_)
);

DFFPOSX1 _19263_ (
    .Q(\datapath.registers.828[22] [15]),
    .CLK(CLK_bF$buf76),
    .D(_4090_)
);

FILL SFILL28520x15050 (
);

BUFX2 _8713_ (
    .A(_1_[17]),
    .Y(DMEM_DATA_S[17])
);

FILL SFILL73960x24050 (
);

OAI21X1 _12711_ (
    .A(\datapath.csr.mvect [2]),
    .B(\datapath.csr.mvect [3]),
    .C(\datapath.csr.mvect [4]),
    .Y(_2848_)
);

FILL SFILL73560x10050 (
);

AOI21X1 _15183_ (
    .A(_4701__bF$buf2),
    .B(_5369__bF$buf0),
    .C(_5384_),
    .Y(_4537_)
);

DFFPOSX1 _9918_ (
    .Q(\datapath.regcsrwb [4]),
    .CLK(CLK_bF$buf27),
    .D(\datapath.csr.csr_wdata [4])
);

FILL SFILL39080x42050 (
);

INVX8 _13916_ (
    .A(\datapath.rd [1]),
    .Y(_4675_)
);

NAND2X1 _16388_ (
    .A(_5684__bF$buf8),
    .B(_6301_),
    .Y(_6302_)
);

FILL SFILL18520x13050 (
);

FILL SFILL63960x22050 (
);

NAND2X1 _9671_ (
    .A(\datapath.alupc [4]),
    .B(\datapath.regimmalu [4]),
    .Y(_548_)
);

NAND3X1 _9251_ (
    .A(_228_),
    .B(_229_),
    .C(_227_),
    .Y(\datapath.rd [3])
);

FILL SFILL63880x29050 (
);

NAND2X1 _18954_ (
    .A(\datapath.rd [29]),
    .B(_8631__bF$buf6),
    .Y(_8661_)
);

MUX2X1 _18534_ (
    .A(_8400_),
    .B(_8399_),
    .S(\datapath.idinstr_21_bF$buf8 ),
    .Y(_8401_)
);

NAND2X1 _18114_ (
    .A(_7987_),
    .B(_7989_),
    .Y(_7990_)
);

FILL SFILL29080x40050 (
);

DFFPOSX1 _19739_ (
    .Q(\datapath.registers.828[16] [11]),
    .CLK(CLK_bF$buf127),
    .D(_3862_)
);

DFFPOSX1 _19319_ (
    .Q(\datapath.registers.828[4] [7]),
    .CLK(CLK_bF$buf99),
    .D(_4497_)
);

INVX2 _14874_ (
    .A(\datapath.registers.828[10] [2]),
    .Y(_5216_)
);

OAI21X1 _14454_ (
    .A(_4693__bF$buf2),
    .B(_4968__bF$buf6),
    .C(_4979_),
    .Y(_3861_)
);

AOI21X1 _14034_ (
    .A(_4695__bF$buf3),
    .B(_4738__bF$buf7),
    .C(_4750_),
    .Y(_4086_)
);

OAI21X1 _15659_ (
    .A(_4840__bF$buf7),
    .B(_5612__bF$buf0),
    .C(\datapath.registers.828[31] [18]),
    .Y(_5633_)
);

NOR2X1 _15239_ (
    .A(\datapath.registers.828[5] [10]),
    .B(_5402__bF$buf7),
    .Y(_5413_)
);

NAND2X1 _10794_ (
    .A(_1764_),
    .B(_1725_),
    .Y(_1765_)
);

DFFPOSX1 _10374_ (
    .Q(\datapath.alu.b [23]),
    .CLK(CLK_bF$buf37),
    .D(\datapath.muxbval [23])
);

MUX2X1 _16600_ (
    .A(_6509_),
    .B(_6508_),
    .S(_5681__bF$buf7),
    .Y(_6510_)
);

DFFPOSX1 _19492_ (
    .Q(\datapath.registers.828[5] [20]),
    .CLK(CLK_bF$buf40),
    .D(_4512_)
);

DFFPOSX1 _19072_ (
    .Q(\datapath.registers.828[10] [16]),
    .CLK(CLK_bF$buf101),
    .D(_3675_)
);

NAND2X1 _8942_ (
    .A(gnd),
    .B(\datapath.idpc [11]),
    .Y(_790_)
);

OR2X2 _11999_ (
    .A(_1424_),
    .B(\datapath.alu.b_3_bF$buf7 ),
    .Y(_1425_)
);

NOR3X1 _11579_ (
    .A(_955_),
    .B(_974_),
    .C(_949_),
    .Y(_975_)
);

OAI21X1 _11159_ (
    .A(_2036_),
    .B(_2124_),
    .C(_2125_),
    .Y(_2126_)
);

MUX2X1 _17805_ (
    .A(\datapath.registers.828[11] [13]),
    .B(\datapath.registers.828[10] [13]),
    .S(\datapath.idinstr_20_bF$buf7 ),
    .Y(_7688_)
);

DFFPOSX1 _12940_ (
    .Q(\datapath.csr.mvect [1]),
    .CLK(CLK_bF$buf141),
    .D(\datapath.csr._13_ [1])
);

MUX2X1 _12520_ (
    .A(\datapath.csr.mepc [13]),
    .B(\datapath.csr.csr_wdata [15]),
    .S(_2672__bF$buf1),
    .Y(_2711_)
);

OAI21X1 _12100_ (
    .A(_912_),
    .B(\datapath.alu.b_4_bF$buf2 ),
    .C(_1532_),
    .Y(_1533_)
);

AND2X2 _9727_ (
    .A(\datapath.alupc [11]),
    .B(\datapath.regimmalu [11]),
    .Y(_597_)
);

NAND3X1 _9307_ (
    .A(_270_),
    .B(_271_),
    .C(_269_),
    .Y(\datapath.rd [17])
);

FILL SFILL7960x26050 (
);

XNOR2X1 _13725_ (
    .A(_3519_),
    .B(_3392_),
    .Y(\datapath.nextpc [17])
);

INVX1 _13305_ (
    .A(DMEM_DATA_L[9]),
    .Y(_3230_)
);

NAND3X1 _16197_ (
    .A(_5683__bF$buf3),
    .B(_6115_),
    .C(_6112_),
    .Y(_6116_)
);

FILL SFILL68680x60050 (
);

NAND2X1 _9480_ (
    .A(\datapath.csr.csr_data [27]),
    .B(_317__bF$buf0),
    .Y(_402_)
);

OAI21X1 _9060_ (
    .A(_867_),
    .B(gnd),
    .C(_868_),
    .Y(\datapath._04_ [18])
);

OAI21X1 _18763_ (
    .A(_4735__bF$buf4),
    .B(_8531__bF$buf4),
    .C(_8563_),
    .Y(_4300_)
);

OAI21X1 _18343_ (
    .A(_8202_),
    .B(_8213_),
    .C(\datapath.idinstr_24_bF$buf0 ),
    .Y(_8214_)
);

FILL SFILL18600x46050 (
);

FILL SFILL73960x19050 (
);

DFFPOSX1 _19968_ (
    .Q(\datapath.registers.828[6] [16]),
    .CLK(CLK_bF$buf45),
    .D(_4539_)
);

DFFPOSX1 _19548_ (
    .Q(\datapath.registers.828[12] [12]),
    .CLK(CLK_bF$buf88),
    .D(_3735_)
);

DFFPOSX1 _19128_ (
    .Q(\datapath.registers.828[17] [8]),
    .CLK(CLK_bF$buf93),
    .D(_3922_)
);

AOI21X1 _14683_ (
    .A(_4695__bF$buf3),
    .B(_5099__bF$buf3),
    .C(_5111_),
    .Y(_3766_)
);

INVX1 _14263_ (
    .A(\datapath.registers.828[19] [23]),
    .Y(_4872_)
);

FILL SFILL18120x39050 (
);

FILL SFILL23480x52050 (
);

FILL SFILL39080x37050 (
);

AOI21X1 _15888_ (
    .A(_5809_),
    .B(_5813_),
    .C(\datapath.idinstr_18_bF$buf2 ),
    .Y(_5814_)
);

INVX1 _15468_ (
    .A(\datapath.registers.828[3] [23]),
    .Y(_5533_)
);

OAI21X1 _15048_ (
    .A(_4699__bF$buf2),
    .B(_5300__bF$buf4),
    .C(_5314_),
    .Y(_4600_)
);

DFFPOSX1 _10183_ (
    .Q(\datapath.meminstr [22]),
    .CLK(CLK_bF$buf6),
    .D(\datapath.aluinstr [22])
);

FILL SFILL23400x50050 (
);

BUFX2 _8751_ (
    .A(\datapath.programcounter.pc [22]),
    .Y(IMEM_ADDR[22])
);

OAI21X1 _11388_ (
    .A(\datapath.alu.b_3_bF$buf6 ),
    .B(_2350_),
    .C(_2347_),
    .Y(_2351_)
);

FILL SFILL84040x30050 (
);

OAI21X1 _17614_ (
    .A(_6110_),
    .B(\datapath.idinstr_22_bF$buf25 ),
    .C(_7500_),
    .Y(_7501_)
);

FILL SFILL13480x50050 (
);

DFFPOSX1 _9956_ (
    .Q(\datapath.regloadwb [10]),
    .CLK(CLK_bF$buf146),
    .D(\datapath.memdataload [10])
);

FILL SFILL73800x8050 (
);

NAND2X1 _9536_ (
    .A(\datapath.csr.csr_data [8]),
    .B(_417__bF$buf1),
    .Y(_445_)
);

NAND2X1 _9116_ (
    .A(gnd),
    .B(\datapath.idinstr [5]),
    .Y(_129_)
);

AOI21X1 _18819_ (
    .A(_4725__bF$buf0),
    .B(_8565__bF$buf6),
    .C(_8592_),
    .Y(_4262_)
);

AOI21X1 _13954_ (
    .A(_4699__bF$buf1),
    .B(_4673__bF$buf6),
    .C(_4700_),
    .Y(_4120_)
);

NOR2X1 _13534_ (
    .A(gnd),
    .B(\datapath.programcounter.pc_mux [12]),
    .Y(_3383_)
);

NAND3X1 _13114_ (
    .A(_3069_),
    .B(_3068_),
    .C(_3073_),
    .Y(_1_[6])
);

FILL SFILL8360x11050 (
);

NAND2X1 _14739_ (
    .A(\datapath.registers.828[12] [7]),
    .B(_5132__bF$buf0),
    .Y(_5140_)
);

NOR2X1 _14319_ (
    .A(\datapath.registers.828[18] [15]),
    .B(_4886__bF$buf6),
    .Y(_4904_)
);

DFFPOSX1 _18992_ (
    .Q(\datapath.registers.828[18] [0]),
    .CLK(CLK_bF$buf127),
    .D(_3924_)
);

INVX1 _18572_ (
    .A(\datapath.registers.828[16] [30]),
    .Y(_8438_)
);

NAND2X1 _18152_ (
    .A(_7089__bF$buf8),
    .B(_8026_),
    .Y(_8027_)
);

NAND2X1 _10659_ (
    .A(_1423_),
    .B(_1444_),
    .Y(_1455_)
);

DFFPOSX1 _10239_ (
    .Q(\datapath.csr.csr_mepc [16]),
    .CLK(CLK_bF$buf110),
    .D(\datapath.alupc [16])
);

NOR2X1 _11600_ (
    .A(_990_),
    .B(_996_),
    .Y(_997_)
);

DFFPOSX1 _19777_ (
    .Q(\datapath.registers.828[30] [17]),
    .CLK(CLK_bF$buf111),
    .D(_4380_)
);

DFFPOSX1 _19357_ (
    .Q(\datapath.registers.828[7] [13]),
    .CLK(CLK_bF$buf42),
    .D(_4568_)
);

OAI21X1 _14492_ (
    .A(_4731__bF$buf0),
    .B(_4968__bF$buf5),
    .C(_4998_),
    .Y(_3881_)
);

AOI21X1 _14072_ (
    .A(_4733__bF$buf3),
    .B(_4738__bF$buf5),
    .C(_4769_),
    .Y(_4107_)
);

NOR2X1 _8807_ (
    .A(_18_),
    .B(_16_),
    .Y(_19_)
);

NOR2X1 _12805_ (
    .A(_2640_),
    .B(_2917_),
    .Y(_2925_)
);

FILL SFILL84280x7050 (
);

AOI21X1 _15697_ (
    .A(_4681__bF$buf0),
    .B(_5647__bF$buf1),
    .C(_5652_),
    .Y(_4398_)
);

NOR2X1 _15277_ (
    .A(\datapath.registers.828[5] [29]),
    .B(_5402__bF$buf2),
    .Y(_5432_)
);

INVX1 _8980_ (
    .A(\datapath.programcounter.pc [24]),
    .Y(_815_)
);

AND2X2 _11197_ (
    .A(_2163_),
    .B(_2152_),
    .Y(_2164_)
);

FILL SFILL68680x10050 (
);

AOI21X1 _17843_ (
    .A(\datapath.registers.828[14] [14]),
    .B(\datapath.idinstr_22_bF$buf9 ),
    .C(\datapath.idinstr_20_bF$buf48 ),
    .Y(_7725_)
);

MUX2X1 _17423_ (
    .A(_7313_),
    .B(_7312_),
    .S(\datapath.idinstr_21_bF$buf42 ),
    .Y(_7314_)
);

MUX2X1 _17003_ (
    .A(\datapath.registers.828[7] [27]),
    .B(\datapath.registers.828[6] [27]),
    .S(\datapath.idinstr_15_bF$buf23 ),
    .Y(_6904_)
);

FILL SFILL33400x47050 (
);

AND2X2 _9765_ (
    .A(_630_),
    .B(_629_),
    .Y(_631_)
);

NAND2X1 _9345_ (
    .A(\datapath.regcwb [27]),
    .B(_218__bF$buf1),
    .Y(_300_)
);

AOI21X1 _18628_ (
    .A(\datapath.registers.828[6] [31]),
    .B(\datapath.idinstr_22_bF$buf28 ),
    .C(\datapath.idinstr_20_bF$buf9 ),
    .Y(_8493_)
);

OAI21X1 _18208_ (
    .A(_8080_),
    .B(\datapath.idinstr_22_bF$buf16 ),
    .C(_8081_),
    .Y(_8082_)
);

NAND2X1 _13763_ (
    .A(_3552_),
    .B(_3550_),
    .Y(_3553_)
);

OAI21X1 _13343_ (
    .A(_3205_),
    .B(_3239__bF$buf3),
    .C(_3246_),
    .Y(\datapath.memoryinterface.byte_size_store.storebyte [30])
);

NOR2X1 _14968_ (
    .A(\datapath.registers.828[9] [9]),
    .B(_5257__bF$buf6),
    .Y(_5271_)
);

OAI21X1 _14548_ (
    .A(_5003__bF$buf2),
    .B(_4719__bF$buf3),
    .C(_5028_),
    .Y(_3843_)
);

AOI21X1 _14128_ (
    .A(_4723__bF$buf1),
    .B(_4772__bF$buf1),
    .C(_4798_),
    .Y(_4069_)
);

FILL SFILL79320x8050 (
);

FILL SFILL23400x45050 (
);

FILL SFILL79000x2050 (
);

NAND2X1 _18381_ (
    .A(_7089__bF$buf0),
    .B(_8250_),
    .Y(_8251_)
);

FILL SFILL8440x44050 (
);

FILL SFILL48680x51050 (
);

OAI21X1 _10888_ (
    .A(_1857_),
    .B(\datapath.alu.b_0_bF$buf7 ),
    .C(_1858_),
    .Y(_1859_)
);

DFFPOSX1 _10468_ (
    .Q(\datapath.alupc_4 [18]),
    .CLK(CLK_bF$buf21),
    .D(\datapath.idpc_4 [18])
);

DFFPOSX1 _10048_ (
    .Q(\datapath.wbpc_4 [22]),
    .CLK(CLK_bF$buf77),
    .D(\datapath.mempc_4 [22])
);

DFFPOSX1 _19586_ (
    .Q(\datapath.registers.828[21] [18]),
    .CLK(CLK_bF$buf89),
    .D(_4061_)
);

DFFPOSX1 _19166_ (
    .Q(\datapath.registers.828[15] [14]),
    .CLK(CLK_bF$buf75),
    .D(_3833_)
);

OAI21X1 _12614_ (
    .A(_2780_),
    .B(\datapath.csr.csr_wdata [1]),
    .C(_2783__bF$buf2),
    .Y(_2787_)
);

NOR2X1 _15086_ (
    .A(_4665_),
    .B(_5333_),
    .Y(_5334_)
);

FILL SFILL78760x45050 (
);

NAND3X1 _13819_ (
    .A(\datapath.programcounter.pc [26]),
    .B(\datapath.programcounter.pc [27]),
    .C(_3590_),
    .Y(_3597_)
);

NAND2X1 _17652_ (
    .A(_7092__bF$buf8),
    .B(_7537_),
    .Y(_7538_)
);

MUX2X1 _17232_ (
    .A(\datapath.registers.828[5] [0]),
    .B(\datapath.registers.828[4] [0]),
    .S(\datapath.idinstr_20_bF$buf43 ),
    .Y(_7128_)
);

DFFPOSX1 _9994_ (
    .Q(\datapath.regcwb [16]),
    .CLK(CLK_bF$buf129),
    .D(_0_[16])
);

NAND2X1 _9574_ (
    .A(\datapath.registers.rega_data [18]),
    .B(_418__bF$buf1),
    .Y(_473_)
);

INVX1 _9154_ (
    .A(IMEM_DATA[18]),
    .Y(_154_)
);

NOR2X1 _18857_ (
    .A(\datapath.registers.828[26] [13]),
    .B(_8598__bF$buf5),
    .Y(_8612_)
);

OAI21X1 _18437_ (
    .A(_5203_),
    .B(\datapath.idinstr_22_bF$buf11 ),
    .C(_8305_),
    .Y(_8306_)
);

MUX2X1 _18017_ (
    .A(\datapath.registers.828[19] [18]),
    .B(\datapath.registers.828[17] [18]),
    .S(\datapath.idinstr_21_bF$buf40 ),
    .Y(_7895_)
);

NOR2X1 _13992_ (
    .A(\datapath.registers.828[23] [26]),
    .B(_4673__bF$buf6),
    .Y(_4726_)
);

INVX2 _13572_ (
    .A(\datapath.programcounter.pc [25]),
    .Y(_3408_)
);

OAI21X1 _13152_ (
    .A(_3101_),
    .B(_3081_),
    .C(_3105_),
    .Y(_1_[12])
);

FILL SFILL64040x21050 (
);

NAND2X1 _14777_ (
    .A(\datapath.registers.828[12] [26]),
    .B(_5132__bF$buf2),
    .Y(_5159_)
);

NOR2X1 _14357_ (
    .A(\datapath.registers.828[17] [0]),
    .B(_4924__bF$buf6),
    .Y(_4925_)
);

OAI21X1 _18190_ (
    .A(_5079_),
    .B(\datapath.idinstr_20_bF$buf45 ),
    .C(\datapath.idinstr_21_bF$buf18 ),
    .Y(_8064_)
);

INVX4 _10697_ (
    .A(\datapath.alu.a [13]),
    .Y(_1668_)
);

DFFPOSX1 _10277_ (
    .Q(\datapath.regimmalu [22]),
    .CLK(CLK_bF$buf32),
    .D(\datapath.imm [22])
);

AOI21X1 _16923_ (
    .A(_6801_),
    .B(_6825_),
    .C(_5687__bF$buf4),
    .Y(\datapath.registers.rega_data [25])
);

AOI21X1 _16503_ (
    .A(_6414_),
    .B(_6408_),
    .C(_5685__bF$buf0),
    .Y(_6415_)
);

DFFPOSX1 _19395_ (
    .Q(\datapath.registers.828[8] [19]),
    .CLK(CLK_bF$buf16),
    .D(_4606_)
);

AOI21X1 _8845_ (
    .A(_53_),
    .B(_50_),
    .C(_19_),
    .Y(_54_)
);

FILL SFILL58920x1050 (
);

MUX2X1 _17708_ (
    .A(_7592_),
    .B(_7591_),
    .S(\datapath.idinstr_21_bF$buf41 ),
    .Y(_7593_)
);

FILL SFILL18600x8050 (
);

AND2X2 _12843_ (
    .A(_2952_),
    .B(_2956_),
    .Y(\datapath.csr.csr_pcaddr [27])
);

FILL SFILL58840x6050 (
);

INVX2 _12423_ (
    .A(\datapath.csr.mvect [20]),
    .Y(_2640_)
);

INVX2 _12003_ (
    .A(_1407_),
    .Y(_1429_)
);

AOI22X1 _13628_ (
    .A(_3423__bF$buf1),
    .B(\datapath.alu.c [5]),
    .C(\datapath.csr.csr_pcaddr [5]),
    .D(_3429__bF$buf1),
    .Y(_3449_)
);

OAI21X1 _13208_ (
    .A(_3151_),
    .B(_0__1_bF$buf7),
    .C(_3152_),
    .Y(_3153_)
);

FILL SFILL8520x32050 (
);

NAND2X1 _17881_ (
    .A(\datapath.idinstr_22_bF$buf27 ),
    .B(_7761_),
    .Y(_7762_)
);

FILL SFILL84120x13050 (
);

MUX2X1 _17461_ (
    .A(\datapath.registers.828[21] [5]),
    .B(\datapath.registers.828[20] [5]),
    .S(\datapath.idinstr_20_bF$buf8 ),
    .Y(_7352_)
);

OAI21X1 _17041_ (
    .A(_5205_),
    .B(\datapath.idinstr_17_bF$buf5 ),
    .C(_6940_),
    .Y(_6941_)
);

FILL SFILL8440x39050 (
);

FILL SFILL48680x46050 (
);

NAND2X1 _9383_ (
    .A(\datapath.imm [3]),
    .B(_316__bF$buf1),
    .Y(_329_)
);

AOI21X1 _18666_ (
    .A(_4703__bF$buf3),
    .B(_8498__bF$buf6),
    .C(_8514_),
    .Y(_4314_)
);

AOI21X1 _18246_ (
    .A(_8118_),
    .B(_8117_),
    .C(\datapath.idinstr_21_bF$buf26 ),
    .Y(_8119_)
);

OAI21X1 _13381_ (
    .A(_3273_),
    .B(_3081_),
    .C(_3277_),
    .Y(\datapath.memdataload [5])
);

FILL SFILL13400x38050 (
);

OAI21X1 _14586_ (
    .A(_5050_),
    .B(_5039__bF$buf2),
    .C(_5051_),
    .Y(_3824_)
);

AOI21X1 _14166_ (
    .A(_4695__bF$buf3),
    .B(_4806__bF$buf1),
    .C(_4818_),
    .Y(_4022_)
);

FILL SFILL74120x11050 (
);

FILL SFILL73960x50 (
);

FILL SFILL74040x18050 (
);

FILL SFILL28440x4050 (
);

FILL SFILL8680x6050 (
);

FILL SFILL64120x54050 (
);

DFFPOSX1 _10086_ (
    .Q(\datapath.csr.csr_wdata [28]),
    .CLK(CLK_bF$buf71),
    .D(\datapath.regcsralu [28])
);

NAND2X1 _16732_ (
    .A(\datapath.idinstr_17_bF$buf12 ),
    .B(_6638_),
    .Y(_6639_)
);

AOI21X1 _16312_ (
    .A(\datapath.idinstr_15_bF$buf31 ),
    .B(_6227_),
    .C(_5684__bF$buf10),
    .Y(_6228_)
);

FILL SFILL68840x31050 (
);

OAI21X1 _17937_ (
    .A(_7805_),
    .B(_7816_),
    .C(\datapath.idinstr_24_bF$buf3 ),
    .Y(_7817_)
);

MUX2X1 _17517_ (
    .A(\datapath.registers.828[31] [7]),
    .B(\datapath.registers.828[30] [7]),
    .S(\datapath.idinstr_20_bF$buf22 ),
    .Y(_7406_)
);

OAI21X1 _12652_ (
    .A(_2797__bF$buf2),
    .B(\datapath.csr.csr_wdata [14]),
    .C(_2783__bF$buf0),
    .Y(_2812_)
);

INVX1 _12232_ (
    .A(_2500__bF$buf3),
    .Y(_2501_)
);

FILL SFILL28680x42050 (
);

FILL SFILL68760x38050 (
);

NOR2X1 _9859_ (
    .A(\datapath.alupc [27]),
    .B(\datapath.regimmalu [27]),
    .Y(_714_)
);

NAND2X1 _9439_ (
    .A(\datapath.imm [17]),
    .B(_316__bF$buf4),
    .Y(_371_)
);

INVX1 _9019_ (
    .A(\datapath.nextpc [5]),
    .Y(_841_)
);

NAND3X1 _13857_ (
    .A(_3609_),
    .B(_3620_),
    .C(_3582_),
    .Y(_3627_)
);

NAND3X1 _13437_ (
    .A(_3323_),
    .B(_3322_),
    .C(_3291__bF$buf0),
    .Y(\datapath.memdataload [15])
);

NOR2X1 _13017_ (
    .A(\controlunit.imm_sel [0]),
    .B(_3004_),
    .Y(_2975_)
);

FILL SFILL54040x59050 (
);

OAI21X1 _17690_ (
    .A(_7574_),
    .B(\datapath.idinstr_22_bF$buf41 ),
    .C(_7575_),
    .Y(_7576_)
);

AOI21X1 _17270_ (
    .A(\datapath.registers.828[15] [1]),
    .B(\datapath.idinstr_22_bF$buf37 ),
    .C(_7089__bF$buf6),
    .Y(_7165_)
);

OAI21X1 _9192_ (
    .A(_178_),
    .B(gnd),
    .C(_179_),
    .Y(\datapath._05_ [30])
);

NOR2X1 _18895_ (
    .A(_5098__bF$buf5),
    .B(_8564_),
    .Y(_8631_)
);

MUX2X1 _18475_ (
    .A(\datapath.registers.828[11] [28]),
    .B(\datapath.registers.828[10] [28]),
    .S(\datapath.idinstr_20_bF$buf27 ),
    .Y(_8343_)
);

NAND2X1 _18055_ (
    .A(\datapath.registers.828[12] [19]),
    .B(_7089__bF$buf5),
    .Y(_7932_)
);

NAND2X1 _13190_ (
    .A(\datapath.memoryinterface.data_store [18]),
    .B(_3031__bF$buf5),
    .Y(_3138_)
);

AOI21X1 _11923_ (
    .A(_1689_),
    .B(_1312_),
    .C(_1800_),
    .Y(_1343_)
);

NAND2X1 _11503_ (
    .A(\datapath.alu.b [12]),
    .B(_1671_),
    .Y(_2462_)
);

AOI21X1 _14395_ (
    .A(_4705__bF$buf3),
    .B(_4924__bF$buf3),
    .C(_4946_),
    .Y(_3899_)
);

OAI21X1 _12708_ (
    .A(_2844_),
    .B(\controlunit.mret_bF$buf0 ),
    .C(_2845_),
    .Y(\datapath.csr.csr_pcaddr [3])
);

FILL SFILL48760x34050 (
);

MUX2X1 _16961_ (
    .A(_6862_),
    .B(_6861_),
    .S(_5681__bF$buf9),
    .Y(_6863_)
);

AOI21X1 _16541_ (
    .A(\datapath.registers.828[30] [17]),
    .B(\datapath.idinstr_17_bF$buf11 ),
    .C(\datapath.idinstr_15_bF$buf53 ),
    .Y(_6452_)
);

MUX2X1 _16121_ (
    .A(\datapath.registers.828[29] [8]),
    .B(\datapath.registers.828[28] [8]),
    .S(\datapath.idinstr_15_bF$buf25 ),
    .Y(_6041_)
);

NOR3X1 _8883_ (
    .A(\datapath.idinstr [6]),
    .B(\datapath.idinstr [4]),
    .C(_62_),
    .Y(_88_)
);

FILL SFILL34040x55050 (
);

MUX2X1 _17746_ (
    .A(_7629_),
    .B(_7628_),
    .S(\datapath.idinstr_21_bF$buf14 ),
    .Y(_7630_)
);

MUX2X1 _17326_ (
    .A(_7219_),
    .B(_7218_),
    .S(\datapath.idinstr_21_bF$buf20 ),
    .Y(_7220_)
);

DFFPOSX1 _12881_ (
    .Q(\datapath.csr.mcause [7]),
    .CLK(CLK_bF$buf35),
    .D(\datapath.csr._32_ [7])
);

NOR2X1 _12461_ (
    .A(_2586_),
    .B(_2665_),
    .Y(_2666_)
);

AOI21X1 _12041_ (
    .A(_2413_),
    .B(_1407_),
    .C(_1469_),
    .Y(_1470_)
);

FILL SFILL78440x59050 (
);

XNOR2X1 _9668_ (
    .A(\datapath.alupc [4]),
    .B(\datapath.regimmalu [4]),
    .Y(_546_)
);

AOI22X1 _9248_ (
    .A(_219__bF$buf4),
    .B(\datapath.wbpc_4 [3]),
    .C(\datapath.regcsrwb [3]),
    .D(_216__bF$buf4),
    .Y(_227_)
);

FILL SFILL38760x32050 (
);

AOI22X1 _13666_ (
    .A(_3423__bF$buf0),
    .B(\datapath.alu.c [10]),
    .C(\datapath.csr.csr_pcaddr [10]),
    .D(_3429__bF$buf4),
    .Y(_3477_)
);

NAND2X1 _13246_ (
    .A(\datapath.memoryinterface.data_store [26]),
    .B(_3031__bF$buf1),
    .Y(_3186_)
);

AOI21X1 _15812_ (
    .A(_5734_),
    .B(_5738_),
    .C(_5685__bF$buf7),
    .Y(_5739_)
);

MUX2X1 _18284_ (
    .A(\datapath.registers.828[15] [24]),
    .B(\datapath.registers.828[14] [24]),
    .S(\datapath.idinstr_20_bF$buf41 ),
    .Y(_8156_)
);

FILL SFILL28760x30050 (
);

OR2X2 _11732_ (
    .A(_2089_),
    .B(_994__bF$buf1),
    .Y(_1139_)
);

NOR2X1 _11312_ (
    .A(_1123__bF$buf1),
    .B(_2111_),
    .Y(_2276_)
);

FILL SFILL28680x37050 (
);

DFFPOSX1 _19489_ (
    .Q(\datapath.registers.828[5] [17]),
    .CLK(CLK_bF$buf128),
    .D(_4508_)
);

DFFPOSX1 _19069_ (
    .Q(\datapath.registers.828[10] [13]),
    .CLK(CLK_bF$buf92),
    .D(_3672_)
);

NAND2X1 _8939_ (
    .A(gnd),
    .B(\datapath.idpc [10]),
    .Y(_788_)
);

DFFPOSX1 _12937_ (
    .Q(\datapath.csr.mip ),
    .CLK(CLK_bF$buf44),
    .D(\datapath.csr.meta_irq )
);

OAI21X1 _12517_ (
    .A(\datapath.csr.csr_wdata [14]),
    .B(_2672__bF$buf0),
    .C(_2708_),
    .Y(_2709_)
);

AOI21X1 _16770_ (
    .A(_6675_),
    .B(_6674_),
    .C(_5684__bF$buf2),
    .Y(_6676_)
);

AOI21X1 _16350_ (
    .A(_6264_),
    .B(_6257_),
    .C(_5685__bF$buf0),
    .Y(_6265_)
);

FILL SFILL73640x30050 (
);

BUFX2 _8692_ (
    .A(_0_[28]),
    .Y(DMEM_ADDR[28])
);

BUFX2 BUFX2_insert340 (
    .A(_8531_),
    .Y(_8531__bF$buf1)
);

BUFX2 BUFX2_insert341 (
    .A(_8531_),
    .Y(_8531__bF$buf0)
);

BUFX2 BUFX2_insert342 (
    .A(\datapath.alu.b [1]),
    .Y(\datapath.alu.b_1_bF$buf6 )
);

BUFX2 BUFX2_insert343 (
    .A(\datapath.alu.b [1]),
    .Y(\datapath.alu.b_1_bF$buf5 )
);

AOI21X1 _17975_ (
    .A(\datapath.idinstr_20_bF$buf8 ),
    .B(_7853_),
    .C(\datapath.idinstr_22_bF$buf20 ),
    .Y(_7854_)
);

BUFX2 BUFX2_insert344 (
    .A(\datapath.alu.b [1]),
    .Y(\datapath.alu.b_1_bF$buf4 )
);

AOI21X1 _17555_ (
    .A(_7437_),
    .B(_7443_),
    .C(\datapath.idinstr_23_bF$buf4 ),
    .Y(_7444_)
);

BUFX2 BUFX2_insert345 (
    .A(\datapath.alu.b [1]),
    .Y(\datapath.alu.b_1_bF$buf3 )
);

OAI21X1 _17135_ (
    .A(_7031_),
    .B(\datapath.idinstr_17_bF$buf13 ),
    .C(_7032_),
    .Y(_7033_)
);

BUFX2 BUFX2_insert346 (
    .A(\datapath.alu.b [1]),
    .Y(\datapath.alu.b_1_bF$buf2 )
);

BUFX2 BUFX2_insert347 (
    .A(\datapath.alu.b [1]),
    .Y(\datapath.alu.b_1_bF$buf1 )
);

BUFX2 BUFX2_insert348 (
    .A(\datapath.alu.b [1]),
    .Y(\datapath.alu.b_1_bF$buf0 )
);

OAI21X1 _12690_ (
    .A(_2783__bF$buf2),
    .B(_2830_),
    .C(_2831_),
    .Y(\datapath.csr._32_ [31])
);

BUFX2 BUFX2_insert349 (
    .A(_4677_),
    .Y(_4677__bF$buf4)
);

AOI22X1 _12270_ (
    .A(_2500__bF$buf1),
    .B(\datapath.csr.mvect [9]),
    .C(\datapath.csr.mepc [7]),
    .D(_2507__bF$buf3),
    .Y(_2530_)
);

AND2X2 _9897_ (
    .A(_659_),
    .B(_683_),
    .Y(_749_)
);

NAND3X1 _9477_ (
    .A(_398_),
    .B(_399_),
    .C(_397_),
    .Y(\datapath.muxbval [26])
);

OAI21X1 _9057_ (
    .A(_865_),
    .B(gnd),
    .C(_866_),
    .Y(\datapath._04_ [17])
);

DFFPOSX1 _13895_ (
    .Q(\datapath.programcounter.pc [27]),
    .CLK(CLK_bF$buf66),
    .D(\datapath.programcounter._1_ [27])
);

AOI22X1 _13475_ (
    .A(_3238_),
    .B(DMEM_DATA_L[17]),
    .C(DMEM_DATA_L[25]),
    .D(_3239__bF$buf1),
    .Y(_3344_)
);

OAI21X1 _13055_ (
    .A(_3007_),
    .B(_2996_),
    .C(_2995_),
    .Y(\datapath.imm [26])
);

DFFPOSX1 _19701_ (
    .Q(\datapath.registers.828[0] [5]),
    .CLK(CLK_bF$buf86),
    .D(_3663_)
);

FILL SFILL48760x29050 (
);

INVX1 _15621_ (
    .A(_5612__bF$buf2),
    .Y(_5613_)
);

AOI21X1 _15201_ (
    .A(_4719__bF$buf0),
    .B(_5369__bF$buf5),
    .C(_5393_),
    .Y(_4547_)
);

AOI21X1 _18093_ (
    .A(_7965_),
    .B(_7969_),
    .C(\datapath.idinstr_23_bF$buf2 ),
    .Y(_7970_)
);

MUX2X1 _16826_ (
    .A(_6730_),
    .B(_6729_),
    .S(\datapath.idinstr_16_bF$buf17 ),
    .Y(_6731_)
);

MUX2X1 _16406_ (
    .A(\datapath.registers.828[9] [14]),
    .B(\datapath.registers.828[8] [14]),
    .S(\datapath.idinstr_15_bF$buf36 ),
    .Y(_6320_)
);

FILL SFILL38360x58050 (
);

NAND2X1 _11961_ (
    .A(_1371_),
    .B(_1306_),
    .Y(_1384_)
);

AOI21X1 _11541_ (
    .A(_925_),
    .B(_913_),
    .C(_933_),
    .Y(_934_)
);

MUX2X1 _11121_ (
    .A(\datapath.alu.a [2]),
    .B(\datapath.alu.a [3]),
    .S(\datapath.alu.b_0_bF$buf7 ),
    .Y(_2089_)
);

DFFPOSX1 _19298_ (
    .Q(\datapath.registers.828[2] [18]),
    .CLK(CLK_bF$buf126),
    .D(_4349_)
);

BUFX2 _8748_ (
    .A(\datapath.programcounter.pc [19]),
    .Y(IMEM_ADDR[19])
);

OAI21X1 _12746_ (
    .A(_2867_),
    .B(_2875_),
    .C(_2622_),
    .Y(_2876_)
);

OAI21X1 _12326_ (
    .A(_2568_),
    .B(_2490__bF$buf4),
    .C(_2569_),
    .Y(\datapath.csr.csr_data [25])
);

MUX2X1 _17784_ (
    .A(\datapath.registers.828[27] [13]),
    .B(\datapath.registers.828[26] [13]),
    .S(\datapath.idinstr_20_bF$buf24 ),
    .Y(_7667_)
);

OAI21X1 _17364_ (
    .A(_7255_),
    .B(\datapath.idinstr_22_bF$buf12 ),
    .C(_7256_),
    .Y(_7257_)
);

FILL SFILL3320x24050 (
);

NAND2X1 _9286_ (
    .A(\datapath.regloadwb [12]),
    .B(_213__bF$buf4),
    .Y(_256_)
);

FILL SFILL28360x11050 (
);

AOI21X1 _10812_ (
    .A(_1780_),
    .B(_1748_),
    .C(_1782_),
    .Y(_1783_)
);

BUFX2 _18989_ (
    .A(\datapath.registers.828[0] [29]),
    .Y(_3657_)
);

NAND2X1 _18569_ (
    .A(_8431_),
    .B(_8434_),
    .Y(_8435_)
);

NAND2X1 _18149_ (
    .A(\datapath.idinstr_22_bF$buf27 ),
    .B(_8023_),
    .Y(_8024_)
);

INVX4 _13284_ (
    .A(_3217_),
    .Y(_3218_)
);

DFFPOSX1 _19930_ (
    .Q(\datapath.registers.828[28] [10]),
    .CLK(CLK_bF$buf130),
    .D(_4277_)
);

DFFPOSX1 _19510_ (
    .Q(\datapath.registers.828[11] [6]),
    .CLK(CLK_bF$buf29),
    .D(_3728_)
);

NAND2X1 _14489_ (
    .A(\datapath.registers.828[16] [28]),
    .B(_4968__bF$buf4),
    .Y(_4997_)
);

NOR2X1 _14069_ (
    .A(\datapath.registers.828[22] [29]),
    .B(_4738__bF$buf5),
    .Y(_4768_)
);

NAND2X1 _15850_ (
    .A(_5684__bF$buf10),
    .B(_5775_),
    .Y(_5776_)
);

INVX1 _15430_ (
    .A(\datapath.registers.828[3] [7]),
    .Y(_5511_)
);

OAI21X1 _15010_ (
    .A(_5293_),
    .B(_5257__bF$buf3),
    .C(_5294_),
    .Y(_4647_)
);

FILL SFILL58840x19050 (
);

NAND2X1 _16635_ (
    .A(_6540_),
    .B(_6543_),
    .Y(_6544_)
);

AOI21X1 _16215_ (
    .A(_6128_),
    .B(_6132_),
    .C(_5685__bF$buf7),
    .Y(_6133_)
);

NOR2X1 _11770_ (
    .A(\datapath.alu.b_3_bF$buf1 ),
    .B(_1179_),
    .Y(_1180_)
);

INVX1 _11350_ (
    .A(_2238_),
    .Y(_2313_)
);

INVX1 _8977_ (
    .A(\datapath.programcounter.pc [23]),
    .Y(_813_)
);

NAND2X1 _12975_ (
    .A(\controlunit.imm_sel [0]),
    .B(_3004_),
    .Y(_3005_)
);

OAI21X1 _12555_ (
    .A(\datapath.csr.csr_wdata [22]),
    .B(_2672__bF$buf2),
    .C(_2738_),
    .Y(_2739_)
);

NAND2X1 _12135_ (
    .A(_1506_),
    .B(_1568_),
    .Y(_1569_)
);

AOI21X1 _14701_ (
    .A(_4713__bF$buf4),
    .B(_5099__bF$buf1),
    .C(_5120_),
    .Y(_3776_)
);

OAI21X1 _17593_ (
    .A(_7479_),
    .B(\datapath.idinstr_22_bF$buf21 ),
    .C(_7480_),
    .Y(_7481_)
);

NAND2X1 _17173_ (
    .A(_5684__bF$buf1),
    .B(_7069_),
    .Y(_7070_)
);

NAND2X1 _9095_ (
    .A(gnd),
    .B(\datapath.idpc_4 [30]),
    .Y(_892_)
);

NAND2X1 _15906_ (
    .A(_5681__bF$buf6),
    .B(_5830_),
    .Y(_5831_)
);

OAI21X1 _10621_ (
    .A(_1037_),
    .B(_1027_),
    .C(_1005_),
    .Y(_1048_)
);

DFFPOSX1 _10201_ (
    .Q(\datapath.mempc_4 [8]),
    .CLK(CLK_bF$buf69),
    .D(\datapath.alupc_4 [8])
);

NOR2X1 _18798_ (
    .A(\datapath.registers.828[27] [16]),
    .B(_8565__bF$buf2),
    .Y(_8582_)
);

AOI21X1 _18378_ (
    .A(\datapath.idinstr_20_bF$buf35 ),
    .B(_8247_),
    .C(\datapath.idinstr_22_bF$buf34 ),
    .Y(_8248_)
);

NAND3X1 _13093_ (
    .A(_3051_),
    .B(_3050_),
    .C(_3055_),
    .Y(_1_[3])
);

FILL SFILL3400x57050 (
);

NAND3X1 _11826_ (
    .A(_2103__bF$buf1),
    .B(_1233_),
    .C(_1238_),
    .Y(_1239_)
);

INVX2 _11406_ (
    .A(_2367_),
    .Y(_2368_)
);

AOI21X1 _14298_ (
    .A(_4683__bF$buf1),
    .B(_4886__bF$buf1),
    .C(_4892_),
    .Y(_3951_)
);

FILL SFILL63800x4050 (
);

FILL SFILL3400x12050 (
);

AOI21X1 _16864_ (
    .A(\datapath.registers.828[23] [24]),
    .B(\datapath.idinstr_17_bF$buf6 ),
    .C(_5681__bF$buf8),
    .Y(_6768_)
);

MUX2X1 _16444_ (
    .A(\datapath.registers.828[23] [15]),
    .B(\datapath.registers.828[21] [15]),
    .S(\datapath.idinstr_16_bF$buf45 ),
    .Y(_6357_)
);

FILL SFILL3320x19050 (
);

AOI21X1 _16024_ (
    .A(_5942_),
    .B(_5946_),
    .C(\datapath.idinstr_18_bF$buf6 ),
    .Y(_5947_)
);

AOI22X1 _8786_ (
    .A(_114_),
    .B(_120_),
    .C(_116_),
    .D(_119_),
    .Y(\controlunit.wb_sel [1])
);

MUX2X1 _17649_ (
    .A(\datapath.registers.828[25] [10]),
    .B(\datapath.registers.828[24] [10]),
    .S(\datapath.idinstr_20_bF$buf23 ),
    .Y(_7535_)
);

AOI21X1 _17229_ (
    .A(_7124_),
    .B(_7123_),
    .C(_7092__bF$buf3),
    .Y(_7125_)
);

NAND2X1 _12784_ (
    .A(\datapath.csr.mvect [16]),
    .B(\datapath.csr.mvect [17]),
    .Y(_2908_)
);

AND2X2 _12364_ (
    .A(_2597_),
    .B(_2600_),
    .Y(_2601_)
);

NOR2X1 _13989_ (
    .A(\datapath.registers.828[23] [25]),
    .B(_4673__bF$buf1),
    .Y(_4724_)
);

INVX2 _13569_ (
    .A(\datapath.programcounter.pc [24]),
    .Y(_3406_)
);

NAND2X1 _13149_ (
    .A(_0__1_bF$buf3),
    .B(DMEM_DATA_L[12]),
    .Y(_3103_)
);

AOI21X1 _14930_ (
    .A(_4725__bF$buf4),
    .B(_5212__bF$buf2),
    .C(_5247_),
    .Y(_3686_)
);

OAI21X1 _14510_ (
    .A(_5003__bF$buf3),
    .B(_4681__bF$buf2),
    .C(_5009_),
    .Y(_3854_)
);

FILL SFILL79000x20050 (
);

FILL SFILL33800x3050 (
);

FILL SFILL33720x8050 (
);

AOI21X1 _15715_ (
    .A(_4699__bF$buf3),
    .B(_5647__bF$buf4),
    .C(_5661_),
    .Y(_4376_)
);

MUX2X1 _10850_ (
    .A(_1820_),
    .B(_1819_),
    .S(_994__bF$buf6),
    .Y(_1821_)
);

DFFPOSX1 _10430_ (
    .Q(\datapath.aluinstr [12]),
    .CLK(CLK_bF$buf67),
    .D(\datapath.idinstr [12])
);

DFFPOSX1 _10010_ (
    .Q(\datapath.regwbtrap ),
    .CLK(CLK_bF$buf94),
    .D(\controlunit.csrfile_trap_wen_bF$buf3 )
);

MUX2X1 _18187_ (
    .A(_8060_),
    .B(_8059_),
    .S(\datapath.idinstr_21_bF$buf18 ),
    .Y(_8061_)
);

FILL SFILL63720x11050 (
);

XNOR2X1 _11635_ (
    .A(\datapath.alu.a [15]),
    .B(\datapath.alu.b [15]),
    .Y(_1034_)
);

INVX2 _11215_ (
    .A(\datapath.alu.b [5]),
    .Y(_2181_)
);

FILL SFILL53720x54050 (
);

OAI21X1 _16673_ (
    .A(_6569_),
    .B(_6580_),
    .C(\datapath.idinstr_19_bF$buf4 ),
    .Y(_6581_)
);

MUX2X1 _16253_ (
    .A(_6169_),
    .B(_6168_),
    .S(\datapath.idinstr_16_bF$buf28 ),
    .Y(_6170_)
);

MUX2X1 _17878_ (
    .A(\datapath.registers.828[29] [15]),
    .B(\datapath.registers.828[28] [15]),
    .S(\datapath.idinstr_20_bF$buf11 ),
    .Y(_7759_)
);

MUX2X1 _17458_ (
    .A(\datapath.registers.828[19] [5]),
    .B(\datapath.registers.828[18] [5]),
    .S(\datapath.idinstr_20_bF$buf44 ),
    .Y(_7349_)
);

AOI21X1 _17038_ (
    .A(_6937_),
    .B(_6936_),
    .C(\datapath.idinstr_16_bF$buf8 ),
    .Y(_6938_)
);

INVX1 _12593_ (
    .A(\datapath.csr.mepc [28]),
    .Y(_2769_)
);

FILL SFILL59320x37050 (
);

OAI21X1 _12173_ (
    .A(_994__bF$buf3),
    .B(_1547_),
    .C(_1609_),
    .Y(_1610_)
);

FILL SFILL83800x48050 (
);

FILL SFILL43560x4050 (
);

FILL SFILL8200x9050 (
);

NOR2X1 _10906_ (
    .A(alusel[3]),
    .B(_1815_),
    .Y(_1877_)
);

NAND2X1 _13798_ (
    .A(_3442_),
    .B(_3485_),
    .Y(_3580_)
);

NAND2X1 _13378_ (
    .A(_0__1_bF$buf8),
    .B(DMEM_DATA_L[21]),
    .Y(_3275_)
);

DFFPOSX1 _19604_ (
    .Q(\datapath.registers.828[9] [4]),
    .CLK(CLK_bF$buf56),
    .D(_4654_)
);

FILL SFILL43640x14050 (
);

AOI21X1 _15944_ (
    .A(_5867_),
    .B(_5866_),
    .C(_5684__bF$buf6),
    .Y(_5868_)
);

OAI21X1 _15524_ (
    .A(_5546__bF$buf1),
    .B(_4705__bF$buf1),
    .C(_5563_),
    .Y(_4347_)
);

OAI21X1 _15104_ (
    .A(_5335__bF$buf2),
    .B(_4687__bF$buf1),
    .C(_5344_),
    .Y(_4593_)
);

MUX2X1 _16729_ (
    .A(\datapath.registers.828[5] [21]),
    .B(\datapath.registers.828[4] [21]),
    .S(\datapath.idinstr_15_bF$buf10 ),
    .Y(_6636_)
);

MUX2X1 _16309_ (
    .A(\datapath.registers.828[22] [12]),
    .B(\datapath.registers.828[20] [12]),
    .S(\datapath.idinstr_16_bF$buf32 ),
    .Y(_6225_)
);

AOI22X1 _11864_ (
    .A(_2041__bF$buf1),
    .B(_1279_),
    .C(_1692_),
    .D(_2154_),
    .Y(_1280_)
);

MUX2X1 _11444_ (
    .A(_2020_),
    .B(_2002_),
    .S(_1091__bF$buf1),
    .Y(_2405_)
);

OAI21X1 _11024_ (
    .A(_1878_),
    .B(_994__bF$buf1),
    .C(_1882__bF$buf0),
    .Y(_1994_)
);

FILL SFILL79000x50 (
);

FILL SFILL13560x3050 (
);

FILL SFILL13480x8050 (
);

AOI21X1 _12649_ (
    .A(_2809_),
    .B(_2797__bF$buf0),
    .C(_2810_),
    .Y(\datapath.csr._32_ [12])
);

NAND2X1 _12229_ (
    .A(\datapath.idinstr_22_bF$buf1 ),
    .B(_2497_),
    .Y(_2498_)
);

FILL SFILL63800x44050 (
);

FILL SFILL33560x19050 (
);

NAND2X1 _16482_ (
    .A(_5681__bF$buf10),
    .B(_6393_),
    .Y(_6394_)
);

MUX2X1 _16062_ (
    .A(\datapath.registers.828[30] [6]),
    .B(\datapath.registers.828[28] [6]),
    .S(\datapath.idinstr_16_bF$buf38 ),
    .Y(_5984_)
);

FILL SFILL79000x15050 (
);

OAI21X1 _17687_ (
    .A(_5517_),
    .B(\datapath.idinstr_22_bF$buf41 ),
    .C(_7572_),
    .Y(_7573_)
);

AOI21X1 _17267_ (
    .A(\datapath.registers.828[12] [1]),
    .B(\datapath.idinstr_22_bF$buf7 ),
    .C(\datapath.idinstr_20_bF$buf4 ),
    .Y(_7162_)
);

FILL SFILL69000x58050 (
);

OAI21X1 _9189_ (
    .A(_176_),
    .B(gnd),
    .C(_177_),
    .Y(\datapath._05_ [29])
);

FILL SFILL53800x42050 (
);

FILL SFILL23560x17050 (
);

INVX1 _10715_ (
    .A(\datapath.alu.b [22]),
    .Y(_1686_)
);

FILL SFILL13640x53050 (
);

OAI21X1 _13187_ (
    .A(_3133_),
    .B(_0__1_bF$buf5),
    .C(_3134_),
    .Y(_3135_)
);

DFFPOSX1 _19833_ (
    .Q(\datapath.registers.828[3] [9]),
    .CLK(CLK_bF$buf88),
    .D(_4467_)
);

DFFPOSX1 _19413_ (
    .Q(\datapath.registers.828[24] [5]),
    .CLK(CLK_bF$buf120),
    .D(_4175_)
);

FILL SFILL53720x49050 (
);

INVX8 _15753_ (
    .A(\datapath.idinstr_15_bF$buf50 ),
    .Y(_5681_)
);

OAI21X1 _15333_ (
    .A(_4719__bF$buf2),
    .B(_5437__bF$buf6),
    .C(_5461_),
    .Y(_4163_)
);

FILL SFILL43800x40050 (
);

FILL SFILL13560x15050 (
);

AOI21X1 _16958_ (
    .A(_6853_),
    .B(_6859_),
    .C(\datapath.idinstr_18_bF$buf7 ),
    .Y(_6860_)
);

AOI21X1 _16538_ (
    .A(\datapath.registers.828[31] [17]),
    .B(\datapath.idinstr_17_bF$buf11 ),
    .C(_5681__bF$buf7),
    .Y(_6449_)
);

MUX2X1 _16118_ (
    .A(\datapath.registers.828[27] [8]),
    .B(\datapath.registers.828[26] [8]),
    .S(\datapath.idinstr_15_bF$buf8 ),
    .Y(_6038_)
);

NAND2X1 _11673_ (
    .A(_980_),
    .B(_1074_),
    .Y(_1075_)
);

OAI21X1 _11253_ (
    .A(_2217_),
    .B(_1177_),
    .C(_1908__bF$buf3),
    .Y(_2218_)
);

XNOR2X1 _9821_ (
    .A(_676_),
    .B(_679_),
    .Y(\datapath.jumptarget [23])
);

NAND3X1 _9401_ (
    .A(_341_),
    .B(_342_),
    .C(_340_),
    .Y(\datapath.muxbval [7])
);

DFFPOSX1 _12878_ (
    .Q(\datapath.csr.mcause [4]),
    .CLK(CLK_bF$buf140),
    .D(\datapath.csr._32_ [4])
);

MUX2X1 _12458_ (
    .A(_2662_),
    .B(_2663_),
    .S(_2602__bF$buf3),
    .Y(\datapath.csr._13_ [31])
);

OAI22X1 _12038_ (
    .A(_1779_),
    .B(_1882__bF$buf1),
    .C(_1886__bF$buf1),
    .D(_1749_),
    .Y(_1467_)
);

NAND2X1 _16291_ (
    .A(_5684__bF$buf11),
    .B(_6207_),
    .Y(_6208_)
);

OAI21X1 _14604_ (
    .A(_5061_),
    .B(_5039__bF$buf3),
    .C(_5062_),
    .Y(_3800_)
);

MUX2X1 _17496_ (
    .A(_7385_),
    .B(_7384_),
    .S(_7089__bF$buf4),
    .Y(_7386_)
);

AOI21X1 _17076_ (
    .A(_6969_),
    .B(_6974_),
    .C(\datapath.idinstr_18_bF$buf5 ),
    .Y(_6975_)
);

FILL SFILL18360x5050 (
);

FILL SFILL33240x38050 (
);

MUX2X1 _15809_ (
    .A(\datapath.registers.828[31] [1]),
    .B(\datapath.registers.828[30] [1]),
    .S(\datapath.idinstr_15_bF$buf32 ),
    .Y(_5736_)
);

NAND3X1 _10944_ (
    .A(_1884_),
    .B(_1892_),
    .C(_1914_),
    .Y(_1915_)
);

DFFPOSX1 _10524_ (
    .Q(\datapath.idinstr [10]),
    .CLK(CLK_bF$buf8),
    .D(\datapath._05_ [10])
);

DFFPOSX1 _10104_ (
    .Q(\datapath.memoryinterface.data_store [14]),
    .CLK(CLK_bF$buf28),
    .D(\datapath.regrs2alu [14])
);

DFFPOSX1 _19642_ (
    .Q(\datapath.registers.828[26] [10]),
    .CLK(CLK_bF$buf41),
    .D(_4213_)
);

DFFPOSX1 _19222_ (
    .Q(\datapath.registers.828[20] [6]),
    .CLK(CLK_bF$buf131),
    .D(_4048_)
);

FILL SFILL58840x56050 (
);

CLKBUF1 CLKBUF1_insert640 (
    .A(CLK_hier0_bF$buf3),
    .Y(CLK_bF$buf146)
);

CLKBUF1 CLKBUF1_insert641 (
    .A(CLK_hier0_bF$buf5),
    .Y(CLK_bF$buf145)
);

CLKBUF1 CLKBUF1_insert642 (
    .A(CLK_hier0_bF$buf2),
    .Y(CLK_bF$buf144)
);

CLKBUF1 CLKBUF1_insert643 (
    .A(CLK_hier0_bF$buf8),
    .Y(CLK_bF$buf143)
);

CLKBUF1 CLKBUF1_insert644 (
    .A(CLK_hier0_bF$buf11),
    .Y(CLK_bF$buf142)
);

CLKBUF1 CLKBUF1_insert645 (
    .A(CLK_hier0_bF$buf10),
    .Y(CLK_bF$buf141)
);

OAI22X1 _11729_ (
    .A(_1786_),
    .B(_1882__bF$buf3),
    .C(_1715_),
    .D(_1990__bF$buf0),
    .Y(_1136_)
);

CLKBUF1 CLKBUF1_insert646 (
    .A(CLK_hier0_bF$buf10),
    .Y(CLK_bF$buf140)
);

OAI21X1 _11309_ (
    .A(_1091__bF$buf6),
    .B(_2272_),
    .C(_2270_),
    .Y(_2273_)
);

CLKBUF1 CLKBUF1_insert647 (
    .A(CLK_hier0_bF$buf2),
    .Y(CLK_bF$buf139)
);

CLKBUF1 CLKBUF1_insert648 (
    .A(CLK_hier0_bF$buf11),
    .Y(CLK_bF$buf138)
);

CLKBUF1 CLKBUF1_insert649 (
    .A(CLK_hier0_bF$buf8),
    .Y(CLK_bF$buf137)
);

AOI21X1 _15982_ (
    .A(_5905_),
    .B(_5880_),
    .C(_5687__bF$buf2),
    .Y(\datapath.registers.rega_data [4])
);

OAI21X1 _15562_ (
    .A(_5098__bF$buf1),
    .B(_4668__bF$buf7),
    .C(\datapath.registers.828[1] [3]),
    .Y(_5583_)
);

OAI21X1 _15142_ (
    .A(_5335__bF$buf0),
    .B(_4725__bF$buf2),
    .C(_5363_),
    .Y(_4582_)
);

OAI21X1 _16767_ (
    .A(_5079_),
    .B(\datapath.idinstr_15_bF$buf21 ),
    .C(\datapath.idinstr_16_bF$buf24 ),
    .Y(_6673_)
);

AOI21X1 _16347_ (
    .A(\datapath.registers.828[13] [13]),
    .B(\datapath.idinstr_15_bF$buf37 ),
    .C(\datapath.idinstr_16_bF$buf10 ),
    .Y(_6262_)
);

OAI21X1 _11482_ (
    .A(_2441_),
    .B(\datapath.alu.b_2_bF$buf1 ),
    .C(_2437_),
    .Y(_2442_)
);

NOR2X1 _11062_ (
    .A(\datapath.alu.b_2_bF$buf4 ),
    .B(_2030_),
    .Y(_2031_)
);

FILL SFILL48840x54050 (
);

BUFX2 _8689_ (
    .A(_0_[25]),
    .Y(DMEM_ADDR[25])
);

FILL SFILL8200x33050 (
);

INVX1 _9630_ (
    .A(\controlunit.csrfile_wen ),
    .Y(_515_)
);

NAND3X1 _9210_ (
    .A(_192_),
    .B(_195_),
    .C(_188_),
    .Y(_196_)
);

NAND3X1 _12687_ (
    .A(\datapath.csr.mstatus [0]),
    .B(\datapath.csr.mie ),
    .C(\datapath.csr.mip ),
    .Y(_2830_)
);

AOI21X1 _12267_ (
    .A(\datapath.csr.mvect [8]),
    .B(_2500__bF$buf0),
    .C(_2527_),
    .Y(_2528_)
);

AOI21X1 _18913_ (
    .A(_4689__bF$buf1),
    .B(_8631__bF$buf5),
    .C(_8640_),
    .Y(_4210_)
);

FILL SFILL13240x34050 (
);

NOR2X1 _14833_ (
    .A(\datapath.registers.828[11] [17]),
    .B(_5167__bF$buf7),
    .Y(_5192_)
);

NAND2X1 _14413_ (
    .A(\datapath.rd [24]),
    .B(_4924__bF$buf6),
    .Y(_4957_)
);

FILL SFILL78920x48050 (
);

OAI21X1 _15618_ (
    .A(_5098__bF$buf2),
    .B(_4668__bF$buf5),
    .C(\datapath.registers.828[1] [31]),
    .Y(_5611_)
);

NAND2X1 _10753_ (
    .A(_1711_),
    .B(_1723_),
    .Y(_1724_)
);

FILL SFILL3480x51050 (
);

DFFPOSX1 _10333_ (
    .Q(\datapath.regrs2alu [14]),
    .CLK(CLK_bF$buf77),
    .D(\datapath.registers.regb_data [14])
);

DFFPOSX1 _20011_ (
    .Q(\datapath.registers.828[25] [27]),
    .CLK(CLK_bF$buf133),
    .D(_4199_)
);

DFFPOSX1 _19871_ (
    .Q(\datapath.registers.828[1] [15]),
    .CLK(CLK_bF$buf12),
    .D(_3994_)
);

DFFPOSX1 _19451_ (
    .Q(\datapath.registers.828[23] [11]),
    .CLK(CLK_bF$buf138),
    .D(_4118_)
);

DFFPOSX1 _19031_ (
    .Q(\datapath.registers.828[31] [7]),
    .CLK(CLK_bF$buf132),
    .D(_4433_)
);

NAND2X1 _8901_ (
    .A(_79_),
    .B(_80_),
    .Y(_98_)
);

INVX1 _11958_ (
    .A(_1379_),
    .Y(_1381_)
);

NOR2X1 _11538_ (
    .A(\datapath.alu.a [12]),
    .B(\datapath.alu.b [12]),
    .Y(_931_)
);

AOI21X1 _11118_ (
    .A(_1903_),
    .B(_1977_),
    .C(_2085_),
    .Y(_2086_)
);

FILL SFILL33800x33050 (
);

NAND3X1 _15791_ (
    .A(\datapath.idinstr_16_bF$buf8 ),
    .B(_5718_),
    .C(_5716_),
    .Y(_5719_)
);

NAND2X1 _15371_ (
    .A(\datapath.registers.828[4] [10]),
    .B(_5470__bF$buf0),
    .Y(_5481_)
);

OAI21X1 _16996_ (
    .A(_5088_),
    .B(\datapath.idinstr_15_bF$buf42 ),
    .C(\datapath.idinstr_16_bF$buf33 ),
    .Y(_6897_)
);

MUX2X1 _16576_ (
    .A(\datapath.registers.828[7] [18]),
    .B(\datapath.registers.828[6] [18]),
    .S(\datapath.idinstr_15_bF$buf23 ),
    .Y(_6486_)
);

MUX2X1 _16156_ (
    .A(_6075_),
    .B(_6074_),
    .S(\datapath.idinstr_16_bF$buf23 ),
    .Y(_6076_)
);

XNOR2X1 _11291_ (
    .A(\datapath.alu.a [7]),
    .B(\datapath.alu.b [7]),
    .Y(_2255_)
);

INVX1 _12496_ (
    .A(\datapath.csr.mepc [7]),
    .Y(_2693_)
);

AOI21X1 _12076_ (
    .A(_1502_),
    .B(_1447_),
    .C(_1505_),
    .Y(_1506_)
);

NAND2X1 _18722_ (
    .A(\datapath.registers.828[28] [11]),
    .B(_8531__bF$buf7),
    .Y(_8543_)
);

MUX2X1 _18302_ (
    .A(\datapath.registers.828[30] [24]),
    .B(\datapath.registers.828[28] [24]),
    .S(\datapath.idinstr_21_bF$buf27 ),
    .Y(_8174_)
);

NOR2X1 _10809_ (
    .A(\datapath.alu.b [26]),
    .B(_1779_),
    .Y(_1780_)
);

DFFPOSX1 _19927_ (
    .Q(\datapath.registers.828[28] [7]),
    .CLK(CLK_bF$buf132),
    .D(_4305_)
);

DFFPOSX1 _19507_ (
    .Q(\datapath.registers.828[11] [3]),
    .CLK(CLK_bF$buf123),
    .D(_3725_)
);

OAI21X1 _14642_ (
    .A(_5086_),
    .B(_5039__bF$buf5),
    .C(_5087_),
    .Y(_3814_)
);

AOI21X1 _14222_ (
    .A(_4683__bF$buf1),
    .B(_4842__bF$buf7),
    .C(_4848_),
    .Y(_3983_)
);

MUX2X1 _15847_ (
    .A(\datapath.registers.828[25] [2]),
    .B(\datapath.registers.828[24] [2]),
    .S(\datapath.idinstr_15_bF$buf9 ),
    .Y(_5773_)
);

AOI21X1 _15427_ (
    .A(_4683__bF$buf2),
    .B(_5503__bF$buf2),
    .C(_5509_),
    .Y(_4463_)
);

AOI21X1 _15007_ (
    .A(_4725__bF$buf4),
    .B(_5257__bF$buf5),
    .C(_5292_),
    .Y(_4646_)
);

NAND2X1 _10982_ (
    .A(\datapath.alu.b_0_bF$buf3 ),
    .B(\datapath.alu.a [6]),
    .Y(_1952_)
);

DFFPOSX1 _10562_ (
    .Q(\datapath.idpc_4 [16]),
    .CLK(CLK_bF$buf84),
    .D(\datapath._04_ [16])
);

DFFPOSX1 _10142_ (
    .Q(_0_[20]),
    .CLK(CLK_bF$buf19),
    .D(\datapath.alu.c [20])
);

DFFPOSX1 _19680_ (
    .Q(\datapath.registers.828[27] [16]),
    .CLK(CLK_bF$buf143),
    .D(_4251_)
);

DFFPOSX1 _19260_ (
    .Q(\datapath.registers.828[22] [12]),
    .CLK(CLK_bF$buf99),
    .D(_4087_)
);

BUFX2 _8710_ (
    .A(_1_[14]),
    .Y(DMEM_DATA_S[14])
);

OAI21X1 _11767_ (
    .A(\datapath.alu.b_0_bF$buf2 ),
    .B(\datapath.alu.a [18]),
    .C(_1175_),
    .Y(_1176_)
);

XNOR2X1 _11347_ (
    .A(\datapath.alu.a [6]),
    .B(\datapath.alu.b [6]),
    .Y(_2310_)
);

FILL SFILL13240x29050 (
);

NOR2X1 _15180_ (
    .A(\datapath.registers.828[6] [13]),
    .B(_5369__bF$buf3),
    .Y(_5383_)
);

DFFPOSX1 _9915_ (
    .Q(\datapath.regcsrwb [1]),
    .CLK(CLK_bF$buf44),
    .D(\datapath.csr.csr_wdata [1])
);

AND2X2 _13913_ (
    .A(_4672_),
    .B(_4663_),
    .Y(_4673_)
);

MUX2X1 _16385_ (
    .A(\datapath.registers.828[25] [14]),
    .B(\datapath.registers.828[24] [14]),
    .S(\datapath.idinstr_15_bF$buf30 ),
    .Y(_6299_)
);

FILL SFILL3480x46050 (
);

FILL SFILL68920x4050 (
);

AOI21X1 _18951_ (
    .A(_4727__bF$buf2),
    .B(_8631__bF$buf0),
    .C(_8659_),
    .Y(_4199_)
);

AOI21X1 _18531_ (
    .A(_8390_),
    .B(_8397_),
    .C(_7093__bF$buf2),
    .Y(_8398_)
);

NAND2X1 _18111_ (
    .A(_7089__bF$buf2),
    .B(_7986_),
    .Y(_7987_)
);

INVX4 _10618_ (
    .A(\datapath.alu.b_0_bF$buf1 ),
    .Y(_1016_)
);

DFFPOSX1 _19736_ (
    .Q(\datapath.registers.828[16] [8]),
    .CLK(CLK_bF$buf93),
    .D(_3890_)
);

DFFPOSX1 _19316_ (
    .Q(\datapath.registers.828[4] [4]),
    .CLK(CLK_bF$buf145),
    .D(_4494_)
);

INVX1 _14871_ (
    .A(\datapath.registers.828[10] [1]),
    .Y(_5214_)
);

NAND2X1 _14451_ (
    .A(\datapath.registers.828[16] [9]),
    .B(_4968__bF$buf4),
    .Y(_4978_)
);

NOR2X1 _14031_ (
    .A(\datapath.registers.828[22] [10]),
    .B(_4738__bF$buf0),
    .Y(_4749_)
);

FILL SFILL73880x40050 (
);

OAI21X1 _15656_ (
    .A(_5614__bF$buf4),
    .B(_4705__bF$buf4),
    .C(_5631_),
    .Y(_4411_)
);

AOI21X1 _15236_ (
    .A(_4689__bF$buf2),
    .B(_5402__bF$buf5),
    .C(_5411_),
    .Y(_4530_)
);

OAI21X1 _10791_ (
    .A(_1758_),
    .B(_1761_),
    .C(_1757_),
    .Y(_1762_)
);

DFFPOSX1 _10371_ (
    .Q(\datapath.alu.b [20]),
    .CLK(CLK_bF$buf67),
    .D(\datapath.muxbval [20])
);

FILL SFILL18840x43050 (
);

FILL SFILL58920x39050 (
);

MUX2X1 _11996_ (
    .A(_1420_),
    .B(_1346_),
    .S(_994__bF$buf7),
    .Y(_1421_)
);

AOI21X1 _11576_ (
    .A(\datapath.alu.a [13]),
    .B(_2042_),
    .C(_970_),
    .Y(_971_)
);

NOR2X1 _11156_ (
    .A(\datapath.alu.b_3_bF$buf6 ),
    .B(_1946_),
    .Y(_2123_)
);

AOI21X1 _17802_ (
    .A(_7679_),
    .B(_7684_),
    .C(\datapath.idinstr_23_bF$buf2 ),
    .Y(_7685_)
);

FILL SFILL38840x8050 (
);

XOR2X1 _9724_ (
    .A(\datapath.alupc [11]),
    .B(\datapath.regimmalu [11]),
    .Y(_595_)
);

AOI22X1 _9304_ (
    .A(_219__bF$buf2),
    .B(\datapath.wbpc_4 [17]),
    .C(\datapath.regcsrwb [17]),
    .D(_216__bF$buf1),
    .Y(_269_)
);

NAND2X1 _13722_ (
    .A(\datapath.jumptarget [16]),
    .B(_3427__bF$buf0),
    .Y(_3521_)
);

INVX1 _13302_ (
    .A(_0__0_bF$buf1),
    .Y(_3228_)
);

INVX1 _16194_ (
    .A(\datapath.registers.828[0] [9]),
    .Y(_6113_)
);

FILL SFILL69080x52050 (
);

NOR2X1 _14927_ (
    .A(\datapath.registers.828[10] [25]),
    .B(_5212__bF$buf7),
    .Y(_5246_)
);

OAI21X1 _14507_ (
    .A(_5004__bF$buf2),
    .B(_4840__bF$buf8),
    .C(\datapath.registers.828[15] [3]),
    .Y(_5008_)
);

MUX2X1 _17399_ (
    .A(\datapath.registers.828[9] [4]),
    .B(\datapath.registers.828[8] [4]),
    .S(\datapath.idinstr_20_bF$buf15 ),
    .Y(_7291_)
);

NAND2X1 _18760_ (
    .A(\datapath.registers.828[28] [30]),
    .B(_8531__bF$buf6),
    .Y(_8562_)
);

AOI21X1 _18340_ (
    .A(\datapath.idinstr_20_bF$buf30 ),
    .B(_8210_),
    .C(_7092__bF$buf0),
    .Y(_8211_)
);

NAND2X1 _10847_ (
    .A(_1815_),
    .B(_1817_),
    .Y(_1818_)
);

DFFPOSX1 _10427_ (
    .Q(\datapath.aluinstr [9]),
    .CLK(CLK_bF$buf17),
    .D(\datapath.idinstr [9])
);

DFFPOSX1 _10007_ (
    .Q(\datapath.regcwb [29]),
    .CLK(CLK_bF$buf67),
    .D(_0_[29])
);

DFFPOSX1 _19965_ (
    .Q(\datapath.registers.828[6] [13]),
    .CLK(CLK_bF$buf23),
    .D(_4536_)
);

DFFPOSX1 _19545_ (
    .Q(\datapath.registers.828[12] [9]),
    .CLK(CLK_bF$buf2),
    .D(_3763_)
);

DFFPOSX1 _19125_ (
    .Q(\datapath.registers.828[17] [5]),
    .CLK(CLK_bF$buf62),
    .D(_3919_)
);

NOR2X1 _14680_ (
    .A(\datapath.registers.828[13] [10]),
    .B(_5099__bF$buf6),
    .Y(_5110_)
);

AOI21X1 _14260_ (
    .A(_4715__bF$buf0),
    .B(_4842__bF$buf2),
    .C(_4870_),
    .Y(_3969_)
);

FILL SFILL38520x21050 (
);

FILL SFILL83960x30050 (
);

MUX2X1 _15885_ (
    .A(\datapath.registers.828[7] [2]),
    .B(\datapath.registers.828[6] [2]),
    .S(\datapath.idinstr_15_bF$buf33 ),
    .Y(_5811_)
);

AOI21X1 _15465_ (
    .A(_4715__bF$buf2),
    .B(_5503__bF$buf1),
    .C(_5531_),
    .Y(_4449_)
);

NAND2X1 _15045_ (
    .A(\datapath.registers.828[8] [12]),
    .B(_5300__bF$buf5),
    .Y(_5313_)
);

FILL SFILL48680x4050 (
);

DFFPOSX1 _10180_ (
    .Q(\datapath.meminstr [19]),
    .CLK(CLK_bF$buf118),
    .D(\datapath.aluinstr [19])
);

FILL SFILL83880x37050 (
);

MUX2X1 _11385_ (
    .A(\datapath.alu.a [7]),
    .B(\datapath.alu.a [8]),
    .S(\datapath.alu.b_0_bF$buf5 ),
    .Y(_2348_)
);

FILL SFILL3080x27050 (
);

NAND2X1 _17611_ (
    .A(\datapath.idinstr_22_bF$buf7 ),
    .B(_7497_),
    .Y(_7498_)
);

DFFPOSX1 _9953_ (
    .Q(\datapath.regloadwb [7]),
    .CLK(CLK_bF$buf97),
    .D(\datapath.memdataload [7])
);

NAND3X1 _9533_ (
    .A(_441_),
    .B(_442_),
    .C(_440_),
    .Y(\datapath.muxaval [7])
);

NAND2X1 _9113_ (
    .A(gnd),
    .B(\datapath.idinstr [4]),
    .Y(_127_)
);

NOR2X1 _18816_ (
    .A(\datapath.registers.828[27] [25]),
    .B(_8565__bF$buf0),
    .Y(_8591_)
);

AOI21X1 _13951_ (
    .A(_4697__bF$buf2),
    .B(_4673__bF$buf3),
    .C(_4698_),
    .Y(_4119_)
);

NAND2X1 _13531_ (
    .A(gnd),
    .B(\datapath.programcounter.pc [11]),
    .Y(_3381_)
);

NAND2X1 _13111_ (
    .A(_0__1_bF$buf9),
    .B(DMEM_DATA_L[6]),
    .Y(_3071_)
);

BUFX2 BUFX2_insert1250 (
    .A(\datapath.idinstr [20]),
    .Y(\datapath.idinstr_20_hier0_bF$buf1 )
);

BUFX2 BUFX2_insert1251 (
    .A(\datapath.idinstr [20]),
    .Y(\datapath.idinstr_20_hier0_bF$buf0 )
);

FILL SFILL58600x58050 (
);

OAI21X1 _14736_ (
    .A(_4683__bF$buf4),
    .B(_5132__bF$buf3),
    .C(_5138_),
    .Y(_3759_)
);

AOI21X1 _14316_ (
    .A(_4699__bF$buf4),
    .B(_4886__bF$buf7),
    .C(_4902_),
    .Y(_3928_)
);

FILL SFILL79160x42050 (
);

FILL SFILL18680x3050 (
);

FILL SFILL18840x38050 (
);

NAND2X1 _10656_ (
    .A(\datapath.alu.a [15]),
    .B(_1412_),
    .Y(_1423_)
);

FILL SFILL18440x24050 (
);

DFFPOSX1 _10236_ (
    .Q(\datapath.csr.csr_mepc [13]),
    .CLK(CLK_bF$buf119),
    .D(\datapath.alupc [13])
);

DFFPOSX1 _19774_ (
    .Q(\datapath.registers.828[30] [14]),
    .CLK(CLK_bF$buf117),
    .D(_4377_)
);

DFFPOSX1 _19354_ (
    .Q(\datapath.registers.828[7] [10]),
    .CLK(CLK_bF$buf45),
    .D(_4565_)
);

NAND2X1 _8804_ (
    .A(_15_),
    .B(_14_),
    .Y(_16_)
);

NOR2X1 _12802_ (
    .A(_2887_),
    .B(_2900_),
    .Y(_2922_)
);

NOR2X1 _15694_ (
    .A(\datapath.registers.828[30] [3]),
    .B(_5647__bF$buf0),
    .Y(_5651_)
);

AOI21X1 _15274_ (
    .A(_4727__bF$buf1),
    .B(_5402__bF$buf2),
    .C(_5430_),
    .Y(_4519_)
);

FILL SFILL48600x11050 (
);

FILL SFILL69080x47050 (
);

FILL SFILL48520x18050 (
);

MUX2X1 _16899_ (
    .A(\datapath.registers.828[9] [25]),
    .B(\datapath.registers.828[8] [25]),
    .S(\datapath.idinstr_15_bF$buf26 ),
    .Y(_6802_)
);

NAND2X1 _16479_ (
    .A(\datapath.idinstr_17_bF$buf0 ),
    .B(_6390_),
    .Y(_6391_)
);

NAND3X1 _16059_ (
    .A(_5683__bF$buf0),
    .B(_5980_),
    .C(_5977_),
    .Y(_5981_)
);

NAND3X1 _11194_ (
    .A(\datapath.alu.b_4_bF$buf4 ),
    .B(_1230_),
    .C(_1888_),
    .Y(_2161_)
);

FILL SFILL38600x54050 (
);

NAND2X1 _17840_ (
    .A(_7718_),
    .B(_7721_),
    .Y(_7722_)
);

AOI21X1 _17420_ (
    .A(_7290_),
    .B(_7311_),
    .C(_7095__bF$buf0),
    .Y(\datapath.registers.regb_data [4])
);

OAI21X1 _17000_ (
    .A(_6896_),
    .B(_6897_),
    .C(_6900_),
    .Y(_6901_)
);

OAI21X1 _9762_ (
    .A(_575_),
    .B(_624_),
    .C(_627_),
    .Y(_628_)
);

NAND2X1 _9342_ (
    .A(\datapath.regloadwb [26]),
    .B(_213__bF$buf4),
    .Y(_298_)
);

INVX2 _12399_ (
    .A(\datapath.csr.mvect [12]),
    .Y(_2624_)
);

AOI21X1 _18625_ (
    .A(\datapath.registers.828[7] [31]),
    .B(\datapath.idinstr_22_bF$buf31 ),
    .C(_7089__bF$buf10),
    .Y(_8490_)
);

OAI21X1 _18205_ (
    .A(_8078_),
    .B(_8069_),
    .C(_7088__bF$buf1),
    .Y(_8079_)
);

INVX1 _13760_ (
    .A(_3545_),
    .Y(_3550_)
);

NAND2X1 _13340_ (
    .A(\datapath.memoryinterface.data_store [5]),
    .B(_3239__bF$buf0),
    .Y(_3245_)
);

FILL SFILL3640x22050 (
);

FILL SFILL28600x52050 (
);

INVX1 _14965_ (
    .A(\datapath.registers.828[9] [8]),
    .Y(_5269_)
);

OAI21X1 _14545_ (
    .A(_5004__bF$buf2),
    .B(_4840__bF$buf8),
    .C(\datapath.registers.828[15] [22]),
    .Y(_5027_)
);

NOR2X1 _14125_ (
    .A(\datapath.registers.828[21] [24]),
    .B(_4772__bF$buf6),
    .Y(_4797_)
);

FILL SFILL3560x29050 (
);

FILL SFILL28520x59050 (
);

MUX2X1 _10885_ (
    .A(_1855_),
    .B(_1849_),
    .S(_1123__bF$buf1),
    .Y(_1856_)
);

DFFPOSX1 _10465_ (
    .Q(\datapath.alupc_4 [15]),
    .CLK(CLK_bF$buf55),
    .D(\datapath.idpc_4 [15])
);

DFFPOSX1 _10045_ (
    .Q(\datapath.wbpc_4 [19]),
    .CLK(CLK_bF$buf48),
    .D(\datapath.mempc_4 [19])
);

DFFPOSX1 _19583_ (
    .Q(\datapath.registers.828[21] [15]),
    .CLK(CLK_bF$buf76),
    .D(_4058_)
);

DFFPOSX1 _19163_ (
    .Q(\datapath.registers.828[15] [11]),
    .CLK(CLK_bF$buf59),
    .D(_3830_)
);

FILL SFILL73960x23050 (
);

OAI21X1 _12611_ (
    .A(_2782_),
    .B(_2784_),
    .C(_2777_),
    .Y(\datapath.csr._32_ [0])
);

NAND2X1 _15083_ (
    .A(\datapath.registers.828[8] [31]),
    .B(_5300__bF$buf4),
    .Y(_5332_)
);

AND2X2 _9818_ (
    .A(\datapath.alupc [23]),
    .B(\datapath.regimmalu [23]),
    .Y(_677_)
);

FILL SFILL39080x41050 (
);

FILL SFILL18920x26050 (
);

NAND3X1 _13816_ (
    .A(_3593_),
    .B(_3594_),
    .C(_3592_),
    .Y(\datapath.programcounter.pc_mux [26])
);

FILL SFILL63560x52050 (
);

MUX2X1 _16288_ (
    .A(\datapath.registers.828[1] [11]),
    .B(\datapath.registers.828[0] [11]),
    .S(\datapath.idinstr_15_bF$buf13 ),
    .Y(_6205_)
);

FILL SFILL18520x12050 (
);

FILL SFILL63960x21050 (
);

DFFPOSX1 _9991_ (
    .Q(\datapath.regcwb [13]),
    .CLK(CLK_bF$buf80),
    .D(_0_[13])
);

FILL SFILL18440x19050 (
);

NAND2X1 _9571_ (
    .A(\datapath.idpc [17]),
    .B(_416__bF$buf4),
    .Y(_471_)
);

INVX1 _9151_ (
    .A(IMEM_DATA[17]),
    .Y(_152_)
);

AOI21X1 _18854_ (
    .A(_4695__bF$buf0),
    .B(_8598__bF$buf7),
    .C(_8610_),
    .Y(_4214_)
);

AOI21X1 _18434_ (
    .A(_8302_),
    .B(_8301_),
    .C(\datapath.idinstr_21_bF$buf9 ),
    .Y(_8303_)
);

AOI21X1 _18014_ (
    .A(_7887_),
    .B(_7891_),
    .C(_7093__bF$buf3),
    .Y(_7892_)
);

FILL SFILL8360x60050 (
);

DFFPOSX1 _19639_ (
    .Q(\datapath.registers.828[26] [7]),
    .CLK(CLK_bF$buf72),
    .D(_4241_)
);

DFFPOSX1 _19219_ (
    .Q(\datapath.registers.828[20] [3]),
    .CLK(CLK_bF$buf82),
    .D(_4045_)
);

OAI21X1 _14774_ (
    .A(_4721__bF$buf0),
    .B(_5132__bF$buf1),
    .C(_5157_),
    .Y(_3748_)
);

AOI21X1 _14354_ (
    .A(_4735__bF$buf1),
    .B(_4886__bF$buf0),
    .C(_4922_),
    .Y(_3948_)
);

NAND2X1 _15979_ (
    .A(\datapath.idinstr_17_bF$buf9 ),
    .B(_5902_),
    .Y(_5903_)
);

OAI21X1 _15559_ (
    .A(_5579__bF$buf4),
    .B(_4675__bF$buf4),
    .C(_5581_),
    .Y(_3999_)
);

OAI21X1 _15139_ (
    .A(_5336__bF$buf1),
    .B(_4840__bF$buf2),
    .C(\datapath.registers.828[7] [25]),
    .Y(_5362_)
);

NAND2X1 _10694_ (
    .A(\datapath.alu.a [10]),
    .B(_1664_),
    .Y(_1665_)
);

DFFPOSX1 _10274_ (
    .Q(\datapath.regimmalu [19]),
    .CLK(CLK_bF$buf32),
    .D(\datapath.imm [19])
);

NAND3X1 _16920_ (
    .A(\datapath.idinstr_16_bF$buf0 ),
    .B(_6822_),
    .C(_6819_),
    .Y(_6823_)
);

AOI21X1 _16500_ (
    .A(\datapath.registers.828[13] [16]),
    .B(\datapath.idinstr_15_bF$buf15 ),
    .C(\datapath.idinstr_16_bF$buf7 ),
    .Y(_6412_)
);

DFFPOSX1 _19392_ (
    .Q(\datapath.registers.828[8] [16]),
    .CLK(CLK_bF$buf50),
    .D(_4603_)
);

FILL SFILL38200x35050 (
);

NAND2X1 _8842_ (
    .A(\datapath.aluinstr [12]),
    .B(_13_),
    .Y(_51_)
);

OAI22X1 _11899_ (
    .A(_1685_),
    .B(_1882__bF$buf2),
    .C(_1990__bF$buf3),
    .D(_1689_),
    .Y(_1318_)
);

OAI21X1 _11479_ (
    .A(_1659_),
    .B(\datapath.alu.b_0_bF$buf6 ),
    .C(_1965_),
    .Y(_2439_)
);

OAI21X1 _11059_ (
    .A(_1875_),
    .B(\datapath.alu.b_0_bF$buf7 ),
    .C(\datapath.alu.b_1_bF$buf3 ),
    .Y(_2028_)
);

AOI21X1 _17705_ (
    .A(_7589_),
    .B(_7583_),
    .C(_7093__bF$buf4),
    .Y(_7590_)
);

NOR2X1 _12840_ (
    .A(_2946_),
    .B(_2953_),
    .Y(_2954_)
);

INVX1 _12420_ (
    .A(\datapath.csr.mvect [19]),
    .Y(_2638_)
);

NAND3X1 _12000_ (
    .A(\datapath.alu.b_3_bF$buf1 ),
    .B(_1146_),
    .C(_1147_),
    .Y(_1426_)
);

NAND2X1 _9627_ (
    .A(\datapath.idpc [31]),
    .B(_416__bF$buf2),
    .Y(_513_)
);

INVX1 _9207_ (
    .A(_0__1_bF$buf0),
    .Y(_193_)
);

FILL SFILL28600x47050 (
);

XNOR2X1 _13625_ (
    .A(_3441_),
    .B(\datapath.programcounter.pc [5]),
    .Y(\datapath.nextpc [5])
);

NAND3X1 _13205_ (
    .A(_3150_),
    .B(_3149_),
    .C(_3148_),
    .Y(_1_[20])
);

AOI21X1 _16097_ (
    .A(_6017_),
    .B(_6016_),
    .C(_5683__bF$buf3),
    .Y(_6018_)
);

NAND2X1 _9380_ (
    .A(\datapath.csr.csr_data [2]),
    .B(_317__bF$buf1),
    .Y(_327_)
);

NOR2X1 _18663_ (
    .A(\datapath.registers.828[29] [14]),
    .B(_8498__bF$buf5),
    .Y(_8513_)
);

OAI21X1 _18243_ (
    .A(_8114_),
    .B(\datapath.idinstr_22_bF$buf15 ),
    .C(_8115_),
    .Y(_8116_)
);

FILL SFILL73960x18050 (
);

DFFPOSX1 _20008_ (
    .Q(\datapath.registers.828[25] [24]),
    .CLK(CLK_bF$buf70),
    .D(_4196_)
);

DFFPOSX1 _19868_ (
    .Q(\datapath.registers.828[1] [12]),
    .CLK(CLK_bF$buf14),
    .D(_3991_)
);

DFFPOSX1 _19448_ (
    .Q(\datapath.registers.828[23] [8]),
    .CLK(CLK_bF$buf149),
    .D(_4146_)
);

DFFPOSX1 _19028_ (
    .Q(\datapath.registers.828[31] [4]),
    .CLK(CLK_bF$buf135),
    .D(_4430_)
);

OAI21X1 _14583_ (
    .A(_5048_),
    .B(_5039__bF$buf6),
    .C(_5049_),
    .Y(_3823_)
);

NOR2X1 _14163_ (
    .A(\datapath.registers.828[20] [10]),
    .B(_4806__bF$buf0),
    .Y(_4817_)
);

FILL SFILL23480x51050 (
);

FILL FILL83080x44050 (
);

OAI21X1 _15788_ (
    .A(_5165_),
    .B(\datapath.idinstr_17_bF$buf9 ),
    .C(_5715_),
    .Y(_5716_)
);

OAI21X1 _15368_ (
    .A(_4689__bF$buf2),
    .B(_5470__bF$buf7),
    .C(_5479_),
    .Y(_4498_)
);

DFFPOSX1 _10083_ (
    .Q(\datapath.csr.csr_wdata [25]),
    .CLK(CLK_bF$buf108),
    .D(\datapath.regcsralu [25])
);

OAI21X1 _11288_ (
    .A(_2242_),
    .B(_2243_),
    .C(_2252_),
    .Y(_2253_)
);

AOI21X1 _17934_ (
    .A(\datapath.idinstr_20_bF$buf13 ),
    .B(_7813_),
    .C(_7092__bF$buf9),
    .Y(_7814_)
);

MUX2X1 _17514_ (
    .A(_7402_),
    .B(_7401_),
    .S(\datapath.idinstr_21_bF$buf22 ),
    .Y(_7403_)
);

FILL SFILL53960x59050 (
);

XOR2X1 _9856_ (
    .A(_707_),
    .B(_711_),
    .Y(\datapath.jumptarget [26])
);

FILL SFILL73800x7050 (
);

NAND2X1 _9436_ (
    .A(\datapath.csr.csr_data [16]),
    .B(_317__bF$buf4),
    .Y(_369_)
);

INVX1 _9016_ (
    .A(\datapath.nextpc [4]),
    .Y(_839_)
);

OAI21X1 _18719_ (
    .A(_4691__bF$buf4),
    .B(_8531__bF$buf7),
    .C(_8541_),
    .Y(_4307_)
);

OAI21X1 _13854_ (
    .A(_3565_),
    .B(_3623_),
    .C(_3624_),
    .Y(_3625_)
);

OAI21X1 _13434_ (
    .A(_3236_),
    .B(_0__1_bF$buf1),
    .C(_3320_),
    .Y(_3321_)
);

NAND3X1 _13014_ (
    .A(\datapath.idinstr [31]),
    .B(_2970_),
    .C(_2971_),
    .Y(_2972_)
);

OAI21X1 _14639_ (
    .A(_5084_),
    .B(_5039__bF$buf5),
    .C(_5085_),
    .Y(_3813_)
);

NOR2X1 _14219_ (
    .A(\datapath.registers.828[19] [4]),
    .B(_4842__bF$buf4),
    .Y(_4847_)
);

FILL SFILL74360x48050 (
);

AOI21X1 _18892_ (
    .A(_4733__bF$buf4),
    .B(_8598__bF$buf2),
    .C(_8629_),
    .Y(_4235_)
);

AOI21X1 _18472_ (
    .A(_8334_),
    .B(_8339_),
    .C(\datapath.idinstr_23_bF$buf0 ),
    .Y(_8340_)
);

NAND2X1 _18052_ (
    .A(_7092__bF$buf7),
    .B(_7928_),
    .Y(_7929_)
);

MUX2X1 _10979_ (
    .A(_1948_),
    .B(_1945_),
    .S(\datapath.alu.b_1_bF$buf6 ),
    .Y(_1949_)
);

DFFPOSX1 _10559_ (
    .Q(\datapath.idpc_4 [13]),
    .CLK(CLK_bF$buf102),
    .D(\datapath._04_ [13])
);

DFFPOSX1 _10139_ (
    .Q(_0_[17]),
    .CLK(CLK_bF$buf11),
    .D(\datapath.alu.c [17])
);

FILL SFILL43960x12050 (
);

NAND2X1 _11920_ (
    .A(_1338_),
    .B(_1339_),
    .Y(_1340_)
);

INVX1 _11500_ (
    .A(_2459_),
    .Y(\datapath.alu.c [11])
);

DFFPOSX1 _19677_ (
    .Q(\datapath.registers.828[27] [13]),
    .CLK(CLK_bF$buf70),
    .D(_4248_)
);

DFFPOSX1 _19257_ (
    .Q(\datapath.registers.828[22] [9]),
    .CLK(CLK_bF$buf92),
    .D(_4115_)
);

NOR2X1 _14392_ (
    .A(\datapath.registers.828[17] [15]),
    .B(_4924__bF$buf2),
    .Y(_4945_)
);

BUFX2 _8707_ (
    .A(_1_[11]),
    .Y(DMEM_DATA_S[11])
);

FILL SFILL43880x19050 (
);

FILL SFILL43800x6050 (
);

AOI22X1 _12705_ (
    .A(_2673_),
    .B(\controlunit.mret_bF$buf0 ),
    .C(_2843_),
    .D(_2841_),
    .Y(\datapath.csr.csr_pcaddr [2])
);

OAI21X1 _15597_ (
    .A(_5579__bF$buf3),
    .B(_4713__bF$buf1),
    .C(_5600_),
    .Y(_4000_)
);

AOI21X1 _15177_ (
    .A(_4695__bF$buf4),
    .B(_5369__bF$buf7),
    .C(_5381_),
    .Y(_4534_)
);

FILL SFILL33480x48050 (
);

INVX1 _8880_ (
    .A(_76_),
    .Y(_85_)
);

NAND2X1 _11097_ (
    .A(\datapath.alu.b_0_bF$buf0 ),
    .B(\datapath.alu.a [22]),
    .Y(_2065_)
);

NAND2X1 _17743_ (
    .A(_7092__bF$buf8),
    .B(_7626_),
    .Y(_7627_)
);

NAND2X1 _17323_ (
    .A(_7092__bF$buf0),
    .B(_7216_),
    .Y(_7217_)
);

AOI21X1 _9665_ (
    .A(_540_),
    .B(_541_),
    .C(_534_),
    .Y(_543_)
);

NAND2X1 _9245_ (
    .A(\datapath.regcwb [2]),
    .B(_218__bF$buf3),
    .Y(_225_)
);

NOR2X1 _18948_ (
    .A(\datapath.registers.828[25] [26]),
    .B(_8631__bF$buf5),
    .Y(_8658_)
);

AOI21X1 _18528_ (
    .A(\datapath.registers.828[28] [29]),
    .B(\datapath.idinstr_22_bF$buf29 ),
    .C(\datapath.idinstr_20_bF$buf49 ),
    .Y(_8395_)
);

AOI21X1 _18108_ (
    .A(\datapath.idinstr_20_bF$buf54 ),
    .B(_7983_),
    .C(\datapath.idinstr_22_bF$buf17 ),
    .Y(_7984_)
);

AND2X2 _13663_ (
    .A(_3474_),
    .B(_3473_),
    .Y(\datapath.nextpc [10])
);

OAI21X1 _13243_ (
    .A(_3181_),
    .B(_0__1_bF$buf4),
    .C(_3182_),
    .Y(_3183_)
);

FILL FILL83160x32050 (
);

NOR2X1 _14868_ (
    .A(_4669_),
    .B(_5211_),
    .Y(_5212_)
);

OAI21X1 _14448_ (
    .A(_4687__bF$buf2),
    .B(_4968__bF$buf2),
    .C(_4976_),
    .Y(_3889_)
);

AOI21X1 _14028_ (
    .A(_4689__bF$buf3),
    .B(_4738__bF$buf3),
    .C(_4747_),
    .Y(_4114_)
);

FILL SFILL53960x8050 (
);

MUX2X1 _18281_ (
    .A(_8152_),
    .B(_8151_),
    .S(\datapath.idinstr_21_bF$buf29 ),
    .Y(_8153_)
);

FILL SFILL8440x43050 (
);

FILL SFILL48680x50050 (
);

INVX4 _10788_ (
    .A(\datapath.alu.a [24]),
    .Y(_1759_)
);

DFFPOSX1 _10368_ (
    .Q(\datapath.alu.b [17]),
    .CLK(CLK_bF$buf139),
    .D(\datapath.muxbval [17])
);

DFFPOSX1 _19486_ (
    .Q(\datapath.registers.828[5] [14]),
    .CLK(CLK_bF$buf17),
    .D(_4505_)
);

DFFPOSX1 _19066_ (
    .Q(\datapath.registers.828[10] [10]),
    .CLK(CLK_bF$buf58),
    .D(_3669_)
);

FILL SFILL74120x60050 (
);

NAND2X1 _8936_ (
    .A(gnd),
    .B(\datapath.idpc [9]),
    .Y(_786_)
);

DFFPOSX1 _12934_ (
    .Q(\datapath.csr.mepc [28]),
    .CLK(CLK_bF$buf35),
    .D(\datapath.csr._26_ [28])
);

OAI21X1 _12514_ (
    .A(_2705_),
    .B(\controlunit.csrfile_trap_wen_bF$buf5 ),
    .C(_2706_),
    .Y(\datapath.csr._26_ [11])
);

NOR2X1 _13719_ (
    .A(_3390_),
    .B(_3516_),
    .Y(_3519_)
);

BUFX2 BUFX2_insert310 (
    .A(_4968_),
    .Y(_4968__bF$buf5)
);

BUFX2 BUFX2_insert311 (
    .A(_4968_),
    .Y(_4968__bF$buf4)
);

BUFX2 BUFX2_insert312 (
    .A(_4968_),
    .Y(_4968__bF$buf3)
);

BUFX2 BUFX2_insert313 (
    .A(_4968_),
    .Y(_4968__bF$buf2)
);

MUX2X1 _17972_ (
    .A(\datapath.registers.828[18] [17]),
    .B(\datapath.registers.828[16] [17]),
    .S(\datapath.idinstr_21_bF$buf13 ),
    .Y(_7851_)
);

BUFX2 BUFX2_insert314 (
    .A(_4968_),
    .Y(_4968__bF$buf1)
);

BUFX2 BUFX2_insert315 (
    .A(_4968_),
    .Y(_4968__bF$buf0)
);

AOI21X1 _17552_ (
    .A(\datapath.registers.828[6] [7]),
    .B(\datapath.idinstr_22_bF$buf36 ),
    .C(\datapath.idinstr_20_bF$buf9 ),
    .Y(_7441_)
);

OAI21X1 _17132_ (
    .A(\datapath.idinstr_17_bF$buf14 ),
    .B(_7028_),
    .C(_7029_),
    .Y(_7030_)
);

BUFX2 BUFX2_insert316 (
    .A(\datapath.alu.b [4]),
    .Y(\datapath.alu.b_4_bF$buf4 )
);

BUFX2 BUFX2_insert317 (
    .A(\datapath.alu.b [4]),
    .Y(\datapath.alu.b_4_bF$buf3 )
);

BUFX2 BUFX2_insert318 (
    .A(\datapath.alu.b [4]),
    .Y(\datapath.alu.b_4_bF$buf2 )
);

BUFX2 BUFX2_insert319 (
    .A(\datapath.alu.b [4]),
    .Y(\datapath.alu.b_4_bF$buf1 )
);

AOI21X1 _9894_ (
    .A(_567_),
    .B(_745_),
    .C(_572_),
    .Y(_746_)
);

NAND2X1 _9474_ (
    .A(\datapath.registers.regb_data [26]),
    .B(_318__bF$buf4),
    .Y(_397_)
);

OAI21X1 _9054_ (
    .A(_863_),
    .B(gnd),
    .C(_864_),
    .Y(\datapath._04_ [16])
);

OAI21X1 _18757_ (
    .A(_4729__bF$buf1),
    .B(_8531__bF$buf2),
    .C(_8560_),
    .Y(_4296_)
);

MUX2X1 _18337_ (
    .A(\datapath.registers.828[22] [25]),
    .B(\datapath.registers.828[20] [25]),
    .S(\datapath.idinstr_21_bF$buf25 ),
    .Y(_8208_)
);

DFFPOSX1 _13892_ (
    .Q(\datapath.programcounter.pc [24]),
    .CLK(CLK_bF$buf66),
    .D(\datapath.programcounter._1_ [24])
);

AOI22X1 _13472_ (
    .A(_3238_),
    .B(DMEM_DATA_L[16]),
    .C(DMEM_DATA_L[24]),
    .D(_3239__bF$buf0),
    .Y(_3342_)
);

INVX1 _13052_ (
    .A(\datapath.idinstr_24_bF$buf4 ),
    .Y(_3000_)
);

AOI21X1 _14677_ (
    .A(_4689__bF$buf0),
    .B(_5099__bF$buf1),
    .C(_5108_),
    .Y(_3794_)
);

NOR2X1 _14257_ (
    .A(\datapath.registers.828[19] [20]),
    .B(_4842__bF$buf3),
    .Y(_4869_)
);

MUX2X1 _18090_ (
    .A(\datapath.registers.828[23] [19]),
    .B(\datapath.registers.828[22] [19]),
    .S(\datapath.idinstr_20_bF$buf3 ),
    .Y(_7967_)
);

DFFPOSX1 _10597_ (
    .Q(\datapath.idpc [19]),
    .CLK(CLK_bF$buf102),
    .D(\datapath._03_ [19])
);

DFFPOSX1 _10177_ (
    .Q(\datapath.meminstr [16]),
    .CLK(CLK_bF$buf109),
    .D(\datapath.aluinstr [16])
);

NAND2X1 _16823_ (
    .A(_5684__bF$buf9),
    .B(_6727_),
    .Y(_6728_)
);

NAND2X1 _16403_ (
    .A(_6314_),
    .B(_6316_),
    .Y(_6317_)
);

FILL SFILL58760x40050 (
);

DFFPOSX1 _19295_ (
    .Q(\datapath.registers.828[2] [15]),
    .CLK(CLK_bF$buf8),
    .D(_4346_)
);

BUFX2 _8745_ (
    .A(\datapath.programcounter.pc [16]),
    .Y(IMEM_ADDR[16])
);

FILL SFILL58680x47050 (
);

MUX2X1 _17608_ (
    .A(\datapath.registers.828[13] [9]),
    .B(\datapath.registers.828[12] [9]),
    .S(\datapath.idinstr_20_bF$buf4 ),
    .Y(_7495_)
);

NAND2X1 _12743_ (
    .A(\datapath.csr.mepc [8]),
    .B(\controlunit.mret_bF$buf4 ),
    .Y(_2874_)
);

OAI21X1 _12323_ (
    .A(_2566_),
    .B(_2490__bF$buf4),
    .C(_2567_),
    .Y(\datapath.csr.csr_data [24])
);

FILL FILL83160x27050 (
);

FILL SFILL84120x57050 (
);

AOI21X1 _13948_ (
    .A(_4695__bF$buf3),
    .B(_4673__bF$buf5),
    .C(_4696_),
    .Y(_4118_)
);

NOR2X1 _13528_ (
    .A(gnd),
    .B(\datapath.programcounter.pc_mux [10]),
    .Y(_3379_)
);

NAND3X1 _13108_ (
    .A(\datapath.memoryinterface.byte_size_store.storebyte [6]),
    .B(_3027__bF$buf0),
    .C(_3029__bF$buf2),
    .Y(_3068_)
);

FILL SFILL8520x31050 (
);

OAI21X1 _17781_ (
    .A(_7664_),
    .B(_7655_),
    .C(_7088__bF$buf0),
    .Y(_7665_)
);

OAI21X1 _17361_ (
    .A(_7252_),
    .B(\datapath.idinstr_22_bF$buf12 ),
    .C(_7253_),
    .Y(_7254_)
);

FILL SFILL8440x38050 (
);

FILL SFILL48680x45050 (
);

NAND3X1 _9283_ (
    .A(_252_),
    .B(_253_),
    .C(_251_),
    .Y(\datapath.rd [11])
);

FILL SFILL8040x24050 (
);

FILL SFILL84040x19050 (
);

BUFX2 _18986_ (
    .A(\datapath.registers.828[0] [26]),
    .Y(_3654_)
);

NAND2X1 _18566_ (
    .A(\datapath.registers.828[18] [30]),
    .B(_7092__bF$buf4),
    .Y(_8432_)
);

MUX2X1 _18146_ (
    .A(\datapath.registers.828[29] [21]),
    .B(\datapath.registers.828[28] [21]),
    .S(\datapath.idinstr_20_bF$buf11 ),
    .Y(_8021_)
);

FILL SFILL13480x39050 (
);

NAND2X1 _13281_ (
    .A(\datapath.memoryinterface.data_store [31]),
    .B(_3031__bF$buf1),
    .Y(_3216_)
);

OAI21X1 _14486_ (
    .A(_4725__bF$buf3),
    .B(_4968__bF$buf1),
    .C(_4995_),
    .Y(_3878_)
);

AOI21X1 _14066_ (
    .A(_4727__bF$buf0),
    .B(_4738__bF$buf5),
    .C(_4766_),
    .Y(_4103_)
);

FILL SFILL28760x9050 (
);

FILL SFILL28440x3050 (
);

FILL SFILL68680x1050 (
);

NAND2X1 _16632_ (
    .A(\datapath.registers.828[8] [19]),
    .B(_5684__bF$buf2),
    .Y(_6541_)
);

MUX2X1 _16212_ (
    .A(\datapath.registers.828[31] [10]),
    .B(\datapath.registers.828[30] [10]),
    .S(\datapath.idinstr_15_bF$buf52 ),
    .Y(_6130_)
);

INVX1 _8974_ (
    .A(\datapath.programcounter.pc [22]),
    .Y(_811_)
);

FILL SFILL68840x30050 (
);

NAND2X1 _17837_ (
    .A(\datapath.registers.828[8] [14]),
    .B(_7092__bF$buf3),
    .Y(_7719_)
);

NAND2X1 _17417_ (
    .A(_7092__bF$buf10),
    .B(_7308_),
    .Y(_7309_)
);

INVX4 _12972_ (
    .A(\controlunit.imm_sel [2]),
    .Y(_3002_)
);

OAI21X1 _12552_ (
    .A(_2735_),
    .B(\controlunit.csrfile_trap_wen_bF$buf2 ),
    .C(_2736_),
    .Y(\datapath.csr._26_ [19])
);

OAI21X1 _12132_ (
    .A(_1736_),
    .B(_1741_),
    .C(_1565_),
    .Y(_1566_)
);

AOI21X1 _9759_ (
    .A(_617_),
    .B(_621_),
    .C(_619_),
    .Y(_625_)
);

NAND3X1 _9339_ (
    .A(_294_),
    .B(_295_),
    .C(_293_),
    .Y(\datapath.rd [25])
);

AOI22X1 _13757_ (
    .A(_3423__bF$buf4),
    .B(\datapath.alu.c [20]),
    .C(\datapath.csr.csr_pcaddr [20]),
    .D(_3429__bF$buf2),
    .Y(_3548_)
);

OAI21X1 _13337_ (
    .A(_3187_),
    .B(_3239__bF$buf1),
    .C(_3243_),
    .Y(\datapath.memoryinterface.byte_size_store.storebyte [27])
);

OAI21X1 _17590_ (
    .A(_7476_),
    .B(\datapath.idinstr_22_bF$buf33 ),
    .C(_7477_),
    .Y(_7478_)
);

MUX2X1 _17170_ (
    .A(\datapath.registers.828[9] [31]),
    .B(\datapath.registers.828[8] [31]),
    .S(\datapath.idinstr_15_bF$buf39 ),
    .Y(_7067_)
);

NAND2X1 _9092_ (
    .A(gnd),
    .B(\datapath.idpc_4 [29]),
    .Y(_890_)
);

AOI21X1 _15903_ (
    .A(\datapath.idinstr_15_bF$buf31 ),
    .B(_5827_),
    .C(\datapath.idinstr_17_bF$buf8 ),
    .Y(_5828_)
);

OAI21X1 _18795_ (
    .A(_7739_),
    .B(_8565__bF$buf7),
    .C(_8580_),
    .Y(_4249_)
);

MUX2X1 _18375_ (
    .A(\datapath.registers.828[18] [26]),
    .B(\datapath.registers.828[16] [26]),
    .S(\datapath.idinstr_21_bF$buf28 ),
    .Y(_8245_)
);

NAND2X1 _13090_ (
    .A(_0__1_bF$buf2),
    .B(DMEM_DATA_L[3]),
    .Y(_3053_)
);

INVX2 _11823_ (
    .A(_1231_),
    .Y(_1236_)
);

INVX1 _11403_ (
    .A(_1935_),
    .Y(_2365_)
);

FILL SFILL33320x50 (
);

NOR2X1 _14295_ (
    .A(\datapath.registers.828[18] [4]),
    .B(_4886__bF$buf2),
    .Y(_4891_)
);

NOR2X1 _12608_ (
    .A(\datapath.csr.mcause [0]),
    .B(_2781_),
    .Y(_2782_)
);

FILL SFILL48760x33050 (
);

MUX2X1 _16861_ (
    .A(_6764_),
    .B(_6763_),
    .S(_5681__bF$buf9),
    .Y(_6765_)
);

NAND2X1 _16441_ (
    .A(_6351_),
    .B(_6353_),
    .Y(_6354_)
);

MUX2X1 _16021_ (
    .A(\datapath.registers.828[3] [5]),
    .B(\datapath.registers.828[2] [5]),
    .S(\datapath.idinstr_15_bF$buf20 ),
    .Y(_5944_)
);

NOR2X1 _8783_ (
    .A(\datapath.wbinstr [6]),
    .B(\datapath.wbinstr [5]),
    .Y(_118_)
);

AOI21X1 _17646_ (
    .A(_7526_),
    .B(_7532_),
    .C(\datapath.idinstr_23_bF$buf5 ),
    .Y(_7533_)
);

OAI21X1 _17226_ (
    .A(_5037_),
    .B(\datapath.idinstr_20_bF$buf27 ),
    .C(\datapath.idinstr_21_bF$buf33 ),
    .Y(_7122_)
);

OAI21X1 _12781_ (
    .A(_2905_),
    .B(_2632_),
    .C(_2585__bF$buf1),
    .Y(_2906_)
);

INVX1 _12361_ (
    .A(\datapath.meminstr [23]),
    .Y(_2598_)
);

DFFPOSX1 _9988_ (
    .Q(\datapath.regcwb [10]),
    .CLK(CLK_bF$buf104),
    .D(_0_[10])
);

NAND2X1 _9568_ (
    .A(\datapath.csr.csr_data [16]),
    .B(_417__bF$buf4),
    .Y(_469_)
);

INVX1 _9148_ (
    .A(IMEM_DATA[16]),
    .Y(_150_)
);

FILL SFILL78840x27050 (
);

NOR2X1 _13986_ (
    .A(\datapath.registers.828[23] [24]),
    .B(_4673__bF$buf2),
    .Y(_4722_)
);

INVX1 _13566_ (
    .A(\datapath.programcounter.pc_mux [23]),
    .Y(_3404_)
);

OAI21X1 _13146_ (
    .A(_3096_),
    .B(_3081_),
    .C(_3100_),
    .Y(_1_[11])
);

FILL SFILL28360x60050 (
);

NOR2X1 _15712_ (
    .A(\datapath.registers.828[30] [12]),
    .B(_5647__bF$buf7),
    .Y(_5660_)
);

FILL SFILL18280x50 (
);

AOI21X1 _18184_ (
    .A(_8037_),
    .B(_8058_),
    .C(_7095__bF$buf2),
    .Y(\datapath.registers.regb_data [21])
);

FILL SFILL68840x25050 (
);

INVX1 _16917_ (
    .A(\datapath.registers.828[2] [25]),
    .Y(_6820_)
);

INVX2 _11632_ (
    .A(_1423_),
    .Y(_1031_)
);

NAND2X1 _11212_ (
    .A(_1123__bF$buf4),
    .B(_1939_),
    .Y(_2178_)
);

DFFPOSX1 _19389_ (
    .Q(\datapath.registers.828[8] [13]),
    .CLK(CLK_bF$buf92),
    .D(_4600_)
);

NAND2X1 _8839_ (
    .A(\datapath.aluinstr [13]),
    .B(_12_),
    .Y(_48_)
);

OAI22X1 _12837_ (
    .A(_2753_),
    .B(_2585__bF$buf2),
    .C(_2951_),
    .D(_2949_),
    .Y(\datapath.csr.csr_pcaddr [26])
);

INVX1 _12417_ (
    .A(\datapath.csr.mvect [18]),
    .Y(_2636_)
);

AOI21X1 _16670_ (
    .A(\datapath.idinstr_15_bF$buf37 ),
    .B(_6577_),
    .C(_5684__bF$buf9),
    .Y(_6578_)
);

AOI21X1 _16250_ (
    .A(_6145_),
    .B(_6167_),
    .C(_5687__bF$buf0),
    .Y(\datapath.registers.rega_data [10])
);

MUX2X1 _17875_ (
    .A(\datapath.registers.828[27] [15]),
    .B(\datapath.registers.828[26] [15]),
    .S(\datapath.idinstr_20_bF$buf53 ),
    .Y(_7756_)
);

NAND3X1 _17455_ (
    .A(_7091__bF$buf1),
    .B(_7345_),
    .C(_7342_),
    .Y(_7346_)
);

OAI21X1 _17035_ (
    .A(_5295_),
    .B(\datapath.idinstr_17_bF$buf5 ),
    .C(_6934_),
    .Y(_6935_)
);

FILL SFILL18280x20050 (
);

OAI21X1 _12590_ (
    .A(\datapath.csr.csr_wdata [29]),
    .B(_2672__bF$buf2),
    .C(_2766_),
    .Y(_2767_)
);

NOR2X1 _12170_ (
    .A(_1091__bF$buf0),
    .B(_1351_),
    .Y(_1607_)
);

FILL SFILL58360x16050 (
);

NOR2X1 _9797_ (
    .A(_642_),
    .B(_658_),
    .Y(_659_)
);

NAND3X1 _9377_ (
    .A(_323_),
    .B(_324_),
    .C(_322_),
    .Y(\datapath.muxbval [1])
);

AOI21X1 _10903_ (
    .A(\datapath.alu.b_3_bF$buf3 ),
    .B(_1856_),
    .C(_1873_),
    .Y(_1874_)
);

INVX1 _13795_ (
    .A(_3526_),
    .Y(_3577_)
);

OAI21X1 _13375_ (
    .A(_3268_),
    .B(_3081_),
    .C(_3272_),
    .Y(\datapath.memdataload [4])
);

DFFPOSX1 _19601_ (
    .Q(\datapath.registers.828[9] [1]),
    .CLK(CLK_bF$buf2),
    .D(_4639_)
);

CLKBUF1 CLKBUF1_insert1260 (
    .A(CLK),
    .Y(CLK_hier0_bF$buf3)
);

CLKBUF1 CLKBUF1_insert1261 (
    .A(CLK),
    .Y(CLK_hier0_bF$buf2)
);

CLKBUF1 CLKBUF1_insert1262 (
    .A(CLK),
    .Y(CLK_hier0_bF$buf1)
);

CLKBUF1 CLKBUF1_insert1263 (
    .A(CLK),
    .Y(CLK_hier0_bF$buf0)
);

FILL SFILL48760x28050 (
);

FILL SFILL69240x55050 (
);

OAI21X1 _15941_ (
    .A(_5046_),
    .B(\datapath.idinstr_15_bF$buf28 ),
    .C(\datapath.idinstr_16_bF$buf26 ),
    .Y(_5865_)
);

OAI21X1 _15521_ (
    .A(_5038__bF$buf0),
    .B(_4668__bF$buf0),
    .C(\datapath.registers.828[2] [15]),
    .Y(_5562_)
);

OAI21X1 _15101_ (
    .A(_5336__bF$buf3),
    .B(_4840__bF$buf5),
    .C(\datapath.registers.828[7] [6]),
    .Y(_5343_)
);

AOI21X1 _16726_ (
    .A(_6632_),
    .B(_6631_),
    .C(_5684__bF$buf2),
    .Y(_6633_)
);

MUX2X1 _16306_ (
    .A(\datapath.registers.828[19] [12]),
    .B(\datapath.registers.828[17] [12]),
    .S(\datapath.idinstr_16_bF$buf9 ),
    .Y(_6222_)
);

OAI21X1 _11861_ (
    .A(_1243_),
    .B(_1225_),
    .C(_1276_),
    .Y(_1277_)
);

NAND2X1 _11441_ (
    .A(_2005_),
    .B(_2008_),
    .Y(_2402_)
);

NAND2X1 _11021_ (
    .A(\datapath.alu.b_1_bF$buf6 ),
    .B(\datapath.alu.a [1]),
    .Y(_1991_)
);

DFFPOSX1 _19198_ (
    .Q(\datapath.registers.828[19] [14]),
    .CLK(CLK_bF$buf148),
    .D(_3961_)
);

FILL SFILL38760x26050 (
);

AOI21X1 _12646_ (
    .A(_2807_),
    .B(_2797__bF$buf3),
    .C(_2808_),
    .Y(\datapath.csr._32_ [11])
);

NOR2X1 _12226_ (
    .A(_2494_),
    .B(_2481_),
    .Y(_2495_)
);

OAI21X1 _17684_ (
    .A(_7568_),
    .B(\datapath.idinstr_22_bF$buf41 ),
    .C(_7569_),
    .Y(_7570_)
);

AOI21X1 _17264_ (
    .A(\datapath.registers.828[13] [1]),
    .B(\datapath.idinstr_22_bF$buf7 ),
    .C(_7089__bF$buf6),
    .Y(_7159_)
);

FILL SFILL28760x24050 (
);

OAI21X1 _9186_ (
    .A(_174_),
    .B(gnd),
    .C(_175_),
    .Y(\datapath._05_ [28])
);

NAND2X1 _10712_ (
    .A(_1681_),
    .B(_1682_),
    .Y(_1683_)
);

NOR2X1 _18889_ (
    .A(\datapath.registers.828[26] [29]),
    .B(_8598__bF$buf7),
    .Y(_8628_)
);

MUX2X1 _18469_ (
    .A(\datapath.registers.828[23] [28]),
    .B(\datapath.registers.828[21] [28]),
    .S(\datapath.idinstr_21_bF$buf4 ),
    .Y(_8337_)
);

MUX2X1 _18049_ (
    .A(\datapath.registers.828[9] [19]),
    .B(\datapath.registers.828[8] [19]),
    .S(\datapath.idinstr_20_bF$buf37 ),
    .Y(_7926_)
);

NAND3X1 _13184_ (
    .A(_3132_),
    .B(_3131_),
    .C(_3130_),
    .Y(_1_[17])
);

DFFPOSX1 _19830_ (
    .Q(\datapath.registers.828[3] [6]),
    .CLK(CLK_bF$buf126),
    .D(_4464_)
);

DFFPOSX1 _19410_ (
    .Q(\datapath.registers.828[24] [2]),
    .CLK(CLK_bF$buf132),
    .D(_4170_)
);

FILL SFILL18360x53050 (
);

INVX1 _11917_ (
    .A(_1336_),
    .Y(\datapath.alu.c [22])
);

OAI21X1 _14389_ (
    .A(_4942_),
    .B(_4924__bF$buf4),
    .C(_4943_),
    .Y(_3896_)
);

NOR2X1 _15750_ (
    .A(\datapath.registers.828[30] [31]),
    .B(_5647__bF$buf7),
    .Y(_5679_)
);

NAND2X1 _15330_ (
    .A(\datapath.registers.828[24] [22]),
    .B(_5437__bF$buf4),
    .Y(_5460_)
);

FILL SFILL58840x18050 (
);

FILL SFILL18680x29050 (
);

AOI21X1 _16955_ (
    .A(\datapath.registers.828[20] [26]),
    .B(\datapath.idinstr_17_bF$buf7 ),
    .C(\datapath.idinstr_15_bF$buf0 ),
    .Y(_6857_)
);

AOI21X1 _16535_ (
    .A(_6441_),
    .B(_6445_),
    .C(\datapath.idinstr_18_bF$buf4 ),
    .Y(_6446_)
);

OAI21X1 _16115_ (
    .A(_6035_),
    .B(_6026_),
    .C(\datapath.idinstr_19_bF$buf2 ),
    .Y(_6036_)
);

FILL SFILL18280x15050 (
);

INVX1 _11670_ (
    .A(_1072_),
    .Y(\datapath.alu.c [15])
);

AOI21X1 _11250_ (
    .A(_2093_),
    .B(_2214_),
    .C(_2123_),
    .Y(_2215_)
);

NOR2X1 _8877_ (
    .A(\datapath.idinstr [13]),
    .B(\datapath.idinstr [12]),
    .Y(_83_)
);

FILL SFILL23960x40050 (
);

DFFPOSX1 _12875_ (
    .Q(\datapath.csr.mcause [1]),
    .CLK(CLK_bF$buf44),
    .D(\datapath.csr._32_ [1])
);

MUX2X1 _12455_ (
    .A(_2660_),
    .B(_2661_),
    .S(_2602__bF$buf1),
    .Y(\datapath.csr._13_ [30])
);

OAI21X1 _12035_ (
    .A(_1889__bF$buf0),
    .B(\datapath.alu.a [26]),
    .C(_1890__bF$buf0),
    .Y(_1463_)
);

OAI21X1 _14601_ (
    .A(_5059_),
    .B(_5039__bF$buf7),
    .C(_5060_),
    .Y(_3799_)
);

NAND2X1 _17493_ (
    .A(\datapath.idinstr_22_bF$buf19 ),
    .B(_7382_),
    .Y(_7383_)
);

MUX2X1 _17073_ (
    .A(\datapath.registers.828[23] [29]),
    .B(\datapath.registers.828[21] [29]),
    .S(\datapath.idinstr_16_bF$buf15 ),
    .Y(_6972_)
);

MUX2X1 _15806_ (
    .A(_5732_),
    .B(_5731_),
    .S(\datapath.idinstr_16_bF$buf14 ),
    .Y(_5733_)
);

NOR2X1 _10941_ (
    .A(_1911_),
    .B(_1908__bF$buf3),
    .Y(_1912_)
);

DFFPOSX1 _10521_ (
    .Q(\datapath.idinstr [7]),
    .CLK(CLK_bF$buf8),
    .D(\datapath._05_ [7])
);

DFFPOSX1 _10101_ (
    .Q(\datapath.memoryinterface.data_store [11]),
    .CLK(CLK_bF$buf30),
    .D(\datapath.regrs2alu [11])
);

AOI21X1 _18698_ (
    .A(_4735__bF$buf4),
    .B(_8498__bF$buf3),
    .C(_8530_),
    .Y(_4332_)
);

AOI21X1 _18278_ (
    .A(_8128_),
    .B(_8150_),
    .C(_7095__bF$buf1),
    .Y(\datapath.registers.regb_data [23])
);

FILL SFILL83800x52050 (
);

INVX4 _11726_ (
    .A(_1066_),
    .Y(_1132_)
);

NAND2X1 _11306_ (
    .A(_1091__bF$buf0),
    .B(_2269_),
    .Y(_2270_)
);

AOI21X1 _14198_ (
    .A(_4727__bF$buf0),
    .B(_4806__bF$buf4),
    .C(_4834_),
    .Y(_4039_)
);

FILL SFILL63800x3050 (
);

FILL SFILL63720x8050 (
);

FILL SFILL3400x11050 (
);

NAND2X1 _16764_ (
    .A(_5684__bF$buf11),
    .B(_6669_),
    .Y(_6670_)
);

NOR2X1 _16344_ (
    .A(_6258_),
    .B(_5681__bF$buf0),
    .Y(_6259_)
);

FILL SFILL73800x50050 (
);

FILL SFILL43560x25050 (
);

BUFX2 _8686_ (
    .A(_0_[22]),
    .Y(DMEM_ADDR[22])
);

BUFX2 BUFX2_insert280 (
    .A(_4707_),
    .Y(_4707__bF$buf0)
);

BUFX2 BUFX2_insert281 (
    .A(_2103_),
    .Y(_2103__bF$buf3)
);

BUFX2 BUFX2_insert282 (
    .A(_2103_),
    .Y(_2103__bF$buf2)
);

BUFX2 BUFX2_insert283 (
    .A(_2103_),
    .Y(_2103__bF$buf1)
);

MUX2X1 _17969_ (
    .A(_7847_),
    .B(_7846_),
    .S(\datapath.idinstr_21_bF$buf35 ),
    .Y(_7848_)
);

BUFX2 BUFX2_insert284 (
    .A(_2103_),
    .Y(_2103__bF$buf0)
);

BUFX2 BUFX2_insert285 (
    .A(_417_),
    .Y(_417__bF$buf4)
);

AOI21X1 _17549_ (
    .A(\datapath.registers.828[7] [7]),
    .B(\datapath.idinstr_22_bF$buf36 ),
    .C(_7089__bF$buf10),
    .Y(_7438_)
);

NAND2X1 _17129_ (
    .A(_7023_),
    .B(_7026_),
    .Y(_7027_)
);

BUFX2 BUFX2_insert286 (
    .A(_417_),
    .Y(_417__bF$buf3)
);

BUFX2 BUFX2_insert287 (
    .A(_417_),
    .Y(_417__bF$buf2)
);

BUFX2 BUFX2_insert288 (
    .A(_417_),
    .Y(_417__bF$buf1)
);

INVX1 _12684_ (
    .A(\datapath.csr.mcause [30]),
    .Y(_2828_)
);

BUFX2 BUFX2_insert289 (
    .A(_417_),
    .Y(_417__bF$buf0)
);

NAND3X1 _12264_ (
    .A(_2524_),
    .B(_2525_),
    .C(_2523_),
    .Y(\datapath.csr.csr_data [7])
);

NOR2X1 _18910_ (
    .A(\datapath.registers.828[25] [7]),
    .B(_8631__bF$buf7),
    .Y(_8639_)
);

FILL SFILL33960x37050 (
);

FILL SFILL73720x12050 (
);

DFFPOSX1 _13889_ (
    .Q(\datapath.programcounter.pc [21]),
    .CLK(CLK_bF$buf107),
    .D(\datapath.programcounter._1_ [21])
);

NAND3X1 _13469_ (
    .A(_3291__bF$buf3),
    .B(_3340_),
    .C(_3326_),
    .Y(\datapath.memdataload [30])
);

OAI21X1 _13049_ (
    .A(_2998_),
    .B(_2996_),
    .C(_2995_),
    .Y(\datapath.imm [22])
);

FILL SFILL79400x33050 (
);

OAI21X1 _14830_ (
    .A(_5189_),
    .B(_5167__bF$buf2),
    .C(_5190_),
    .Y(_3706_)
);

NAND2X1 _14410_ (
    .A(\datapath.rd [23]),
    .B(_4924__bF$buf4),
    .Y(_4955_)
);

FILL SFILL33800x2050 (
);

FILL SFILL63720x55050 (
);

FILL SFILL33720x7050 (
);

FILL SFILL74280x2050 (
);

OAI21X1 _15615_ (
    .A(_5579__bF$buf4),
    .B(_4731__bF$buf1),
    .C(_5609_),
    .Y(_4009_)
);

NAND2X1 _10750_ (
    .A(_1720_),
    .B(_1719_),
    .Y(_1721_)
);

DFFPOSX1 _10330_ (
    .Q(\datapath.regrs2alu [11]),
    .CLK(CLK_bF$buf68),
    .D(\datapath.registers.regb_data [11])
);

MUX2X1 _18087_ (
    .A(_7963_),
    .B(_7962_),
    .S(\datapath.idinstr_21_bF$buf44 ),
    .Y(_7964_)
);

FILL SFILL63720x10050 (
);

FILL SFILL23560x21050 (
);

AND2X2 _11955_ (
    .A(_1376_),
    .B(_1680_),
    .Y(_1377_)
);

OAI22X1 _11535_ (
    .A(_1878_),
    .B(_926_),
    .C(_1889__bF$buf1),
    .D(_2462_),
    .Y(_927_)
);

AOI21X1 _11115_ (
    .A(_2069_),
    .B(_2082_),
    .C(_2079_),
    .Y(_2083_)
);

FILL SFILL53720x53050 (
);

MUX2X1 _16993_ (
    .A(_6893_),
    .B(_6892_),
    .S(\datapath.idinstr_16_bF$buf33 ),
    .Y(_6894_)
);

OAI21X1 _16573_ (
    .A(_6478_),
    .B(_6479_),
    .C(_6482_),
    .Y(_6483_)
);

NAND2X1 _16153_ (
    .A(_5684__bF$buf11),
    .B(_6072_),
    .Y(_6073_)
);

FILL SFILL53640x15050 (
);

MUX2X1 _17778_ (
    .A(_7661_),
    .B(_7660_),
    .S(\datapath.idinstr_21_bF$buf11 ),
    .Y(_7662_)
);

NAND2X1 _17358_ (
    .A(_7247_),
    .B(_7250_),
    .Y(_7251_)
);

OAI21X1 _12493_ (
    .A(\datapath.csr.csr_wdata [8]),
    .B(_2672__bF$buf4),
    .C(_2690_),
    .Y(_2691_)
);

FILL SFILL43720x51050 (
);

NAND2X1 _12073_ (
    .A(_1502_),
    .B(_1445_),
    .Y(_1503_)
);

FILL SFILL83800x47050 (
);

FILL SFILL43560x3050 (
);

FILL SFILL43480x8050 (
);

OAI21X1 _10806_ (
    .A(_1775_),
    .B(_1776_),
    .C(_1774_),
    .Y(_1777_)
);

FILL SFILL43160x2050 (
);

INVX1 _13698_ (
    .A(_3424__bF$buf4),
    .Y(_3501_)
);

OAI21X1 _13278_ (
    .A(_3211_),
    .B(_0__1_bF$buf0),
    .C(_3212_),
    .Y(_3213_)
);

DFFPOSX1 _19924_ (
    .Q(\datapath.registers.828[28] [4]),
    .CLK(CLK_bF$buf112),
    .D(_4302_)
);

DFFPOSX1 _19504_ (
    .Q(\datapath.registers.828[11] [0]),
    .CLK(CLK_bF$buf105),
    .D(_3700_)
);

FILL SFILL43640x13050 (
);

AOI21X1 _15844_ (
    .A(_5766_),
    .B(_5770_),
    .C(\datapath.idinstr_18_bF$buf2 ),
    .Y(_5771_)
);

NOR2X1 _15424_ (
    .A(\datapath.registers.828[3] [4]),
    .B(_5503__bF$buf4),
    .Y(_5508_)
);

NOR2X1 _15004_ (
    .A(\datapath.registers.828[9] [25]),
    .B(_5257__bF$buf7),
    .Y(_5291_)
);

OAI21X1 _16629_ (
    .A(_6526_),
    .B(_6537_),
    .C(\datapath.idinstr_19_bF$buf1 ),
    .Y(_6538_)
);

MUX2X1 _16209_ (
    .A(_6126_),
    .B(_6125_),
    .S(\datapath.idinstr_16_bF$buf36 ),
    .Y(_6127_)
);

AOI21X1 _11764_ (
    .A(\datapath.alu.b [18]),
    .B(_1168_),
    .C(_1172_),
    .Y(_1173_)
);

NAND2X1 _11344_ (
    .A(_1657_),
    .B(_2306_),
    .Y(_2307_)
);

FILL SFILL33640x11050 (
);

NOR2X1 _9912_ (
    .A(\datapath.alupc [0]),
    .B(\datapath.regimmalu [0]),
    .Y(_762_)
);

FILL SFILL38520x9050 (
);

DFFPOSX1 _12969_ (
    .Q(\datapath.csr.mvect [30]),
    .CLK(CLK_bF$buf11),
    .D(\datapath.csr._13_ [30])
);

NAND2X1 _12549_ (
    .A(_2733_),
    .B(_2672__bF$buf1),
    .Y(_2734_)
);

OAI21X1 _12129_ (
    .A(_1536_),
    .B(_1537_),
    .C(_1563_),
    .Y(\datapath.alu.c [29])
);

FILL SFILL63800x43050 (
);

FILL SFILL79400x28050 (
);

NOR2X1 _13910_ (
    .A(\datapath.wbinstr [10]),
    .B(_4667_),
    .Y(_4670_)
);

AOI21X1 _16382_ (
    .A(_6292_),
    .B(_6296_),
    .C(_5685__bF$buf7),
    .Y(_6297_)
);

AOI21X1 _17587_ (
    .A(_7470_),
    .B(_7474_),
    .C(_7093__bF$buf4),
    .Y(_7475_)
);

NAND2X1 _17167_ (
    .A(_7061_),
    .B(_7063_),
    .Y(_7064_)
);

FILL SFILL23160x47050 (
);

FILL SFILL8600x51050 (
);

NAND2X1 _9089_ (
    .A(gnd),
    .B(\datapath.idpc_4 [28]),
    .Y(_888_)
);

FILL SFILL53800x41050 (
);

FILL SFILL84200x32050 (
);

INVX2 _10615_ (
    .A(_973_),
    .Y(_983_)
);

NAND3X1 _13087_ (
    .A(\datapath.memoryinterface.byte_size_store.storebyte [3]),
    .B(_3027__bF$buf3),
    .C(_3029__bF$buf4),
    .Y(_3050_)
);

DFFPOSX1 _19733_ (
    .Q(\datapath.registers.828[16] [5]),
    .CLK(CLK_bF$buf148),
    .D(_3887_)
);

DFFPOSX1 _19313_ (
    .Q(\datapath.registers.828[4] [1]),
    .CLK(CLK_bF$buf12),
    .D(_4479_)
);

FILL SFILL53720x48050 (
);

FILL SFILL74280x32050 (
);

OAI21X1 _15653_ (
    .A(_4840__bF$buf5),
    .B(_5612__bF$buf4),
    .C(\datapath.registers.828[31] [15]),
    .Y(_5630_)
);

NOR2X1 _15233_ (
    .A(\datapath.registers.828[5] [7]),
    .B(_5402__bF$buf0),
    .Y(_5410_)
);

FILL SFILL78920x52050 (
);

NAND2X1 _16858_ (
    .A(\datapath.idinstr_17_bF$buf11 ),
    .B(_6761_),
    .Y(_6762_)
);

NAND2X1 _16438_ (
    .A(_5681__bF$buf6),
    .B(_6350_),
    .Y(_6351_)
);

MUX2X1 _16018_ (
    .A(_5940_),
    .B(_5939_),
    .S(\datapath.idinstr_16_bF$buf25 ),
    .Y(_5941_)
);

OAI21X1 _11993_ (
    .A(_1775_),
    .B(_1776_),
    .C(_1908__bF$buf1),
    .Y(_1418_)
);

FILL SFILL43720x46050 (
);

OAI21X1 _11573_ (
    .A(\datapath.alu.a [13]),
    .B(\datapath.alu.b [13]),
    .C(_967_),
    .Y(_968_)
);

AOI21X1 _11153_ (
    .A(_1091__bF$buf2),
    .B(_2120_),
    .C(_1871_),
    .Y(_2121_)
);

XOR2X1 _9721_ (
    .A(_591_),
    .B(_592_),
    .Y(\datapath.jumptarget [10])
);

NAND2X1 _9301_ (
    .A(\datapath.regcsrwb [16]),
    .B(_216__bF$buf3),
    .Y(_267_)
);

NOR2X1 _12778_ (
    .A(_2901_),
    .B(_2882_),
    .Y(_2903_)
);

NOR2X1 _12358_ (
    .A(\datapath.meminstr [25]),
    .B(\datapath.meminstr [24]),
    .Y(_2595_)
);

FILL SFILL68920x50050 (
);

INVX1 _16191_ (
    .A(\datapath.registers.828[1] [9]),
    .Y(_6110_)
);

AOI21X1 _14924_ (
    .A(_4719__bF$buf3),
    .B(_5212__bF$buf4),
    .C(_5244_),
    .Y(_3683_)
);

OAI21X1 _14504_ (
    .A(_5003__bF$buf1),
    .B(_4675__bF$buf3),
    .C(_5006_),
    .Y(_3839_)
);

NAND2X1 _17396_ (
    .A(_7285_),
    .B(_7287_),
    .Y(_7288_)
);

FILL SFILL18360x4050 (
);

AOI21X1 _15709_ (
    .A(_4693__bF$buf4),
    .B(_5647__bF$buf3),
    .C(_5658_),
    .Y(_4373_)
);

INVX2 _10844_ (
    .A(alusel[2]),
    .Y(_1815_)
);

DFFPOSX1 _10424_ (
    .Q(\datapath.aluinstr [6]),
    .CLK(CLK_bF$buf103),
    .D(\datapath.idinstr [6])
);

DFFPOSX1 _10004_ (
    .Q(\datapath.regcwb [26]),
    .CLK(CLK_bF$buf104),
    .D(_0_[26])
);

DFFPOSX1 _19962_ (
    .Q(\datapath.registers.828[6] [10]),
    .CLK(CLK_bF$buf45),
    .D(_4533_)
);

DFFPOSX1 _19542_ (
    .Q(\datapath.registers.828[12] [6]),
    .CLK(CLK_bF$buf138),
    .D(_3760_)
);

DFFPOSX1 _19122_ (
    .Q(\datapath.registers.828[17] [2]),
    .CLK(CLK_bF$buf114),
    .D(_3914_)
);

FILL SFILL23720x42050 (
);

AOI21X1 _11629_ (
    .A(_1209__bF$buf0),
    .B(_1028_),
    .C(_1014_),
    .Y(_1029_)
);

OAI21X1 _11209_ (
    .A(_1933_),
    .B(\datapath.alu.b_2_bF$buf2 ),
    .C(_2174_),
    .Y(_2175_)
);

MUX2X1 _15882_ (
    .A(_5807_),
    .B(_5806_),
    .S(\datapath.idinstr_16_bF$buf2 ),
    .Y(_5808_)
);

NAND2X1 _15462_ (
    .A(\datapath.rd [20]),
    .B(_5503__bF$buf6),
    .Y(_5530_)
);

OAI21X1 _15042_ (
    .A(_4693__bF$buf3),
    .B(_5300__bF$buf7),
    .C(_5311_),
    .Y(_4597_)
);

FILL SFILL8680x48050 (
);

FILL SFILL8280x34050 (
);

MUX2X1 _16667_ (
    .A(\datapath.registers.828[22] [20]),
    .B(\datapath.registers.828[20] [20]),
    .S(\datapath.idinstr_16_bF$buf17 ),
    .Y(_6575_)
);

NAND2X1 _16247_ (
    .A(\datapath.idinstr_17_bF$buf12 ),
    .B(_6164_),
    .Y(_6165_)
);

AOI22X1 _11382_ (
    .A(\datapath.alu.b [8]),
    .B(_1996_),
    .C(_2344_),
    .D(_2343_),
    .Y(_2345_)
);

FILL SFILL48840x53050 (
);

FILL SFILL13720x40050 (
);

DFFPOSX1 _9950_ (
    .Q(\datapath.regloadwb [4]),
    .CLK(CLK_bF$buf146),
    .D(\datapath.memdataload [4])
);

NAND2X1 _9530_ (
    .A(\datapath.registers.rega_data [7]),
    .B(_418__bF$buf2),
    .Y(_440_)
);

NAND2X1 _9110_ (
    .A(gnd),
    .B(\datapath.idinstr [3]),
    .Y(_125_)
);

OAI21X1 _12587_ (
    .A(_2763_),
    .B(\controlunit.csrfile_trap_wen_bF$buf7 ),
    .C(_2764_),
    .Y(\datapath.csr._26_ [26])
);

OAI21X1 _12167_ (
    .A(_1577_),
    .B(_1564_),
    .C(_1602_),
    .Y(_1603_)
);

OAI21X1 _18813_ (
    .A(_6710_),
    .B(_8565__bF$buf1),
    .C(_8589_),
    .Y(_4259_)
);

BUFX2 BUFX2_insert1220 (
    .A(_4840_),
    .Y(_4840__bF$buf6)
);

BUFX2 BUFX2_insert1221 (
    .A(_4840_),
    .Y(_4840__bF$buf5)
);

BUFX2 BUFX2_insert1222 (
    .A(_4840_),
    .Y(_4840__bF$buf4)
);

BUFX2 BUFX2_insert1223 (
    .A(_4840_),
    .Y(_4840__bF$buf3)
);

BUFX2 BUFX2_insert1224 (
    .A(_4840_),
    .Y(_4840__bF$buf2)
);

BUFX2 BUFX2_insert1225 (
    .A(_4840_),
    .Y(_4840__bF$buf1)
);

BUFX2 BUFX2_insert1226 (
    .A(_4840_),
    .Y(_4840__bF$buf0)
);

BUFX2 BUFX2_insert1227 (
    .A(_4705_),
    .Y(_4705__bF$buf4)
);

BUFX2 BUFX2_insert1228 (
    .A(_4705_),
    .Y(_4705__bF$buf3)
);

BUFX2 BUFX2_insert1229 (
    .A(_4705_),
    .Y(_4705__bF$buf2)
);

NAND2X1 _14733_ (
    .A(\datapath.registers.828[12] [4]),
    .B(_5132__bF$buf5),
    .Y(_5137_)
);

NOR2X1 _14313_ (
    .A(\datapath.registers.828[18] [12]),
    .B(_4886__bF$buf3),
    .Y(_4901_)
);

FILL SFILL38840x51050 (
);

FILL SFILL43800x34050 (
);

NAND2X1 _15938_ (
    .A(_5684__bF$buf6),
    .B(_5861_),
    .Y(_5862_)
);

OAI21X1 _15518_ (
    .A(_5546__bF$buf1),
    .B(_4699__bF$buf0),
    .C(_5560_),
    .Y(_4344_)
);

AOI21X1 _10653_ (
    .A(_1188_),
    .B(_1316_),
    .C(_1380_),
    .Y(_1391_)
);

DFFPOSX1 _10233_ (
    .Q(\datapath.csr.csr_mepc [10]),
    .CLK(CLK_bF$buf119),
    .D(\datapath.alupc [10])
);

DFFPOSX1 _19771_ (
    .Q(\datapath.registers.828[30] [11]),
    .CLK(CLK_bF$buf137),
    .D(_4374_)
);

DFFPOSX1 _19351_ (
    .Q(\datapath.registers.828[7] [7]),
    .CLK(CLK_bF$buf85),
    .D(_4593_)
);

INVX1 _8801_ (
    .A(\datapath.aluinstr [13]),
    .Y(_13_)
);

AOI21X1 _11858_ (
    .A(_1234_),
    .B(_1272_),
    .C(_1797_),
    .Y(_1274_)
);

NAND2X1 _11438_ (
    .A(_1626_),
    .B(_2398_),
    .Y(_2399_)
);

NAND2X1 _11018_ (
    .A(_1986_),
    .B(_1987_),
    .Y(_1988_)
);

AOI21X1 _15691_ (
    .A(_4675__bF$buf1),
    .B(_5647__bF$buf3),
    .C(_5649_),
    .Y(_4383_)
);

NOR2X1 _15271_ (
    .A(\datapath.registers.828[5] [26]),
    .B(_5402__bF$buf4),
    .Y(_5429_)
);

FILL SFILL33720x39050 (
);

NAND2X1 _16896_ (
    .A(_6796_),
    .B(_6798_),
    .Y(_6799_)
);

MUX2X1 _16476_ (
    .A(\datapath.registers.828[29] [16]),
    .B(\datapath.registers.828[28] [16]),
    .S(\datapath.idinstr_15_bF$buf8 ),
    .Y(_6388_)
);

INVX1 _16056_ (
    .A(\datapath.registers.828[16] [6]),
    .Y(_5978_)
);

INVX1 _11191_ (
    .A(_2155_),
    .Y(_2158_)
);

INVX1 _12396_ (
    .A(\datapath.csr.mvect [11]),
    .Y(_2622_)
);

AOI21X1 _18622_ (
    .A(\datapath.registers.828[4] [31]),
    .B(\datapath.idinstr_22_bF$buf28 ),
    .C(\datapath.idinstr_20_bF$buf9 ),
    .Y(_8487_)
);

MUX2X1 _18202_ (
    .A(_8075_),
    .B(_8074_),
    .S(\datapath.idinstr_21_bF$buf6 ),
    .Y(_8076_)
);

NAND2X1 _10709_ (
    .A(\datapath.alu.a [23]),
    .B(\datapath.alu.b [23]),
    .Y(_1680_)
);

FILL SFILL23320x23050 (
);

DFFPOSX1 _19827_ (
    .Q(\datapath.registers.828[3] [3]),
    .CLK(CLK_bF$buf134),
    .D(_4461_)
);

DFFPOSX1 _19407_ (
    .Q(\datapath.registers.828[8] [31]),
    .CLK(CLK_bF$buf50),
    .D(_4620_)
);

OAI21X1 _14962_ (
    .A(_5266_),
    .B(_5257__bF$buf3),
    .C(_5267_),
    .Y(_4656_)
);

OAI21X1 _14542_ (
    .A(_5003__bF$buf3),
    .B(_4713__bF$buf0),
    .C(_5025_),
    .Y(_3840_)
);

AOI21X1 _14122_ (
    .A(_4717__bF$buf2),
    .B(_4772__bF$buf0),
    .C(_4795_),
    .Y(_4066_)
);

AOI21X1 _15747_ (
    .A(_4731__bF$buf3),
    .B(_5647__bF$buf0),
    .C(_5677_),
    .Y(_4393_)
);

OAI21X1 _15327_ (
    .A(_4713__bF$buf3),
    .B(_5437__bF$buf7),
    .C(_5458_),
    .Y(_4160_)
);

OAI21X1 _10882_ (
    .A(_1851_),
    .B(\datapath.alu.b_0_bF$buf5 ),
    .C(_1852_),
    .Y(_1853_)
);

DFFPOSX1 _10462_ (
    .Q(\datapath.alupc_4 [12]),
    .CLK(CLK_bF$buf9),
    .D(\datapath.idpc_4 [12])
);

DFFPOSX1 _10042_ (
    .Q(\datapath.wbpc_4 [16]),
    .CLK(CLK_bF$buf84),
    .D(\datapath.mempc_4 [16])
);

FILL SFILL48840x48050 (
);

DFFPOSX1 _19580_ (
    .Q(\datapath.registers.828[21] [12]),
    .CLK(CLK_bF$buf20),
    .D(_4055_)
);

DFFPOSX1 _19160_ (
    .Q(\datapath.registers.828[15] [8]),
    .CLK(CLK_bF$buf59),
    .D(_3858_)
);

OR2X2 _11667_ (
    .A(_1054_),
    .B(_1068_),
    .Y(_1069_)
);

INVX1 _11247_ (
    .A(_2212_),
    .Y(\datapath.alu.c [5])
);

OAI21X1 _15080_ (
    .A(_4731__bF$buf2),
    .B(_5300__bF$buf2),
    .C(_5330_),
    .Y(_4617_)
);

NOR2X1 _9815_ (
    .A(_674_),
    .B(_673_),
    .Y(_675_)
);

NAND3X1 _13813_ (
    .A(_3424__bF$buf2),
    .B(_3589_),
    .C(_3591_),
    .Y(_3592_)
);

FILL SFILL38840x46050 (
);

MUX2X1 _16285_ (
    .A(\datapath.registers.828[7] [11]),
    .B(\datapath.registers.828[6] [11]),
    .S(\datapath.idinstr_15_bF$buf43 ),
    .Y(_6202_)
);

FILL SFILL43800x29050 (
);

FILL SFILL3480x45050 (
);

FILL SFILL68920x3050 (
);

FILL SFILL68840x8050 (
);

NOR2X1 _18851_ (
    .A(\datapath.registers.828[26] [10]),
    .B(_8598__bF$buf3),
    .Y(_8609_)
);

OAI21X1 _18431_ (
    .A(_5293_),
    .B(\datapath.idinstr_22_bF$buf11 ),
    .C(_8299_),
    .Y(_8300_)
);

MUX2X1 _18011_ (
    .A(\datapath.registers.828[31] [18]),
    .B(\datapath.registers.828[30] [18]),
    .S(\datapath.idinstr_20_bF$buf39 ),
    .Y(_7889_)
);

NAND2X1 _10938_ (
    .A(alusel[2]),
    .B(_1897_),
    .Y(_1909_)
);

DFFPOSX1 _10518_ (
    .Q(\datapath.idinstr [4]),
    .CLK(CLK_bF$buf3),
    .D(\datapath._05_ [4])
);

DFFPOSX1 _19636_ (
    .Q(\datapath.registers.828[26] [4]),
    .CLK(CLK_bF$buf112),
    .D(_4238_)
);

DFFPOSX1 _19216_ (
    .Q(\datapath.registers.828[20] [0]),
    .CLK(CLK_bF$buf79),
    .D(_4020_)
);

NAND2X1 _14771_ (
    .A(\datapath.registers.828[12] [23]),
    .B(_5132__bF$buf3),
    .Y(_5156_)
);

NOR2X1 _14351_ (
    .A(\datapath.registers.828[18] [30]),
    .B(_4886__bF$buf5),
    .Y(_4921_)
);

MUX2X1 _15976_ (
    .A(\datapath.registers.828[21] [4]),
    .B(\datapath.registers.828[20] [4]),
    .S(\datapath.idinstr_15_bF$buf54 ),
    .Y(_5900_)
);

OAI21X1 _15556_ (
    .A(_5098__bF$buf3),
    .B(_4668__bF$buf3),
    .C(\datapath.registers.828[1] [0]),
    .Y(_5580_)
);

OAI21X1 _15136_ (
    .A(_5335__bF$buf2),
    .B(_4719__bF$buf0),
    .C(_5360_),
    .Y(_4579_)
);

INVX2 _10691_ (
    .A(\datapath.alu.b [11]),
    .Y(_1662_)
);

DFFPOSX1 _10271_ (
    .Q(\datapath.regimmalu [16]),
    .CLK(CLK_bF$buf26),
    .D(\datapath.imm [16])
);

FILL SFILL79080x53050 (
);

INVX1 _11896_ (
    .A(_1688_),
    .Y(_1314_)
);

NAND2X1 _11476_ (
    .A(_1123__bF$buf5),
    .B(_2091_),
    .Y(_2436_)
);

OAI21X1 _11056_ (
    .A(_2024_),
    .B(_1123__bF$buf5),
    .C(_1091__bF$buf5),
    .Y(_2025_)
);

AOI21X1 _17702_ (
    .A(\datapath.registers.828[13] [11]),
    .B(\datapath.idinstr_20_bF$buf50 ),
    .C(\datapath.idinstr_21_bF$buf9 ),
    .Y(_7587_)
);

NAND2X1 _9624_ (
    .A(\datapath.csr.csr_data [30]),
    .B(_417__bF$buf0),
    .Y(_511_)
);

OAI21X1 _9204_ (
    .A(_189_),
    .B(_184_),
    .C(_183_),
    .Y(_190_)
);

OAI21X1 _18907_ (
    .A(_7340_),
    .B(_8631__bF$buf6),
    .C(_8637_),
    .Y(_4207_)
);

NAND2X1 _13622_ (
    .A(\datapath.jumptarget [4]),
    .B(_3427__bF$buf0),
    .Y(_3445_)
);

NAND2X1 _13202_ (
    .A(_3033__bF$buf1),
    .B(_3147_),
    .Y(_3148_)
);

OAI21X1 _16094_ (
    .A(_4851_),
    .B(\datapath.idinstr_17_bF$buf8 ),
    .C(_6014_),
    .Y(_6015_)
);

FILL SFILL69080x51050 (
);

OAI21X1 _14827_ (
    .A(_5187_),
    .B(_5167__bF$buf6),
    .C(_5188_),
    .Y(_3705_)
);

NOR2X1 _14407_ (
    .A(\datapath.registers.828[17] [22]),
    .B(_4924__bF$buf1),
    .Y(_4953_)
);

AOI21X1 _17299_ (
    .A(\datapath.idinstr_20_bF$buf21 ),
    .B(_7192_),
    .C(\datapath.idinstr_22_bF$buf22 ),
    .Y(_7193_)
);

AOI21X1 _18660_ (
    .A(_4697__bF$buf1),
    .B(_8498__bF$buf1),
    .C(_8511_),
    .Y(_4311_)
);

AOI21X1 _18240_ (
    .A(_8108_),
    .B(_8112_),
    .C(_7093__bF$buf0),
    .Y(_8113_)
);

INVX1 _10747_ (
    .A(\datapath.alu.b [16]),
    .Y(_1718_)
);

DFFPOSX1 _10327_ (
    .Q(\datapath.regrs2alu [8]),
    .CLK(CLK_bF$buf122),
    .D(\datapath.registers.regb_data [8])
);

DFFPOSX1 _20005_ (
    .Q(\datapath.registers.828[25] [21]),
    .CLK(CLK_bF$buf72),
    .D(_4193_)
);

DFFPOSX1 _19865_ (
    .Q(\datapath.registers.828[1] [9]),
    .CLK(CLK_bF$buf17),
    .D(_4019_)
);

DFFPOSX1 _19445_ (
    .Q(\datapath.registers.828[23] [5]),
    .CLK(CLK_bF$buf62),
    .D(_4143_)
);

DFFPOSX1 _19025_ (
    .Q(\datapath.registers.828[31] [1]),
    .CLK(CLK_bF$buf133),
    .D(_4415_)
);

OAI21X1 _14580_ (
    .A(_5046_),
    .B(_5039__bF$buf1),
    .C(_5047_),
    .Y(_3822_)
);

AOI21X1 _14160_ (
    .A(_4689__bF$buf3),
    .B(_4806__bF$buf6),
    .C(_4815_),
    .Y(_4050_)
);

AOI21X1 _15785_ (
    .A(_5712_),
    .B(_5711_),
    .C(\datapath.idinstr_16_bF$buf8 ),
    .Y(_5713_)
);

NAND2X1 _15365_ (
    .A(\datapath.registers.828[4] [7]),
    .B(_5470__bF$buf6),
    .Y(_5478_)
);

FILL SFILL48680x3050 (
);

DFFPOSX1 _10080_ (
    .Q(\datapath.csr.csr_wdata [22]),
    .CLK(CLK_bF$buf108),
    .D(\datapath.regcsralu [22])
);

FILL SFILL38440x27050 (
);

OAI21X1 _11285_ (
    .A(_2249_),
    .B(\datapath.alu.b_2_bF$buf4 ),
    .C(_2247_),
    .Y(_2250_)
);

MUX2X1 _17931_ (
    .A(\datapath.registers.828[22] [16]),
    .B(\datapath.registers.828[20] [16]),
    .S(\datapath.idinstr_21_bF$buf43 ),
    .Y(_7811_)
);

AOI21X1 _17511_ (
    .A(_7379_),
    .B(_7400_),
    .C(_7095__bF$buf4),
    .Y(\datapath.registers.regb_data [6])
);

INVX2 _9853_ (
    .A(_708_),
    .Y(_709_)
);

NAND3X1 _9433_ (
    .A(_365_),
    .B(_366_),
    .C(_364_),
    .Y(\datapath.muxbval [15])
);

INVX1 _9013_ (
    .A(\datapath.nextpc [3]),
    .Y(_837_)
);

NAND2X1 _18716_ (
    .A(\datapath.registers.828[28] [8]),
    .B(_8531__bF$buf5),
    .Y(_8540_)
);

NAND3X1 _13851_ (
    .A(_3424__bF$buf2),
    .B(_3617_),
    .C(_3621_),
    .Y(_3622_)
);

NAND2X1 _13431_ (
    .A(_3033__bF$buf5),
    .B(_3318_),
    .Y(_3319_)
);

OAI21X1 _13011_ (
    .A(_3015_),
    .B(_3012_),
    .C(_2969_),
    .Y(\datapath.imm [19])
);

FILL SFILL73880x34050 (
);

AOI21X1 _14636_ (
    .A(_4721__bF$buf0),
    .B(_5039__bF$buf4),
    .C(_5083_),
    .Y(_3812_)
);

AOI21X1 _14216_ (
    .A(_4677__bF$buf3),
    .B(_4842__bF$buf1),
    .C(_4845_),
    .Y(_3978_)
);

FILL SFILL79160x41050 (
);

FILL SFILL18040x54050 (
);

FILL SFILL18680x2050 (
);

INVX2 _10976_ (
    .A(\datapath.alu.a [3]),
    .Y(_1946_)
);

DFFPOSX1 _10556_ (
    .Q(\datapath.idpc_4 [10]),
    .CLK(CLK_bF$buf28),
    .D(\datapath._04_ [10])
);

FILL SFILL18440x23050 (
);

DFFPOSX1 _10136_ (
    .Q(_0_[14]),
    .CLK(CLK_bF$buf28),
    .D(\datapath.alu.c [14])
);

DFFPOSX1 _19674_ (
    .Q(\datapath.registers.828[27] [10]),
    .CLK(CLK_bF$buf41),
    .D(_4245_)
);

DFFPOSX1 _19254_ (
    .Q(\datapath.registers.828[22] [6]),
    .CLK(CLK_bF$buf131),
    .D(_4112_)
);

FILL SFILL48600x55050 (
);

BUFX2 _8704_ (
    .A(_1_[8]),
    .Y(DMEM_DATA_S[8])
);

NAND2X1 _12702_ (
    .A(_2604_),
    .B(_2840_),
    .Y(_2841_)
);

OAI21X1 _15594_ (
    .A(_5098__bF$buf3),
    .B(_4668__bF$buf3),
    .C(\datapath.registers.828[1] [19]),
    .Y(_5599_)
);

NOR2X1 _15174_ (
    .A(\datapath.registers.828[6] [10]),
    .B(_5369__bF$buf2),
    .Y(_5380_)
);

AOI21X1 _9909_ (
    .A(_734_),
    .B(_754_),
    .C(_755_),
    .Y(_760_)
);

INVX2 _13907_ (
    .A(\datapath.wbinstr [11]),
    .Y(_4667_)
);

MUX2X1 _16799_ (
    .A(\datapath.registers.828[1] [23]),
    .B(\datapath.registers.828[0] [23]),
    .S(\datapath.idinstr_15_bF$buf46 ),
    .Y(_6704_)
);

MUX2X1 _16379_ (
    .A(\datapath.registers.828[26] [13]),
    .B(\datapath.registers.828[24] [13]),
    .S(\datapath.idinstr_16_bF$buf38 ),
    .Y(_6294_)
);

NAND2X1 _11094_ (
    .A(_1016_),
    .B(_1702_),
    .Y(_2062_)
);

MUX2X1 _17740_ (
    .A(\datapath.registers.828[25] [12]),
    .B(\datapath.registers.828[24] [12]),
    .S(\datapath.idinstr_20_bF$buf32 ),
    .Y(_7624_)
);

MUX2X1 _17320_ (
    .A(\datapath.registers.828[1] [2]),
    .B(\datapath.registers.828[0] [2]),
    .S(\datapath.idinstr_20_bF$buf6 ),
    .Y(_7214_)
);

INVX1 _9662_ (
    .A(\datapath.alupc [3]),
    .Y(_540_)
);

NAND2X1 _9242_ (
    .A(\datapath.regloadwb [1]),
    .B(_213__bF$buf0),
    .Y(_223_)
);

FILL SFILL23320x2050 (
);

OAI21X1 _12299_ (
    .A(_2550_),
    .B(_2490__bF$buf2),
    .C(_2551_),
    .Y(\datapath.csr.csr_data [16])
);

FILL SFILL3560x4050 (
);

AOI21X1 _18945_ (
    .A(_4721__bF$buf4),
    .B(_8631__bF$buf5),
    .C(_8656_),
    .Y(_4196_)
);

AOI21X1 _18525_ (
    .A(\datapath.registers.828[29] [29]),
    .B(\datapath.idinstr_22_bF$buf42 ),
    .C(_7089__bF$buf1),
    .Y(_8392_)
);

FILL SFILL3480x9050 (
);

MUX2X1 _18105_ (
    .A(\datapath.registers.828[18] [20]),
    .B(\datapath.registers.828[16] [20]),
    .S(\datapath.idinstr_21_bF$buf44 ),
    .Y(_7981_)
);

NAND2X1 _13660_ (
    .A(\datapath.programcounter.pc [8]),
    .B(\datapath.programcounter.pc [9]),
    .Y(_3472_)
);

NAND3X1 _13240_ (
    .A(_3180_),
    .B(_3179_),
    .C(_3178_),
    .Y(_1_[25])
);

FILL SFILL3160x3050 (
);

FILL SFILL28600x51050 (
);

FILL SFILL83960x24050 (
);

FILL SFILL59000x42050 (
);

AOI21X1 _14865_ (
    .A(_4735__bF$buf0),
    .B(_5167__bF$buf5),
    .C(_5209_),
    .Y(_3724_)
);

NAND2X1 _14445_ (
    .A(\datapath.registers.828[16] [6]),
    .B(_4968__bF$buf1),
    .Y(_4975_)
);

NOR2X1 _14025_ (
    .A(\datapath.registers.828[22] [7]),
    .B(_4738__bF$buf1),
    .Y(_4746_)
);

FILL SFILL3560x28050 (
);

FILL SFILL28520x58050 (
);

FILL SFILL3160x14050 (
);

NOR2X1 _10785_ (
    .A(\datapath.alu.a [25]),
    .B(\datapath.alu.b [25]),
    .Y(_1756_)
);

FILL SFILL49080x42050 (
);

DFFPOSX1 _10365_ (
    .Q(\datapath.alu.b [14]),
    .CLK(CLK_bF$buf139),
    .D(\datapath.muxbval [14])
);

DFFPOSX1 _19483_ (
    .Q(\datapath.registers.828[5] [11]),
    .CLK(CLK_bF$buf79),
    .D(_4502_)
);

DFFPOSX1 _19063_ (
    .Q(\datapath.registers.828[10] [7]),
    .CLK(CLK_bF$buf79),
    .D(_3697_)
);

FILL SFILL28520x13050 (
);

NAND2X1 _8933_ (
    .A(gnd),
    .B(\datapath.idpc [8]),
    .Y(_784_)
);

FILL SFILL73960x22050 (
);

DFFPOSX1 _12931_ (
    .Q(\datapath.csr.mepc [25]),
    .CLK(CLK_bF$buf96),
    .D(\datapath.csr._26_ [25])
);

NAND2X1 _12511_ (
    .A(_2703_),
    .B(_2672__bF$buf4),
    .Y(_2704_)
);

FILL SFILL73880x29050 (
);

NAND2X1 _9718_ (
    .A(_576_),
    .B(_583_),
    .Y(_590_)
);

NAND3X1 _13716_ (
    .A(_3485_),
    .B(_3515_),
    .C(_3490_),
    .Y(_3516_)
);

MUX2X1 _16188_ (
    .A(_6106_),
    .B(_6105_),
    .S(\datapath.idinstr_16_bF$buf35 ),
    .Y(_6107_)
);

FILL SFILL18520x11050 (
);

FILL SFILL63960x20050 (
);

NOR2X1 _9891_ (
    .A(_557_),
    .B(_570_),
    .Y(_743_)
);

NAND2X1 _9471_ (
    .A(\datapath.imm [25]),
    .B(_316__bF$buf2),
    .Y(_395_)
);

OAI21X1 _9051_ (
    .A(_861_),
    .B(gnd),
    .C(_862_),
    .Y(\datapath._04_ [15])
);

FILL SFILL63880x27050 (
);

NAND2X1 _18754_ (
    .A(\datapath.registers.828[28] [27]),
    .B(_8531__bF$buf2),
    .Y(_8559_)
);

MUX2X1 _18334_ (
    .A(\datapath.registers.828[19] [25]),
    .B(\datapath.registers.828[17] [25]),
    .S(\datapath.idinstr_21_bF$buf19 ),
    .Y(_8205_)
);

DFFPOSX1 _19959_ (
    .Q(\datapath.registers.828[6] [7]),
    .CLK(CLK_bF$buf85),
    .D(_4561_)
);

DFFPOSX1 _19539_ (
    .Q(\datapath.registers.828[12] [3]),
    .CLK(CLK_bF$buf25),
    .D(_3757_)
);

DFFPOSX1 _19119_ (
    .Q(\datapath.registers.828[14] [31]),
    .CLK(CLK_bF$buf124),
    .D(_3820_)
);

NOR2X1 _14674_ (
    .A(\datapath.registers.828[13] [7]),
    .B(_5099__bF$buf6),
    .Y(_5107_)
);

OAI21X1 _14254_ (
    .A(_4866_),
    .B(_4842__bF$buf0),
    .C(_4867_),
    .Y(_3965_)
);

FILL SFILL53480x56050 (
);

AOI21X1 _15879_ (
    .A(_5799_),
    .B(_5804_),
    .C(_5685__bF$buf6),
    .Y(_5805_)
);

NOR2X1 _15459_ (
    .A(\datapath.registers.828[3] [19]),
    .B(_5503__bF$buf5),
    .Y(_5528_)
);

NAND2X1 _15039_ (
    .A(\datapath.registers.828[8] [9]),
    .B(_5300__bF$buf3),
    .Y(_5310_)
);

DFFPOSX1 _10594_ (
    .Q(\datapath.idpc [16]),
    .CLK(CLK_bF$buf102),
    .D(\datapath._03_ [16])
);

DFFPOSX1 _10174_ (
    .Q(\datapath.meminstr [13]),
    .CLK(CLK_bF$buf39),
    .D(\datapath.aluinstr [13])
);

MUX2X1 _16820_ (
    .A(\datapath.registers.828[17] [23]),
    .B(\datapath.registers.828[16] [23]),
    .S(\datapath.idinstr_15_bF$buf45 ),
    .Y(_6725_)
);

NAND2X1 _16400_ (
    .A(_5681__bF$buf2),
    .B(_6313_),
    .Y(_6314_)
);

DFFPOSX1 _19292_ (
    .Q(\datapath.registers.828[2] [12]),
    .CLK(CLK_bF$buf145),
    .D(_4343_)
);

FILL SFILL38200x34050 (
);

BUFX2 _8742_ (
    .A(\datapath.programcounter.pc [13]),
    .Y(IMEM_ADDR[13])
);

NAND2X1 _11799_ (
    .A(\datapath.alu.b_1_bF$buf1 ),
    .B(_1143_),
    .Y(_1211_)
);

AOI21X1 _11379_ (
    .A(_2041__bF$buf3),
    .B(_2341_),
    .C(_2339_),
    .Y(_2342_)
);

MUX2X1 _17605_ (
    .A(\datapath.registers.828[11] [9]),
    .B(\datapath.registers.828[10] [9]),
    .S(\datapath.idinstr_20_bF$buf15 ),
    .Y(_7492_)
);

FILL SFILL43480x54050 (
);

NAND3X1 _12740_ (
    .A(_2585__bF$buf0),
    .B(_2868_),
    .C(_2871_),
    .Y(_2872_)
);

OAI21X1 _12320_ (
    .A(_2564_),
    .B(_2490__bF$buf0),
    .C(_2565_),
    .Y(\datapath.csr.csr_data [23])
);

DFFPOSX1 _9947_ (
    .Q(\datapath.regloadwb [1]),
    .CLK(CLK_bF$buf141),
    .D(\datapath.memdataload [1])
);

NAND2X1 _9527_ (
    .A(\datapath.idpc [6]),
    .B(_416__bF$buf4),
    .Y(_438_)
);

NAND2X1 _9107_ (
    .A(gnd),
    .B(\datapath.idinstr [2]),
    .Y(_123_)
);

FILL SFILL7960x24050 (
);

FILL SFILL83960x19050 (
);

AOI21X1 _13945_ (
    .A(_4693__bF$buf1),
    .B(_4673__bF$buf1),
    .C(_4694_),
    .Y(_4117_)
);

NAND2X1 _13525_ (
    .A(gnd),
    .B(\datapath.programcounter.pc [9]),
    .Y(_3377_)
);

OAI21X1 _13105_ (
    .A(_3064_),
    .B(_0__1_bF$buf4),
    .C(_3065_),
    .Y(_3066_)
);

BUFX2 BUFX2_insert1190 (
    .A(_5402_),
    .Y(_5402__bF$buf0)
);

BUFX2 BUFX2_insert1191 (
    .A(_4711_),
    .Y(_4711__bF$buf4)
);

BUFX2 BUFX2_insert1192 (
    .A(_4711_),
    .Y(_4711__bF$buf3)
);

BUFX2 BUFX2_insert1193 (
    .A(_4711_),
    .Y(_4711__bF$buf2)
);

BUFX2 BUFX2_insert1194 (
    .A(_4711_),
    .Y(_4711__bF$buf1)
);

BUFX2 BUFX2_insert1195 (
    .A(_4711_),
    .Y(_4711__bF$buf0)
);

BUFX2 BUFX2_insert1196 (
    .A(_5437_),
    .Y(_5437__bF$buf7)
);

BUFX2 BUFX2_insert1197 (
    .A(_5437_),
    .Y(_5437__bF$buf6)
);

BUFX2 BUFX2_insert1198 (
    .A(_5437_),
    .Y(_5437__bF$buf5)
);

BUFX2 BUFX2_insert1199 (
    .A(_5437_),
    .Y(_5437__bF$buf4)
);

AOI22X1 _9280_ (
    .A(_219__bF$buf0),
    .B(\datapath.wbpc_4 [11]),
    .C(\datapath.regcsrwb [11]),
    .D(_216__bF$buf0),
    .Y(_251_)
);

BUFX2 _18983_ (
    .A(\datapath.registers.828[0] [23]),
    .Y(_3651_)
);

OAI21X1 _18563_ (
    .A(_8428_),
    .B(_8419_),
    .C(_7088__bF$buf4),
    .Y(_8429_)
);

MUX2X1 _18143_ (
    .A(\datapath.registers.828[27] [21]),
    .B(\datapath.registers.828[26] [21]),
    .S(\datapath.idinstr_20_bF$buf23 ),
    .Y(_8018_)
);

FILL SFILL73960x17050 (
);

FILL SFILL33400x50050 (
);

DFFPOSX1 _19768_ (
    .Q(\datapath.registers.828[30] [8]),
    .CLK(CLK_bF$buf135),
    .D(_4402_)
);

DFFPOSX1 _19348_ (
    .Q(\datapath.registers.828[7] [4]),
    .CLK(CLK_bF$buf116),
    .D(_4590_)
);

NAND2X1 _14483_ (
    .A(\datapath.registers.828[16] [25]),
    .B(_4968__bF$buf6),
    .Y(_4994_)
);

NOR2X1 _14063_ (
    .A(\datapath.registers.828[22] [26]),
    .B(_4738__bF$buf4),
    .Y(_4765_)
);

FILL SFILL23480x50050 (
);

NOR2X1 _15688_ (
    .A(\datapath.registers.828[30] [0]),
    .B(_5647__bF$buf0),
    .Y(_5648_)
);

AOI21X1 _15268_ (
    .A(_4721__bF$buf1),
    .B(_5402__bF$buf5),
    .C(_5427_),
    .Y(_4516_)
);

FILL SFILL63960x15050 (
);

INVX1 _8971_ (
    .A(\datapath.programcounter.pc [21]),
    .Y(_809_)
);

NAND2X1 _11188_ (
    .A(\datapath.alu.b_4_bF$buf4 ),
    .B(\datapath.alu.a [4]),
    .Y(_2155_)
);

AOI21X1 _17834_ (
    .A(_7711_),
    .B(_7715_),
    .C(\datapath.idinstr_23_bF$buf1 ),
    .Y(_7716_)
);

MUX2X1 _17414_ (
    .A(\datapath.registers.828[1] [4]),
    .B(\datapath.registers.828[0] [4]),
    .S(\datapath.idinstr_20_bF$buf16 ),
    .Y(_7306_)
);

FILL SFILL8360x54050 (
);

NAND2X1 _9756_ (
    .A(_615_),
    .B(_621_),
    .Y(_622_)
);

AOI22X1 _9336_ (
    .A(_219__bF$buf4),
    .B(\datapath.wbpc_4 [25]),
    .C(\datapath.regcsrwb [25]),
    .D(_216__bF$buf4),
    .Y(_293_)
);

AOI21X1 _18619_ (
    .A(\datapath.registers.828[5] [31]),
    .B(\datapath.idinstr_22_bF$buf28 ),
    .C(_7089__bF$buf10),
    .Y(_8484_)
);

XNOR2X1 _13754_ (
    .A(_3545_),
    .B(\datapath.programcounter.pc [20]),
    .Y(\datapath.nextpc [20])
);

NAND2X1 _13334_ (
    .A(\datapath.memoryinterface.data_store [2]),
    .B(_3239__bF$buf0),
    .Y(_3242_)
);

AOI21X1 _14959_ (
    .A(_4683__bF$buf4),
    .B(_5257__bF$buf6),
    .C(_5265_),
    .Y(_4655_)
);

OAI21X1 _14539_ (
    .A(_5004__bF$buf0),
    .B(_4840__bF$buf4),
    .C(\datapath.registers.828[15] [19]),
    .Y(_5024_)
);

NOR2X1 _14119_ (
    .A(\datapath.registers.828[21] [21]),
    .B(_4772__bF$buf1),
    .Y(_4794_)
);

MUX2X1 _15900_ (
    .A(\datapath.registers.828[18] [3]),
    .B(\datapath.registers.828[16] [3]),
    .S(\datapath.idinstr_16_bF$buf30 ),
    .Y(_5825_)
);

NOR2X1 _18792_ (
    .A(\datapath.registers.828[27] [13]),
    .B(_8565__bF$buf2),
    .Y(_8579_)
);

MUX2X1 _18372_ (
    .A(_8241_),
    .B(_8240_),
    .S(\datapath.idinstr_21_bF$buf39 ),
    .Y(_8242_)
);

MUX2X1 _10879_ (
    .A(\datapath.alu.a [9]),
    .B(\datapath.alu.a [8]),
    .S(\datapath.alu.b_0_bF$buf5 ),
    .Y(_1850_)
);

DFFPOSX1 _10459_ (
    .Q(\datapath.alupc_4 [9]),
    .CLK(CLK_bF$buf81),
    .D(\datapath.idpc_4 [9])
);

DFFPOSX1 _10039_ (
    .Q(\datapath.wbpc_4 [13]),
    .CLK(CLK_bF$buf66),
    .D(\datapath.mempc_4 [13])
);

FILL SFILL43960x11050 (
);

OAI21X1 _11820_ (
    .A(_1232_),
    .B(_1228_),
    .C(_1225_),
    .Y(_1233_)
);

NOR2X1 _11400_ (
    .A(_2361_),
    .B(_2328_),
    .Y(_2362_)
);

DFFPOSX1 _19997_ (
    .Q(\datapath.registers.828[25] [13]),
    .CLK(CLK_bF$buf33),
    .D(_4184_)
);

DFFPOSX1 _19577_ (
    .Q(\datapath.registers.828[21] [9]),
    .CLK(CLK_bF$buf31),
    .D(_4083_)
);

DFFPOSX1 _19157_ (
    .Q(\datapath.registers.828[15] [5]),
    .CLK(CLK_bF$buf18),
    .D(_3855_)
);

AOI21X1 _14292_ (
    .A(_4677__bF$buf4),
    .B(_4886__bF$buf4),
    .C(_4889_),
    .Y(_3946_)
);

FILL SFILL43800x5050 (
);

NOR2X1 _12605_ (
    .A(_2586_),
    .B(_2778_),
    .Y(_2779_)
);

FILL SFILL83960x8050 (
);

OAI21X1 _15497_ (
    .A(_5038__bF$buf0),
    .B(_4668__bF$buf0),
    .C(\datapath.registers.828[2] [3]),
    .Y(_5550_)
);

NAND2X1 _15077_ (
    .A(\datapath.registers.828[8] [28]),
    .B(_5300__bF$buf0),
    .Y(_5329_)
);

FILL SFILL33480x47050 (
);

OR2X2 _8780_ (
    .A(\datapath.wbinstr [2]),
    .B(\datapath.wbinstr [3]),
    .Y(_115_)
);

AOI21X1 _17643_ (
    .A(\datapath.registers.828[20] [9]),
    .B(\datapath.idinstr_22_bF$buf18 ),
    .C(\datapath.idinstr_20_bF$buf1 ),
    .Y(_7530_)
);

MUX2X1 _17223_ (
    .A(_7118_),
    .B(_7117_),
    .S(\datapath.idinstr_21_bF$buf33 ),
    .Y(_7119_)
);

DFFPOSX1 _9985_ (
    .Q(\datapath.regcwb [7]),
    .CLK(CLK_bF$buf77),
    .D(_0_[7])
);

NAND3X1 _9565_ (
    .A(_465_),
    .B(_466_),
    .C(_464_),
    .Y(\datapath.muxaval [15])
);

INVX1 _9145_ (
    .A(IMEM_DATA[15]),
    .Y(_148_)
);

FILL SFILL58680x51050 (
);

AOI21X1 _18848_ (
    .A(_4689__bF$buf1),
    .B(_8598__bF$buf5),
    .C(_8607_),
    .Y(_4242_)
);

AOI21X1 _18428_ (
    .A(_8291_),
    .B(_8296_),
    .C(\datapath.idinstr_23_bF$buf2 ),
    .Y(_8297_)
);

MUX2X1 _18008_ (
    .A(_7885_),
    .B(_7884_),
    .S(\datapath.idinstr_21_bF$buf39 ),
    .Y(_7886_)
);

NOR2X1 _13983_ (
    .A(\datapath.registers.828[23] [23]),
    .B(_4673__bF$buf4),
    .Y(_4720_)
);

INVX2 _13563_ (
    .A(\datapath.programcounter.pc [22]),
    .Y(_3402_)
);

NAND2X1 _13143_ (
    .A(_0__1_bF$buf2),
    .B(DMEM_DATA_L[11]),
    .Y(_3098_)
);

FILL FILL83160x31050 (
);

FILL SFILL23480x45050 (
);

OAI21X1 _14768_ (
    .A(_4715__bF$buf3),
    .B(_5132__bF$buf0),
    .C(_5154_),
    .Y(_3745_)
);

FILL SFILL23800x57050 (
);

AOI21X1 _14348_ (
    .A(_4729__bF$buf3),
    .B(_4886__bF$buf2),
    .C(_4919_),
    .Y(_3944_)
);

FILL SFILL23400x43050 (
);

NAND2X1 _18181_ (
    .A(_7092__bF$buf0),
    .B(_8055_),
    .Y(_8056_)
);

FILL SFILL53560x6050 (
);

INVX4 _10688_ (
    .A(\datapath.alu.a [11]),
    .Y(_1659_)
);

DFFPOSX1 _10268_ (
    .Q(\datapath.regimmalu [13]),
    .CLK(CLK_bF$buf98),
    .D(\datapath.imm [13])
);

FILL SFILL13560x50 (
);

NAND3X1 _16914_ (
    .A(_5683__bF$buf3),
    .B(_6816_),
    .C(_6813_),
    .Y(_6817_)
);

DFFPOSX1 _19386_ (
    .Q(\datapath.registers.828[8] [10]),
    .CLK(CLK_bF$buf114),
    .D(_4597_)
);

AOI21X1 _8836_ (
    .A(\datapath.aluinstr [14]),
    .B(_42_),
    .C(_23_),
    .Y(_46_)
);

AOI21X1 _12834_ (
    .A(_2948_),
    .B(_2941_),
    .C(\datapath.csr.mvect [26]),
    .Y(_2949_)
);

INVX1 _12414_ (
    .A(\datapath.csr.mvect [17]),
    .Y(_2634_)
);

FILL SFILL78760x43050 (
);

NOR2X1 _13619_ (
    .A(\datapath.programcounter.pc [4]),
    .B(_3436_),
    .Y(_3443_)
);

OAI21X1 _17872_ (
    .A(_7738_),
    .B(_7753_),
    .C(\datapath.idinstr_24_bF$buf5 ),
    .Y(_7754_)
);

INVX1 _17452_ (
    .A(\datapath.registers.828[24] [5]),
    .Y(_7343_)
);

AOI21X1 _17032_ (
    .A(_6926_),
    .B(_6931_),
    .C(\datapath.idinstr_18_bF$buf5 ),
    .Y(_6932_)
);

NOR2X1 _9794_ (
    .A(_650_),
    .B(_655_),
    .Y(_656_)
);

NAND2X1 _9374_ (
    .A(\datapath.registers.regb_data [1]),
    .B(_318__bF$buf1),
    .Y(_322_)
);

NAND2X1 _10900_ (
    .A(_1209__bF$buf3),
    .B(_1840_),
    .Y(_1871_)
);

NOR2X1 _18657_ (
    .A(\datapath.registers.828[29] [11]),
    .B(_8498__bF$buf4),
    .Y(_8510_)
);

MUX2X1 _18237_ (
    .A(\datapath.registers.828[15] [23]),
    .B(\datapath.registers.828[14] [23]),
    .S(\datapath.idinstr_20_bF$buf47 ),
    .Y(_8110_)
);

AOI22X1 _13792_ (
    .A(_3423__bF$buf3),
    .B(\datapath.alu.c [24]),
    .C(\datapath.csr.csr_pcaddr [24]),
    .D(_3429__bF$buf3),
    .Y(_3575_)
);

NAND2X1 _13372_ (
    .A(_0__1_bF$buf3),
    .B(DMEM_DATA_L[20]),
    .Y(_3270_)
);

AOI21X1 _14997_ (
    .A(_4715__bF$buf3),
    .B(_5257__bF$buf3),
    .C(_5287_),
    .Y(_4641_)
);

OAI21X1 _14577_ (
    .A(_5044_),
    .B(_5039__bF$buf6),
    .C(_5045_),
    .Y(_3821_)
);

NOR2X1 _14157_ (
    .A(\datapath.registers.828[20] [7]),
    .B(_4806__bF$buf3),
    .Y(_4814_)
);

DFFPOSX1 _10497_ (
    .Q(\datapath.alupc [15]),
    .CLK(CLK_bF$buf113),
    .D(\datapath.idpc [15])
);

DFFPOSX1 _10077_ (
    .Q(\datapath.csr.csr_wdata [19]),
    .CLK(CLK_bF$buf36),
    .D(\datapath.regcsralu [19])
);

OAI21X1 _16723_ (
    .A(_5077_),
    .B(\datapath.idinstr_15_bF$buf41 ),
    .C(\datapath.idinstr_16_bF$buf24 ),
    .Y(_6630_)
);

AOI21X1 _16303_ (
    .A(_6214_),
    .B(_6218_),
    .C(_5685__bF$buf7),
    .Y(_6219_)
);

DFFPOSX1 _19195_ (
    .Q(\datapath.registers.828[19] [11]),
    .CLK(CLK_bF$buf60),
    .D(_3958_)
);

FILL SFILL58680x46050 (
);

MUX2X1 _17928_ (
    .A(\datapath.registers.828[19] [16]),
    .B(\datapath.registers.828[17] [16]),
    .S(\datapath.idinstr_21_bF$buf4 ),
    .Y(_7808_)
);

NAND3X1 _17508_ (
    .A(_7091__bF$buf0),
    .B(_7397_),
    .C(_7395_),
    .Y(_7398_)
);

FILL SFILL18600x6050 (
);

AOI21X1 _12643_ (
    .A(_2531_),
    .B(_2797__bF$buf3),
    .C(_2806_),
    .Y(\datapath.csr._32_ [10])
);

FILL SFILL58840x4050 (
);

NAND2X1 _12223_ (
    .A(\datapath.csr.mcause [0]),
    .B(_2491_),
    .Y(_2492_)
);

FILL FILL83160x26050 (
);

INVX1 _13848_ (
    .A(_3616_),
    .Y(_3620_)
);

NAND2X1 _13428_ (
    .A(DMEM_DATA_L[14]),
    .B(_3031__bF$buf0),
    .Y(_3316_)
);

NAND3X1 _13008_ (
    .A(\datapath.idinstr_18_bF$buf1 ),
    .B(_3018_),
    .C(_3017_),
    .Y(_3025_)
);

FILL SFILL23400x38050 (
);

OAI21X1 _17681_ (
    .A(_7565_),
    .B(\datapath.idinstr_22_bF$buf41 ),
    .C(_7566_),
    .Y(_7567_)
);

NAND2X1 _17261_ (
    .A(_7153_),
    .B(_7155_),
    .Y(_7156_)
);

FILL SFILL48680x44050 (
);

OAI21X1 _9183_ (
    .A(_172_),
    .B(gnd),
    .C(_173_),
    .Y(\datapath._05_ [27])
);

AOI21X1 _18886_ (
    .A(_4727__bF$buf2),
    .B(_8598__bF$buf1),
    .C(_8626_),
    .Y(_4231_)
);

NAND2X1 _18466_ (
    .A(_8331_),
    .B(_8333_),
    .Y(_8334_)
);

AOI21X1 _18046_ (
    .A(_7919_),
    .B(_7923_),
    .C(\datapath.idinstr_23_bF$buf7 ),
    .Y(_7924_)
);

FILL SFILL13480x38050 (
);

NAND2X1 _13181_ (
    .A(_3033__bF$buf4),
    .B(_3129_),
    .Y(_3130_)
);

OAI21X1 _11914_ (
    .A(\datapath.alu.b_4_bF$buf2 ),
    .B(_2227_),
    .C(_1333_),
    .Y(_1334_)
);

FILL SFILL13400x36050 (
);

AOI21X1 _14386_ (
    .A(_4697__bF$buf3),
    .B(_4924__bF$buf1),
    .C(_4941_),
    .Y(_3895_)
);

FILL SFILL74040x16050 (
);

FILL SFILL28440x2050 (
);

AOI21X1 _16952_ (
    .A(\datapath.registers.828[21] [26]),
    .B(\datapath.idinstr_17_bF$buf7 ),
    .C(_5681__bF$buf4),
    .Y(_6854_)
);

MUX2X1 _16532_ (
    .A(\datapath.registers.828[3] [17]),
    .B(\datapath.registers.828[2] [17]),
    .S(\datapath.idinstr_15_bF$buf20 ),
    .Y(_6443_)
);

MUX2X1 _16112_ (
    .A(_6032_),
    .B(_6031_),
    .S(_5681__bF$buf9),
    .Y(_6033_)
);

NOR2X1 _8874_ (
    .A(\datapath.idinstr_21_bF$buf11 ),
    .B(\datapath.idinstr [29]),
    .Y(_80_)
);

AOI21X1 _17737_ (
    .A(_7617_),
    .B(_7621_),
    .C(_7093__bF$buf3),
    .Y(_7622_)
);

OAI21X1 _17317_ (
    .A(_5216_),
    .B(\datapath.idinstr_22_bF$buf5 ),
    .C(_7210_),
    .Y(_7211_)
);

DFFPOSX1 _12872_ (
    .Q(\datapath.csr.mstatus [0]),
    .CLK(CLK_bF$buf44),
    .D(\datapath.csr._37_ [0])
);

MUX2X1 _12452_ (
    .A(_2658_),
    .B(_2659_),
    .S(_2602__bF$buf0),
    .Y(\datapath.csr._13_ [29])
);

NOR2X1 _12032_ (
    .A(\datapath.alu.b_3_bF$buf7 ),
    .B(_1459_),
    .Y(_1460_)
);

INVX1 _9659_ (
    .A(_531_),
    .Y(_537_)
);

NAND3X1 _9239_ (
    .A(_214_),
    .B(_217_),
    .C(_220_),
    .Y(\datapath.rd [0])
);

FILL SFILL64040x14050 (
);

NAND2X1 _13657_ (
    .A(\datapath.jumptarget [9]),
    .B(_3427__bF$buf0),
    .Y(_3470_)
);

NAND2X1 _13237_ (
    .A(_3033__bF$buf2),
    .B(_3177_),
    .Y(_3178_)
);

MUX2X1 _17490_ (
    .A(\datapath.registers.828[31] [6]),
    .B(\datapath.registers.828[29] [6]),
    .S(\datapath.idinstr_21_bF$buf14 ),
    .Y(_7380_)
);

NAND2X1 _17070_ (
    .A(_6966_),
    .B(_6968_),
    .Y(_6969_)
);

AOI21X1 _15803_ (
    .A(_5708_),
    .B(_5730_),
    .C(_5687__bF$buf4),
    .Y(\datapath.registers.rega_data [0])
);

NOR2X1 _18695_ (
    .A(\datapath.registers.828[29] [30]),
    .B(_8498__bF$buf0),
    .Y(_8529_)
);

NAND3X1 _18275_ (
    .A(_7091__bF$buf0),
    .B(_8147_),
    .C(_8144_),
    .Y(_8148_)
);

OAI21X1 _11723_ (
    .A(_2327_),
    .B(_1124_),
    .C(_1128_),
    .Y(_1129_)
);

NAND3X1 _11303_ (
    .A(_1908__bF$buf3),
    .B(_2266_),
    .C(_2265_),
    .Y(_2267_)
);

FILL SFILL68520x50 (
);

NOR2X1 _14195_ (
    .A(\datapath.registers.828[20] [26]),
    .B(_4806__bF$buf2),
    .Y(_4833_)
);

DFFPOSX1 _12928_ (
    .Q(\datapath.csr.mepc [22]),
    .CLK(CLK_bF$buf115),
    .D(\datapath.csr._26_ [22])
);

NAND2X1 _12508_ (
    .A(\controlunit.csrfile_trap_wen_bF$buf0 ),
    .B(\datapath.csr.csr_mepc [12]),
    .Y(_2702_)
);

FILL SFILL48760x32050 (
);

MUX2X1 _16761_ (
    .A(\datapath.registers.828[9] [22]),
    .B(\datapath.registers.828[8] [22]),
    .S(\datapath.idinstr_15_bF$buf21 ),
    .Y(_6667_)
);

MUX2X1 _16341_ (
    .A(_6255_),
    .B(_6254_),
    .S(\datapath.idinstr_16_bF$buf7 ),
    .Y(_6256_)
);

BUFX2 _8683_ (
    .A(_0_[19]),
    .Y(DMEM_ADDR[19])
);

BUFX2 BUFX2_insert250 (
    .A(_7091_),
    .Y(_7091__bF$buf2)
);

BUFX2 BUFX2_insert251 (
    .A(_7091_),
    .Y(_7091__bF$buf1)
);

BUFX2 BUFX2_insert252 (
    .A(_7091_),
    .Y(_7091__bF$buf0)
);

BUFX2 BUFX2_insert253 (
    .A(_4713_),
    .Y(_4713__bF$buf4)
);

NAND2X1 _17966_ (
    .A(_7092__bF$buf1),
    .B(_7844_),
    .Y(_7845_)
);

BUFX2 BUFX2_insert254 (
    .A(_4713_),
    .Y(_4713__bF$buf3)
);

FILL SFILL74120x49050 (
);

BUFX2 BUFX2_insert255 (
    .A(_4713_),
    .Y(_4713__bF$buf2)
);

AOI21X1 _17546_ (
    .A(\datapath.registers.828[4] [7]),
    .B(\datapath.idinstr_22_bF$buf14 ),
    .C(\datapath.idinstr_20_bF$buf33 ),
    .Y(_7435_)
);

NAND2X1 _17126_ (
    .A(\datapath.registers.828[26] [30]),
    .B(_5684__bF$buf9),
    .Y(_7024_)
);

BUFX2 BUFX2_insert256 (
    .A(_4713_),
    .Y(_4713__bF$buf1)
);

BUFX2 BUFX2_insert257 (
    .A(_4713_),
    .Y(_4713__bF$buf0)
);

BUFX2 BUFX2_insert258 (
    .A(_7088_),
    .Y(_7088__bF$buf4)
);

AOI21X1 _12681_ (
    .A(_2574_),
    .B(_2797__bF$buf6),
    .C(_2826_),
    .Y(\datapath.csr._32_ [28])
);

BUFX2 BUFX2_insert259 (
    .A(_7088_),
    .Y(_7088__bF$buf3)
);

NAND2X1 _12261_ (
    .A(\datapath.csr.mstatus [1]),
    .B(_2522_),
    .Y(_2523_)
);

OAI21X1 _9888_ (
    .A(_733_),
    .B(_735_),
    .C(_739_),
    .Y(_740_)
);

NAND2X1 _9468_ (
    .A(\datapath.csr.csr_data [24]),
    .B(_317__bF$buf2),
    .Y(_393_)
);

OAI21X1 _9048_ (
    .A(_859_),
    .B(gnd),
    .C(_860_),
    .Y(\datapath._04_ [14])
);

FILL SFILL38760x30050 (
);

DFFPOSX1 _13886_ (
    .Q(\datapath.programcounter.pc [18]),
    .CLK(CLK_bF$buf81),
    .D(\datapath.programcounter._1_ [18])
);

NAND2X1 _13466_ (
    .A(DMEM_DATA_L[29]),
    .B(_3031__bF$buf7),
    .Y(_3339_)
);

INVX1 _13046_ (
    .A(\datapath.idinstr_21_bF$buf11 ),
    .Y(_2997_)
);

FILL SFILL78440x12050 (
);

OAI21X1 _15612_ (
    .A(_5098__bF$buf3),
    .B(_4668__bF$buf1),
    .C(\datapath.registers.828[1] [28]),
    .Y(_5608_)
);

AOI21X1 _18084_ (
    .A(_7953_),
    .B(_7960_),
    .C(_7093__bF$buf7),
    .Y(_7961_)
);

OAI21X1 _16817_ (
    .A(_6720_),
    .B(\datapath.idinstr_17_bF$buf13 ),
    .C(_6721_),
    .Y(_6722_)
);

NAND2X1 _11952_ (
    .A(_1373_),
    .B(_1236_),
    .Y(_1374_)
);

AOI22X1 _11532_ (
    .A(_2151_),
    .B(_923_),
    .C(_922_),
    .D(_2032_),
    .Y(_924_)
);

NAND2X1 _11112_ (
    .A(_994__bF$buf6),
    .B(_1937_),
    .Y(_2080_)
);

DFFPOSX1 _19289_ (
    .Q(\datapath.registers.828[2] [9]),
    .CLK(CLK_bF$buf40),
    .D(_4371_)
);

BUFX2 _8739_ (
    .A(\datapath.programcounter.pc [10]),
    .Y(IMEM_ADDR[10])
);

FILL SFILL28280x21050 (
);

FILL SFILL54120x45050 (
);

NAND2X1 _12737_ (
    .A(\datapath.csr.mvect [8]),
    .B(\datapath.csr.mvect [9]),
    .Y(_2869_)
);

OAI21X1 _12317_ (
    .A(_2562_),
    .B(_2490__bF$buf4),
    .C(_2563_),
    .Y(\datapath.csr.csr_data [22])
);

OAI21X1 _16990_ (
    .A(_6879_),
    .B(_6890_),
    .C(\datapath.idinstr_19_bF$buf4 ),
    .Y(_6891_)
);

NAND2X1 _16570_ (
    .A(\datapath.registers.828[12] [18]),
    .B(_5681__bF$buf0),
    .Y(_6480_)
);

MUX2X1 _16150_ (
    .A(\datapath.registers.828[1] [8]),
    .B(\datapath.registers.828[0] [8]),
    .S(\datapath.idinstr_15_bF$buf47 ),
    .Y(_6070_)
);

NAND2X1 _17775_ (
    .A(\datapath.idinstr_22_bF$buf2 ),
    .B(_7658_),
    .Y(_7659_)
);

FILL SFILL39160x60050 (
);

NAND2X1 _17355_ (
    .A(\datapath.registers.828[26] [3]),
    .B(_7092__bF$buf6),
    .Y(_7248_)
);

OAI21X1 _12490_ (
    .A(_2687_),
    .B(\controlunit.csrfile_trap_wen_bF$buf6 ),
    .C(_2688_),
    .Y(\datapath.csr._26_ [5])
);

OAI21X1 _12070_ (
    .A(_1480_),
    .B(_1481_),
    .C(_1500_),
    .Y(_1501_)
);

FILL SFILL79240x56050 (
);

FILL SFILL58360x15050 (
);

NAND2X1 _9697_ (
    .A(\datapath.alupc [7]),
    .B(\datapath.regimmalu [7]),
    .Y(_571_)
);

NAND2X1 _9277_ (
    .A(\datapath.regcwb [10]),
    .B(_218__bF$buf1),
    .Y(_249_)
);

NAND2X1 _10803_ (
    .A(\datapath.alu.a [25]),
    .B(_1754_),
    .Y(_1774_)
);

NAND2X1 _13695_ (
    .A(\datapath.programcounter.pc [14]),
    .B(_3498_),
    .Y(_3499_)
);

NAND3X1 _13275_ (
    .A(_3210_),
    .B(_3209_),
    .C(_3208_),
    .Y(_1_[30])
);

DFFPOSX1 _19921_ (
    .Q(\datapath.registers.828[28] [1]),
    .CLK(CLK_bF$buf72),
    .D(_4287_)
);

DFFPOSX1 _19501_ (
    .Q(\datapath.registers.828[5] [29]),
    .CLK(CLK_bF$buf136),
    .D(_4521_)
);

FILL SFILL79240x11050 (
);

FILL SFILL48760x27050 (
);

MUX2X1 _15841_ (
    .A(\datapath.registers.828[3] [1]),
    .B(\datapath.registers.828[2] [1]),
    .S(\datapath.idinstr_15_bF$buf1 ),
    .Y(_5768_)
);

AOI21X1 _15421_ (
    .A(_4677__bF$buf2),
    .B(_5503__bF$buf4),
    .C(_5506_),
    .Y(_4458_)
);

AOI21X1 _15001_ (
    .A(_4719__bF$buf3),
    .B(_5257__bF$buf1),
    .C(_5289_),
    .Y(_4643_)
);

AOI21X1 _16626_ (
    .A(\datapath.idinstr_15_bF$buf45 ),
    .B(_6534_),
    .C(_5684__bF$buf9),
    .Y(_6535_)
);

AOI21X1 _16206_ (
    .A(_6100_),
    .B(_6124_),
    .C(_5687__bF$buf1),
    .Y(\datapath.registers.rega_data [9])
);

AOI22X1 _11761_ (
    .A(_2041__bF$buf1),
    .B(_1169_),
    .C(_1708_),
    .D(_2154_),
    .Y(_1170_)
);

NOR2X1 _11341_ (
    .A(_1594_),
    .B(_2303_),
    .Y(_2304_)
);

DFFPOSX1 _19098_ (
    .Q(\datapath.registers.828[14] [10]),
    .CLK(CLK_bF$buf114),
    .D(_3797_)
);

INVX1 _8968_ (
    .A(\datapath.programcounter.pc [20]),
    .Y(_807_)
);

FILL SFILL38760x25050 (
);

DFFPOSX1 _12966_ (
    .Q(\datapath.csr.mvect [27]),
    .CLK(CLK_bF$buf15),
    .D(\datapath.csr._13_ [27])
);

NAND2X1 _12546_ (
    .A(\controlunit.csrfile_trap_wen_bF$buf0 ),
    .B(\datapath.csr.csr_mepc [20]),
    .Y(_2732_)
);

OAI21X1 _12126_ (
    .A(\datapath.alu.b_4_bF$buf2 ),
    .B(_948_),
    .C(_1559_),
    .Y(_1560_)
);

BUFX2 BUFX2_insert630 (
    .A(\controlunit.csrfile_trap_wen ),
    .Y(\controlunit.csrfile_trap_wen_bF$buf6 )
);

BUFX2 BUFX2_insert631 (
    .A(\controlunit.csrfile_trap_wen ),
    .Y(\controlunit.csrfile_trap_wen_bF$buf5 )
);

BUFX2 BUFX2_insert632 (
    .A(\controlunit.csrfile_trap_wen ),
    .Y(\controlunit.csrfile_trap_wen_bF$buf4 )
);

BUFX2 BUFX2_insert633 (
    .A(\controlunit.csrfile_trap_wen ),
    .Y(\controlunit.csrfile_trap_wen_bF$buf3 )
);

BUFX2 BUFX2_insert634 (
    .A(\controlunit.csrfile_trap_wen ),
    .Y(\controlunit.csrfile_trap_wen_bF$buf2 )
);

BUFX2 BUFX2_insert635 (
    .A(\controlunit.csrfile_trap_wen ),
    .Y(\controlunit.csrfile_trap_wen_bF$buf1 )
);

MUX2X1 _17584_ (
    .A(\datapath.registers.828[15] [8]),
    .B(\datapath.registers.828[14] [8]),
    .S(\datapath.idinstr_20_bF$buf46 ),
    .Y(_7472_)
);

NAND2X1 _17164_ (
    .A(_5681__bF$buf10),
    .B(_7060_),
    .Y(_7061_)
);

BUFX2 BUFX2_insert636 (
    .A(\controlunit.csrfile_trap_wen ),
    .Y(\controlunit.csrfile_trap_wen_bF$buf0 )
);

NAND2X1 _9086_ (
    .A(gnd),
    .B(\datapath.idpc_4 [27]),
    .Y(_886_)
);

INVX1 _10612_ (
    .A(\datapath.alu.b [31]),
    .Y(_951_)
);

AOI21X1 _18789_ (
    .A(_4695__bF$buf0),
    .B(_8565__bF$buf7),
    .C(_8577_),
    .Y(_4246_)
);

NAND2X1 _18369_ (
    .A(_7092__bF$buf6),
    .B(_8238_),
    .Y(_8239_)
);

OAI21X1 _13084_ (
    .A(_3046_),
    .B(_0__1_bF$buf5),
    .C(_3047_),
    .Y(_3048_)
);

DFFPOSX1 _19730_ (
    .Q(\datapath.registers.828[16] [2]),
    .CLK(CLK_bF$buf127),
    .D(_3882_)
);

DFFPOSX1 _19310_ (
    .Q(\datapath.registers.828[2] [30]),
    .CLK(CLK_bF$buf5),
    .D(_4363_)
);

OAI21X1 _11817_ (
    .A(_979_),
    .B(_2302_),
    .C(_1109_),
    .Y(_1229_)
);

NOR2X1 _14289_ (
    .A(\datapath.registers.828[18] [1]),
    .B(_4886__bF$buf2),
    .Y(_4888_)
);

OAI21X1 _15650_ (
    .A(_5614__bF$buf1),
    .B(_4699__bF$buf3),
    .C(_5628_),
    .Y(_4408_)
);

AOI21X1 _15230_ (
    .A(_4683__bF$buf2),
    .B(_5402__bF$buf6),
    .C(_5408_),
    .Y(_4527_)
);

FILL SFILL58840x17050 (
);

MUX2X1 _16855_ (
    .A(\datapath.registers.828[31] [24]),
    .B(\datapath.registers.828[29] [24]),
    .S(\datapath.idinstr_16_bF$buf34 ),
    .Y(_6759_)
);

NAND2X1 _16435_ (
    .A(\datapath.idinstr_17_bF$buf8 ),
    .B(_6347_),
    .Y(_6348_)
);

AOI21X1 _16015_ (
    .A(_5937_),
    .B(_5930_),
    .C(_5685__bF$buf6),
    .Y(_5938_)
);

AND2X2 _11990_ (
    .A(_1775_),
    .B(_1776_),
    .Y(_1415_)
);

OAI21X1 _11570_ (
    .A(_964_),
    .B(\datapath.alu.b_3_bF$buf5 ),
    .C(_956_),
    .Y(_965_)
);

NAND2X1 _11150_ (
    .A(_994__bF$buf5),
    .B(_1951_),
    .Y(_2118_)
);

NOR2X1 _8777_ (
    .A(_112_),
    .B(_109_),
    .Y(\controlunit.mret )
);

OR2X2 _12775_ (
    .A(_2887_),
    .B(_2900_),
    .Y(_2901_)
);

NOR2X1 _12355_ (
    .A(\datapath.meminstr [31]),
    .B(_2591_),
    .Y(_2592_)
);

FILL SFILL69320x42050 (
);

NOR2X1 _14921_ (
    .A(\datapath.registers.828[10] [22]),
    .B(_5212__bF$buf6),
    .Y(_5243_)
);

OAI21X1 _14501_ (
    .A(_5004__bF$buf3),
    .B(_4840__bF$buf1),
    .C(\datapath.registers.828[15] [0]),
    .Y(_5005_)
);

NAND2X1 _17393_ (
    .A(_7089__bF$buf7),
    .B(_7284_),
    .Y(_7285_)
);

NOR2X1 _15706_ (
    .A(\datapath.registers.828[30] [9]),
    .B(_5647__bF$buf5),
    .Y(_5657_)
);

INVX1 _10841_ (
    .A(_1811_),
    .Y(_1812_)
);

DFFPOSX1 _10421_ (
    .Q(\datapath.aluinstr [3]),
    .CLK(CLK_bF$buf37),
    .D(\datapath.idinstr [3])
);

DFFPOSX1 _10001_ (
    .Q(\datapath.regcwb [23]),
    .CLK(CLK_bF$buf51),
    .D(_0_[23])
);

NAND2X1 _18598_ (
    .A(_7089__bF$buf7),
    .B(_8462_),
    .Y(_8463_)
);

MUX2X1 _18178_ (
    .A(\datapath.registers.828[1] [21]),
    .B(\datapath.registers.828[0] [21]),
    .S(\datapath.idinstr_20_bF$buf52 ),
    .Y(_8053_)
);

FILL SFILL83800x51050 (
);

FILL SFILL3400x55050 (
);

AOI21X1 _11626_ (
    .A(\datapath.alu.b_3_bF$buf5 ),
    .B(_2220_),
    .C(_1841_),
    .Y(_1025_)
);

AOI21X1 _11206_ (
    .A(_2170_),
    .B(_2171_),
    .C(_1907_),
    .Y(_2172_)
);

AOI21X1 _14098_ (
    .A(_4693__bF$buf1),
    .B(_4772__bF$buf1),
    .C(_4783_),
    .Y(_4053_)
);

FILL SFILL3000x41050 (
);

FILL SFILL63800x2050 (
);

FILL SFILL63720x7050 (
);

FILL SFILL3400x10050 (
);

MUX2X1 _16664_ (
    .A(\datapath.registers.828[19] [20]),
    .B(\datapath.registers.828[17] [20]),
    .S(\datapath.idinstr_16_bF$buf20 ),
    .Y(_6572_)
);

MUX2X1 _16244_ (
    .A(\datapath.registers.828[5] [10]),
    .B(\datapath.registers.828[4] [10]),
    .S(\datapath.idinstr_15_bF$buf33 ),
    .Y(_6162_)
);

FILL SFILL3320x17050 (
);

FILL SFILL28760x18050 (
);

OAI21X1 _17869_ (
    .A(_7749_),
    .B(\datapath.idinstr_22_bF$buf23 ),
    .C(_7750_),
    .Y(_7751_)
);

INVX1 _17449_ (
    .A(\datapath.registers.828[25] [5]),
    .Y(_7340_)
);

MUX2X1 _17029_ (
    .A(\datapath.registers.828[23] [28]),
    .B(\datapath.registers.828[21] [28]),
    .S(\datapath.idinstr_16_bF$buf42 ),
    .Y(_6929_)
);

NAND2X1 _12584_ (
    .A(_2761_),
    .B(_2672__bF$buf2),
    .Y(_2762_)
);

OAI21X1 _12164_ (
    .A(_1726_),
    .B(_1727_),
    .C(_1598_),
    .Y(_1600_)
);

NAND2X1 _18810_ (
    .A(\datapath.rd [22]),
    .B(_8565__bF$buf4),
    .Y(_8588_)
);

FILL SFILL18360x47050 (
);

FILL SFILL33160x53050 (
);

XNOR2X1 _13789_ (
    .A(_3572_),
    .B(\datapath.programcounter.pc [24]),
    .Y(\datapath.nextpc [24])
);

OAI21X1 _13369_ (
    .A(_3263_),
    .B(_3081_),
    .C(_3267_),
    .Y(\datapath.memdataload [3])
);

FILL SFILL33560x22050 (
);

OAI21X1 _14730_ (
    .A(_4677__bF$buf3),
    .B(_5132__bF$buf6),
    .C(_5135_),
    .Y(_3754_)
);

AOI21X1 _14310_ (
    .A(_4693__bF$buf2),
    .B(_4886__bF$buf6),
    .C(_4899_),
    .Y(_3925_)
);

FILL SFILL73880x9050 (
);

MUX2X1 _15935_ (
    .A(\datapath.registers.828[9] [4]),
    .B(\datapath.registers.828[8] [4]),
    .S(\datapath.idinstr_15_bF$buf24 ),
    .Y(_5859_)
);

OAI21X1 _15515_ (
    .A(_5038__bF$buf5),
    .B(_4668__bF$buf2),
    .C(\datapath.registers.828[2] [12]),
    .Y(_5559_)
);

NOR2X1 _10650_ (
    .A(\datapath.alu.b [6]),
    .B(_1348_),
    .Y(_1359_)
);

DFFPOSX1 _10230_ (
    .Q(\datapath.csr.csr_mepc [7]),
    .CLK(CLK_bF$buf115),
    .D(\datapath.alupc [7])
);

NAND3X1 _11855_ (
    .A(_1693_),
    .B(_1247_),
    .C(_1233_),
    .Y(_1270_)
);

NOR2X1 _11435_ (
    .A(\datapath.alu.b [9]),
    .B(_1964_),
    .Y(_2396_)
);

NAND2X1 _11015_ (
    .A(_994__bF$buf1),
    .B(_1984_),
    .Y(_1985_)
);

FILL SFILL53720x52050 (
);

NAND2X1 _16893_ (
    .A(_5681__bF$buf6),
    .B(_6795_),
    .Y(_6796_)
);

MUX2X1 _16473_ (
    .A(\datapath.registers.828[27] [16]),
    .B(\datapath.registers.828[26] [16]),
    .S(\datapath.idinstr_15_bF$buf27 ),
    .Y(_6385_)
);

NAND2X1 _16053_ (
    .A(_5971_),
    .B(_5974_),
    .Y(_5975_)
);

FILL SFILL53640x14050 (
);

AOI21X1 _17678_ (
    .A(_7559_),
    .B(_7563_),
    .C(_7093__bF$buf5),
    .Y(_7564_)
);

NAND2X1 _17258_ (
    .A(_7089__bF$buf2),
    .B(_7152_),
    .Y(_7153_)
);

INVX2 _12393_ (
    .A(\datapath.csr.mvect [10]),
    .Y(_2620_)
);

FILL SFILL43720x50050 (
);

FILL SFILL43480x7050 (
);

AOI21X1 _10706_ (
    .A(_1519_),
    .B(_1674_),
    .C(_1676_),
    .Y(_1677_)
);

NOR2X1 _13598_ (
    .A(\datapath._36_ ),
    .B(_3426_),
    .Y(_3427_)
);

INVX1 _13178_ (
    .A(DMEM_DATA_L[17]),
    .Y(_3127_)
);

DFFPOSX1 _19824_ (
    .Q(\datapath.registers.828[3] [0]),
    .CLK(CLK_bF$buf61),
    .D(_4436_)
);

DFFPOSX1 _19404_ (
    .Q(\datapath.registers.828[8] [28]),
    .CLK(CLK_bF$buf118),
    .D(_4616_)
);

NOR2X1 _15744_ (
    .A(\datapath.registers.828[30] [28]),
    .B(_5647__bF$buf2),
    .Y(_5676_)
);

NAND2X1 _15324_ (
    .A(\datapath.registers.828[24] [19]),
    .B(_5437__bF$buf4),
    .Y(_5457_)
);

AOI21X1 _16949_ (
    .A(\datapath.registers.828[22] [26]),
    .B(\datapath.idinstr_17_bF$buf7 ),
    .C(\datapath.idinstr_15_bF$buf0 ),
    .Y(_6851_)
);

MUX2X1 _16529_ (
    .A(_6439_),
    .B(_6438_),
    .S(\datapath.idinstr_16_bF$buf25 ),
    .Y(_6440_)
);

FILL SFILL33240x41050 (
);

NAND2X1 _16109_ (
    .A(\datapath.idinstr_17_bF$buf8 ),
    .B(_6029_),
    .Y(_6030_)
);

NOR2X1 _11664_ (
    .A(_1209__bF$buf1),
    .B(_1065_),
    .Y(_1066_)
);

AOI22X1 _11244_ (
    .A(_1209__bF$buf4),
    .B(_2209_),
    .C(_2202_),
    .D(_1872_),
    .Y(_2210_)
);

FILL SFILL79000x58050 (
);

FILL SFILL33640x10050 (
);

FILL SFILL38600x3050 (
);

OAI21X1 _9812_ (
    .A(_660_),
    .B(_669_),
    .C(_671_),
    .Y(_672_)
);

FILL SFILL13560x1050 (
);

OAI21X1 _12869_ (
    .A(_2962_),
    .B(_2474_),
    .C(_2662_),
    .Y(_2477_)
);

FILL SFILL13480x6050 (
);

MUX2X1 _12449_ (
    .A(_2656_),
    .B(_2657_),
    .S(_2602__bF$buf0),
    .Y(\datapath.csr._13_ [28])
);

OAI21X1 _12029_ (
    .A(\datapath.alu.b_0_bF$buf0 ),
    .B(\datapath.alu.a [26]),
    .C(_1456_),
    .Y(_1457_)
);

FILL SFILL63800x42050 (
);

NOR2X1 _13810_ (
    .A(_3588_),
    .B(_3572_),
    .Y(_3590_)
);

FILL SFILL23640x53050 (
);

OAI21X1 _16282_ (
    .A(_6194_),
    .B(_6195_),
    .C(_6198_),
    .Y(_6199_)
);

FILL SFILL79000x13050 (
);

FILL SFILL63720x49050 (
);

NAND3X1 _17487_ (
    .A(\datapath.idinstr_21_bF$buf5 ),
    .B(_7376_),
    .C(_7374_),
    .Y(_7377_)
);

NAND2X1 _17067_ (
    .A(_5681__bF$buf2),
    .B(_6965_),
    .Y(_6966_)
);

FILL SFILL23560x15050 (
);

NAND3X1 _10935_ (
    .A(_1904_),
    .B(_1898_),
    .C(_1905_),
    .Y(_1906_)
);

DFFPOSX1 _10515_ (
    .Q(\datapath.idinstr [1]),
    .CLK(CLK_bF$buf98),
    .D(\datapath._05_ [1])
);

DFFPOSX1 _19633_ (
    .Q(\datapath.registers.828[26] [1]),
    .CLK(CLK_bF$buf125),
    .D(_4223_)
);

DFFPOSX1 _19213_ (
    .Q(\datapath.registers.828[19] [29]),
    .CLK(CLK_bF$buf148),
    .D(_3977_)
);

FILL SFILL53720x47050 (
);

MUX2X1 _15973_ (
    .A(\datapath.registers.828[19] [4]),
    .B(\datapath.registers.828[18] [4]),
    .S(\datapath.idinstr_15_bF$buf54 ),
    .Y(_5897_)
);

OAI21X1 _15553_ (
    .A(_5038__bF$buf1),
    .B(_4668__bF$buf5),
    .C(\datapath.registers.828[2] [31]),
    .Y(_5578_)
);

OAI21X1 _15133_ (
    .A(_5336__bF$buf0),
    .B(_4840__bF$buf0),
    .C(\datapath.registers.828[7] [22]),
    .Y(_5359_)
);

FILL SFILL78920x51050 (
);

FILL SFILL13560x13050 (
);

NAND2X1 _16758_ (
    .A(_6661_),
    .B(_6663_),
    .Y(_6664_)
);

AOI21X1 _16338_ (
    .A(_6231_),
    .B(_6253_),
    .C(_5687__bF$buf4),
    .Y(\datapath.registers.rega_data [12])
);

NAND3X1 _11893_ (
    .A(_1298_),
    .B(_1798_),
    .C(_1310_),
    .Y(_1311_)
);

AND2X2 _11473_ (
    .A(_2432_),
    .B(_2332_),
    .Y(_2433_)
);

NAND2X1 _11053_ (
    .A(\datapath.alu.b_1_bF$buf6 ),
    .B(_1866_),
    .Y(_2022_)
);

NAND3X1 _9621_ (
    .A(_507_),
    .B(_508_),
    .C(_506_),
    .Y(\datapath.muxaval [29])
);

NAND2X1 _9201_ (
    .A(\datapath.meminstr [5]),
    .B(_186_),
    .Y(_187_)
);

OAI21X1 _12678_ (
    .A(_2797__bF$buf6),
    .B(\datapath.csr.csr_wdata [27]),
    .C(_2783__bF$buf1),
    .Y(_2825_)
);

AOI22X1 _12258_ (
    .A(_2500__bF$buf3),
    .B(\datapath.csr.mvect [6]),
    .C(\datapath.csr.mepc [4]),
    .D(_2507__bF$buf2),
    .Y(_2521_)
);

NAND2X1 _18904_ (
    .A(\datapath.rd [4]),
    .B(_8631__bF$buf2),
    .Y(_8636_)
);

AOI21X1 _16091_ (
    .A(_6007_),
    .B(_6011_),
    .C(\datapath.idinstr_18_bF$buf4 ),
    .Y(_6012_)
);

FILL SFILL33720x43050 (
);

AOI21X1 _14824_ (
    .A(_4699__bF$buf2),
    .B(_5167__bF$buf7),
    .C(_5186_),
    .Y(_3704_)
);

AOI21X1 _14404_ (
    .A(_4713__bF$buf2),
    .B(_4924__bF$buf5),
    .C(_4951_),
    .Y(_3904_)
);

FILL SFILL73800x39050 (
);

MUX2X1 _17296_ (
    .A(\datapath.registers.828[18] [2]),
    .B(\datapath.registers.828[16] [2]),
    .S(\datapath.idinstr_21_bF$buf32 ),
    .Y(_7190_)
);

OAI21X1 _15609_ (
    .A(_5579__bF$buf0),
    .B(_4725__bF$buf2),
    .C(_5606_),
    .Y(_4006_)
);

NAND2X1 _10744_ (
    .A(_1712_),
    .B(_1714_),
    .Y(_1715_)
);

DFFPOSX1 _10324_ (
    .Q(\datapath.regrs2alu [5]),
    .CLK(CLK_bF$buf77),
    .D(\datapath.registers.regb_data [5])
);

DFFPOSX1 _20002_ (
    .Q(\datapath.registers.828[25] [18]),
    .CLK(CLK_bF$buf91),
    .D(_4189_)
);

DFFPOSX1 _19862_ (
    .Q(\datapath.registers.828[1] [6]),
    .CLK(CLK_bF$buf12),
    .D(_4016_)
);

DFFPOSX1 _19442_ (
    .Q(\datapath.registers.828[23] [2]),
    .CLK(CLK_bF$buf117),
    .D(_4138_)
);

DFFPOSX1 _19022_ (
    .Q(\datapath.registers.828[18] [30]),
    .CLK(CLK_bF$buf149),
    .D(_3947_)
);

FILL SFILL58840x54050 (
);

NOR2X1 _11949_ (
    .A(_1684_),
    .B(_1689_),
    .Y(_1371_)
);

MUX2X1 _11529_ (
    .A(_920_),
    .B(_2349_),
    .S(_1123__bF$buf2),
    .Y(_921_)
);

OAI21X1 _11109_ (
    .A(_2074_),
    .B(_2076_),
    .C(\datapath.alu.b_3_bF$buf4 ),
    .Y(_2077_)
);

FILL SFILL63800x37050 (
);

OAI21X1 _15782_ (
    .A(_5255_),
    .B(\datapath.idinstr_17_bF$buf9 ),
    .C(_5709_),
    .Y(_5710_)
);

OAI21X1 _15362_ (
    .A(_4683__bF$buf0),
    .B(_5470__bF$buf2),
    .C(_5476_),
    .Y(_4495_)
);

FILL SFILL8680x47050 (
);

FILL SFILL8280x33050 (
);

FILL SFILL84280x28050 (
);

AOI21X1 _16987_ (
    .A(\datapath.idinstr_15_bF$buf37 ),
    .B(_6887_),
    .C(_5684__bF$buf7),
    .Y(_6888_)
);

INVX1 _16567_ (
    .A(\datapath.registers.828[15] [18]),
    .Y(_6477_)
);

OAI21X1 _16147_ (
    .A(_5224_),
    .B(\datapath.idinstr_17_bF$buf2 ),
    .C(_6066_),
    .Y(_6067_)
);

NAND2X1 _11282_ (
    .A(\datapath.alu.b_2_bF$buf4 ),
    .B(_2030_),
    .Y(_2247_)
);

FILL SFILL48840x52050 (
);

FILL SFILL53800x35050 (
);

NAND2X1 _9850_ (
    .A(_703_),
    .B(_697_),
    .Y(_706_)
);

NAND2X1 _9430_ (
    .A(\datapath.registers.regb_data [15]),
    .B(_318__bF$buf3),
    .Y(_364_)
);

INVX1 _9010_ (
    .A(\datapath.nextpc [2]),
    .Y(_835_)
);

OAI21X1 _12487_ (
    .A(_2685_),
    .B(\controlunit.csrfile_trap_wen_bF$buf6 ),
    .C(_2686_),
    .Y(\datapath.csr._26_ [4])
);

OAI21X1 _12067_ (
    .A(_1490_),
    .B(_1901_),
    .C(_1496_),
    .Y(_1497_)
);

OAI21X1 _18713_ (
    .A(_4685__bF$buf3),
    .B(_8531__bF$buf2),
    .C(_8538_),
    .Y(_4304_)
);

DFFPOSX1 _19918_ (
    .Q(\datapath.registers.828[29] [30]),
    .CLK(CLK_bF$buf112),
    .D(_4331_)
);

NAND2X1 _14633_ (
    .A(\datapath.rd [23]),
    .B(_5039__bF$buf0),
    .Y(_5082_)
);

NOR2X1 _14213_ (
    .A(\datapath.registers.828[19] [1]),
    .B(_4842__bF$buf5),
    .Y(_4844_)
);

FILL SFILL78920x46050 (
);

FILL SFILL43800x33050 (
);

MUX2X1 _15838_ (
    .A(_5764_),
    .B(_5763_),
    .S(\datapath.idinstr_16_bF$buf44 ),
    .Y(_5765_)
);

NOR2X1 _15418_ (
    .A(\datapath.registers.828[3] [1]),
    .B(_5503__bF$buf3),
    .Y(_5505_)
);

INVX2 _10973_ (
    .A(\datapath.alu.a [1]),
    .Y(_1943_)
);

DFFPOSX1 _10553_ (
    .Q(\datapath.idpc_4 [7]),
    .CLK(CLK_bF$buf47),
    .D(\datapath._04_ [7])
);

DFFPOSX1 _10133_ (
    .Q(_0_[11]),
    .CLK(CLK_bF$buf77),
    .D(\datapath.alu.c [11])
);

DFFPOSX1 _19671_ (
    .Q(\datapath.registers.828[27] [7]),
    .CLK(CLK_bF$buf133),
    .D(_4273_)
);

DFFPOSX1 _19251_ (
    .Q(\datapath.registers.828[22] [3]),
    .CLK(CLK_bF$buf128),
    .D(_4109_)
);

BUFX2 _8701_ (
    .A(_1_[5]),
    .Y(DMEM_DATA_S[5])
);

NAND2X1 _11758_ (
    .A(_2010_),
    .B(_2013_),
    .Y(_1167_)
);

AOI21X1 _11338_ (
    .A(_2294_),
    .B(_2230_),
    .C(_2290_),
    .Y(_2301_)
);

FILL SFILL68920x44050 (
);

OAI21X1 _15591_ (
    .A(_5579__bF$buf2),
    .B(_4707__bF$buf0),
    .C(_5597_),
    .Y(_3996_)
);

AOI21X1 _15171_ (
    .A(_4689__bF$buf2),
    .B(_5369__bF$buf6),
    .C(_5378_),
    .Y(_4562_)
);

XNOR2X1 _9906_ (
    .A(\datapath.alupc [31]),
    .B(\datapath.regimmalu [31]),
    .Y(_757_)
);

NAND2X1 _13904_ (
    .A(_4661_),
    .B(_4662_),
    .Y(_4664_)
);

MUX2X1 _16796_ (
    .A(\datapath.registers.828[7] [23]),
    .B(\datapath.registers.828[6] [23]),
    .S(\datapath.idinstr_15_bF$buf34 ),
    .Y(_6701_)
);

MUX2X1 _16376_ (
    .A(_6290_),
    .B(_6289_),
    .S(_5681__bF$buf9),
    .Y(_6291_)
);

OAI21X1 _11091_ (
    .A(_1753_),
    .B(\datapath.alu.b_0_bF$buf0 ),
    .C(_2058_),
    .Y(_2059_)
);

FILL SFILL58920x42050 (
);

OAI21X1 _12296_ (
    .A(_2548_),
    .B(_2490__bF$buf0),
    .C(_2549_),
    .Y(\datapath.csr.csr_data [15])
);

NAND2X1 _18942_ (
    .A(\datapath.rd [23]),
    .B(_8631__bF$buf2),
    .Y(_8655_)
);

AOI21X1 _18522_ (
    .A(_8388_),
    .B(_8387_),
    .C(_7091__bF$buf1),
    .Y(_8389_)
);

MUX2X1 _18102_ (
    .A(_7977_),
    .B(_7976_),
    .S(\datapath.idinstr_21_bF$buf14 ),
    .Y(_7978_)
);

DFFPOSX1 _10609_ (
    .Q(\datapath.idpc [31]),
    .CLK(CLK_bF$buf3),
    .D(\datapath._03_ [31])
);

FILL SFILL58440x35050 (
);

DFFPOSX1 _19727_ (
    .Q(\datapath.registers.828[0] [31]),
    .CLK(CLK_bF$buf52),
    .D(_3660_)
);

DFFPOSX1 _19307_ (
    .Q(\datapath.registers.828[2] [27]),
    .CLK(CLK_bF$buf134),
    .D(_4359_)
);

NOR2X1 _14862_ (
    .A(\datapath.registers.828[11] [30]),
    .B(_5167__bF$buf5),
    .Y(_5208_)
);

OAI21X1 _14442_ (
    .A(_4681__bF$buf3),
    .B(_4968__bF$buf4),
    .C(_4973_),
    .Y(_3886_)
);

AOI21X1 _14022_ (
    .A(_4683__bF$buf3),
    .B(_4738__bF$buf6),
    .C(_4744_),
    .Y(_4111_)
);

OAI21X1 _15647_ (
    .A(_4840__bF$buf5),
    .B(_5612__bF$buf3),
    .C(\datapath.registers.828[31] [12]),
    .Y(_5627_)
);

NOR2X1 _15227_ (
    .A(\datapath.registers.828[5] [4]),
    .B(_5402__bF$buf3),
    .Y(_5407_)
);

INVX2 _10782_ (
    .A(\datapath.alu.a [25]),
    .Y(_1753_)
);

DFFPOSX1 _10362_ (
    .Q(\datapath.alu.b [11]),
    .CLK(CLK_bF$buf113),
    .D(\datapath.muxbval [11])
);

FILL SFILL48840x47050 (
);

DFFPOSX1 _19480_ (
    .Q(\datapath.registers.828[5] [8]),
    .CLK(CLK_bF$buf88),
    .D(_4530_)
);

DFFPOSX1 _19060_ (
    .Q(\datapath.registers.828[10] [4]),
    .CLK(CLK_bF$buf56),
    .D(_3694_)
);

NAND2X1 _8930_ (
    .A(gnd),
    .B(\datapath.idpc [7]),
    .Y(_782_)
);

AOI21X1 _11987_ (
    .A(_1403_),
    .B(_1382_),
    .C(_1757_),
    .Y(_1411_)
);

NAND2X1 _11567_ (
    .A(_959_),
    .B(_960_),
    .Y(_961_)
);

NAND2X1 _11147_ (
    .A(\datapath.alu.b_1_bF$buf5 ),
    .B(_1953_),
    .Y(_2115_)
);

FILL SFILL13240x27050 (
);

NOR2X1 _9715_ (
    .A(_585_),
    .B(_586_),
    .Y(_587_)
);

NAND3X1 _13713_ (
    .A(_3512_),
    .B(_3513_),
    .C(_3511_),
    .Y(\datapath.programcounter.pc_mux [15])
);

NAND2X1 _16185_ (
    .A(_5684__bF$buf6),
    .B(_6103_),
    .Y(_6104_)
);

FILL SFILL38440x31050 (
);

FILL SFILL83880x40050 (
);

AOI21X1 _14918_ (
    .A(_4713__bF$buf4),
    .B(_5212__bF$buf5),
    .C(_5241_),
    .Y(_3680_)
);

OAI21X1 _18751_ (
    .A(_4723__bF$buf4),
    .B(_8531__bF$buf3),
    .C(_8557_),
    .Y(_4293_)
);

AOI21X1 _18331_ (
    .A(_8197_),
    .B(_8201_),
    .C(_7093__bF$buf7),
    .Y(_8202_)
);

INVX1 _10838_ (
    .A(alusel[0]),
    .Y(_1809_)
);

DFFPOSX1 _10418_ (
    .Q(\datapath.aluinstr [0]),
    .CLK(CLK_bF$buf0),
    .D(\datapath.idinstr [0])
);

DFFPOSX1 _19956_ (
    .Q(\datapath.registers.828[6] [4]),
    .CLK(CLK_bF$buf145),
    .D(_4558_)
);

DFFPOSX1 _19536_ (
    .Q(\datapath.registers.828[12] [0]),
    .CLK(CLK_bF$buf105),
    .D(_3732_)
);

DFFPOSX1 _19116_ (
    .Q(\datapath.registers.828[14] [28]),
    .CLK(CLK_bF$buf105),
    .D(_3816_)
);

AOI21X1 _14671_ (
    .A(_4683__bF$buf4),
    .B(_5099__bF$buf3),
    .C(_5105_),
    .Y(_3791_)
);

AOI21X1 _14251_ (
    .A(_4707__bF$buf3),
    .B(_4842__bF$buf4),
    .C(_4865_),
    .Y(_3964_)
);

AOI21X1 _15876_ (
    .A(\datapath.registers.828[14] [2]),
    .B(\datapath.idinstr_17_bF$buf5 ),
    .C(\datapath.idinstr_15_bF$buf38 ),
    .Y(_5802_)
);

AOI21X1 _15456_ (
    .A(_4707__bF$buf0),
    .B(_5503__bF$buf2),
    .C(_5526_),
    .Y(_4444_)
);

OAI21X1 _15036_ (
    .A(_4687__bF$buf4),
    .B(_5300__bF$buf7),
    .C(_5308_),
    .Y(_4625_)
);

DFFPOSX1 _10591_ (
    .Q(\datapath.idpc [13]),
    .CLK(CLK_bF$buf3),
    .D(\datapath._03_ [13])
);

DFFPOSX1 _10171_ (
    .Q(\datapath.meminstr [10]),
    .CLK(CLK_bF$buf73),
    .D(\datapath.aluinstr [10])
);

NAND3X1 _11796_ (
    .A(_1205_),
    .B(_1206_),
    .C(_1132_),
    .Y(_1207_)
);

NOR2X1 _11376_ (
    .A(_2306_),
    .B(_1889__bF$buf2),
    .Y(_2339_)
);

OAI21X1 _17602_ (
    .A(_7475_),
    .B(_7489_),
    .C(_7088__bF$buf2),
    .Y(_7490_)
);

DFFPOSX1 _9944_ (
    .Q(\datapath.regcsrwb [30]),
    .CLK(CLK_bF$buf11),
    .D(\datapath.csr.csr_wdata [30])
);

NAND2X1 _9524_ (
    .A(\datapath.csr.csr_data [5]),
    .B(_417__bF$buf1),
    .Y(_436_)
);

NAND2X1 _9104_ (
    .A(gnd),
    .B(\datapath.idinstr [1]),
    .Y(_898_)
);

AOI21X1 _18807_ (
    .A(_4713__bF$buf3),
    .B(_8565__bF$buf2),
    .C(_8586_),
    .Y(_4256_)
);

AOI21X1 _13942_ (
    .A(_4691__bF$buf0),
    .B(_4673__bF$buf5),
    .C(_4692_),
    .Y(_4147_)
);

NOR2X1 _13522_ (
    .A(gnd),
    .B(\datapath.programcounter.pc_mux [8]),
    .Y(_3375_)
);

FILL SFILL18360x50 (
);

NAND2X1 _13102_ (
    .A(\datapath.memoryinterface.data_store [5]),
    .B(_3031__bF$buf2),
    .Y(_3063_)
);

BUFX2 BUFX2_insert1160 (
    .A(_2797_),
    .Y(_2797__bF$buf1)
);

BUFX2 BUFX2_insert1161 (
    .A(_2797_),
    .Y(_2797__bF$buf0)
);

BUFX2 BUFX2_insert1162 (
    .A(_7089_),
    .Y(_7089__bF$buf10)
);

BUFX2 BUFX2_insert1163 (
    .A(_7089_),
    .Y(_7089__bF$buf9)
);

BUFX2 BUFX2_insert1164 (
    .A(_7089_),
    .Y(_7089__bF$buf8)
);

BUFX2 BUFX2_insert1165 (
    .A(_7089_),
    .Y(_7089__bF$buf7)
);

BUFX2 BUFX2_insert1166 (
    .A(_7089_),
    .Y(_7089__bF$buf6)
);

BUFX2 BUFX2_insert1167 (
    .A(_7089_),
    .Y(_7089__bF$buf5)
);

BUFX2 BUFX2_insert1168 (
    .A(_7089_),
    .Y(_7089__bF$buf4)
);

BUFX2 BUFX2_insert1169 (
    .A(_7089_),
    .Y(_7089__bF$buf3)
);

NAND2X1 _14727_ (
    .A(\datapath.registers.828[12] [1]),
    .B(_5132__bF$buf4),
    .Y(_5134_)
);

NAND2X1 _14307_ (
    .A(\datapath.rd [9]),
    .B(_4886__bF$buf1),
    .Y(_4898_)
);

BUFX2 BUFX2_insert980 (
    .A(\datapath.idinstr_22_hier0_bF$buf3 ),
    .Y(\datapath.idinstr_22_bF$buf35 )
);

BUFX2 BUFX2_insert981 (
    .A(\datapath.idinstr_22_hier0_bF$buf2 ),
    .Y(\datapath.idinstr_22_bF$buf34 )
);

BUFX2 BUFX2_insert982 (
    .A(\datapath.idinstr_22_hier0_bF$buf1 ),
    .Y(\datapath.idinstr_22_bF$buf33 )
);

FILL SFILL48520x21050 (
);

BUFX2 BUFX2_insert983 (
    .A(\datapath.idinstr_22_hier0_bF$buf5 ),
    .Y(\datapath.idinstr_22_bF$buf32 )
);

BUFX2 BUFX2_insert984 (
    .A(\datapath.idinstr_22_hier0_bF$buf4 ),
    .Y(\datapath.idinstr_22_bF$buf31 )
);

BUFX2 BUFX2_insert985 (
    .A(\datapath.idinstr_22_hier0_bF$buf3 ),
    .Y(\datapath.idinstr_22_bF$buf30 )
);

NOR2X1 _17199_ (
    .A(_7090_),
    .B(_7094_),
    .Y(_7095_)
);

BUFX2 BUFX2_insert986 (
    .A(\datapath.idinstr_22_hier0_bF$buf3 ),
    .Y(\datapath.idinstr_22_bF$buf29 )
);

BUFX2 BUFX2_insert987 (
    .A(\datapath.idinstr_22_hier0_bF$buf4 ),
    .Y(\datapath.idinstr_22_bF$buf28 )
);

BUFX2 BUFX2_insert988 (
    .A(\datapath.idinstr_22_hier0_bF$buf0 ),
    .Y(\datapath.idinstr_22_bF$buf27 )
);

BUFX2 BUFX2_insert989 (
    .A(\datapath.idinstr_22_hier0_bF$buf1 ),
    .Y(\datapath.idinstr_22_bF$buf26 )
);

BUFX2 _18980_ (
    .A(\datapath.registers.828[0] [20]),
    .Y(_3648_)
);

MUX2X1 _18560_ (
    .A(_8425_),
    .B(_8424_),
    .S(\datapath.idinstr_21_bF$buf37 ),
    .Y(_8426_)
);

OAI21X1 _18140_ (
    .A(_8001_),
    .B(_8015_),
    .C(_7088__bF$buf2),
    .Y(_8016_)
);

INVX2 _10647_ (
    .A(\datapath.alu.a [7]),
    .Y(_1327_)
);

DFFPOSX1 _10227_ (
    .Q(\datapath.csr.csr_mepc [4]),
    .CLK(CLK_bF$buf110),
    .D(\datapath.alupc [4])
);

DFFPOSX1 _19765_ (
    .Q(\datapath.registers.828[30] [5]),
    .CLK(CLK_bF$buf112),
    .D(_4399_)
);

DFFPOSX1 _19345_ (
    .Q(\datapath.registers.828[7] [1]),
    .CLK(CLK_bF$buf42),
    .D(_4575_)
);

OAI21X1 _14480_ (
    .A(_4719__bF$buf1),
    .B(_4968__bF$buf3),
    .C(_4992_),
    .Y(_3875_)
);

AOI21X1 _14060_ (
    .A(_4721__bF$buf0),
    .B(_4738__bF$buf7),
    .C(_4763_),
    .Y(_4100_)
);

OAI21X1 _15685_ (
    .A(_4840__bF$buf3),
    .B(_5612__bF$buf3),
    .C(\datapath.registers.828[31] [31]),
    .Y(_5646_)
);

NOR2X1 _15265_ (
    .A(\datapath.registers.828[5] [23]),
    .B(_5402__bF$buf3),
    .Y(_5426_)
);

FILL SFILL48680x2050 (
);

NAND2X1 _11185_ (
    .A(_1987_),
    .B(_2151_),
    .Y(_2152_)
);

FILL SFILL28920x31050 (
);

MUX2X1 _17831_ (
    .A(\datapath.registers.828[7] [14]),
    .B(\datapath.registers.828[6] [14]),
    .S(\datapath.idinstr_20_bF$buf51 ),
    .Y(_7713_)
);

MUX2X1 _17411_ (
    .A(\datapath.registers.828[7] [4]),
    .B(\datapath.registers.828[6] [4]),
    .S(\datapath.idinstr_20_bF$buf43 ),
    .Y(_7303_)
);

NOR2X1 _9753_ (
    .A(\datapath.alupc [15]),
    .B(\datapath.regimmalu [15]),
    .Y(_620_)
);

NAND2X1 _9333_ (
    .A(\datapath.regcsrwb [24]),
    .B(_216__bF$buf0),
    .Y(_291_)
);

NAND2X1 _18616_ (
    .A(\datapath.idinstr_22_bF$buf7 ),
    .B(_8480_),
    .Y(_8481_)
);

NAND2X1 _13751_ (
    .A(\datapath.programcounter.pc [18]),
    .B(\datapath.programcounter.pc [19]),
    .Y(_3543_)
);

OAI21X1 _13331_ (
    .A(_3169_),
    .B(_3239__bF$buf2),
    .C(_3240_),
    .Y(\datapath.memoryinterface.byte_size_store.storebyte [24])
);

FILL SFILL18520x60050 (
);

FILL SFILL73880x33050 (
);

NOR2X1 _14956_ (
    .A(\datapath.registers.828[9] [4]),
    .B(_5257__bF$buf1),
    .Y(_5264_)
);

OAI21X1 _14536_ (
    .A(_5003__bF$buf2),
    .B(_4707__bF$buf2),
    .C(_5022_),
    .Y(_3836_)
);

AOI21X1 _14116_ (
    .A(_4711__bF$buf2),
    .B(_4772__bF$buf4),
    .C(_4792_),
    .Y(_4062_)
);

FILL SFILL79160x40050 (
);

FILL SFILL18680x1050 (
);

FILL SFILL79080x47050 (
);

OAI21X1 _10876_ (
    .A(_1671_),
    .B(\datapath.alu.b_0_bF$buf6 ),
    .C(_1846_),
    .Y(_1847_)
);

DFFPOSX1 _10456_ (
    .Q(\datapath.alupc_4 [6]),
    .CLK(CLK_bF$buf9),
    .D(\datapath.idpc_4 [6])
);

FILL SFILL18440x22050 (
);

DFFPOSX1 _10036_ (
    .Q(\datapath.wbpc_4 [10]),
    .CLK(CLK_bF$buf104),
    .D(\datapath.mempc_4 [10])
);

FILL SFILL63880x31050 (
);

DFFPOSX1 _19994_ (
    .Q(\datapath.registers.828[25] [10]),
    .CLK(CLK_bF$buf72),
    .D(_4181_)
);

DFFPOSX1 _19574_ (
    .Q(\datapath.registers.828[21] [6]),
    .CLK(CLK_bF$buf22),
    .D(_4080_)
);

DFFPOSX1 _19154_ (
    .Q(\datapath.registers.828[15] [2]),
    .CLK(CLK_bF$buf59),
    .D(_3850_)
);

OAI21X1 _12602_ (
    .A(_2775_),
    .B(\controlunit.csrfile_trap_wen_bF$buf5 ),
    .C(_2776_),
    .Y(\datapath.csr._26_ [29])
);

OAI21X1 _15494_ (
    .A(_5546__bF$buf3),
    .B(_4675__bF$buf4),
    .C(_5548_),
    .Y(_4351_)
);

OAI21X1 _15074_ (
    .A(_4725__bF$buf3),
    .B(_5300__bF$buf1),
    .C(_5327_),
    .Y(_4614_)
);

NAND2X1 _9809_ (
    .A(_668_),
    .B(_663_),
    .Y(_669_)
);

NOR2X1 _13807_ (
    .A(_3406_),
    .B(_3408_),
    .Y(_3587_)
);

NAND2X1 _16699_ (
    .A(_5684__bF$buf10),
    .B(_6605_),
    .Y(_6606_)
);

NAND2X1 _16279_ (
    .A(\datapath.registers.828[12] [11]),
    .B(_5681__bF$buf3),
    .Y(_6196_)
);

FILL SFILL38600x52050 (
);

AOI21X1 _17640_ (
    .A(\datapath.registers.828[21] [9]),
    .B(\datapath.idinstr_22_bF$buf3 ),
    .C(_7089__bF$buf2),
    .Y(_7527_)
);

OAI21X1 _17220_ (
    .A(_7104_),
    .B(_7115_),
    .C(\datapath.idinstr_24_bF$buf5 ),
    .Y(_7116_)
);

DFFPOSX1 _9982_ (
    .Q(\datapath.regcwb [4]),
    .CLK(CLK_bF$buf129),
    .D(_0_[4])
);

NAND2X1 _9562_ (
    .A(\datapath.registers.rega_data [15]),
    .B(_418__bF$buf2),
    .Y(_464_)
);

INVX1 _9142_ (
    .A(IMEM_DATA[14]),
    .Y(_146_)
);

NAND3X1 _12199_ (
    .A(_2054_),
    .B(_2166_),
    .C(_1637_),
    .Y(_1638_)
);

NOR2X1 _18845_ (
    .A(\datapath.registers.828[26] [7]),
    .B(_8598__bF$buf1),
    .Y(_8606_)
);

MUX2X1 _18425_ (
    .A(\datapath.registers.828[23] [27]),
    .B(\datapath.registers.828[21] [27]),
    .S(\datapath.idinstr_21_bF$buf24 ),
    .Y(_8294_)
);

FILL SFILL3480x8050 (
);

AOI21X1 _18005_ (
    .A(_7862_),
    .B(_7883_),
    .C(_7095__bF$buf4),
    .Y(\datapath.registers.regb_data [17])
);

NOR2X1 _13980_ (
    .A(\datapath.registers.828[23] [22]),
    .B(_4673__bF$buf3),
    .Y(_4718_)
);

INVX1 _13560_ (
    .A(\datapath.programcounter.pc [21]),
    .Y(_3400_)
);

OAI21X1 _13140_ (
    .A(_3091_),
    .B(_3081_),
    .C(_3095_),
    .Y(_1_[10])
);

FILL SFILL38520x14050 (
);

FILL SFILL28600x50050 (
);

NAND2X1 _14765_ (
    .A(\datapath.registers.828[12] [20]),
    .B(_5132__bF$buf1),
    .Y(_5153_)
);

NOR2X1 _14345_ (
    .A(\datapath.registers.828[18] [27]),
    .B(_4886__bF$buf7),
    .Y(_4918_)
);

FILL SFILL28520x57050 (
);

INVX1 _10685_ (
    .A(\datapath.alu.b [8]),
    .Y(_1656_)
);

DFFPOSX1 _10265_ (
    .Q(\datapath.regimmalu [10]),
    .CLK(CLK_bF$buf98),
    .D(\datapath.imm [10])
);

INVX1 _16911_ (
    .A(\datapath.registers.828[0] [25]),
    .Y(_6814_)
);

DFFPOSX1 _19383_ (
    .Q(\datapath.registers.828[8] [7]),
    .CLK(CLK_bF$buf114),
    .D(_4625_)
);

FILL SFILL28520x12050 (
);

OR2X2 _8833_ (
    .A(\datapath.aluinstr [13]),
    .B(\datapath.aluinstr [14]),
    .Y(_44_)
);

OAI21X1 _12831_ (
    .A(_2943_),
    .B(_2946_),
    .C(_2585__bF$buf2),
    .Y(_2947_)
);

INVX1 _12411_ (
    .A(\datapath.csr.mvect [16]),
    .Y(_2632_)
);

FILL SFILL73880x28050 (
);

NAND2X1 _9618_ (
    .A(\datapath.registers.rega_data [29]),
    .B(_418__bF$buf3),
    .Y(_506_)
);

NAND3X1 _13616_ (
    .A(_3439_),
    .B(_3440_),
    .C(_3438_),
    .Y(\datapath.programcounter.pc_mux [3])
);

FILL SFILL79160x35050 (
);

MUX2X1 _16088_ (
    .A(\datapath.registers.828[3] [7]),
    .B(\datapath.registers.828[2] [7]),
    .S(\datapath.idinstr_15_bF$buf46 ),
    .Y(_6009_)
);

FILL SFILL18520x10050 (
);

FILL SFILL63480x57050 (
);

XNOR2X1 _9791_ (
    .A(_649_),
    .B(_653_),
    .Y(\datapath.jumptarget [19])
);

FILL SFILL18440x17050 (
);

NAND2X1 _9371_ (
    .A(\datapath.immediatedecoder._06_ ),
    .B(_316__bF$buf2),
    .Y(_320_)
);

AOI21X1 _18654_ (
    .A(_4691__bF$buf4),
    .B(_8498__bF$buf5),
    .C(_8508_),
    .Y(_4339_)
);

MUX2X1 _18234_ (
    .A(_8106_),
    .B(_8105_),
    .S(\datapath.idinstr_21_bF$buf17 ),
    .Y(_8107_)
);

FILL SFILL84360x53050 (
);

DFFPOSX1 _19859_ (
    .Q(\datapath.registers.828[1] [3]),
    .CLK(CLK_bF$buf134),
    .D(_4013_)
);

DFFPOSX1 _19439_ (
    .Q(\datapath.registers.828[24] [31]),
    .CLK(CLK_bF$buf137),
    .D(_4172_)
);

DFFPOSX1 _19019_ (
    .Q(\datapath.registers.828[18] [27]),
    .CLK(CLK_bF$buf131),
    .D(_3943_)
);

NOR2X1 _14994_ (
    .A(\datapath.registers.828[9] [20]),
    .B(_5257__bF$buf1),
    .Y(_5286_)
);

AOI21X1 _14574_ (
    .A(_4677__bF$buf3),
    .B(_5039__bF$buf5),
    .C(_5043_),
    .Y(_3818_)
);

AOI21X1 _14154_ (
    .A(_4683__bF$buf3),
    .B(_4806__bF$buf5),
    .C(_4812_),
    .Y(_4047_)
);

AOI21X1 _15779_ (
    .A(_5701_),
    .B(_5706_),
    .C(\datapath.idinstr_18_bF$buf0 ),
    .Y(_5707_)
);

NAND2X1 _15359_ (
    .A(\datapath.registers.828[4] [4]),
    .B(_5470__bF$buf4),
    .Y(_5475_)
);

DFFPOSX1 _10494_ (
    .Q(\datapath.alupc [12]),
    .CLK(CLK_bF$buf55),
    .D(\datapath.idpc [12])
);

DFFPOSX1 _10074_ (
    .Q(\datapath.csr.csr_wdata [16]),
    .CLK(CLK_bF$buf96),
    .D(\datapath.regcsralu [16])
);

FILL SFILL38600x47050 (
);

NAND2X1 _16720_ (
    .A(_5684__bF$buf11),
    .B(_6626_),
    .Y(_6627_)
);

MUX2X1 _16300_ (
    .A(\datapath.registers.828[31] [12]),
    .B(\datapath.registers.828[30] [12]),
    .S(\datapath.idinstr_15_bF$buf9 ),
    .Y(_6216_)
);

FILL SFILL53480x10050 (
);

DFFPOSX1 _19192_ (
    .Q(\datapath.registers.828[19] [8]),
    .CLK(CLK_bF$buf93),
    .D(_3986_)
);

AOI21X1 _11699_ (
    .A(\datapath.alu.b_4_bF$buf1 ),
    .B(_1895_),
    .C(_1899_),
    .Y(_1104_)
);

MUX2X1 _11279_ (
    .A(_2019_),
    .B(_2024_),
    .S(\datapath.alu.b_2_bF$buf1 ),
    .Y(_2244_)
);

AOI21X1 _17925_ (
    .A(_7800_),
    .B(_7804_),
    .C(_7093__bF$buf1),
    .Y(_7805_)
);

OAI21X1 _17505_ (
    .A(_4931_),
    .B(\datapath.idinstr_22_bF$buf4 ),
    .C(_7394_),
    .Y(_7395_)
);

OAI21X1 _12640_ (
    .A(_2797__bF$buf3),
    .B(\datapath.csr.csr_wdata [9]),
    .C(_2783__bF$buf3),
    .Y(_2805_)
);

AND2X2 _12220_ (
    .A(_2488_),
    .B(_2486_),
    .Y(_2489_)
);

XOR2X1 _9847_ (
    .A(_699_),
    .B(_703_),
    .Y(\datapath.jumptarget [25])
);

NAND2X1 _9427_ (
    .A(\datapath.imm [14]),
    .B(_316__bF$buf3),
    .Y(_362_)
);

INVX1 _9007_ (
    .A(\datapath.programcounter.pc [1]),
    .Y(_833_)
);

FILL SFILL28600x45050 (
);

FILL SFILL59000x36050 (
);

OAI21X1 _13845_ (
    .A(_3610_),
    .B(_3616_),
    .C(_3418_),
    .Y(_3617_)
);

OAI21X1 _13425_ (
    .A(_3234_),
    .B(_0__1_bF$buf8),
    .C(_3313_),
    .Y(_3314_)
);

OAI21X1 _13005_ (
    .A(_3015_),
    .B(_3012_),
    .C(_3023_),
    .Y(\datapath.imm [16])
);

FILL SFILL28120x38050 (
);

OAI21X1 _9180_ (
    .A(_170_),
    .B(gnd),
    .C(_171_),
    .Y(\datapath._05_ [26])
);

NOR2X1 _18883_ (
    .A(\datapath.registers.828[26] [26]),
    .B(_8598__bF$buf0),
    .Y(_8625_)
);

NAND2X1 _18463_ (
    .A(_7089__bF$buf7),
    .B(_8330_),
    .Y(_8331_)
);

MUX2X1 _18043_ (
    .A(\datapath.registers.828[3] [18]),
    .B(\datapath.registers.828[2] [18]),
    .S(\datapath.idinstr_20_bF$buf6 ),
    .Y(_7921_)
);

OAI21X1 _11911_ (
    .A(_1330_),
    .B(_1329_),
    .C(_1209__bF$buf2),
    .Y(_1331_)
);

DFFPOSX1 _19668_ (
    .Q(\datapath.registers.828[27] [4]),
    .CLK(CLK_bF$buf112),
    .D(_4270_)
);

DFFPOSX1 _19248_ (
    .Q(\datapath.registers.828[22] [0]),
    .CLK(CLK_bF$buf79),
    .D(_4084_)
);

NAND2X1 _14383_ (
    .A(\datapath.rd [11]),
    .B(_4924__bF$buf6),
    .Y(_4940_)
);

FILL FILL83080x42050 (
);

OAI21X1 _15588_ (
    .A(_5098__bF$buf2),
    .B(_4668__bF$buf4),
    .C(\datapath.registers.828[1] [16]),
    .Y(_5596_)
);

NOR2X1 _15168_ (
    .A(\datapath.registers.828[6] [7]),
    .B(_5369__bF$buf4),
    .Y(_5377_)
);

FILL SFILL63960x14050 (
);

NAND2X1 _8871_ (
    .A(_75_),
    .B(_76_),
    .Y(_77_)
);

NAND2X1 _11088_ (
    .A(\datapath.alu.b_0_bF$buf0 ),
    .B(\datapath.alu.a [24]),
    .Y(_2056_)
);

MUX2X1 _17734_ (
    .A(\datapath.registers.828[26] [11]),
    .B(\datapath.registers.828[24] [11]),
    .S(\datapath.idinstr_21_bF$buf27 ),
    .Y(_7619_)
);

AOI21X1 _17314_ (
    .A(\datapath.registers.828[15] [2]),
    .B(\datapath.idinstr_22_bF$buf5 ),
    .C(_7089__bF$buf5),
    .Y(_7208_)
);

FILL SFILL8360x53050 (
);

OAI21X1 _9656_ (
    .A(_533_),
    .B(_531_),
    .C(_534_),
    .Y(_535_)
);

NOR2X1 _9236_ (
    .A(\controlunit.wb_sel [0]),
    .B(\controlunit.wb_sel [1]),
    .Y(_218_)
);

AOI21X1 _18939_ (
    .A(_4715__bF$buf4),
    .B(_8631__bF$buf7),
    .C(_8653_),
    .Y(_4193_)
);

OAI21X1 _18519_ (
    .A(_8384_),
    .B(\datapath.idinstr_22_bF$buf42 ),
    .C(_8385_),
    .Y(_8386_)
);

NAND3X1 _13654_ (
    .A(_3467_),
    .B(_3468_),
    .C(_3466_),
    .Y(\datapath.programcounter.pc_mux [8])
);

INVX1 _13234_ (
    .A(DMEM_DATA_L[25]),
    .Y(_3175_)
);

FILL SFILL53960x12050 (
);

OAI21X1 _14859_ (
    .A(_5205_),
    .B(_5167__bF$buf6),
    .C(_5206_),
    .Y(_3720_)
);

NAND2X1 _14439_ (
    .A(\datapath.registers.828[16] [3]),
    .B(_4968__bF$buf2),
    .Y(_4972_)
);

FILL SFILL3720x48050 (
);

NOR2X1 _14019_ (
    .A(\datapath.registers.828[22] [4]),
    .B(_4738__bF$buf2),
    .Y(_4743_)
);

NAND2X1 _15800_ (
    .A(\datapath.idinstr_17_bF$buf10 ),
    .B(_5727_),
    .Y(_5728_)
);

AOI21X1 _18692_ (
    .A(_4729__bF$buf2),
    .B(_8498__bF$buf2),
    .C(_8527_),
    .Y(_4328_)
);

INVX1 _18272_ (
    .A(\datapath.registers.828[16] [23]),
    .Y(_8145_)
);

NAND2X1 _10779_ (
    .A(\datapath.alu.a [26]),
    .B(\datapath.alu.b [26]),
    .Y(_1750_)
);

DFFPOSX1 _10359_ (
    .Q(\datapath.alu.b [8]),
    .CLK(CLK_bF$buf55),
    .D(\datapath.muxbval [8])
);

AOI21X1 _11720_ (
    .A(_1444_),
    .B(_1125_),
    .C(_1031_),
    .Y(_1126_)
);

NOR2X1 _11300_ (
    .A(_1359_),
    .B(_2263_),
    .Y(_2264_)
);

DFFPOSX1 _19897_ (
    .Q(\datapath.registers.828[29] [9]),
    .CLK(CLK_bF$buf106),
    .D(_4339_)
);

DFFPOSX1 _19477_ (
    .Q(\datapath.registers.828[5] [5]),
    .CLK(CLK_bF$buf128),
    .D(_4527_)
);

DFFPOSX1 _19057_ (
    .Q(\datapath.registers.828[10] [1]),
    .CLK(CLK_bF$buf2),
    .D(_3679_)
);

AOI21X1 _14192_ (
    .A(_4721__bF$buf3),
    .B(_4806__bF$buf1),
    .C(_4831_),
    .Y(_4036_)
);

NAND2X1 _8927_ (
    .A(gnd),
    .B(\datapath.idpc [6]),
    .Y(_780_)
);

FILL SFILL43880x17050 (
);

FILL SFILL63800x50 (
);

DFFPOSX1 _12925_ (
    .Q(\datapath.csr.mepc [19]),
    .CLK(CLK_bF$buf15),
    .D(\datapath.csr._26_ [19])
);

NAND2X1 _12505_ (
    .A(\controlunit.csrfile_trap_wen_bF$buf5 ),
    .B(\datapath.csr.csr_mepc [11]),
    .Y(_2700_)
);

NAND2X1 _15397_ (
    .A(\datapath.registers.828[4] [23]),
    .B(_5470__bF$buf1),
    .Y(_5494_)
);

BUFX2 _8680_ (
    .A(_0_[16]),
    .Y(DMEM_ADDR[16])
);

BUFX2 BUFX2_insert220 (
    .A(_4660_),
    .Y(_4660__bF$buf3)
);

BUFX2 BUFX2_insert221 (
    .A(_4660_),
    .Y(_4660__bF$buf2)
);

BUFX2 BUFX2_insert222 (
    .A(_4660_),
    .Y(_4660__bF$buf1)
);

BUFX2 BUFX2_insert223 (
    .A(_4660_),
    .Y(_4660__bF$buf0)
);

BUFX2 BUFX2_insert224 (
    .A(_4886_),
    .Y(_4886__bF$buf7)
);

MUX2X1 _17963_ (
    .A(\datapath.registers.828[25] [17]),
    .B(\datapath.registers.828[24] [17]),
    .S(\datapath.idinstr_20_bF$buf49 ),
    .Y(_7842_)
);

AOI21X1 _17543_ (
    .A(\datapath.registers.828[5] [7]),
    .B(\datapath.idinstr_22_bF$buf14 ),
    .C(_7089__bF$buf10),
    .Y(_7432_)
);

BUFX2 BUFX2_insert225 (
    .A(_4886_),
    .Y(_4886__bF$buf6)
);

BUFX2 BUFX2_insert226 (
    .A(_4886_),
    .Y(_4886__bF$buf5)
);

INVX1 _17123_ (
    .A(\datapath.registers.828[27] [30]),
    .Y(_7021_)
);

BUFX2 BUFX2_insert227 (
    .A(_4886_),
    .Y(_4886__bF$buf4)
);

BUFX2 BUFX2_insert228 (
    .A(_4886_),
    .Y(_4886__bF$buf3)
);

BUFX2 BUFX2_insert229 (
    .A(_4886_),
    .Y(_4886__bF$buf2)
);

INVX1 _9885_ (
    .A(_736_),
    .Y(_737_)
);

NAND3X1 _9465_ (
    .A(_389_),
    .B(_390_),
    .C(_388_),
    .Y(\datapath.muxbval [23])
);

OAI21X1 _9045_ (
    .A(_857_),
    .B(gnd),
    .C(_858_),
    .Y(\datapath._04_ [13])
);

FILL SFILL58680x50050 (
);

NAND2X1 _18748_ (
    .A(\datapath.registers.828[28] [24]),
    .B(_8531__bF$buf5),
    .Y(_8556_)
);

MUX2X1 _18328_ (
    .A(\datapath.registers.828[31] [25]),
    .B(\datapath.registers.828[30] [25]),
    .S(\datapath.idinstr_20_bF$buf22 ),
    .Y(_8199_)
);

DFFPOSX1 _13883_ (
    .Q(\datapath.programcounter.pc [15]),
    .CLK(CLK_bF$buf102),
    .D(\datapath.programcounter._1_ [15])
);

NAND3X1 _13463_ (
    .A(_3291__bF$buf2),
    .B(_3337_),
    .C(_3326_),
    .Y(\datapath.memdataload [27])
);

OAI21X1 _13043_ (
    .A(_3016_),
    .B(_2973_),
    .C(\datapath.idinstr [31]),
    .Y(_2995_)
);

FILL SFILL84120x60050 (
);

FILL SFILL23480x44050 (
);

FILL FILL83080x37050 (
);

NOR2X1 _14668_ (
    .A(\datapath.registers.828[13] [4]),
    .B(_5099__bF$buf2),
    .Y(_5104_)
);

NOR2X1 _14248_ (
    .A(\datapath.registers.828[19] [16]),
    .B(_4842__bF$buf7),
    .Y(_4864_)
);

AOI21X1 _18081_ (
    .A(\datapath.registers.828[28] [19]),
    .B(\datapath.idinstr_22_bF$buf38 ),
    .C(\datapath.idinstr_20_bF$buf28 ),
    .Y(_7958_)
);

DFFPOSX1 _10588_ (
    .Q(\datapath.idpc [10]),
    .CLK(CLK_bF$buf3),
    .D(\datapath._03_ [10])
);

DFFPOSX1 _10168_ (
    .Q(\datapath.meminstr [7]),
    .CLK(CLK_bF$buf61),
    .D(\datapath.aluinstr [7])
);

FILL SFILL84040x22050 (
);

OAI21X1 _16814_ (
    .A(\datapath.idinstr_17_bF$buf11 ),
    .B(_6717_),
    .C(_6718_),
    .Y(_6719_)
);

DFFPOSX1 _19286_ (
    .Q(\datapath.registers.828[2] [6]),
    .CLK(CLK_bF$buf85),
    .D(_4368_)
);

BUFX2 _8736_ (
    .A(\datapath.programcounter.pc [7]),
    .Y(IMEM_ADDR[7])
);

OAI22X1 _12734_ (
    .A(_2689_),
    .B(_2585__bF$buf0),
    .C(_2865_),
    .D(_2866_),
    .Y(\datapath.csr.csr_pcaddr [8])
);

OAI21X1 _12314_ (
    .A(_2560_),
    .B(_2490__bF$buf2),
    .C(_2561_),
    .Y(\datapath.csr.csr_data [21])
);

AOI21X1 _13939_ (
    .A(_4689__bF$buf0),
    .B(_4673__bF$buf4),
    .C(_4690_),
    .Y(_4146_)
);

NOR2X1 _13519_ (
    .A(gnd),
    .B(\datapath.programcounter.pc_mux [7]),
    .Y(_3373_)
);

MUX2X1 _17772_ (
    .A(\datapath.registers.828[5] [12]),
    .B(\datapath.registers.828[4] [12]),
    .S(\datapath.idinstr_20_bF$buf43 ),
    .Y(_7656_)
);

INVX1 _17352_ (
    .A(\datapath.registers.828[27] [3]),
    .Y(_7245_)
);

FILL SFILL78680x49050 (
);

NAND2X1 _9694_ (
    .A(_565_),
    .B(_567_),
    .Y(_568_)
);

NAND2X1 _9274_ (
    .A(\datapath.regloadwb [9]),
    .B(_213__bF$buf3),
    .Y(_247_)
);

FILL SFILL48600x6050 (
);

AOI22X1 _10800_ (
    .A(\datapath.alu.a [31]),
    .B(_951_),
    .C(_1770_),
    .D(_1732_),
    .Y(_1771_)
);

BUFX2 _18977_ (
    .A(\datapath.registers.828[0] [17]),
    .Y(_3644_)
);

NAND2X1 _18557_ (
    .A(\datapath.idinstr_22_bF$buf14 ),
    .B(_8422_),
    .Y(_8423_)
);

OAI21X1 _18137_ (
    .A(_8011_),
    .B(\datapath.idinstr_22_bF$buf26 ),
    .C(_8012_),
    .Y(_8013_)
);

NAND3X1 _13692_ (
    .A(_3495_),
    .B(_3496_),
    .C(_3494_),
    .Y(\datapath.programcounter.pc_mux [13])
);

NAND2X1 _13272_ (
    .A(_3033__bF$buf2),
    .B(_3207_),
    .Y(_3208_)
);

AOI21X1 _14897_ (
    .A(_4695__bF$buf2),
    .B(_5212__bF$buf5),
    .C(_5229_),
    .Y(_3670_)
);

NAND2X1 _14477_ (
    .A(\datapath.registers.828[16] [22]),
    .B(_4968__bF$buf2),
    .Y(_4991_)
);

NOR2X1 _14057_ (
    .A(\datapath.registers.828[22] [23]),
    .B(_4738__bF$buf3),
    .Y(_4762_)
);

DFFPOSX1 _10397_ (
    .Q(\datapath.alu.a [14]),
    .CLK(CLK_bF$buf113),
    .D(\datapath.muxaval [14])
);

MUX2X1 _16623_ (
    .A(\datapath.registers.828[22] [19]),
    .B(\datapath.registers.828[20] [19]),
    .S(\datapath.idinstr_16_bF$buf17 ),
    .Y(_6532_)
);

NAND3X1 _16203_ (
    .A(\datapath.idinstr_16_bF$buf43 ),
    .B(_6121_),
    .C(_6118_),
    .Y(_6122_)
);

DFFPOSX1 _19095_ (
    .Q(\datapath.registers.828[14] [7]),
    .CLK(CLK_bF$buf114),
    .D(_3825_)
);

INVX1 _8965_ (
    .A(\datapath.programcounter.pc [19]),
    .Y(_805_)
);

FILL SFILL58680x45050 (
);

MUX2X1 _17828_ (
    .A(_7709_),
    .B(_7708_),
    .S(\datapath.idinstr_21_bF$buf11 ),
    .Y(_7710_)
);

OAI21X1 _17408_ (
    .A(_7295_),
    .B(_7296_),
    .C(_7299_),
    .Y(_7300_)
);

DFFPOSX1 _12963_ (
    .Q(\datapath.csr.mvect [24]),
    .CLK(CLK_bF$buf96),
    .D(\datapath.csr._13_ [24])
);

INVX1 _12543_ (
    .A(\datapath.csr.mepc [18]),
    .Y(_2729_)
);

FILL SFILL58840x3050 (
);

AOI21X1 _12123_ (
    .A(\datapath.alu.b [29]),
    .B(_1555_),
    .C(_1556_),
    .Y(_1557_)
);

FILL FILL83160x25050 (
);

FILL SFILL84120x55050 (
);

FILL SFILL23480x39050 (
);

FILL SFILL58360x7050 (
);

NAND2X1 _13748_ (
    .A(\datapath.jumptarget [19]),
    .B(_3427__bF$buf2),
    .Y(_3541_)
);

OAI22X1 _13328_ (
    .A(_0__0_bF$buf0),
    .B(_3164_),
    .C(_3238_),
    .D(_3163_),
    .Y(\datapath.memoryinterface.byte_size_store.storebyte [23])
);

BUFX2 BUFX2_insert600 (
    .A(_3031_),
    .Y(_3031__bF$buf2)
);

BUFX2 BUFX2_insert601 (
    .A(_3031_),
    .Y(_3031__bF$buf1)
);

BUFX2 BUFX2_insert602 (
    .A(_3031_),
    .Y(_3031__bF$buf0)
);

BUFX2 BUFX2_insert603 (
    .A(_5212_),
    .Y(_5212__bF$buf7)
);

BUFX2 BUFX2_insert604 (
    .A(_5212_),
    .Y(_5212__bF$buf6)
);

BUFX2 BUFX2_insert605 (
    .A(_5212_),
    .Y(_5212__bF$buf5)
);

MUX2X1 _17581_ (
    .A(_7468_),
    .B(_7467_),
    .S(\datapath.idinstr_21_bF$buf16 ),
    .Y(_7469_)
);

FILL SFILL84120x10050 (
);

BUFX2 BUFX2_insert606 (
    .A(_5212_),
    .Y(_5212__bF$buf4)
);

AOI21X1 _17161_ (
    .A(\datapath.idinstr_15_bF$buf0 ),
    .B(_7057_),
    .C(\datapath.idinstr_17_bF$buf14 ),
    .Y(_7058_)
);

BUFX2 BUFX2_insert607 (
    .A(_5212_),
    .Y(_5212__bF$buf3)
);

BUFX2 BUFX2_insert608 (
    .A(_5212_),
    .Y(_5212__bF$buf2)
);

BUFX2 BUFX2_insert609 (
    .A(_5212_),
    .Y(_5212__bF$buf1)
);

FILL SFILL8440x36050 (
);

NAND2X1 _9083_ (
    .A(gnd),
    .B(\datapath.idpc_4 [26]),
    .Y(_884_)
);

FILL SFILL8040x22050 (
);

FILL SFILL84040x17050 (
);

NOR2X1 _18786_ (
    .A(\datapath.registers.828[27] [10]),
    .B(_8565__bF$buf5),
    .Y(_8576_)
);

MUX2X1 _18366_ (
    .A(\datapath.registers.828[25] [26]),
    .B(\datapath.registers.828[24] [26]),
    .S(\datapath.idinstr_20_bF$buf38 ),
    .Y(_8236_)
);

NAND2X1 _13081_ (
    .A(\datapath.memoryinterface.data_store [2]),
    .B(_3031__bF$buf2),
    .Y(_3045_)
);

NAND2X1 _11814_ (
    .A(_1705_),
    .B(_1710_),
    .Y(_1226_)
);

FILL SFILL78840x30050 (
);

NOR2X1 _14286_ (
    .A(_4669_),
    .B(_4885_),
    .Y(_4886_)
);

FILL SFILL28760x7050 (
);

FILL SFILL74040x15050 (
);

FILL SFILL8680x3050 (
);

NAND3X1 _16852_ (
    .A(\datapath.idinstr_16_bF$buf23 ),
    .B(_6755_),
    .C(_6752_),
    .Y(_6756_)
);

MUX2X1 _16432_ (
    .A(\datapath.registers.828[29] [15]),
    .B(\datapath.registers.828[28] [15]),
    .S(\datapath.idinstr_15_bF$buf52 ),
    .Y(_6345_)
);

FILL SFILL8280x2050 (
);

AOI21X1 _16012_ (
    .A(\datapath.registers.828[13] [5]),
    .B(\datapath.idinstr_15_bF$buf42 ),
    .C(\datapath.idinstr_16_bF$buf33 ),
    .Y(_5935_)
);

INVX1 _8774_ (
    .A(\datapath.meminstr [21]),
    .Y(_110_)
);

AOI21X1 _17637_ (
    .A(\datapath.registers.828[22] [9]),
    .B(\datapath.idinstr_22_bF$buf18 ),
    .C(\datapath.idinstr_20_bF$buf1 ),
    .Y(_7524_)
);

AOI21X1 _17217_ (
    .A(\datapath.idinstr_20_bF$buf21 ),
    .B(_7112_),
    .C(_7092__bF$buf1),
    .Y(_7113_)
);

OAI21X1 _12772_ (
    .A(_2896_),
    .B(_2897_),
    .C(_2630_),
    .Y(_2898_)
);

INVX1 _12352_ (
    .A(\datapath.meminstr [27]),
    .Y(_2589_)
);

DFFPOSX1 _9979_ (
    .Q(\datapath.regcwb [1]),
    .CLK(CLK_bF$buf34),
    .D(_0__1_bF$buf0)
);

FILL SFILL68760x35050 (
);

NAND2X1 _9559_ (
    .A(\datapath.idpc [14]),
    .B(_416__bF$buf2),
    .Y(_462_)
);

INVX1 _9139_ (
    .A(IMEM_DATA[13]),
    .Y(_144_)
);

NOR2X1 _13977_ (
    .A(\datapath.registers.828[23] [21]),
    .B(_4673__bF$buf1),
    .Y(_4716_)
);

INVX1 _13557_ (
    .A(\datapath.programcounter.pc [20]),
    .Y(_3398_)
);

NAND2X1 _13137_ (
    .A(_0__1_bF$buf5),
    .B(DMEM_DATA_L[10]),
    .Y(_3093_)
);

AOI21X1 _17390_ (
    .A(\datapath.idinstr_20_bF$buf8 ),
    .B(_7281_),
    .C(\datapath.idinstr_22_bF$buf20 ),
    .Y(_7282_)
);

AOI21X1 _15703_ (
    .A(_4687__bF$buf2),
    .B(_5647__bF$buf2),
    .C(_5655_),
    .Y(_4401_)
);

FILL SFILL2920x41050 (
);

FILL SFILL58760x33050 (
);

NAND2X1 _18595_ (
    .A(\datapath.idinstr_22_bF$buf24 ),
    .B(_8459_),
    .Y(_8460_)
);

MUX2X1 _18175_ (
    .A(\datapath.registers.828[7] [21]),
    .B(\datapath.registers.828[6] [21]),
    .S(\datapath.idinstr_20_bF$buf26 ),
    .Y(_8050_)
);

INVX1 _16908_ (
    .A(\datapath.registers.828[1] [25]),
    .Y(_6811_)
);

OAI21X1 _11623_ (
    .A(_1017_),
    .B(_1123__bF$buf2),
    .C(_1021_),
    .Y(_1022_)
);

OAI21X1 _11203_ (
    .A(_1155_),
    .B(_1252_),
    .C(_1220_),
    .Y(_2169_)
);

NOR2X1 _14095_ (
    .A(\datapath.registers.828[21] [9]),
    .B(_4772__bF$buf2),
    .Y(_4782_)
);

OAI22X1 _12828_ (
    .A(_2745_),
    .B(_2585__bF$buf2),
    .C(_2944_),
    .D(_2942_),
    .Y(\datapath.csr.csr_pcaddr [24])
);

INVX1 _12408_ (
    .A(\datapath.csr.mvect [15]),
    .Y(_2630_)
);

FILL SFILL48760x31050 (
);

AOI21X1 _16661_ (
    .A(_6564_),
    .B(_6568_),
    .C(_5685__bF$buf3),
    .Y(_6569_)
);

MUX2X1 _16241_ (
    .A(\datapath.registers.828[3] [10]),
    .B(\datapath.registers.828[2] [10]),
    .S(\datapath.idinstr_15_bF$buf33 ),
    .Y(_6159_)
);

FILL SFILL34040x52050 (
);

OAI21X1 _17866_ (
    .A(_7746_),
    .B(\datapath.idinstr_22_bF$buf42 ),
    .C(_7747_),
    .Y(_7748_)
);

AOI21X1 _17446_ (
    .A(\datapath.registers.828[30] [5]),
    .B(\datapath.idinstr_22_bF$buf35 ),
    .C(\datapath.idinstr_20_bF$buf49 ),
    .Y(_7337_)
);

NAND2X1 _17026_ (
    .A(_6923_),
    .B(_6925_),
    .Y(_6926_)
);

NAND2X1 _12581_ (
    .A(\controlunit.csrfile_trap_wen_bF$buf4 ),
    .B(\datapath.csr.csr_mepc [27]),
    .Y(_2760_)
);

INVX1 _12161_ (
    .A(_1597_),
    .Y(\datapath.alu.c [30])
);

NOR2X1 _9788_ (
    .A(\datapath.alupc [19]),
    .B(\datapath.regimmalu [19]),
    .Y(_651_)
);

NOR2X1 _9368_ (
    .A(bsel[0]),
    .B(_315_),
    .Y(_317_)
);

FILL SFILL78840x25050 (
);

NOR2X1 _13786_ (
    .A(_3551_),
    .B(_3569_),
    .Y(_3570_)
);

NAND2X1 _13366_ (
    .A(_0__1_bF$buf0),
    .B(DMEM_DATA_L[19]),
    .Y(_3265_)
);

FILL SFILL38680x36050 (
);

AOI21X1 _15932_ (
    .A(_5852_),
    .B(_5856_),
    .C(\datapath.idinstr_18_bF$buf2 ),
    .Y(_5857_)
);

OAI21X1 _15512_ (
    .A(_5546__bF$buf1),
    .B(_4693__bF$buf0),
    .C(_5557_),
    .Y(_4341_)
);

MUX2X1 _16717_ (
    .A(\datapath.registers.828[9] [21]),
    .B(\datapath.registers.828[8] [21]),
    .S(\datapath.idinstr_15_bF$buf14 ),
    .Y(_6624_)
);

AOI21X1 _11852_ (
    .A(_1236_),
    .B(_1083_),
    .C(_1228_),
    .Y(_1267_)
);

AOI21X1 _11432_ (
    .A(_2390_),
    .B(_2317_),
    .C(_2392_),
    .Y(_2393_)
);

NOR2X1 _11012_ (
    .A(_1906_),
    .B(_1981_),
    .Y(_1982_)
);

FILL SFILL28680x34050 (
);

DFFPOSX1 _19189_ (
    .Q(\datapath.registers.828[19] [5]),
    .CLK(CLK_bF$buf62),
    .D(_3983_)
);

INVX1 _12637_ (
    .A(\datapath.csr.mcause [8]),
    .Y(_2803_)
);

NOR2X1 _12217_ (
    .A(\datapath.idinstr_23_bF$buf0 ),
    .B(\datapath.idinstr_22_bF$buf1 ),
    .Y(_2486_)
);

AOI21X1 _16890_ (
    .A(\datapath.idinstr_15_bF$buf49 ),
    .B(_6792_),
    .C(\datapath.idinstr_17_bF$buf4 ),
    .Y(_6793_)
);

OAI21X1 _16470_ (
    .A(_6382_),
    .B(_6373_),
    .C(_5680__bF$buf4),
    .Y(_6383_)
);

NAND2X1 _16050_ (
    .A(\datapath.registers.828[18] [6]),
    .B(_5684__bF$buf9),
    .Y(_5972_)
);

FILL SFILL18680x32050 (
);

FILL SFILL58760x28050 (
);

MUX2X1 _17675_ (
    .A(\datapath.registers.828[15] [10]),
    .B(\datapath.registers.828[14] [10]),
    .S(\datapath.idinstr_20_bF$buf36 ),
    .Y(_7561_)
);

AOI21X1 _17255_ (
    .A(\datapath.idinstr_20_bF$buf1 ),
    .B(_7149_),
    .C(\datapath.idinstr_22_bF$buf20 ),
    .Y(_7150_)
);

INVX1 _12390_ (
    .A(\datapath.csr.mvect [9]),
    .Y(_2618_)
);

NAND3X1 _9597_ (
    .A(_489_),
    .B(_490_),
    .C(_488_),
    .Y(\datapath.muxaval [23])
);

OAI21X1 _9177_ (
    .A(_168_),
    .B(gnd),
    .C(_169_),
    .Y(\datapath._05_ [25])
);

INVX1 _10703_ (
    .A(_1673_),
    .Y(_1674_)
);

NOR2X1 _13595_ (
    .A(\datapath._34_ ),
    .B(\datapath._36_ ),
    .Y(_3424_)
);

NAND3X1 _13175_ (
    .A(\datapath.memoryinterface.byte_size_store.storebyte [16]),
    .B(_3027__bF$buf2),
    .C(_3029__bF$buf1),
    .Y(_3125_)
);

DFFPOSX1 _19821_ (
    .Q(\datapath.registers.828[13] [29]),
    .CLK(CLK_bF$buf57),
    .D(_3785_)
);

DFFPOSX1 _19401_ (
    .Q(\datapath.registers.828[8] [25]),
    .CLK(CLK_bF$buf21),
    .D(_4613_)
);

NAND2X1 _11908_ (
    .A(_1321_),
    .B(_1326_),
    .Y(_1328_)
);

FILL SFILL48760x26050 (
);

AOI21X1 _15741_ (
    .A(_4725__bF$buf0),
    .B(_5647__bF$buf1),
    .C(_5674_),
    .Y(_4390_)
);

OAI21X1 _15321_ (
    .A(_4707__bF$buf4),
    .B(_5437__bF$buf6),
    .C(_5455_),
    .Y(_4156_)
);

AOI21X1 _16946_ (
    .A(\datapath.registers.828[23] [26]),
    .B(\datapath.idinstr_17_bF$buf7 ),
    .C(_5681__bF$buf4),
    .Y(_6848_)
);

AOI21X1 _16526_ (
    .A(_6436_),
    .B(_6429_),
    .C(_5685__bF$buf0),
    .Y(_6437_)
);

MUX2X1 _16106_ (
    .A(\datapath.registers.828[31] [7]),
    .B(\datapath.registers.828[29] [7]),
    .S(\datapath.idinstr_16_bF$buf37 ),
    .Y(_6027_)
);

NAND2X1 _11661_ (
    .A(_1091__bF$buf1),
    .B(_1062_),
    .Y(_1063_)
);

OAI21X1 _11241_ (
    .A(_994__bF$buf1),
    .B(_2089_),
    .C(_2206_),
    .Y(_2207_)
);

NAND3X1 _8868_ (
    .A(\datapath.idinstr [6]),
    .B(\datapath.idinstr [5]),
    .C(\datapath.idinstr [4]),
    .Y(_74_)
);

FILL SFILL38760x24050 (
);

NAND2X1 _12866_ (
    .A(\datapath.csr.mvect [30]),
    .B(_2473_),
    .Y(_2474_)
);

MUX2X1 _12446_ (
    .A(_2654_),
    .B(_2655_),
    .S(_2602__bF$buf3),
    .Y(\datapath.csr._13_ [27])
);

OAI21X1 _12026_ (
    .A(_1442_),
    .B(_1451_),
    .C(_1452_),
    .Y(_1453_)
);

OAI21X1 _17484_ (
    .A(_5176_),
    .B(\datapath.idinstr_22_bF$buf32 ),
    .C(_7373_),
    .Y(_7374_)
);

NAND2X1 _17064_ (
    .A(\datapath.idinstr_17_bF$buf6 ),
    .B(_6962_),
    .Y(_6963_)
);

FILL SFILL3320x21050 (
);

FILL SFILL68840x18050 (
);

NAND2X1 _10932_ (
    .A(\datapath.alu.b_0_bF$buf7 ),
    .B(_1875_),
    .Y(_1903_)
);

DFFPOSX1 _10512_ (
    .Q(\datapath.alupc [30]),
    .CLK(CLK_bF$buf144),
    .D(\datapath.idpc [30])
);

NOR2X1 _18689_ (
    .A(\datapath.registers.828[29] [27]),
    .B(_8498__bF$buf1),
    .Y(_8526_)
);

NAND3X1 _18269_ (
    .A(\datapath.idinstr_21_bF$buf36 ),
    .B(_8141_),
    .C(_8139_),
    .Y(_8142_)
);

DFFPOSX1 _19630_ (
    .Q(\datapath.registers.828[9] [30]),
    .CLK(CLK_bF$buf92),
    .D(_4651_)
);

DFFPOSX1 _19210_ (
    .Q(\datapath.registers.828[19] [26]),
    .CLK(CLK_bF$buf89),
    .D(_3974_)
);

NOR2X1 _11717_ (
    .A(_1121_),
    .B(_1551_),
    .Y(_1122_)
);

NOR2X1 _14189_ (
    .A(\datapath.registers.828[20] [23]),
    .B(_4806__bF$buf7),
    .Y(_4830_)
);

NAND3X1 _15970_ (
    .A(_5683__bF$buf0),
    .B(_5893_),
    .C(_5890_),
    .Y(_5894_)
);

OAI21X1 _15550_ (
    .A(_5546__bF$buf3),
    .B(_4731__bF$buf1),
    .C(_5576_),
    .Y(_4361_)
);

OAI21X1 _15130_ (
    .A(_5335__bF$buf4),
    .B(_4713__bF$buf1),
    .C(_5357_),
    .Y(_4576_)
);

NAND2X1 _16755_ (
    .A(_5681__bF$buf6),
    .B(_6660_),
    .Y(_6661_)
);

NAND2X1 _16335_ (
    .A(_5684__bF$buf11),
    .B(_6250_),
    .Y(_6251_)
);

AOI21X1 _11890_ (
    .A(_1689_),
    .B(_1307_),
    .C(_1906_),
    .Y(_1308_)
);

AND2X2 _11470_ (
    .A(_2429_),
    .B(_1650_),
    .Y(_2430_)
);

OAI21X1 _11050_ (
    .A(_2017_),
    .B(_994__bF$buf2),
    .C(_2018_),
    .Y(_2019_)
);

BUFX2 _8677_ (
    .A(_0_[13]),
    .Y(DMEM_ADDR[13])
);

BUFX2 BUFX2_insert190 (
    .A(\datapath.idinstr_15_hier0_bF$buf4 ),
    .Y(\datapath.idinstr_15_bF$buf24 )
);

BUFX2 BUFX2_insert191 (
    .A(\datapath.idinstr_15_hier0_bF$buf0 ),
    .Y(\datapath.idinstr_15_bF$buf23 )
);

BUFX2 BUFX2_insert192 (
    .A(\datapath.idinstr_15_hier0_bF$buf3 ),
    .Y(\datapath.idinstr_15_bF$buf22 )
);

BUFX2 BUFX2_insert193 (
    .A(\datapath.idinstr_15_hier0_bF$buf5 ),
    .Y(\datapath.idinstr_15_bF$buf21 )
);

BUFX2 BUFX2_insert194 (
    .A(\datapath.idinstr_15_hier0_bF$buf1 ),
    .Y(\datapath.idinstr_15_bF$buf20 )
);

BUFX2 BUFX2_insert195 (
    .A(\datapath.idinstr_15_hier0_bF$buf6 ),
    .Y(\datapath.idinstr_15_bF$buf19 )
);

BUFX2 BUFX2_insert196 (
    .A(\datapath.idinstr_15_hier0_bF$buf1 ),
    .Y(\datapath.idinstr_15_bF$buf18 )
);

BUFX2 BUFX2_insert197 (
    .A(\datapath.idinstr_15_hier0_bF$buf5 ),
    .Y(\datapath.idinstr_15_bF$buf17 )
);

BUFX2 BUFX2_insert198 (
    .A(\datapath.idinstr_15_hier0_bF$buf3 ),
    .Y(\datapath.idinstr_15_bF$buf16 )
);

BUFX2 BUFX2_insert199 (
    .A(\datapath.idinstr_15_hier0_bF$buf4 ),
    .Y(\datapath.idinstr_15_bF$buf15 )
);

AOI21X1 _12675_ (
    .A(_2568_),
    .B(_2797__bF$buf4),
    .C(_2823_),
    .Y(\datapath.csr._32_ [25])
);

AOI22X1 _12255_ (
    .A(_2500__bF$buf3),
    .B(\datapath.csr.mvect [5]),
    .C(\datapath.csr.mepc [3]),
    .D(_2507__bF$buf2),
    .Y(_2519_)
);

AOI21X1 _18901_ (
    .A(_4677__bF$buf0),
    .B(_8631__bF$buf0),
    .C(_8634_),
    .Y(_4202_)
);

NOR2X1 _14821_ (
    .A(\datapath.registers.828[11] [12]),
    .B(_5167__bF$buf0),
    .Y(_5185_)
);

NOR2X1 _14401_ (
    .A(\datapath.registers.828[17] [19]),
    .B(_4924__bF$buf5),
    .Y(_4950_)
);

MUX2X1 _17293_ (
    .A(_7186_),
    .B(_7185_),
    .S(\datapath.idinstr_21_bF$buf22 ),
    .Y(_7187_)
);

OAI21X1 _15606_ (
    .A(_5098__bF$buf4),
    .B(_4668__bF$buf2),
    .C(\datapath.registers.828[1] [25]),
    .Y(_5605_)
);

NAND2X1 _10741_ (
    .A(\datapath.alu.a [17]),
    .B(\datapath.alu.b [17]),
    .Y(_1712_)
);

DFFPOSX1 _10321_ (
    .Q(\datapath.regrs2alu [2]),
    .CLK(CLK_bF$buf3),
    .D(\datapath.registers.regb_data [2])
);

MUX2X1 _18498_ (
    .A(_8364_),
    .B(_8363_),
    .S(\datapath.idinstr_21_bF$buf42 ),
    .Y(_8365_)
);

AOI21X1 _18078_ (
    .A(\datapath.registers.828[29] [19]),
    .B(\datapath.idinstr_22_bF$buf16 ),
    .C(_7089__bF$buf4),
    .Y(_7955_)
);

FILL SFILL83800x50050 (
);

FILL SFILL38760x19050 (
);

AOI21X1 _11946_ (
    .A(_1340_),
    .B(_1342_),
    .C(_1367_),
    .Y(_1368_)
);

OAI21X1 _11526_ (
    .A(\datapath.alu.b_0_bF$buf6 ),
    .B(\datapath.alu.a [12]),
    .C(_917_),
    .Y(_918_)
);

AOI21X1 _11106_ (
    .A(_2072_),
    .B(_2073_),
    .C(\datapath.alu.b_2_bF$buf2 ),
    .Y(_2074_)
);

FILL SFILL63800x1050 (
);

FILL SFILL28360x48050 (
);

MUX2X1 _16984_ (
    .A(\datapath.registers.828[22] [27]),
    .B(\datapath.registers.828[20] [27]),
    .S(\datapath.idinstr_16_bF$buf42 ),
    .Y(_6885_)
);

MUX2X1 _16564_ (
    .A(\datapath.registers.828[11] [18]),
    .B(\datapath.registers.828[10] [18]),
    .S(\datapath.idinstr_15_bF$buf11 ),
    .Y(_6474_)
);

AOI21X1 _16144_ (
    .A(\datapath.registers.828[15] [8]),
    .B(\datapath.idinstr_17_bF$buf2 ),
    .C(_5681__bF$buf5),
    .Y(_6064_)
);

FILL SFILL3320x16050 (
);

FILL SFILL28760x17050 (
);

FILL SFILL43560x23050 (
);

AOI21X1 _17769_ (
    .A(_7652_),
    .B(_7651_),
    .C(_7092__bF$buf5),
    .Y(_7653_)
);

NAND2X1 _17349_ (
    .A(_7092__bF$buf0),
    .B(_7241_),
    .Y(_7242_)
);

NAND2X1 _12484_ (
    .A(_2683_),
    .B(_2672__bF$buf5),
    .Y(_2684_)
);

AOI22X1 _12064_ (
    .A(_1478_),
    .B(_1911_),
    .C(_2042_),
    .D(\datapath.alu.a [27]),
    .Y(_1494_)
);

NAND2X1 _18710_ (
    .A(\datapath.registers.828[28] [5]),
    .B(_8531__bF$buf6),
    .Y(_8537_)
);

OAI21X1 _13689_ (
    .A(_3492_),
    .B(_3493_),
    .C(_3424__bF$buf4),
    .Y(_3494_)
);

INVX1 _13269_ (
    .A(DMEM_DATA_L[30]),
    .Y(_3205_)
);

DFFPOSX1 _19915_ (
    .Q(\datapath.registers.828[29] [27]),
    .CLK(CLK_bF$buf132),
    .D(_4327_)
);

FILL SFILL33560x21050 (
);

NAND2X1 _14630_ (
    .A(\datapath.rd [22]),
    .B(_5039__bF$buf2),
    .Y(_5080_)
);

AND2X2 _14210_ (
    .A(_4841_),
    .B(_4839_),
    .Y(_4842_)
);

FILL SFILL59000x9050 (
);

AOI21X1 _15835_ (
    .A(_5761_),
    .B(_5755_),
    .C(_5685__bF$buf1),
    .Y(_5762_)
);

NOR2X1 _15415_ (
    .A(_4668__bF$buf6),
    .B(_4840__bF$buf2),
    .Y(_5503_)
);

MUX2X1 _10970_ (
    .A(_1939_),
    .B(_1930_),
    .S(\datapath.alu.b_2_bF$buf5 ),
    .Y(_1940_)
);

DFFPOSX1 _10550_ (
    .Q(\datapath.idpc_4 [4]),
    .CLK(CLK_bF$buf81),
    .D(\datapath._04_ [4])
);

FILL SFILL33320x4050 (
);

DFFPOSX1 _10130_ (
    .Q(_0_[8]),
    .CLK(CLK_bF$buf9),
    .D(\datapath.alu.c [8])
);

AOI21X1 _11755_ (
    .A(_1723_),
    .B(_1129_),
    .C(_1790_),
    .Y(_1163_)
);

NAND3X1 _11335_ (
    .A(_2260_),
    .B(_2267_),
    .C(_2298_),
    .Y(\datapath.alu.c [7])
);

FILL SFILL53720x51050 (
);

INVX1 _9903_ (
    .A(_739_),
    .Y(_755_)
);

INVX2 _13901_ (
    .A(\datapath.wbinstr [8]),
    .Y(_4661_)
);

OAI21X1 _16793_ (
    .A(_6693_),
    .B(_6694_),
    .C(_6697_),
    .Y(_6698_)
);

AOI21X1 _16373_ (
    .A(_6281_),
    .B(_6287_),
    .C(\datapath.idinstr_18_bF$buf7 ),
    .Y(_6288_)
);

FILL SFILL53640x13050 (
);

BUFX2 BUFX2_insert570 (
    .A(_4697_),
    .Y(_4697__bF$buf3)
);

BUFX2 BUFX2_insert571 (
    .A(_4697_),
    .Y(_4697__bF$buf2)
);

BUFX2 BUFX2_insert572 (
    .A(_4697_),
    .Y(_4697__bF$buf1)
);

BUFX2 BUFX2_insert573 (
    .A(_4697_),
    .Y(_4697__bF$buf0)
);

BUFX2 BUFX2_insert574 (
    .A(_5503_),
    .Y(_5503__bF$buf7)
);

NAND2X1 _17998_ (
    .A(\datapath.idinstr_22_bF$buf16 ),
    .B(_7876_),
    .Y(_7877_)
);

OAI21X1 _17578_ (
    .A(_7454_),
    .B(_7465_),
    .C(\datapath.idinstr_24_bF$buf2 ),
    .Y(_7466_)
);

BUFX2 BUFX2_insert575 (
    .A(_5503_),
    .Y(_5503__bF$buf6)
);

MUX2X1 _17158_ (
    .A(\datapath.registers.828[18] [31]),
    .B(\datapath.registers.828[16] [31]),
    .S(\datapath.idinstr_16_bF$buf40 ),
    .Y(_7055_)
);

BUFX2 BUFX2_insert576 (
    .A(_5503_),
    .Y(_5503__bF$buf5)
);

BUFX2 BUFX2_insert577 (
    .A(_5503_),
    .Y(_5503__bF$buf4)
);

BUFX2 BUFX2_insert578 (
    .A(_5503_),
    .Y(_5503__bF$buf3)
);

BUFX2 BUFX2_insert579 (
    .A(_5503_),
    .Y(_5503__bF$buf2)
);

OAI21X1 _12293_ (
    .A(_2546_),
    .B(_2490__bF$buf3),
    .C(_2547_),
    .Y(\datapath.csr.csr_data [14])
);

FILL SFILL59320x34050 (
);

FILL SFILL83800x45050 (
);

DFFPOSX1 _10606_ (
    .Q(\datapath.idpc [28]),
    .CLK(CLK_bF$buf122),
    .D(\datapath._03_ [28])
);

NAND2X1 _13498_ (
    .A(\datapath.programcounter.pc [0]),
    .B(gnd),
    .Y(_3360_)
);

NAND2X1 _13078_ (
    .A(_3033__bF$buf0),
    .B(_3042_),
    .Y(_3043_)
);

DFFPOSX1 _19724_ (
    .Q(\datapath.registers.828[0] [28]),
    .CLK(CLK_bF$buf61),
    .D(_3656_)
);

DFFPOSX1 _19304_ (
    .Q(\datapath.registers.828[2] [24]),
    .CLK(CLK_bF$buf88),
    .D(_4356_)
);

OAI21X1 _15644_ (
    .A(_5614__bF$buf0),
    .B(_4693__bF$buf2),
    .C(_5625_),
    .Y(_4405_)
);

AOI21X1 _15224_ (
    .A(_4677__bF$buf2),
    .B(_5402__bF$buf1),
    .C(_5405_),
    .Y(_4522_)
);

FILL SFILL43560x18050 (
);

INVX1 _16849_ (
    .A(\datapath.registers.828[2] [24]),
    .Y(_6753_)
);

MUX2X1 _16429_ (
    .A(\datapath.registers.828[27] [15]),
    .B(\datapath.registers.828[26] [15]),
    .S(\datapath.idinstr_15_bF$buf4 ),
    .Y(_6342_)
);

NOR2X1 _16009_ (
    .A(_5931_),
    .B(_5681__bF$buf0),
    .Y(_5932_)
);

NAND2X1 _11984_ (
    .A(_1408_),
    .B(_1406_),
    .Y(_1409_)
);

OAI21X1 _11564_ (
    .A(_1668_),
    .B(\datapath.alu.b_0_bF$buf1 ),
    .C(_1968_),
    .Y(_958_)
);

MUX2X1 _11144_ (
    .A(_2111_),
    .B(_2108_),
    .S(_1123__bF$buf1),
    .Y(_2112_)
);

FILL SFILL79000x57050 (
);

XNOR2X1 _9712_ (
    .A(_582_),
    .B(_584_),
    .Y(\datapath.jumptarget [9])
);

NAND2X1 _12769_ (
    .A(\datapath.csr.mepc [13]),
    .B(\controlunit.mret_bF$buf4 ),
    .Y(_2895_)
);

FILL SFILL13480x5050 (
);

NAND2X1 _12349_ (
    .A(\datapath.allowcsrwrite ),
    .B(_2585__bF$buf3),
    .Y(_2586_)
);

FILL SFILL33560x16050 (
);

OAI21X1 _13710_ (
    .A(_3510_),
    .B(_3508_),
    .C(_3424__bF$buf4),
    .Y(_3511_)
);

FILL SFILL23640x52050 (
);

MUX2X1 _16182_ (
    .A(\datapath.registers.828[9] [9]),
    .B(\datapath.registers.828[8] [9]),
    .S(\datapath.idinstr_15_bF$buf36 ),
    .Y(_6101_)
);

NAND2X1 _14915_ (
    .A(\datapath.rd [19]),
    .B(_5212__bF$buf1),
    .Y(_5240_)
);

FILL SFILL84280x32050 (
);

MUX2X1 _17387_ (
    .A(\datapath.registers.828[18] [4]),
    .B(\datapath.registers.828[16] [4]),
    .S(\datapath.idinstr_21_bF$buf43 ),
    .Y(_7279_)
);

FILL SFILL23560x14050 (
);

NAND2X1 _10835_ (
    .A(_1805_),
    .B(_1785_),
    .Y(_1806_)
);

DFFPOSX1 _10415_ (
    .Q(\datapath.aluexecptions [0]),
    .CLK(CLK_bF$buf103),
    .D(\controlunit.ill_op )
);

DFFPOSX1 _19953_ (
    .Q(\datapath.registers.828[6] [1]),
    .CLK(CLK_bF$buf23),
    .D(_4543_)
);

DFFPOSX1 _19533_ (
    .Q(\datapath.registers.828[11] [29]),
    .CLK(CLK_bF$buf92),
    .D(_3721_)
);

DFFPOSX1 _19113_ (
    .Q(\datapath.registers.828[14] [25]),
    .CLK(CLK_bF$buf90),
    .D(_3813_)
);

FILL SFILL13560x57050 (
);

FILL SFILL13160x43050 (
);

NAND2X1 _15873_ (
    .A(_5795_),
    .B(_5798_),
    .Y(_5799_)
);

NAND2X1 _15453_ (
    .A(\datapath.rd [16]),
    .B(_5503__bF$buf5),
    .Y(_5525_)
);

NAND2X1 _15033_ (
    .A(\datapath.registers.828[8] [6]),
    .B(_5300__bF$buf1),
    .Y(_5307_)
);

FILL SFILL78920x50050 (
);

MUX2X1 _16658_ (
    .A(\datapath.registers.828[31] [20]),
    .B(\datapath.registers.828[30] [20]),
    .S(\datapath.idinstr_15_bF$buf27 ),
    .Y(_6566_)
);

NAND3X1 _16238_ (
    .A(\datapath.idinstr_16_bF$buf12 ),
    .B(_6155_),
    .C(_6153_),
    .Y(_6156_)
);

INVX1 _11793_ (
    .A(_1701_),
    .Y(_1204_)
);

AOI21X1 _11373_ (
    .A(_1091__bF$buf2),
    .B(_1856_),
    .C(_1871_),
    .Y(_2336_)
);

FILL SFILL43320x30050 (
);

DFFPOSX1 _9941_ (
    .Q(\datapath.regcsrwb [27]),
    .CLK(CLK_bF$buf68),
    .D(\datapath.csr.csr_wdata [27])
);

NAND3X1 _9521_ (
    .A(_432_),
    .B(_433_),
    .C(_431_),
    .Y(\datapath.muxaval [4])
);

NAND2X1 _9101_ (
    .A(gnd),
    .B(\datapath.idinstr [0]),
    .Y(_896_)
);

NAND3X1 _12998_ (
    .A(\datapath.idinstr [13]),
    .B(_3018_),
    .C(_3017_),
    .Y(_3020_)
);

INVX1 _12578_ (
    .A(\datapath.csr.mepc [25]),
    .Y(_2757_)
);

AOI21X1 _12158_ (
    .A(_1209__bF$buf1),
    .B(_1586_),
    .C(_1593_),
    .Y(_1595_)
);

NAND2X1 _18804_ (
    .A(\datapath.rd [19]),
    .B(_8565__bF$buf4),
    .Y(_8585_)
);

BUFX2 BUFX2_insert1130 (
    .A(_3033_),
    .Y(_3033__bF$buf5)
);

BUFX2 BUFX2_insert1131 (
    .A(_3033_),
    .Y(_3033__bF$buf4)
);

BUFX2 BUFX2_insert1132 (
    .A(_3033_),
    .Y(_3033__bF$buf3)
);

BUFX2 BUFX2_insert1133 (
    .A(_3033_),
    .Y(_3033__bF$buf2)
);

BUFX2 BUFX2_insert1134 (
    .A(_3033_),
    .Y(_3033__bF$buf1)
);

BUFX2 BUFX2_insert1135 (
    .A(_3033_),
    .Y(_3033__bF$buf0)
);

BUFX2 BUFX2_insert1136 (
    .A(_5099_),
    .Y(_5099__bF$buf7)
);

BUFX2 BUFX2_insert1137 (
    .A(_5099_),
    .Y(_5099__bF$buf6)
);

BUFX2 BUFX2_insert1138 (
    .A(_5099_),
    .Y(_5099__bF$buf5)
);

BUFX2 BUFX2_insert1139 (
    .A(_5099_),
    .Y(_5099__bF$buf4)
);

NAND2X1 _14724_ (
    .A(_5002_),
    .B(_4967_),
    .Y(_5132_)
);

NOR2X1 _14304_ (
    .A(\datapath.registers.828[18] [8]),
    .B(_4886__bF$buf0),
    .Y(_4896_)
);

BUFX2 BUFX2_insert950 (
    .A(_994_),
    .Y(_994__bF$buf2)
);

BUFX2 BUFX2_insert951 (
    .A(_994_),
    .Y(_994__bF$buf1)
);

BUFX2 BUFX2_insert952 (
    .A(_994_),
    .Y(_994__bF$buf0)
);

BUFX2 BUFX2_insert953 (
    .A(_5132_),
    .Y(_5132__bF$buf7)
);

BUFX2 BUFX2_insert954 (
    .A(_5132_),
    .Y(_5132__bF$buf6)
);

BUFX2 BUFX2_insert955 (
    .A(_5132_),
    .Y(_5132__bF$buf5)
);

BUFX2 BUFX2_insert956 (
    .A(_5132_),
    .Y(_5132__bF$buf4)
);

INVX8 _17196_ (
    .A(\datapath.idinstr_22_bF$buf22 ),
    .Y(_7092_)
);

BUFX2 BUFX2_insert957 (
    .A(_5132_),
    .Y(_5132__bF$buf3)
);

BUFX2 BUFX2_insert958 (
    .A(_5132_),
    .Y(_5132__bF$buf2)
);

BUFX2 BUFX2_insert959 (
    .A(_5132_),
    .Y(_5132__bF$buf1)
);

FILL SFILL33640x49050 (
);

MUX2X1 _15929_ (
    .A(\datapath.registers.828[3] [3]),
    .B(\datapath.registers.828[2] [3]),
    .S(\datapath.idinstr_15_bF$buf1 ),
    .Y(_5854_)
);

OAI21X1 _15509_ (
    .A(_5038__bF$buf3),
    .B(_4668__bF$buf6),
    .C(\datapath.registers.828[2] [9]),
    .Y(_5556_)
);

NOR2X1 _10644_ (
    .A(\datapath.alu.b [5]),
    .B(_1284_),
    .Y(_1295_)
);

DFFPOSX1 _10224_ (
    .Q(\datapath.mempc_4 [31]),
    .CLK(CLK_bF$buf66),
    .D(\datapath.alupc_4 [31])
);

DFFPOSX1 _19762_ (
    .Q(\datapath.registers.828[30] [2]),
    .CLK(CLK_bF$buf132),
    .D(_4394_)
);

DFFPOSX1 _19342_ (
    .Q(\datapath.registers.828[4] [30]),
    .CLK(CLK_bF$buf136),
    .D(_4491_)
);

FILL SFILL58840x53050 (
);

NOR2X1 _11849_ (
    .A(_1246_),
    .B(_1264_),
    .Y(_1265_)
);

NOR2X1 _11429_ (
    .A(_1583_),
    .B(_1594_),
    .Y(_2390_)
);

AOI21X1 _11009_ (
    .A(_1974_),
    .B(_1976_),
    .C(_1978_),
    .Y(_1979_)
);

OAI21X1 _15682_ (
    .A(_5614__bF$buf4),
    .B(_4731__bF$buf3),
    .C(_5644_),
    .Y(_4425_)
);

AOI21X1 _15262_ (
    .A(_4715__bF$buf2),
    .B(_5402__bF$buf1),
    .C(_5424_),
    .Y(_4513_)
);

MUX2X1 _16887_ (
    .A(\datapath.registers.828[18] [25]),
    .B(\datapath.registers.828[16] [25]),
    .S(\datapath.idinstr_16_bF$buf16 ),
    .Y(_6790_)
);

MUX2X1 _16467_ (
    .A(_6379_),
    .B(_6378_),
    .S(\datapath.idinstr_16_bF$buf44 ),
    .Y(_6380_)
);

OAI21X1 _16047_ (
    .A(_5968_),
    .B(_5959_),
    .C(_5680__bF$buf1),
    .Y(_5969_)
);

MUX2X1 _11182_ (
    .A(_2148_),
    .B(_2147_),
    .S(_994__bF$buf2),
    .Y(_2149_)
);

FILL SFILL48840x51050 (
);

FILL SFILL53800x34050 (
);

FILL SFILL8200x30050 (
);

INVX1 _9750_ (
    .A(_616_),
    .Y(_617_)
);

NAND2X1 _9330_ (
    .A(\datapath.regloadwb [23]),
    .B(_213__bF$buf0),
    .Y(_289_)
);

FILL SFILL13640x45050 (
);

INVX1 _12387_ (
    .A(\datapath.csr.mvect [8]),
    .Y(_2616_)
);

FILL SFILL53400x20050 (
);

MUX2X1 _18613_ (
    .A(\datapath.registers.828[13] [31]),
    .B(\datapath.registers.828[12] [31]),
    .S(\datapath.idinstr_20_bF$buf47 ),
    .Y(_8478_)
);

DFFPOSX1 _19818_ (
    .Q(\datapath.registers.828[13] [26]),
    .CLK(CLK_bF$buf53),
    .D(_3782_)
);

OAI21X1 _14953_ (
    .A(_5261_),
    .B(_5257__bF$buf0),
    .C(_5262_),
    .Y(_4650_)
);

OAI21X1 _14533_ (
    .A(_5004__bF$buf1),
    .B(_4840__bF$buf1),
    .C(\datapath.registers.828[15] [16]),
    .Y(_5021_)
);

NOR2X1 _14113_ (
    .A(\datapath.registers.828[21] [18]),
    .B(_4772__bF$buf3),
    .Y(_4791_)
);

FILL SFILL78920x45050 (
);

FILL SFILL43800x32050 (
);

NOR2X1 _15738_ (
    .A(\datapath.registers.828[30] [25]),
    .B(_5647__bF$buf4),
    .Y(_5673_)
);

NAND2X1 _15318_ (
    .A(\datapath.registers.828[24] [16]),
    .B(_5437__bF$buf5),
    .Y(_5454_)
);

FILL SFILL43720x39050 (
);

NAND2X1 _10873_ (
    .A(\datapath.alu.b_0_bF$buf1 ),
    .B(_1434_),
    .Y(_1844_)
);

DFFPOSX1 _10453_ (
    .Q(\datapath.alupc_4 [3]),
    .CLK(CLK_bF$buf121),
    .D(\datapath.idpc_4 [3])
);

DFFPOSX1 _10033_ (
    .Q(\datapath.wbpc_4 [7]),
    .CLK(CLK_bF$buf121),
    .D(\datapath.mempc_4 [7])
);

DFFPOSX1 _19991_ (
    .Q(\datapath.registers.828[25] [7]),
    .CLK(CLK_bF$buf72),
    .D(_4209_)
);

DFFPOSX1 _19571_ (
    .Q(\datapath.registers.828[21] [3]),
    .CLK(CLK_bF$buf82),
    .D(_4077_)
);

DFFPOSX1 _19151_ (
    .Q(\datapath.registers.828[17] [31]),
    .CLK(CLK_bF$buf89),
    .D(_3916_)
);

NAND2X1 _11658_ (
    .A(\datapath.alu.b_1_bF$buf4 ),
    .B(_958_),
    .Y(_1060_)
);

NAND2X1 _11238_ (
    .A(\datapath.alu.b_2_bF$buf4 ),
    .B(_1985_),
    .Y(_2204_)
);

FILL SFILL33800x30050 (
);

OAI21X1 _15491_ (
    .A(_5038__bF$buf4),
    .B(_4668__bF$buf1),
    .C(\datapath.registers.828[2] [0]),
    .Y(_5547_)
);

NAND2X1 _15071_ (
    .A(\datapath.registers.828[8] [25]),
    .B(_5300__bF$buf0),
    .Y(_5326_)
);

NOR2X1 _9806_ (
    .A(\datapath.alupc [21]),
    .B(\datapath.regimmalu [21]),
    .Y(_667_)
);

NAND2X1 _13804_ (
    .A(\datapath.jumptarget [25]),
    .B(_3427__bF$buf1),
    .Y(_3585_)
);

MUX2X1 _16696_ (
    .A(\datapath.registers.828[25] [21]),
    .B(\datapath.registers.828[24] [21]),
    .S(\datapath.idinstr_15_bF$buf4 ),
    .Y(_6603_)
);

INVX1 _16276_ (
    .A(\datapath.registers.828[15] [11]),
    .Y(_6193_)
);

FILL SFILL33320x23050 (
);

NOR3X1 _12196_ (
    .A(\datapath.alu.c [10]),
    .B(\datapath.alu.c [16]),
    .C(\datapath.alu.c [12]),
    .Y(_1634_)
);

AOI21X1 _18842_ (
    .A(_4683__bF$buf0),
    .B(_8598__bF$buf7),
    .C(_8604_),
    .Y(_4239_)
);

NAND2X1 _18422_ (
    .A(_8288_),
    .B(_8290_),
    .Y(_8291_)
);

NAND2X1 _18002_ (
    .A(_7092__bF$buf10),
    .B(_7880_),
    .Y(_7881_)
);

NOR2X1 _10929_ (
    .A(\datapath.alu.b_4_bF$buf2 ),
    .B(_1899_),
    .Y(_1900_)
);

DFFPOSX1 _10509_ (
    .Q(\datapath.alupc [27]),
    .CLK(CLK_bF$buf144),
    .D(\datapath.idpc [27])
);

DFFPOSX1 _19627_ (
    .Q(\datapath.registers.828[9] [27]),
    .CLK(CLK_bF$buf53),
    .D(_4647_)
);

DFFPOSX1 _19207_ (
    .Q(\datapath.registers.828[19] [23]),
    .CLK(CLK_bF$buf89),
    .D(_3971_)
);

OAI21X1 _14762_ (
    .A(_4709__bF$buf4),
    .B(_5132__bF$buf3),
    .C(_5151_),
    .Y(_3741_)
);

AOI21X1 _14342_ (
    .A(_4723__bF$buf4),
    .B(_4886__bF$buf6),
    .C(_4916_),
    .Y(_3941_)
);

FILL SFILL8280x27050 (
);

INVX1 _15967_ (
    .A(\datapath.registers.828[24] [4]),
    .Y(_5891_)
);

OAI21X1 _15547_ (
    .A(_5038__bF$buf4),
    .B(_4668__bF$buf1),
    .C(\datapath.registers.828[2] [28]),
    .Y(_5575_)
);

OAI21X1 _15127_ (
    .A(_5336__bF$buf2),
    .B(_4840__bF$buf0),
    .C(\datapath.registers.828[7] [19]),
    .Y(_5356_)
);

INVX2 _10682_ (
    .A(\datapath.alu.b [9]),
    .Y(_1653_)
);

DFFPOSX1 _10262_ (
    .Q(\datapath.regimmalu [7]),
    .CLK(CLK_bF$buf32),
    .D(\datapath.imm [7])
);

FILL SFILL44120x24050 (
);

DFFPOSX1 _19380_ (
    .Q(\datapath.registers.828[8] [4]),
    .CLK(CLK_bF$buf56),
    .D(_4622_)
);

FILL SFILL8200x25050 (
);

NAND3X1 _8830_ (
    .A(\datapath.aluinstr [4]),
    .B(\datapath.aluinstr [5]),
    .C(_38_),
    .Y(_41_)
);

OAI21X1 _11887_ (
    .A(_1115_),
    .B(_1231_),
    .C(_1235_),
    .Y(_1304_)
);

XNOR2X1 _11467_ (
    .A(_2426_),
    .B(_1615_),
    .Y(_2427_)
);

OAI21X1 _11047_ (
    .A(_1845_),
    .B(\datapath.alu.b_1_bF$buf1 ),
    .C(_2015_),
    .Y(_2016_)
);

FILL SFILL13240x26050 (
);

NAND2X1 _9615_ (
    .A(\datapath.idpc [28]),
    .B(_416__bF$buf3),
    .Y(_504_)
);

FILL SFILL43400x58050 (
);

NAND2X1 _13613_ (
    .A(_3424__bF$buf1),
    .B(\datapath.nextpc [3]),
    .Y(_3438_)
);

MUX2X1 _16085_ (
    .A(_6005_),
    .B(_6004_),
    .S(\datapath.idinstr_16_bF$buf22 ),
    .Y(_6006_)
);

FILL SFILL43800x27050 (
);

OAI21X1 _14818_ (
    .A(_5182_),
    .B(_5167__bF$buf4),
    .C(_5183_),
    .Y(_3701_)
);

FILL SFILL68600x50 (
);

FILL SFILL68840x6050 (
);

NOR2X1 _18651_ (
    .A(\datapath.registers.828[29] [8]),
    .B(_8498__bF$buf3),
    .Y(_8507_)
);

AOI21X1 _18231_ (
    .A(_8104_),
    .B(_8079_),
    .C(_7095__bF$buf2),
    .Y(\datapath.registers.regb_data [22])
);

NAND2X1 _10738_ (
    .A(\datapath.alu.a [18]),
    .B(\datapath.alu.b [18]),
    .Y(_1709_)
);

DFFPOSX1 _10318_ (
    .Q(\datapath.regcsralu [31]),
    .CLK(CLK_bF$buf140),
    .D(\datapath.csr.csr_data [31])
);

FILL SFILL68920x38050 (
);

DFFPOSX1 _19856_ (
    .Q(\datapath.registers.828[1] [0]),
    .CLK(CLK_bF$buf86),
    .D(_3988_)
);

DFFPOSX1 _19436_ (
    .Q(\datapath.registers.828[24] [28]),
    .CLK(CLK_bF$buf137),
    .D(_4168_)
);

DFFPOSX1 _19016_ (
    .Q(\datapath.registers.828[18] [24]),
    .CLK(CLK_bF$buf127),
    .D(_3940_)
);

INVX1 _14991_ (
    .A(\datapath.registers.828[9] [19]),
    .Y(_5284_)
);

NAND2X1 _14571_ (
    .A(\datapath.rd [1]),
    .B(_5039__bF$buf0),
    .Y(_5042_)
);

NOR2X1 _14151_ (
    .A(\datapath.registers.828[20] [4]),
    .B(_4806__bF$buf5),
    .Y(_4811_)
);

FILL SFILL58600x60050 (
);

MUX2X1 _15776_ (
    .A(\datapath.registers.828[23] [0]),
    .B(\datapath.registers.828[21] [0]),
    .S(\datapath.idinstr_16_bF$buf11 ),
    .Y(_5704_)
);

FILL SFILL33320x18050 (
);

OAI21X1 _15356_ (
    .A(_4677__bF$buf1),
    .B(_5470__bF$buf5),
    .C(_5473_),
    .Y(_4490_)
);

DFFPOSX1 _10491_ (
    .Q(\datapath.alupc [9]),
    .CLK(CLK_bF$buf119),
    .D(\datapath.idpc [9])
);

DFFPOSX1 _10071_ (
    .Q(\datapath.csr.csr_wdata [13]),
    .CLK(CLK_bF$buf36),
    .D(\datapath.regcsralu [13])
);

FILL SFILL79080x51050 (
);

FILL SFILL58920x36050 (
);

OAI21X1 _11696_ (
    .A(_1099_),
    .B(\datapath.alu.b_2_bF$buf0 ),
    .C(_1097_),
    .Y(_1100_)
);

OAI21X1 _11276_ (
    .A(_2193_),
    .B(_2240_),
    .C(_2239_),
    .Y(_2241_)
);

MUX2X1 _17922_ (
    .A(\datapath.registers.828[31] [16]),
    .B(\datapath.registers.828[30] [16]),
    .S(\datapath.idinstr_20_bF$buf25 ),
    .Y(_7802_)
);

OAI21X1 _17502_ (
    .A(_4893_),
    .B(\datapath.idinstr_22_bF$buf4 ),
    .C(_7391_),
    .Y(_7392_)
);

FILL SFILL38840x5050 (
);

INVX1 _9844_ (
    .A(_700_),
    .Y(_701_)
);

NAND2X1 _9424_ (
    .A(\datapath.csr.csr_data [13]),
    .B(_317__bF$buf3),
    .Y(_360_)
);

INVX1 _9004_ (
    .A(\datapath.programcounter.pc [0]),
    .Y(_831_)
);

FILL SFILL23320x16050 (
);

OAI21X1 _18707_ (
    .A(_4679__bF$buf4),
    .B(_8531__bF$buf1),
    .C(_8535_),
    .Y(_4301_)
);

AOI22X1 _13842_ (
    .A(_3423__bF$buf2),
    .B(\datapath.alu.c [29]),
    .C(\datapath.jumptarget [29]),
    .D(_3427__bF$buf3),
    .Y(_3615_)
);

NAND3X1 _13422_ (
    .A(_3308_),
    .B(_3311_),
    .C(_3291__bF$buf1),
    .Y(\datapath.memdataload [12])
);

NAND3X1 _13002_ (
    .A(\datapath.idinstr_15_bF$buf12 ),
    .B(_3018_),
    .C(_3017_),
    .Y(_3022_)
);

FILL SFILL48920x34050 (
);

FILL SFILL13320x59050 (
);

NAND2X1 _14627_ (
    .A(\datapath.rd [21]),
    .B(_5039__bF$buf7),
    .Y(_5078_)
);

AND2X2 _14207_ (
    .A(_4670_),
    .B(_4665_),
    .Y(_4839_)
);

OAI21X1 _17099_ (
    .A(_6997_),
    .B(_6988_),
    .C(_5680__bF$buf3),
    .Y(_6998_)
);

FILL SFILL13720x28050 (
);

AOI21X1 _18880_ (
    .A(_4721__bF$buf4),
    .B(_8598__bF$buf0),
    .C(_8623_),
    .Y(_4228_)
);

NAND2X1 _18460_ (
    .A(\datapath.idinstr_22_bF$buf24 ),
    .B(_8327_),
    .Y(_8328_)
);

MUX2X1 _18040_ (
    .A(_7917_),
    .B(_7916_),
    .S(\datapath.idinstr_21_bF$buf41 ),
    .Y(_7918_)
);

FILL SFILL13320x14050 (
);

NOR2X1 _10967_ (
    .A(\datapath.alu.b_0_bF$buf8 ),
    .B(_940_),
    .Y(_1937_)
);

DFFPOSX1 _10547_ (
    .Q(\datapath.idpc_4 [1]),
    .CLK(CLK_bF$buf44),
    .D(\datapath._04_ [1])
);

DFFPOSX1 _10127_ (
    .Q(_0_[5]),
    .CLK(CLK_bF$buf80),
    .D(\datapath.alu.c [5])
);

FILL SFILL78600x59050 (
);

DFFPOSX1 _19665_ (
    .Q(\datapath.registers.828[27] [1]),
    .CLK(CLK_bF$buf41),
    .D(_4255_)
);

DFFPOSX1 _19245_ (
    .Q(\datapath.registers.828[20] [29]),
    .CLK(CLK_bF$buf92),
    .D(_4041_)
);

NOR2X1 _14380_ (
    .A(\datapath.registers.828[17] [10]),
    .B(_4924__bF$buf2),
    .Y(_4938_)
);

OAI21X1 _15585_ (
    .A(_5579__bF$buf0),
    .B(_4701__bF$buf2),
    .C(_5594_),
    .Y(_3993_)
);

AOI21X1 _15165_ (
    .A(_4683__bF$buf2),
    .B(_5369__bF$buf0),
    .C(_5375_),
    .Y(_4559_)
);

FILL SFILL48680x1050 (
);

FILL SFILL3480x38050 (
);

FILL SFILL68600x57050 (
);

AOI21X1 _11085_ (
    .A(_2034_),
    .B(_2014_),
    .C(_2053_),
    .Y(_2054_)
);

MUX2X1 _17731_ (
    .A(_7615_),
    .B(_7614_),
    .S(_7089__bF$buf1),
    .Y(_7616_)
);

AOI21X1 _17311_ (
    .A(\datapath.registers.828[12] [2]),
    .B(\datapath.idinstr_22_bF$buf5 ),
    .C(\datapath.idinstr_20_bF$buf46 ),
    .Y(_7205_)
);

AND2X2 _9653_ (
    .A(\datapath.alupc [1]),
    .B(\datapath.regimmalu [1]),
    .Y(_532_)
);

INVX1 _9233_ (
    .A(\controlunit.wb_sel [1]),
    .Y(_215_)
);

FILL SFILL68600x12050 (
);

NOR2X1 _18936_ (
    .A(\datapath.registers.828[25] [20]),
    .B(_8631__bF$buf1),
    .Y(_8652_)
);

OAI21X1 _18516_ (
    .A(_8382_),
    .B(_8373_),
    .C(_7088__bF$buf4),
    .Y(_8383_)
);

NAND2X1 _13651_ (
    .A(_3424__bF$buf0),
    .B(\datapath.nextpc [8]),
    .Y(_3466_)
);

NAND3X1 _13231_ (
    .A(\datapath.memoryinterface.byte_size_store.storebyte [24]),
    .B(_3027__bF$buf2),
    .C(_3029__bF$buf1),
    .Y(_3173_)
);

OAI21X1 _14856_ (
    .A(_5203_),
    .B(_5167__bF$buf2),
    .C(_5204_),
    .Y(_3719_)
);

OAI21X1 _14436_ (
    .A(_4675__bF$buf1),
    .B(_4968__bF$buf3),
    .C(_4970_),
    .Y(_3871_)
);

AOI21X1 _14016_ (
    .A(_4677__bF$buf1),
    .B(_4738__bF$buf7),
    .C(_4741_),
    .Y(_4106_)
);

OR2X2 _10776_ (
    .A(\datapath.alu.a [27]),
    .B(\datapath.alu.b [27]),
    .Y(_1747_)
);

DFFPOSX1 _10356_ (
    .Q(\datapath.alu.b [5]),
    .CLK(CLK_bF$buf3),
    .D(\datapath.muxbval [5])
);

FILL SFILL63880x30050 (
);

DFFPOSX1 _19894_ (
    .Q(\datapath.registers.828[29] [6]),
    .CLK(CLK_bF$buf33),
    .D(_4336_)
);

DFFPOSX1 _19474_ (
    .Q(\datapath.registers.828[5] [2]),
    .CLK(CLK_bF$buf23),
    .D(_4522_)
);

DFFPOSX1 _19054_ (
    .Q(\datapath.registers.828[31] [30]),
    .CLK(CLK_bF$buf111),
    .D(_4427_)
);

NAND2X1 _8924_ (
    .A(gnd),
    .B(\datapath.idpc [5]),
    .Y(_778_)
);

DFFPOSX1 _12922_ (
    .Q(\datapath.csr.mepc [16]),
    .CLK(CLK_bF$buf96),
    .D(\datapath.csr._26_ [16])
);

NAND2X1 _12502_ (
    .A(\controlunit.csrfile_trap_wen_bF$buf2 ),
    .B(\datapath.csr.csr_mepc [10]),
    .Y(_2698_)
);

OAI21X1 _15394_ (
    .A(_4715__bF$buf2),
    .B(_5470__bF$buf3),
    .C(_5492_),
    .Y(_4481_)
);

OAI21X1 _9709_ (
    .A(_575_),
    .B(_581_),
    .C(_580_),
    .Y(_582_)
);

NAND2X1 _13707_ (
    .A(\datapath.programcounter.pc [14]),
    .B(_3507_),
    .Y(_3509_)
);

FILL SFILL48520x15050 (
);

MUX2X1 _16599_ (
    .A(\datapath.registers.828[30] [18]),
    .B(\datapath.registers.828[28] [18]),
    .S(\datapath.idinstr_16_bF$buf34 ),
    .Y(_6509_)
);

NAND2X1 _16179_ (
    .A(_6095_),
    .B(_6097_),
    .Y(_6098_)
);

AOI21X1 _17960_ (
    .A(_7833_),
    .B(_7839_),
    .C(\datapath.idinstr_23_bF$buf4 ),
    .Y(_7840_)
);

NAND2X1 _17540_ (
    .A(\datapath.idinstr_22_bF$buf22 ),
    .B(_7428_),
    .Y(_7429_)
);

NAND2X1 _17120_ (
    .A(_5684__bF$buf5),
    .B(_7017_),
    .Y(_7018_)
);

AOI21X1 _9882_ (
    .A(_724_),
    .B(_730_),
    .C(_728_),
    .Y(_734_)
);

NAND2X1 _9462_ (
    .A(\datapath.registers.regb_data [23]),
    .B(_318__bF$buf0),
    .Y(_388_)
);

OAI21X1 _9042_ (
    .A(_855_),
    .B(gnd),
    .C(_856_),
    .Y(\datapath._04_ [12])
);

AND2X2 _12099_ (
    .A(_1531_),
    .B(_1526_),
    .Y(_1532_)
);

FILL SFILL3560x2050 (
);

OAI21X1 _18745_ (
    .A(_4717__bF$buf3),
    .B(_8531__bF$buf1),
    .C(_8554_),
    .Y(_4290_)
);

MUX2X1 _18325_ (
    .A(_8195_),
    .B(_8194_),
    .S(\datapath.idinstr_21_bF$buf3 ),
    .Y(_8196_)
);

FILL SFILL38120x44050 (
);

FILL SFILL3480x7050 (
);

DFFPOSX1 _13880_ (
    .Q(\datapath.programcounter.pc [12]),
    .CLK(CLK_bF$buf107),
    .D(\datapath.programcounter._1_ [12])
);

NAND2X1 _13460_ (
    .A(DMEM_DATA_L[26]),
    .B(_3031__bF$buf6),
    .Y(_3336_)
);

OAI21X1 _13040_ (
    .A(_3013_),
    .B(\controlunit.imm_sel [1]),
    .C(\datapath.idinstr_20_bF$buf10 ),
    .Y(_2993_)
);

FILL SFILL38520x13050 (
);

FILL SFILL83960x22050 (
);

AOI21X1 _14665_ (
    .A(_4677__bF$buf3),
    .B(_5099__bF$buf1),
    .C(_5102_),
    .Y(_3786_)
);

AOI21X1 _14245_ (
    .A(_4701__bF$buf1),
    .B(_4842__bF$buf5),
    .C(_4862_),
    .Y(_3961_)
);

FILL SFILL3560x26050 (
);

DFFPOSX1 _10585_ (
    .Q(\datapath.idpc [7]),
    .CLK(CLK_bF$buf119),
    .D(\datapath._03_ [7])
);

DFFPOSX1 _10165_ (
    .Q(\datapath.meminstr [4]),
    .CLK(CLK_bF$buf47),
    .D(\datapath.aluinstr [4])
);

NAND2X1 _16811_ (
    .A(_6712_),
    .B(_6715_),
    .Y(_6716_)
);

FILL SFILL73560x51050 (
);

DFFPOSX1 _19283_ (
    .Q(\datapath.registers.828[2] [3]),
    .CLK(CLK_bF$buf134),
    .D(_4365_)
);

BUFX2 _8733_ (
    .A(\datapath.programcounter.pc [4]),
    .Y(IMEM_ADDR[4])
);

FILL SFILL73960x20050 (
);

NAND2X1 _12731_ (
    .A(\datapath.csr.mvect [8]),
    .B(_2863_),
    .Y(_2864_)
);

FILL SFILL59000x50 (
);

OAI21X1 _12311_ (
    .A(_2558_),
    .B(_2490__bF$buf0),
    .C(_2559_),
    .Y(\datapath.csr.csr_data [20])
);

FILL SFILL73880x27050 (
);

DFFPOSX1 _9938_ (
    .Q(\datapath.regcsrwb [24]),
    .CLK(CLK_bF$buf68),
    .D(\datapath.csr.csr_wdata [24])
);

NAND2X1 _9518_ (
    .A(\datapath.registers.rega_data [4]),
    .B(_418__bF$buf1),
    .Y(_431_)
);

AOI21X1 _13936_ (
    .A(_4687__bF$buf0),
    .B(_4673__bF$buf3),
    .C(_4688_),
    .Y(_4145_)
);

NOR2X1 _13516_ (
    .A(gnd),
    .B(\datapath.programcounter.pc_mux [6]),
    .Y(_3371_)
);

FILL SFILL79160x34050 (
);

NOR2X1 _9691_ (
    .A(_546_),
    .B(_550_),
    .Y(_565_)
);

FILL SFILL18440x16050 (
);

NAND3X1 _9271_ (
    .A(_242_),
    .B(_243_),
    .C(_244_),
    .Y(\datapath.rd [8])
);

FILL SFILL63880x25050 (
);

BUFX2 _18974_ (
    .A(\datapath.registers.828[0] [14]),
    .Y(_3641_)
);

MUX2X1 _18554_ (
    .A(\datapath.registers.828[5] [30]),
    .B(\datapath.registers.828[4] [30]),
    .S(\datapath.idinstr_20_bF$buf33 ),
    .Y(_8420_)
);

OAI21X1 _18134_ (
    .A(_5529_),
    .B(\datapath.idinstr_22_bF$buf33 ),
    .C(_8009_),
    .Y(_8010_)
);

DFFPOSX1 _19759_ (
    .Q(\datapath.registers.828[16] [31]),
    .CLK(CLK_bF$buf78),
    .D(_3884_)
);

DFFPOSX1 _19339_ (
    .Q(\datapath.registers.828[4] [27]),
    .CLK(CLK_bF$buf76),
    .D(_4487_)
);

NAND2X1 _14894_ (
    .A(\datapath.rd [10]),
    .B(_5212__bF$buf6),
    .Y(_5228_)
);

OAI21X1 _14474_ (
    .A(_4713__bF$buf0),
    .B(_4968__bF$buf3),
    .C(_4989_),
    .Y(_3872_)
);

AOI21X1 _14054_ (
    .A(_4715__bF$buf1),
    .B(_4738__bF$buf0),
    .C(_4760_),
    .Y(_4097_)
);

FILL SFILL69080x39050 (
);

OAI21X1 _15679_ (
    .A(_4840__bF$buf3),
    .B(_5612__bF$buf3),
    .C(\datapath.registers.828[31] [28]),
    .Y(_5643_)
);

NOR2X1 _15259_ (
    .A(\datapath.registers.828[5] [20]),
    .B(_5402__bF$buf5),
    .Y(_5423_)
);

DFFPOSX1 _10394_ (
    .Q(\datapath.alu.a [11]),
    .CLK(CLK_bF$buf139),
    .D(\datapath.muxaval [11])
);

MUX2X1 _16620_ (
    .A(\datapath.registers.828[19] [19]),
    .B(\datapath.registers.828[17] [19]),
    .S(\datapath.idinstr_16_bF$buf20 ),
    .Y(_6529_)
);

INVX1 _16200_ (
    .A(\datapath.registers.828[2] [9]),
    .Y(_6119_)
);

DFFPOSX1 _19092_ (
    .Q(\datapath.registers.828[14] [4]),
    .CLK(CLK_bF$buf75),
    .D(_3822_)
);

INVX1 _8962_ (
    .A(\datapath.programcounter.pc [18]),
    .Y(_803_)
);

OAI21X1 _11599_ (
    .A(_941_),
    .B(_1551_),
    .C(_1673_),
    .Y(_996_)
);

NAND2X1 _11179_ (
    .A(\datapath.alu.b_2_bF$buf4 ),
    .B(_1893_),
    .Y(_2146_)
);

AOI21X1 _17825_ (
    .A(_7686_),
    .B(_7707_),
    .C(_7095__bF$buf4),
    .Y(\datapath.registers.regb_data [13])
);

NAND2X1 _17405_ (
    .A(\datapath.registers.828[12] [4]),
    .B(_7089__bF$buf6),
    .Y(_7297_)
);

DFFPOSX1 _12960_ (
    .Q(\datapath.csr.mvect [21]),
    .CLK(CLK_bF$buf83),
    .D(\datapath.csr._13_ [21])
);

OAI21X1 _12540_ (
    .A(\datapath.csr.csr_wdata [19]),
    .B(_2672__bF$buf6),
    .C(_2726_),
    .Y(_2727_)
);

AOI22X1 _12120_ (
    .A(_2041__bF$buf0),
    .B(_1735_),
);

);