import matplotlib.pyplot as plt
import numpy as np

def parsedata(fd,category):
	data = {}
	for line in fd:
		if line.startswith('\n'):
			pass
		elif line.startswith('\t'):
			size = int(line.split('\t',2)[1][:-1])
			accuracy = float(line.split(category+": ")[1].partition("%")[0])
			data[title][size] = accuracy
		else:
			title = line.split(" ")[0]
			data[title] = {}
	fd.seek(0,0)
	return data


if __name__ == "__main__":
	with open("databp.dump","r") as f:
		jals = parsedata(f,"Jal")
		branchs = parsedata(f,"Branchs")
	
	#plot
	x = np.array(list(jals['rsort'].keys()))
	labels = jals.keys()
	markers = ('o','P','X','d','*','x','o','P','X','d','*','x')
	
	fig, ax = plt.subplots()
	for label,marker in zip(labels,markers):
		yvals = []
		for xval in x:
			yvals.append(branchs[label][xval])

		yvals = np.array(yvals)
		ax.plot(x, yvals, label=label,marker=marker)
		ax.set_xscale('log', basex=2)
		ax.set_xticks(x)
		ax.set_xticklabels(map(str,x))
		

	
	ax.set_xlabel('Capacidad (#Instrucciones)')  # Add an x-label to the axes.
	ax.set_ylabel('Presición %')  # Add a y-label to the axes.
	#ax.set_title("Simple Plot")  # Add a title to the axes.
	ax.legend(bbox_to_anchor=(1.05, 1), loc='upper left', borderaxespad=0.) #Add legend
	plt.xlim([min(x),max(x)])
	plt.grid(True)
	plt.show()
