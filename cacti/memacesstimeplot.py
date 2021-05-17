import re
import matplotlib.pyplot as plt
import numpy as np

#[(size,blocksize,ways,accesstime),...]
def parsedata(fstream):
	data = []
	for line in fstream:
		pattern = r'Size:\s(\d+)\tBlockSize:\s(\d+)\tWays:\s(\d+)\tAcessTime:\s([\d\.]+)'
		match = re.match(pattern,line)
		if match:
			temp = (match.group(1),match.group(2),match.group(3))
			data.append(tuple(map(int,temp))+(float(match.group(4)),))
	return data

			

if __name__ == "__main__":
	with open('output.txt','r') as f:
		data = parsedata(f)

	size=0;blocksize=1;ways=2;accesst=3
	BLOCKSIZE = 4 
	WAY = 2

	y = []
	x = []
	for configuration in data:
		if (configuration[blocksize]==BLOCKSIZE and configuration[ways]==WAY):
			y.append(configuration[accesst])
			x.append(configuration[size]//4)

	fig, ax = plt.subplots()
	
	t2hz = lambda x: (1/(x*1e-9))*(1/1e6)
	y = list(map(t2hz,y))
	ax.plot(np.array(x), np.array(y),marker='X')
	ax.set_xscale('log', basex=2)
	ax.set_xticks(x)
	ax.set_xticklabels(map(str,x))

	ax.set_xlabel('Capacidad (#Instrucciones)')  # Add an x-label to the axes.
	ax.set_ylabel('Velocidad de Acceso(MHz)')  # Add a y-label to the axes.
	plt.xlim([min(x),max(x)])
	plt.grid(True)
	plt.show()