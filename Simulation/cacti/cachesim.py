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
			else:
				raise ValueError('setway must have a valid replace policy')
			
			self.rpolicy = replacepolicy.lower()	
			
		else:
			raise ValueError(repr(self.kind)+' is not a supported type of cache')
		
		assert self.tagbits.is_integer(), "Bad Settings"
		self.tagbits = int(self.tagbits)
		self.Mdic = {'setway':self.matchSW, 'direct':self.matchDM}
		self.Rdic = {'random':self.replaceRan,'lru':self.replaceLRU,\
					 'lifo':self.replaceLIFO,'direct':self.replaceDM}
					 
	def __repr__(self):
		txt = ''
		if self.kind == 'setway':
			txt = f'\tways: {self.ways},'
		
		return f'size: {self.size},\tlinewigth: {self.linewigth},'+txt+\
			   f'\treplace Policy: {self.rpolicy},\tindexes: {self.lines},'+\
			   f'\ttagbits: {self.tagbits},\toffset: {self.offsetbits}'

	def replaceRan(self,index,tag):
		way = Cache.randint(0,self.ways-1)
		self.tags[way][index] = tag
		self.valid[way][index] = True
		
	def replaceLRU(self,index,tag):
		way = self.lru[index].pop(0)
		self.lru[index].append(way)
		self.tags[way][index] = tag
		self.valid[way][index] = True
		
	def replaceLIFO(self,index,tag):
		way = self.lifo[index]
		self.tags[way][index] = tag
		self.valid[way][index] = True
		way+=1
		self.lifo[index] = way if way< self.ways else 0 
		
	def replaceDM(self,index,tag):
		self.tags[index] = tag
		self.valid[index] = True
		
	def replaceline(self,addr):
		index = (self.lines-1) & (addr>>self.offsetbits)
		tag = addr >> self.tagbits
		self.Rdic[self.rpolicy](index,tag)
	
	def matchDM(self,index,tag):	
		return (self.valid[index] and tag == self.tags[index])
		
	def matchSW(self,index,tag):
		match = False
		
		cnt = 0
		for way, vway in zip(self.tags,self.valid):
			if way[index] == tag and vway[index]:
				match = True
				if self.rpolicy == 'lru':
					self.lru[index].remove(cnt)
					self.lru[index].append(cnt)					
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
		
def work(name,q,Np,np,lcaches,caches):
	subsize = lcaches // Np
	if np == (Np-1):
		subcaches = caches[np*subsize:]
	else:
		subcaches = caches[np*subsize:np*subsize+subsize]

	if '-I' in name:
		with open('trace/'+name,'r') as f:
			totalaccesses = 0
			for addr in f:
				totalaccesses+=1
				addr = int(addr)
				for cache in subcaches:
					cache.access(addr)
	else:
		with open('trace/'+name,'r') as f:
			totalaccesses = 0
			for line in f:
				totalaccesses+=1
				addr, mode = line.strip().split(' ')
				addr = int(addr)
				for cache in subcaches:
					cache.access(addr,mode)

	q.put([totalaccesses,subcaches,subsize,np])

if __name__ == '__main__':
	from os import listdir
	
	replacepol = ('lru','lifo','random')
	sizes = (128,256,512,1024,2048,4096,8192,16384,32768,65536)
	blocks = (4,8,16,32,64,128,256,512,1024)
	ways = (2,4,8,16,32)
	
	for trace in listdir('trace'):
		with open('trace/'+trace,'r') as f:
			caches = []
			if '-I' in trace:
				writemode = 'a'
				for size in sizes:
					for block in blocks:
						try:
							caches.append(Cache('direct',[size,block]))
						except ValueError:
							pass
						except AssertionError:
							pass	
			else:
				writemode = 'w'
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
				
				for size in sizes:
					for block in blocks:
						try:
							caches.append(Cache('direct',[size,block]))
						except ValueError:
							pass
						except AssertionError:
							pass	

			Np = 8
			q = Queue(Np)
			lcaches = len(caches)
			
			for np in range(Np):
				Process(target=work,args=(trace,q,Np,np,lcaches,caches)).start()
			
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
			
