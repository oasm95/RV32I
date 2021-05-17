import re
import os
from copy import deepcopy
import matplotlib.pyplot as plt
import numpy as np
from math import ceil


def parsedata(fstream):
	data = {}
	for line in fstream:
		pattern = r'replace\sPolicy:\s(\w+),'
		match = re.search(pattern,line,)
		policy = match.group(1)
		if policy == 'lfsr': continue
		elif policy == 'lifo': policy = 'FIFO'
		elif policy == 'trivium': policy = 'Trivium'
		elif policy == 'lru': policy = 'LRU'
		elif policy == 'random': policy = 'Aleatorio'
		elif policy == 'treelru': policy = 'Tree-LRU'
		if policy not in data:
			data[policy] = {}

		pattern = r'size:\s(\d+),' 
		match = re.search(pattern,line)
		size = int(match.group(1))
		if size not in data[policy]:
			data[policy][size] = {}
		
		pattern = r'linewigth:\s(\d+),'
		match = re.search(pattern,line)
		blocksize = int(match.group(1))
		if blocksize not in data[policy][size]:
			data[policy][size][blocksize]={}

		pattern = r'ways:\s(\d+),'
		match = re.search(pattern,line)
		way = int(match.group(1)) if match else 1		
		
		pattern = r'MissRatio:\s([\d\.e\-]+)\%'
		match = re.search(pattern,line)
		miss = float(match.group(1))

		data[policy][size][blocksize][way] = miss
	
	return data

def getInstructionData(typeofdata='-I'):
	files = os.listdir('result')
	instr = {}
	for fname in files:
		if typeofdata in fname:
			with open('result/'+fname,'r') as f:
				benchmark = fname.split('-',1)[0]
				instr[benchmark] = parsedata(f)

	return instr

def getAccesstimes(fstream=None):
	data = {}
	fstream = fstream if fstream else open('output.txt','r')
	with fstream:
		for line in fstream:
			pattern = r'Size:\s(\d+)\tBlockSize:\s(\d+)\tWays:\s(\d+)\tAcessTime:\s([\d\.]+)'
			match = re.match(pattern,line)
			if match:
				size,block,way = map(int,(match.group(1),match.group(2),match.group(3)))
				if size not in data:
					data[size] = {}
				if block not in data[size]:
					data[size][block]={}
				data[size][block][way] = float(match.group(4))

	return data

#retardo de 11 ciclos y de ahi rafaga de 4 transacciones de 8 bytes
def TAP(blocksize,accesstime,failchance):
	delay = 16
	streamsize = 8
	maxstream = 4
	bytesperstream = streamsize*maxstream
	Tcicle = 1e9/338.733e6

	if blocksize >= bytesperstream:
		failtime = delay+ blocksize//streamsize + ((blocksize-bytesperstream)//(bytesperstream))*delay
	else:
		failtime = delay + ceil(blocksize/streamsize)

	tap = accesstime + (failchance/100)*(failtime*Tcicle)
	cpurelativetap = tap/Tcicle
	return tap, cpurelativetap

def topfive(accesstime,failchance):
	topV = [(0xfffff,0,0,0,0)]*5
	for policy in failchance:
		if policy == 'LRU' or policy == 'Aleatorio': continue
		for size in failchance[policy]:
			for block in failchance[policy][size]:
				for way in failchance[policy][size][block]:
					try:
						Ta = accesstime[size][block][way]
						fail = failchance[policy][size][block][way]
						tap = TAP(block,Ta,fail)
						topV.append((*tap,policy,size,block,way))
						topV.sort(key=lambda x: x[0])
						topV.pop()
					except KeyError:
						continue
	return topV



