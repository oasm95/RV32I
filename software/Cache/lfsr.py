from random import randint
polinomials = {
    2: [2,1],
    3: [3,2],
    4: [4,3],
    5: [5,3],
    6: [6,5],
    7: [7,6],
    8: [8,6,5,4],
    9: [9,5],
    10: [10,7],
    11: [11,9],
    12: [12,11,10,4],
    13: [13,12,11,8]
}

n = 3
internal = randint(1,(1<<n+1)-2)

def getran():
    global internal
    sec = polinomials[n+1][:]
    bit = sec.pop()
    feedback = internal >> (bit-1)
    for bit in sec:
        feedback ^= internal >> (bit -1)
    internal = (internal<<1) | (feedback & 1)
    return internal>>1 & ((1<<n)-1)

for _ in range(3):
    print("Patron:")
    for __ in range(((1<<n+1)-1)):
        if __ % 50 == 49:
            print(" ")
        print(getran(),end=' ')
    print('\n')
