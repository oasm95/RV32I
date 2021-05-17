from random import randint

istates = [0]*285
istates.extend([1,1,1])
IV = 0
K = 0

for i in range(80):
    ivb = randint(0,1)
    kb = randint(0,1)
    istates[i] = kb
    istates[93+i] = ivb
    K |= kb << i
    IV |= ivb <<i

def getbit():
    t1 = istates[65]^istates[92]
    t2 = istates[161]^istates[176] 
    t3 = istates[242]^istates[287]
    z = t1 ^ t2 ^ t3
    t1 = t1 ^ (istates[90] | istates[91]) ^ istates[170]
    t2 = t2 ^ (istates[174] | istates[175]) ^ istates[263]
    t3 = t3 ^ (istates[285] | istates[286]) ^ istates[68]
    istates[1:93] = istates[:92]
    istates[0] = t3
    istates[94:177] = istates[93:176]
    istates[93] = t1
    istates[178:] = istates[177:287]
    istates[177] = t2
    return z
    
def getnbits(n):
    b = n
    t1 = [0]*b; t2 = [0]*b; t3 = [0]*b
    z = 0
    #todo: use numpy 		
    for i in range(b):
        t1[i] = istates[65-b+i]^istates[92-b+i]
        t2[i] = istates[161-b+i]^istates[176-b+i] 
        t3[i] = istates[242-b+i]^istates[287-b+i]
        z |= (t1[i] ^ t2[i] ^ t3[i])<< i
        t1[i] = t1[i] ^ (istates[90-b+i] | istates[91-b+i]) ^ istates[170-b+i]
        t2[i] = t2[i] ^ (istates[174-b+i] | istates[175-b+i]) ^ istates[263-b+i]
        t3[i] = t3[i] ^ (istates[285-b+i] | istates[286-b+i]) ^ istates[68-b+i]

    istates[0:93] = t3[:] + istates[0:93-b]
    istates[93:177] = t1[:] + istates[93:177-b]
    istates[177:288] = t2[:] + istates[177:288-b]
    return z

print(f"key = 0x{K:X}, Internal Value 0x{IV:X}")
for _ in range(10):
    for __ in range(10):
        print(getnbits(1),end=' ')
    print('')
    