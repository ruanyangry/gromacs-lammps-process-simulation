# _*_ coding: utf-8 _*_

'''
Author: Ruan Yang
Read lammps output file: fix ave/chunk, fix ave/time, log and lammps trajectory file
'''

import numpy as np

# Read fix ave/chunk file

def avechunk(filename,totstep,frequency,label=["density","coordinate (nm)","kg/m^3","Z-d"]):
	'''
	filename: fix ave/chunk command write file name.
	totstep: total steps
	frequency: output frequency
	label(list): The properties calculated by fix ave/chunk
	label[0]: ylabel and plot legend, label[1]: x label, label[2]: y label unit, label[3]: save file name
	default length units: ns
	'''
	data=[]
	m=int(totstep/frequency)
	with open(filename,'r') as f:
		lines=f.readlines()
		comment=0
		for line in lines:
			words=line.strip().split()
			if line.startswith("#"):
				comment += 1
				continue
			n=int((lines[comment].strip().split())[1])
			if comment==3 and len(words)==4:
				data.append([float(word) for word in words])
				
		data=np.array(data).reshape([m,n,4])
		avedata=np.zeros([n,4])
	
	for i in range(m):
		for j in range(n):
			for k in range(4):
				avedata[j,k]=np.mean(data[i,j,k])
	
	# np.savetxt() just write 1D and 2D array
	np.savetxt("%s-averagedata.txt"%(label[3]),avedata)
	np.savetxt("%s-rawdata.txt"%(label[3]),(data.reshape([m*n,4])))
				
	import matplotlib.pyplot as plt
	
	plt.plot(avedata[:-2,1]/10.0,avedata[:-2,-1],'g-',lw=2.0,label="%s"%(label[0]))
	plt.xlabel('%s'%(label[1]))
	plt.ylabel('%s/%s'%(label[0],label[2]))
	plt.savefig("%s.jpg"%(label[3]),dpi=300)
	plt.show()
	return data,avedata
		
def avetime(filename,totstep,frequency):
	'''
	filename: fix ave/time command write file name.
	totstep: total steps
	frequency: output frequency
	default time units: ns
	'''
	m=int(totstep/frequency)+1
	data=[]
	
	with open(filename,'r') as f:
		lines=f.readlines()
		comment=0
		for line in lines:
			if line.startswith("#"):
				comment += 1
		n=int((lines[comment].strip().split())[1])
		print(m,n)
				
		for line in lines[comment:]:
			words=line.strip().split()
			if int(words[0]) in [(i+1) for i in range(n)]:
				data.append([float(word) for word in words])
				
		# Convert list to array
		data=np.array(data).reshape([m,n,2])
		avedata=np.zeros([m,n])

		print(data.shape)
		for i in range(m):
			for j in range(n):
				avedata[i,j]=np.mean(data[i,j,1])
				
		np.savetxt("%s_avetime_averagedata.txt"%(filename),avedata)
		
		Time=[i*0.001 for i in range(avedata.shape[0])] # ns
		
		# Draw plot
		import matplotlib.pyplot as plt
		plt.plot(Time,avedata[:,0],lw=2.0,label="X")
		plt.plot(Time,avedata[:,1],lw=2.0,label="Y")
		plt.plot(Time,avedata[:,2],lw=2.0,label="Z")
		plt.plot(Time,avedata[:,3],lw=2.0,label="Total")
		plt.legend(loc="best")
		plt.savefig("%s.jpg"%(filename),dpi=300)
		
def readlog(filename,totstep,frequency):
	'''
	filename: log command write file name.
	totstep: total steps
	frequency: output frequency
	default time units: ns
	'''
	with open(filename,"r") as f:
		lines=f.readlines()
		ignore=0
		column=[]
		data=[]
		for line in lines:
			ignore +=1
			if line.startswith("Step"):
				comment=ignore
				column.append(line.strip().split(' '))
				break
		
		for line in lines[comment:int(totstep/frequency)+1+comment]:
			words=line.strip().split()
			data.append([float(word) for word in words])

		data=np.array(data)
		np.savetxt("log.txt",data)
		
		import matplotlib.pyplot as plt
		Time=data[:,0]
		for i in range(1,data.shape[1]):
			plt.figure()
			plt.plot(Time/frequency/1000,data[:,i],lw=2.0,label="%s"%(column[0][i]))
			plt.xlabel("Time (ns)")
			plt.ylabel("%s"%(column[0][i]))
			plt.xticks(np.linspace(np.min(Time/frequency/1000),np.max(Time/frequency/1000),8))
			plt.yticks(np.linspace(np.min(data[:,i]),np.max(data[:,i]),8))
			plt.legend(loc="best")
			plt.tight_layout()
			plt.savefig("Time-%s"%(column[0][i]),dpi=300)
		
def readlammpstrj(filename,totstep,frequency,totatom):
	'''
	filename: log command write file name.
	totstep: total steps.
	frequency: output frequency.
	totatom: total atoms in simulation box.
	dump command: dump 1 all custom 1000 nvt.lammpstrj id type x y z vx vy vz fx fy fz
	return data shape (totstep/frequency+1,totatom,(id type x y z vx vy vz fx fy fz))\
	three dimensional data.
	'''
	
	m=int(totstep/frequency)+1
	data=[]
	
	with open(filename,"r") as f:
		lines = f.readlines()
		for line in lines:
			if line.startswith("ITEM:"):
				words=line.strip().split()
				if words[1] == "ATOMS":
					n=len(words)-2
					break
		print(n)
		for line in lines:
			words=line.strip().split()
			if len(words) == n:
				data.append([float(word) for word in words])
		
		np.savetxt("%s.txt"%(filename),data)
		
		data=np.array(data).reshape([m,totatom,n])
		return data
				