def ways_policy(fig,ax,subplotx,subploty,sizes,blocksize,data):
	for size,cnt in zip(sizes,range(subplotx*subploty)):
		markers = ['o','P','X','d','*','x','o','P','X','d','*','x']
		for policy in data.keys():
			rpy = []
			rpx = []
			if policy == 'direct' : continue
			for way in data[policy][size][blocksize].keys():
				rpx.append(way)
				rpy.append(100 -data[policy][size][blocksize][way])
			
			ax[cnt%subploty,cnt//subploty].plot(np.array(rpx), np.array(rpy), label=policy,marker=markers.pop())
			ax[cnt%subploty,cnt//subploty].set_xscale('log', basex=2)
			ax[cnt%subploty,cnt//subploty].set_xticks(rpx)
			ax[cnt%subploty,cnt//subploty].set_xticklabels(map(str,rpx))
		ax[cnt%subploty,cnt//subploty].set_title('Tamaño: '+str(size)+"Bytes - Bloque: "+str(blocksize)+"Bytes")
		ax[cnt%subploty,cnt//subploty].set_xlabel('Vias')  # Add an x-label to the axes.
		ax[cnt%subploty,cnt//subploty].set_ylabel('Aciertos %')  # Add a y-label to the axes.
		ax[cnt%subploty,cnt//subploty].legend(bbox_to_anchor=(1.05, 1), loc='upper left', borderaxespad=0.) #Add legend
		ax[cnt%subploty,cnt//subploty].grid(True)

def size_ways(fig,ax,subx,suby,policy,blocksize,data):
	argpol = policy
	formatting = lambda x: f"{x} Vías"
	markers = ['o','P','X','d','*','x','P','X','d','*','x']
	for way in (1,2,4,8,16,32):
		rpy = []
		rpx = []
		policy = 'direct' if way == 1 else argpol
		label = formatting(way) if way >1 else 'Directo'	
		for size in data[policy]:			
			rpx.append(size)
			rpy.append(100 -data[policy][size][blocksize][way])				
		
		ax.plot(np.array(rpx), np.array(rpy),label=label,marker=markers.pop())
		ax.set_xscale('log', basex=2)
		ax.set_xticks(rpx)
		ax.set_xticklabels(map(str,rpx))
	ax.set_ylabel('Aciertos %')
	ax.set_xlabel('Tamaño (Bytes)')
	ax.set_title(f'Bloque: {blocksize}Bytes')
	ax.legend(bbox_to_anchor=(1.05, 1), loc='upper left', borderaxespad=0.) #Add legend
	ax.grid(True)

def blocksize_size(fig,ax,subx,suby,sizes,policy,data):
	argpol = policy	
	formatting = lambda x: f"{x} Vías"
	for size,cnt in zip(sizes,range(subx*suby)):
		markers = ['o','P','X','d','*','x','P','X','d','*','x']
		for way in (1,2,4,8,16,32):
			rpy = []
			rpx = []
			policy = 'direct' if way == 1 else argpol
			label = formatting(way) if way >1 else 'Directo'	
			try:
				for blocksize in data[policy][size]:			
					rpx.append(blocksize)
					rpy.append(100 -data[policy][size][blocksize][way])				
				
				ax[cnt%suby,cnt//suby].plot(np.array(rpx), np.array(rpy),label=label,marker=markers.pop())
				ax[cnt%suby,cnt//suby].set_xscale('log', basex=2)
				ax[cnt%suby,cnt//suby].set_xticks(rpx)
				ax[cnt%suby,cnt//suby].set_xticklabels(map(str,rpx))
			except KeyError:
				continue
		ax[cnt%suby,cnt//suby].set_ylabel('Aciertos %')
		ax[cnt%suby,cnt//suby].set_xlabel('Bloque (Bytes)')
		ax[cnt%suby,cnt//suby].set_title(f'Tamaño: {size}Bytes')
		ax[cnt%suby,cnt//suby].legend(bbox_to_anchor=(1.05, 1), loc='upper left', borderaxespad=0.) #Add legend
		ax[cnt%suby,cnt//suby].grid(True)

def ways_policyTAP(fig,ax,subplotx,subploty,sizes,blocksize,hitchance,access,Tap=False):
	ylabel = 'Velocidad de acceso (MHz)' if not Tap else 'TAP (ns)'
	policy = 'LRU'
	for size,cnt in zip(sizes,range(subplotx*subploty)):
		markers = ['o','P','X','d','*','x','o','P','X','d','*','x']
		rpy = []
		rpx = []
		for way in hitchance[policy][size][blocksize].keys():
			try:
				if Tap:
					t = TAP(blocksize,access[size][blocksize][way],hitchance[policy][size][blocksize][way])[0]
					rpy.append(t)
				else:
					rpy.append((1/(access[size][blocksize][way]*1e-9))*(1/1e6))
				rpx.append(way)
			except KeyError:
				continue
		if rpy:	
			ax[cnt%subploty,cnt//subploty].plot(np.array(rpx), np.array(rpy), label=policy,marker=markers.pop())
			ax[cnt%subploty,cnt//subploty].set_xscale('log', basex=2)
			ax[cnt%subploty,cnt//subploty].set_xticks(rpx)
			ax[cnt%subploty,cnt//subploty].set_xticklabels(map(str,rpx))
			ax[cnt%subploty,cnt//subploty].set_title('Tamaño: '+str(size)+"Bytes - Bloque: "+str(blocksize)+"Bytes")
			ax[cnt%subploty,cnt//subploty].set_xlabel('Vias')  # Add an x-label to the axes.
			ax[cnt%subploty,cnt//subploty].set_ylabel(ylabel)  # Add a y-label to the axes.
			#ax[cnt%subploty,cnt//subploty].legend(bbox_to_anchor=(1.05, 1), loc='upper left', borderaxespad=0.) #Add legend
			ax[cnt%subploty,cnt//subploty].grid(True)

def size_waysTAP(fig,ax,subx,suby,policy,blocksize,hitchance,access,Tap=False):
	argpol = policy
	ylabel = 'Velocidad de acceso (MHz)' if not Tap else 'TAP (ns)'
	formatting = lambda x: f"{x} Vías"
	markers = ['o','P','X','d','*','x','P','X','d','*','x']
	flag = True
	for way in (1,2,4,8,16,32):
		rpy = []
		rpx = []
		policy = 'direct' if way == 1 else argpol
		label = formatting(way) if way >1 else 'Directo'	
		for size in hitchance[policy]:			
			try:
				if Tap:
					t = TAP(blocksize,access[size][blocksize][way],hitchance[policy][size][blocksize][way])[0]
					rpy.append(t)
				else:
					rpy.append((1/(access[size][blocksize][way]*1e-9))*(1/1e6))
				rpx.append(size)
			except KeyError:
				continue				
		if rpy:
			ax.plot(np.array(rpx), np.array(rpy),label=label,marker=markers.pop())
			if flag:
				ax.set_xscale('log', basex=2)
				ax.set_xticks(rpx)
				ax.set_xticklabels(map(str,rpx))
				flag = False
	ax.set_ylabel(ylabel)
	ax.set_xlabel('Tamaño (Bytes)')
	ax.set_title(f'Bloque: {blocksize}Bytes')
	ax.legend(bbox_to_anchor=(1.05, 1), loc='upper left', borderaxespad=0.) #Add legend
	ax.grid(True)

def blocksize_sizeTAP(fig,ax,subx,suby,sizes,policy,hitchance,access,Tap=False):
	argpol = policy	
	ylabel = 'Velocidad de acceso (MHz)' if not Tap else 'TAP (ns)'
	
	formatting = lambda x: f"{x} Vías"
	for size,cnt in zip(sizes,range(subx*suby)):
		markers = ['o','P','X','d','*','x','P','X','d','*','x']
		flag = True
		for way in (1,2,4,8,16,32):
			rpy = []
			rpx = []
			policy = 'direct' if way == 1 else argpol
			label = formatting(way) if way >1 else 'Directo'	
			try:
				for blocksize in hitchance[policy][size]:
					try:			
						if Tap:
							t = TAP(blocksize,access[size][blocksize][way],hitchance[policy][size][blocksize][way])[0]
							rpy.append(t)
						else:
							rpy.append((1/(access[size][blocksize][way]*1e-9))*(1/1e6))
						rpx.append(blocksize)
					except KeyError:
						continue				
				
				if rpy:
					ax[cnt%suby,cnt//suby].plot(np.array(rpx), np.array(rpy),label=label,marker=markers.pop())
					if flag:
						ax[cnt%suby,cnt//suby].set_xscale('log', basex=2)
						ax[cnt%suby,cnt//suby].set_xticks(rpx)
						ax[cnt%suby,cnt//suby].set_xticklabels(map(str,rpx))
						flag = False
			except KeyError:
				continue
		ax[cnt%suby,cnt//suby].set_ylabel(ylabel)
		ax[cnt%suby,cnt//suby].set_xlabel('Bloque (Bytes)')
		ax[cnt%suby,cnt//suby].set_title(f'Tamaño: {size}Bytes')
		ax[cnt%suby,cnt//suby].legend(bbox_to_anchor=(1.05, 1), loc='upper left', borderaxespad=0.) #Add legend
		ax[cnt%suby,cnt//suby].grid(True)

		
if __name__ == "__main__":
	data = getInstructionData('-I')
	accesstimes = getAccesstimes()

	NBenchmarks = len(data.keys())
	sample = 'towers'
	average = deepcopy(data[sample])

	for policy in data[sample].keys():
		for size in data[sample][policy].keys():
			for blocksize in data[sample][policy][size].keys():
				for way in data[sample][policy][size][blocksize].keys():
					sum = 0
					for benchmark in data.keys():
						sum+=data[benchmark][policy][size][blocksize][way]
					average[policy][size][blocksize][way]= sum/NBenchmarks

	top = topfive(accesstimes,average)
	for place,cnt in zip(top,range(5)):
		print(f"{cnt+1}: {place}")

	print(average['Tree-LRU'][8192][64][8],accesstimes[8192][64][8])

""" 	subploty = 4
	subplotx = 2
	
	blocksize = 4
	policy = "LRU"
	#sizes = (256,512,1024,2048,4096,8192,16384,32768) #hitchances
	sizes = (512,1024,2048,4096,8192,16384,32768,65536)
	
	fig, ax = plt.subplots(subploty,subplotx)
	#ways_policy(fig,ax,subplotx,subploty,sizes,blocksize,average)
	#blocksize_size(fig,ax,subplotx,subploty,sizes,policy,average)	
	#ways_policyTAP(fig,ax,subplotx,subploty,sizes,blocksize,average,accesstimes,True)
	blocksize_sizeTAP(fig,ax,subplotx,subploty,sizes,policy,average,accesstimes,Tap=True)	

	#fig,ax = plt.subplots()
	#size_ways(fig,ax,subplotx,subploty,policy,blocksize,average)
	#size_waysTAP(fig,ax,subplotx,subploty,policy,blocksize,average,accesstimes,True)
	
	plt.tight_layout()
	plt.show() """


 








