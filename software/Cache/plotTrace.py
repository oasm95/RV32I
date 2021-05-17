import matplotlib.pyplot as plt
import matplotlib.ticker as ticker

with open("trace/towers-I.txt",'r') as f:
	 trace = []
	 for line in f:
		 #trace.append(int(line.split(' ')[0])) #-D
		 trace.append(int(line.strip()))

fig, ax = plt.subplots()

ax.scatter(range(len(trace)),trace)

ax.set_xlabel('Ciclo')  # Add an x-label to the axes.
ax.set_ylabel('Dirección de Memoria')  # Add a y-label to the axes.

plt.show()