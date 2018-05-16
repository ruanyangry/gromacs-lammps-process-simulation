# _*_ coding: utf-8 _*_

'''
@author: Ruan Yang
Created on 2018.5.11
matplotlib: https://matplotlib.org/
gmx-thermo.py: https://github.com/z-gong/lab-code
'''

import numpy as np
import matplotlib.pyplot as plt

def readxvg(molname):
	'''
	function gmxenergy load .xvg file data
	molname: gmx energy tools output file molname_energy.xvg
	'''
	column=['Time']
	data=[]
	with open(molname,'r') as f:
		lines=f.readlines()
		for line in lines:
			if line.startswith('#'):
				continue
			if line.startswith('@'):
				if not line.startswith('@ s'):
					continue
				column.append(line.strip().split('"')[-2])
				continue
			words=line.strip().split()
			# convert string to float type
			data.append([float(word) for word in words])
		data=(np.array(data)).reshape(len(data),len(column))
	return column,data
	
def thermodynamic_properties(data,nmol):
	'''
	data: array record gmx energy command output file.
	nmol: molecules number
	'''
	kB = 8.314 # J/mol/K
	Temperature=data[:,13] # K
	Pressure=data[:,15] # Bar
	U=data[:,12] # Total Energy (kJ/mol)
	H=data[:,23] # Enthalpy (kJ/mol)
	Volume=data[:,20]  # nm^3
	Density=data[:,21] # kg/m^3
	pV=data[:,22] # kJ/mol 
	Uconf=data[:,10] # Potential (kJ/mol)
	Hconf=Uconf+pV  # kJ/mol G=U-TS+pV, S=0
	VHconf=Volume*Hconf # nm^3*kJ/mol
	kaiT=(np.var(Volume)/kB/np.mean(Temperature)/np.mean(Volume))* 6.022E-4 # K
	alphaP=(np.mean(VHconf)-np.mean(Volume)*np.mean(Hconf))/np.mean(Volume)/kB/(np.mean(Temperature)**2)*1E3 # /Pa
	CpRes=(((np.mean(Uconf*Hconf)-np.mean(Uconf)*np.mean(Hconf))*1E6+(np.mean(Volume*Hconf)-np.mean(Volume)*np.mean(Hconf))*\
	6.0224E4*np.mean(Pressure))/kB/(np.mean(Temperature)**2)-kB)/nmol
	CvRes=CpRes-np.mean(Temperature)*np.mean(Volume)*alphaP**2/kaiT/nmol*6.022E-4 # J/mol/K
	Cp=CpRes
	Cv=CvRes
	Hvap=kB*np.mean(Temperature)/1000.0-np.mean(Uconf)/nmol
	VHconf=np.mean(VHconf)
	ThermoP=[np.mean(Temperature),np.mean(Pressure),np.mean(Density),Hvap,kaiT,alphaP,Cp,Cv,np.mean(Hconf),VHconf]
	return ThermoP
	
def write_ThermoP(molname,ThermoP):
	'''
	print molecule thermodynamic properties
	'''
	with open('%s_thermodynamic_properties.txt'%(molname),'w') as f:
		f.write('Temperature = %.4f (K)\n'%(ThermoP[0]))
		f.write('Pressure    = %.4f (Bar)\n'%(ThermoP[1]))
		f.write('Density     = %.4f (kg/m^3)\n'%(ThermoP[2]))
		f.write('Enthalpy of vaporization = %.4f (kJ/mol)\n'%(ThermoP[3]))
		f.write('kaiT        = %.4f (K)\n'%(ThermoP[4]))
		f.write('alphaP      = %.4f (1/pa)\n'%(ThermoP[5]))
		f.write('Cp          = %.4f (J/mol/K)\n'%(ThermoP[6]))
		f.write('Cv          = %.4f (J/mol/K)\n'%(ThermoP[7]))
		f.write('\n')		
	
	
# coordinates --- properties

def diff(n1,n2):
	error=n1-n2
	return np.sum(error**2)

