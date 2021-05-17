Imms = {
"Itype" :  [[0,0,0,0,0],[0,0,1,0,0],[1,1,0,0,0]],
"Jtype" : [[1,1,1,0,0]],
"Btype" : [[1,1,0,0,0]],
"Stype" : [[0,1,0,0,0]],
"Utype" : [[0,1,1,0,1],[0,0,1,0,1]]}

def bitscombination():
    for _ in range(2**5):
        indices = []
        for i in range(5):
            if (_ & 1<<i):
                indices.append(i)
        if len(indices) == 3:
            indices.sort(reverse=True)
            yield indices

for idx in bitscombination():
    res = {"Itype" :  [[],[],[]],"Jtype" : [[]],"Btype" : [[]],"Stype" : [[]],"Utype" : [[],[]]}
    for key in Imms:
        b = 0
        for opcode in Imms[key]:
            res[key][b].append(opcode[4-idx[0]])
            res[key][b].append(opcode[4-idx[1]])
            res[key][b].append(opcode[4-idx[2]])
            b+=1
    
