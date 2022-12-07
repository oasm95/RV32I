from math import log2
_template="""\
\t\tHitOut{ways}:process(InState,Match_vec)
\t\t\tvariable match: std_logic_vector({waybits} downto 0); 
\t\tbegin
\t\t\tHitOutState <= InState;
\t\t\tmatch := Match_vec;
\t\t\tcase (match) is
{}\t\t\t\twhen others => HitOutState <= (others => '-');
\t\t\tend case;
\t\tend process;
"""

_templatecond="""\
\t\t\tif cond{bit} = b"{val}" then MissOutState({bit})<= not I({bit});
\t\t\telse MissOutState({bit})<= I({bit}); end if;
"""
_templateMiss="""\
\t\tMissOut{ways}:process(Instate)
\t\t\talias I: std_logic_vector(WAYS-2 downto 0) is InState;
{vars}\t\tbegin
{v_asign}\t\t\tMissOutState(0) <= not I(0);
\t\t\tMissOutState(1) <= I(0) xnor I(1);
\t\t\tMissOutState(2) <= I(0) xor I(2);
{conds}\t\tend process;
"""
_templateVictim="""\
\t\tVictim{ways}:process(InState)
\t\t\talias I: std_logic_vector(WAYS-2 downto 0) is InState;
\t\t\tvariable v{msb}: std_logic;
{vars}\t\tbegin
\t\t\tv{msb}<= I(0);

{logic}{assign}\t\tend process;
"""


def lrumiss(state):
    flipmask = 0
    bitcnt = 0
    while bitcnt < nodebits:
        mask = 1<<bitcnt
        flipmask |= mask
        bitcnt *= 2
        bitcnt += 1 if not state&mask else 2
    
    mask = 1<<bitcnt
    flipmask |= mask
    toreplace = (bitcnt - nodebits)*2
    toreplace += 0 if not state & mask else 1
    
    state = state ^ flipmask
    return toreplace, state

def lruhit(way,state):
    bitcnt = (way)//2 + nodebits
    mask = 0
    andmask = (1&way)<<bitcnt
    while True:
        mask|= 1<<bitcnt
        tmp = bitcnt
        bitcnt = (bitcnt-1)//2
        if bitcnt >=0:
            andmask|= (1&(~tmp))<<bitcnt
        else: 
            break
    
    state = ((state | mask) & (~andmask)) & ((1<<(ways-1))-1)
    return state

def getTouchedBits(way,ways):
    bitstouched = {}
    nodebits = ways - 1 - ways//2
    bitcnt = (way)//2 + nodebits
    mask = 0
    andmask = (1&way)<<bitcnt
    while True:
        mask|= 1<<bitcnt
        tmp = bitcnt
        bitcnt = (bitcnt-1)//2
        if bitcnt >=0:
            andmask|= (1&(~tmp))<<bitcnt
        else: 
            break
    for _ in range(ways-1):
        if mask & (1<<_):
            bitstouched[_] = 0 if andmask & (1<<_) else 1

    return bitstouched

def getbinary(size,num):
    n = bin(num)[2:]
    return ('0'*(size-len(n))) + n

def genprocessHitOut(nways,fstream):
    txt = ""
    for a in range(nways):
        dic = getTouchedBits(a,nways)
        txt += f"\t\t\t\twhen \"{getbinary(nways,1<<a)}\" =>\n"
        for bit, value in dic.items():
            txt += f"\t\t\t\t\tHitOutState({bit}) <= '{value}';\n"

    print(_template.format(txt,waybits=nways-1,ways=nways),file=fstream)

def getcondsforbit(bit,ways):
    for _ in range(ways):
        dic = getTouchedBits(_,ways)
        if bit in dic:
            break
    newdic= {}
    for d_bit, value in dic.items():
        if d_bit < bit:
            newdic[d_bit] = value
    return newdic

def grenprocessMissOut(nways,fstream):
    if nways == 4:
        print(_templateMiss.format(ways=4,vars='',v_asign='',\
			  conds=''),file=fstream)
    else:
        vars=''
        v_asign=''
        conds=''
        for statusbit in range(3,nways-1):
            dic = getcondsforbit(statusbit,nways)
            t_asign=''
            cond=''
            for bit in sorted(dic):
               t_asign+= f" I({bit}) &"
               cond+= f"{(~dic[bit])&1}"

            vars+= f"\t\t\tvariable cond{statusbit}:\
				std_logic_vector({(len(dic)-1)} downto 0);\n"
            v_asign+= f"\t\t\tcond{statusbit}:={t_asign[:-2]};\n"
            conds += _templatecond.format(bit=statusbit,val=cond)

        print(_templateMiss.format(ways=nways,vars=vars,v_asign=v_asign,\
			  conds=conds),file=fstream)

def genProcessVictim(nways,fstream):
    s = ('I({})\t','not I({})')
    treedepth = int(log2(nways))
    logic = ''
    vardeclaration = ''
    assign = ''
    for lvl in range(1,treedepth):
        vardeclaration+= f"\t\t\tvariable v{treedepth-1-lvl}: std_logic:='0';\n"
        assign+= f'v{treedepth-1-lvl} & '
        for bit in range((2**lvl)-1,(2**(lvl+1)-1)):
            conds = getcondsforbit(bit,nways)
            logic+= f'\t\t\tv{treedepth-1-lvl}:= v{treedepth-1-lvl} or '
            for condbit in sorted(conds):
                logic+= s[conds[condbit]].format(condbit) + '\tand\t'
            logic+= f'I({bit});\n'
        logic+= '\n'
    assign = f'\t\t\tVictimWay <= v{treedepth-1} & {assign[:-3]};\n'
    print(_templateVictim.format(ways=nways,msb=treedepth-1,\
                                vars=vardeclaration,logic=logic,\
                                assign=assign),file=fstream)

def gentestvector(ways,stream):
    from random import randint
    
    v = int(log2(ways-1)//4 +1)
    N = 12000
    statemax = (1<<(ways-1))-1
    width = ways//4
    for _ in range(N):
        InState = randint(0,statemax)
        w = randint(0,ways-1)
        MatchVec = 1<<w
        hitout = lruhit(w,InState)
        victim, missout = lrumiss(InState)
        txt = f"{InState:0{width}X} {MatchVec:0{width}X} {hitout:0{width}X} {missout:0{width}X} {victim:0{v}X}"
        print(txt,file=stream)



if __name__ == "__main__":
    import sys
    if len(sys.argv) == 4:
        stream = open(sys.argv[3],"w")
    elif len(sys.argv) == 3:
        stream = sys.stdout
    else:
        print("lru.py t|g ways outputfile(if empty to stdout), t: testbench g:generate vhdl code")
        sys.exit(-1)
    
    ways = int(sys.argv[2])
    nodebits = ways - 1 - ways//2
    with stream:
        if sys.argv[1] == 'g':
            grenprocessMissOut(ways,stream)
            genprocessHitOut(ways,stream)
            genProcessVictim(ways,stream)
        elif sys.argv[1] == 't':
            gentestvector(ways,stream)