def coordpropertiesplot(column,data,properties,combine='on',interpolate=['on','cubic'],\
polyfitv=["on",[0,1,2,3,4,5,6,7,8]]):
	'''
	column: define the columns properties
	data: data file
	properties: define the Y axis name and unit (list)
	combine or seperate : all lines in one figure(combine),one line one figure(seperate)
	interpolate: interp1d kind=['linear','nearest','zero','slinear','quadratic','cubic'],default='cubic'.\
	if interpolate=='on', Interpolate the data.
	'''
	from scipy.interpolate import interp1d
	from numpy import polyfit
	
	coordinate=data[:,0]
	m,n=data.shape
	datainterp1d=np.zeros([m*10,n])
	polycoefficient=np.zeros([n])
	polyvalues=np.zeros([m,n,9])
	
	for i in range(1,len(column)):
		error=[]
		if interpolate[0]=='on':
			f=interp1d(coordinate,data[:,i],kind='%s'%(interpolate[1]))
			newcoordinate=np.linspace(np.min(coordinate),np.max(coordinate),m*10)
			datainterp1d[:,i]=f(newcoordinate)
		if combine=='on':
			plt.figure(111)
			plt.plot(coordinate,data[:,i],label='%s'%(column[i]),lw=2.0)
			plt.plot(newcoordinate,datainterp1d[:,i],'r.',label='%s_interpolate'%(column[i]),lw=2.0)
			plt.xlabel("coordinate (nm)")
			plt.xticks(fontsize=16)
			plt.ylabel("%s %s"%(properties[0],properties[1]),fontsize=12)
			plt.yticks(fontsize=16)
			plt.legend(loc="best")
			plt.tight_layout()
			plt.savefig("%s.jpg"%(properties[0]),dpi=300)
		else:
			plt.figure()
			plt.plot(coordinate,data[:,i],'b-',label='%s'%(column[i]),lw=2.0)
			plt.plot(newcoordinate,datainterp1d[:,i],'r.',label='%s_interpolate'%(column[i]),lw=2.0)
			plt.xlabel("coordinate (nm)",fontsize=12)
			plt.xticks(fontsize=16)
			plt.ylabel("%s %s"%(properties[0],properties[1]),fontsize=12)
			plt.yticks(fontsize=16)
			plt.legend(loc="best")
			plt.tight_layout()
			plt.savefig("%s_%s.jpg"%(column[i],properties[0]),dpi=300)
		if polyfitv[0]=="on":
			for j in range(len(polyfitv[1])):
				polyvalues[:,i,j]=np.polyval(np.polyfit(coordinate,data[:,i],polyfitv[1][j]),coordinate)
				error.append(diff(polyvalues[:,i,j],data[:,i]))
			#indexs=error.index(min(error))
			indexs=error.index(min(error))
			plt.figure()
			plt.plot(coordinate,data[:,i],'b-',label='%s'%(column[i]),lw=2.0)
			plt.plot(coordinate,polyvalues[:,i,indexs],'g-.',label='%s_polyfit'%(column[i]),lw=2.0)
			plt.xlabel("coordinate (nm)",fontsize=12)
			plt.xticks(fontsize=16)
			plt.ylabel("%s %s"%(properties[0],properties[1]),fontsize=12)
			plt.yticks(fontsize=16)
			plt.legend(loc="best")
			plt.tight_layout()
			plt.savefig("%s_%s.jpg"%(column[i],properties[0]),dpi=300)
			
				
			
	np.savetxt('%s.txt'%(properties[0]),data)
	if interpolate=='on':
		np.savetxt('%s_interpolate.txt'%(properties[0]),datainterp1d)
	if polyfit=="on":
		np.savetxt('%s_polyfit.txt'%(properties[0]),polyvalues)
		

# Test readxvg(), thermodynamic_properties(),write_ThermoP() 	
#column,data=readxvg('mobley_1017962_energy.xvg')
#ThermoP=thermodynamic_properties(data,100)
#print(len(column))
#print((data))
#print(ThermoP)
#write_ThermoP('mobley_1017962',ThermoP)

# Test readxvg(), coordpropertiesplot()
column,data=readxvg('mass-d.xvg')
coordpropertiesplot(column,data,['density','kg/m^3'],combine='off',interpolate=['on','cubic'],\
polyfitv=["on",[0,1,2,3,4,5,6,7,8]])
