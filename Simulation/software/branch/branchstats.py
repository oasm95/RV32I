import os
import numpy as np
import matplotlib.pyplot as plt
from sys import argv

from math import log2
class BrachPredict:
    def __init__(self,size,fsm,initialstate=0):
        self.fsm = fsm
        self.indexbits = int(log2(size))
        self.indexmask = size-1
        #reset state = 0
        self.currentstate = [initialstate]*size
        self.initialstate = initialstate
        self.tags = [0]*size
        self.misses = 0
        self.jalmisses = 0
        self.branchmisses = 0 
        
    def predict(self,isjal,addr,taken):       
        tableindex = self.indexmask & (addr>>2)
        tag = addr >> (self.indexbits+2)        
        
        if self.tags[tableindex] == tag:
            state = self.currentstate[tableindex]
            prediction, nextstate = self.fsm[state]
            if isjal:
                prediction = 1
        else:
            state = self.initialstate
            prediction = 0
            nextstate = self.fsm[state][1]
        if prediction != taken:
            self.misses += 1
            if isjal:
                self.jalmisses+=1
            else:
                self.branchmisses+=1
        if taken:
            self.tags[tableindex] = tag
            self.currentstate[tableindex] = nextstate[taken]
        
    def getAccuracy(self,Total,branches):
        jals = Total - branches
        tacc = (1-(self.misses/Total))*100
        jacc = (1-(self.jalmisses/jals))*100  
        bacc = (1-(self.branchmisses/branches))*100   
        return tacc,jacc,bacc
    
    def out(self,Total,branches):
        tacc,jacc,bacc = self.getAccuracy(Total,branches)
        end = '\n' if self.indexmask+1 == 8192 else ''
        return f'\t{self.indexmask+1}:\t\tTotal: {tacc:.4}%\tJal: {jacc:.4}%\tBranchs: {bacc:.4}%{end}'
        
        
#state 0
#fms[0] = (prediction,(nextstate not taken,nextstate taken))
fsms = [((0,(0,1)),(0,(0,2)),(1,(1,3)),(1,(2,3)))]#,
        # ((0,(0,1)),(0,(0,2)),(1,(0,3)),(1,(2,3))),
        # ((0,(0,1)),(0,(0,3)),(1,(1,3)),(1,(2,3))),
        # ((0,(0,1)),(0,(0,3)),(1,(0,3)),(1,(2,3))),
        # ((0,(0,1)),(0,(0,3)),(1,(1,3)),(1,(2,2)))]

sizes = (32,64,128,256,512,1024,2048,4096,8192)
benchmarks = []
for filename in os.listdir():
    if filename.endswith(".txt"):
        info = {"total":0,"taken":0,"branchs": 0,'name':filename.replace(".txt",'')}
        predictors = []
        for fsm in fsms:
            for size in sizes:
                predictors.append(BrachPredict(size,fsm,int(argv[1])))
        with open(filename,'r') as f:
            for line in f:
                isjal, addr, *taken = line.split(" ")
                info['total']+= 1
                addr = int(addr.strip())
                isjal = int(isjal)
                if taken:
                    taken = int(taken[0].strip())
                else:
                    taken = 1
                    
                if addr not in info:
                    info[addr] = 1
                else:
                    info[addr]+= 1
                if not isjal:
                    info['branchs']+= 1
                    if taken:
                        info['taken']+= 1
                for predictor in predictors:
                    predictor.predict(isjal,addr,taken)
                        
        print(info['name'],len(info)-4)
        for predictor in predictors:
            print(predictor.out(info['total'],info['branchs']))
        benchmarks.append(info)
        


#for info in benchmarks:
    #name = info.pop('name')
    #taken = info.pop('taken')
    #total = info.pop('total')
    #branchs = info.pop('branchs')
    
    #sorted by addres
    #addrs = [key for (key, value) in sorted(info.items())]
    #cnts = [value for (key, value) in sorted(info.items())]
    #sorted by cnt
    #addrs = [key for (key, value) in sorted(info.items(),key=lambda x: x[1])]
    #cnts = [value for (key, value) in sorted(info.items(),key=lambda x: x[1])]
            
            
    #ind = np.arange(len(addrs))
    #p1 = plt.bar(ind, cnts)
    #plt.ylabel('Times')
    #plt.title('Branches in Benchamark: ' + name)
    #plt.xticks(ind, addrs)
    #plt.show()
            
