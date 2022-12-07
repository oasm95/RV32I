#!/usr/bin/env python
# -*- coding: utf-8 -*-
#
#  cachesim.py
#  
#  Copyright 2021 Dadmin <dadmin@Destroyer>
#  
#  This program is free software; you can redistribute it and/or modify
#  it under the terms of the GNU General Public License as published by
#  the Free Software Foundation; either version 2 of the License, or
#  (at your option) any later version.
#  
#  This program is distributed in the hope that it will be useful,
#  but WITHOUT ANY WARRANTY; without even the implied warranty of
#  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#  GNU General Public License for more details.
#  
#  You should have received a copy of the GNU General Public License
#  along with this program; if not, write to the Free Software
#  Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston,
#  MA 02110-1301, USA.
#  

from multiprocessing import Process, Queue, Lock

_polinomials = {
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

class Cache:
	from math import log2
	from random import randint
	
	def __init__(self,cachetype,settings,replacepolicy = None):
		self.kind = cachetype
		self.misses = 0
		self.Laccesses = 0
		self.Smisses = 0
		self.Lmisses = 0
		for setting in settings:
			assert Cache.log2(setting).is_integer(),"Settings must be values power of 2"
		
		self.size = settings[0]
		self.linewigth = settings[1]
		self.offsetbits = int(Cache.log2(self.linewigth))
		
		if self.kind == 'direct':
			self.lines = self.size/self.linewigth
			assert self.lines.is_integer(), "Bad Settings"
			self.lines = int(self.lines)
			self.tagbits = Cache.log2(self.lines)+Cache.log2(self.linewigth)
			self.tags = [0]*self.lines 
			self.valid = [False]*self.lines
			self.rpolicy = 'direct'
			
		elif self.kind == 'setway':
			self.ways = settings[2]
			self.lines = self.size/(self.linewigth*self.ways)
			assert self.lines.is_integer(), "Bad Settings"
			self.lines = int(self.lines)
			self.tagbits = Cache.log2(self.lines)+Cache.log2(self.linewigth)
			self.tags = [[0]*self.lines for _ in range(self.ways)]
			self.valid = [[False]*self.lines for _ in range(self.ways)]
			
			if replacepolicy == None:
				raise ValueError('setway must have a valid replace policy')			
			elif (replacepolicy.lower() == 'random'):
				pass
			elif replacepolicy.lower() == 'lru' :
				self.lru = [[__ for __ in range(self.ways)] for _ in range(self.lines)]
			elif replacepolicy.lower() == 'lifo':
				self.lifo = [0]*self.lines
			elif replacepolicy.lower() == 'trivium':
				self.waybits = int(Cache.log2(self.ways))
				self.istates = [0]*285
				self.istates.extend([1,1,1])
				IV = 0;	K = 0
				for i in range(80):
					ivb = Cache.randint(0,1)
					kb = Cache.randint(0,1)
					self.istates[i] = kb
					self.istates[93+i] = ivb
					K |= kb << i
					IV |= ivb <<i
				self.K = K
				self.IV = IV
			elif replacepolicy.lower() == 'lfsr':
				self.waybits = int(Cache.log2(self.ways))
				self.poli = _polinomials[self.waybits+1][:]
				self.state = Cache.randint(1,(1<<self.waybits+1)-2)
			elif replacepolicy.lower() == 'treelru':
				self.nodebits = self.ways - 1 - self.ways//2
				self.states = [0]*self.lines			
			else:
				raise ValueError('setway must have a valid replace policy')
			
			self.rpolicy = replacepolicy.lower()	
			
		else:
			raise ValueError(repr(self.kind)+' is not a supported type of cache')
		
		assert self.tagbits.is_integer(), "Bad Settings"
		self.tagbits = int(self.tagbits)
		self.Mdic = {'setway':self.matchSW, 'direct':self.matchDM}
		self.Rdic = {'random':self.replaceRan,'lru':self.replaceLRU,\
					 'lifo':self.replaceLIFO,'direct':self.replaceDM,\
					 'trivium':self.replaceTrivium,'lfsr':self.replaceTrivium,\
					 'treelru':self.replaceTLRU}
					 
	def __repr__(self):
		txt = ''
		if self.kind == 'setway':
			txt = f'\tways: {self.ways},'
		
		return f'size: {self.size},\tlinewigth: {self.linewigth},'+txt+\
			   f'\treplace Policy: {self.rpolicy},\tindexes: {self.lines},'+\
			   f'\ttagbits: {self.tagbits},\toffset: {self.offsetbits}'

	def lrumiss(self,state):
		flipmask = 0
		bitcnt = 0
		while bitcnt < self.nodebits:
			mask = 1<<bitcnt
			flipmask |= mask
			bitcnt *= 2
			bitcnt += 1 if not state&mask else 2
		
		mask = 1<<bitcnt
		flipmask |= mask
		toreplace = (bitcnt - self.nodebits)*2
		toreplace += 0 if not state & mask else 1
		
		state = state ^ flipmask
		return toreplace, state

	def lruhit(self,way,state):
		bitcnt = (way)//2 + self.nodebits
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

		state = ((state | mask) & (~andmask)) & ((1<<(self.ways-1))-1)
		return state

	
	def genrandom(self):
		if self.rpolicy =='trivium':
			b = self.waybits
			t1 = [0]*b; t2 = [0]*b; t3 = [0]*b
			z = 0
			#todo: use numpy 		
			for i in range(b):
				t1[i] = self.istates[65-b+i]^self.istates[92-b+i]
				t2[i] = self.istates[161-b+i]^self.istates[176-b+i] 
				t3[i] = self.istates[242-b+i]^self.istates[287-b+i]
				z |= (t1[i] ^ t2[i] ^ t3[i])<< i
				t1[i] = t1[i] ^ (self.istates[90-b+i] | self.istates[91-b+i]) ^ self.istates[170-b+i]
				t2[i] = t2[i] ^ (self.istates[174-b+i] | self.istates[175-b+i]) ^ self.istates[263-b+i]
				t3[i] = t3[i] ^ (self.istates[285-b+i] | self.istates[286-b+i]) ^ self.istates[68-b+i]

			self.istates[0:93] = t3[:] + self.istates[0:93-b]
			self.istates[93:177] = t1[:] + self.istates[93:177-b]
			self.istates[177:] = t2[:] + self.istates[177:288-b]
			return z
		else:
			sec = self.poli[:]
			bit = sec.pop()
			feedback = self.state >> (bit-1)
			for bit in sec:
				feedback ^= self.state >> (bit -1)
			self.state = ((self.state<<1) | (feedback & 1)) &0xffffffff
			return self.state & ((1<<self.waybits)-1)
		
	def replaceTLRU(self,index,tag):
		way, state = self.lrumiss(self.states[index])
		self.states[index] = state
		self.tags[way][index] = tag
		self.valid[way][index] = True
		return way

	def replaceTrivium(self,index,tag):
		way = self.genrandom()
		self.tags[way][index] = tag
		self.valid[way][index] = True
		return way

	def replaceRan(self,index,tag):
		way = Cache.randint(0,self.ways-1)
		self.tags[way][index] = tag
		self.valid[way][index] = True
		return way
		
	def replaceLRU(self,index,tag):
		way = self.lru[index].pop(0)
		self.lru[index].append(way)
		self.tags[way][index] = tag
		self.valid[way][index] = True
		return way

	def replaceLIFO(self,index,tag):
		way = self.lifo[index]
		self.tags[way][index] = tag
		self.valid[way][index] = True
		way+=1
		self.lifo[index] = way if way< self.ways else 0 
		return way-1

	def replaceDM(self,index,tag):
		self.tags[index] = tag
		self.valid[index] = True
		return 0

	def replaceline(self,addr):
		index = (self.lines-1) & (addr>>self.offsetbits)
		tag = addr >> self.tagbits
		#pretag = self.tags[index]
		return self.Rdic[self.rpolicy](index,tag)
		#return self.Rdic[self.rpolicy](index,tag), pretag
	
	def matchDM(self,index,tag):	
		return (self.valid[index] and tag == self.tags[index])
		
	def matchSW(self,index,tag):
		match = 0
		cnt = 0
		for way, vway in zip(self.tags,self.valid):
			if way[index] == tag and vway[index]:
				match = cnt +1
				if self.rpolicy == 'lru':
					self.lru[index].remove(cnt)
					self.lru[index].append(cnt)
				elif self.rpolicy == 'treelru':
					self.states[index] = self.lruhit(cnt,self.states[index])					
				break
			cnt+=1
		
		return match
	
	def match(self,addr):
		index = (self.lines-1) & (addr>>self.offsetbits)
		tag = addr >> self.tagbits
		return self.Mdic[self.kind](index,tag)

	def access(self,addr,mode=None):
		if mode=='l':
			self.Laccesses+=1
		if not self.match(addr):
			self.misses+=1
			self.replaceline(addr)
			if mode == 'l':
				self.Lmisses+=1
			elif mode == 's':
				self.Smisses+=1
	
	def missratio(self,accesses):
		ratio = (self.misses/accesses)*100
		txt = ''
		if self.Laccesses:
			lratio = (self.Lmisses/self.Laccesses)*100
			sratio = (self.Smisses/(accesses-self.Laccesses))*100
			other1 = (self.Lmisses/accesses)*100
			other2 = (self.Smisses/accesses)*100
			txt = f',\tLoadMissRatio: {lratio}%,\tStoreMissRatio: {sratio}%'+\
				f',\tLOtherRatio: {other1}%,\tSOtherRatio: {other2}%'
			
		return self.__repr__() + f',\tMissRatio: {ratio}%'+txt
		
def work(name,q,Np,np,lcaches,caches,lock):
	subsize = lcaches // Np
	if np == (Np-1):
		subcaches = caches[np*subsize:]
	else:
		subcaches = caches[np*subsize:np*subsize+subsize]

	lock.acquire()
	try:
		print(f"P{np} started: {name}")
	finally:
		lock.release()
	
	if '-I' in name:
		with open('trace/'+name,'r') as f:
			totalaccesses = 0
			for addr in f:
				totalaccesses+=1
				addr = int(addr)
				for cache in subcaches:
					cache.access(addr)
				if not totalaccesses % 150000:
					lock.acquire()
					try:
						print(f"P{np}: {totalaccesses}")
					finally:
						lock.release()

	else:
		with open('trace/'+name,'r') as f:
			totalaccesses = 0
			for line in f:
				totalaccesses+=1
				addr, mode = line.strip().split(' ')
				addr = int(addr)
				for cache in subcaches:
					cache.access(addr,mode)
				if not totalaccesses % 150000:
					lock.acquire()
					try:
						print(f"P{np}: {totalaccesses}")
					finally:
						lock.release()

	lock.acquire()
	try:
		print(f"P{np} done: {name}")
	finally:
		lock.release()

	q.put([totalaccesses,subcaches,subsize,np])

if __name__ == '__main__':
	from os import listdir
	
	replacepol = ('treelru','trivium')
	sizes = (128,256,512,1024,2048,4096,8192,16384,32768,65536)
	blocks = (4,8,16,32,64,128,256,512,1024)
	ways = (2,4,8,16,32)
	
	#for trace in listdir('trace'):
	for trace in ["qsort-I.txt","rsort-I.txt"]:
		with open('trace/'+trace,'r') as f:
			caches = []
			writemode = 'a'
			for pol in replacepol:
				for size in sizes:
					for block in blocks:
						for way in ways:
							try:
								caches.append(Cache('setway',[size,block,way],pol))
							except ValueError:
								pass
							except AssertionError:
								pass			
				

			Np = 4
			q = Queue(Np)
			lock = Lock()
			lcaches = len(caches)
			
			for np in range(Np):
				Process(target=work,args=(trace,q,Np,np,lcaches,caches,lock)).start()
			
			cnt = Np
			while cnt:
				totalaccesses,subcaches,subsize,np = q.get()
				if np == Np-1:
					caches[np*subsize:] = subcaches[:]
				else:
					caches[np*subsize:np*subsize+subsize] = subcaches[:]
					
				cnt-=1
			
			with open('result/'+trace,writemode) as f:
				for cache in caches:
					print(cache.missratio(totalaccesses),file=f)
			
