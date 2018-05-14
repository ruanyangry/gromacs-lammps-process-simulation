# _*_ coding: utf-8 _*_

import GenerateFF as GF
import Gmxmdp as GM
import GenerateSH as GSH
import numpy as np
from scipy.interpolate import interp1d
import os
import lmpin
import Gmxplot as GL

# mol2 file location
name,smi=GF.loadData('molecules.smi')
name=np.array(name)
smi=np.array(smi)

os.mkdir('molStructure')
os.chdir('molStructure')

print('#-------------------------------------------------------#')
print('                        Start                            ')
print('#-------------------------------------------------------#')
print(' \n')

for i in range(len(name)):
	# mkdir cd 
	os.mkdir('%s'%(name[i]))
	os.chdir('%s'%(name[i]))
	GF.Smi2mol2(name[i],smi[i])
	Molmass,tcharge,element=GF.readmol2(name[i]+'.mol2')
	with open('%s-information.txt'%(name[i]),'w') as f:
		f.write('%s molecule charge = %.2f'%(name[i],tcharge))
		f.write('\n')
		f.write('Unique element in %s\n'%(name[i]))
		f.write('%s'%(element))
	box=[0.,0.,0.,40.,40.,40.]
	nmol=GF.nmolecule(Molmass,box)
	methods=["acpypeantechamber","GaussianAntechamber"]
	method="GaussianAntechamber"
	if(method==methods[0]):
		GF.Packmolinputfile(name[i],'pdb',nmol,box,method)
		GF.acpypeantechamber(name[i],nmol)
	else:
		GF.Packmolinputfile(name[i],'pdb',nmol,box)
		GF.GaussianAntechamber(name[i],nmol)
	
	os.chdir('../')
	
print('#-------------------------------------------------------#')
print("                   Generated mdp file                    ")
print('#-------------------------------------------------------#')
print("\n")

GM.Emmdp(method='steep',emtol=1000,nsteps=50000,rcoulomb=1.0,rvdw=1.0)	

GM.Equilibrium(ensemble='npt',integrator='md',nsteps=10000,dt=0.002,outfrequency=500,\
constraints='all-bonds',rcoulomb=1.0,rvdw=1.0,tcoupl='V-rescale',pcoupl='Parrinello-Rahman',\
pcoupltype='isotropic',ref_p=1.0,ref_t=300.0)

GM.Equilibrium(ensemble='nvt',integrator='md',nsteps=10000,dt=0.002,outfrequency=500,\
constraints='all-bonds',rcoulomb=1.0,rvdw=1.0,tcoupl='V-rescale',ref_t=300.0,pcoupl='no',\
pcoupltype='isotropic',ref_p=1.0)

GM.Standmdp(mdpname='nptpd',ensemble='npt',dt=0.002,nsteps = 100000,outfrequency=500,rcoulomb=1.00,rvdw=1.00,tcoupl='V-rescale',\
ref_t=300.0,pcoupl='Parrinello-Rahman',pcoupltype='isotropic',ref_p=1.0,GB='off',QMMM='off',Anneal='off',annealmethod='single',\
npoints=30,deltT=10.0,timepoint=1000,temperatureStart=100,simulationState='new',constraints='all-bonds',walls='off',\
pull='off',rotation='off',NMR='off',freeenergy='off',nemd='off',tempering='off',electric='off',electrophysiology='off')		

GM.Standmdp(mdpname='anneal',ensemble='npt',dt=0.002,nsteps = 1500000,outfrequency=500,rcoulomb=1.00,rvdw=1.00,tcoupl='V-rescale',\
ref_t=300.0,pcoupl='Parrinello-Rahman',pcoupltype='isotropic',ref_p=1.0,GB='off',QMMM='off',Anneal='on',annealmethod='single',\
npoints=30,deltT=10.0,timepoint=1000,temperatureStart=100,simulationState='new',constraints='all-bonds',walls='off',\
pull='off',rotation='off',NMR='off',freeenergy='off',nemd='off',tempering='off',electric='off',electrophysiology='off')		

print('#-------------------------------------------------------#')
print('                 Generated shell file                    ')
print('#-------------------------------------------------------#')
print('\n')

GSH.ShellF(GAfilename='GaussianAntechamber',molname=name,nt=8)

print('#-------------------------------------------------------#')
print('                Generated LAMMPS .in file                ')
print('#-------------------------------------------------------#')
print('\n')

lmpin.lammpsin('mobley_1017962',[10.0,12.0],'mobley_1017962',[1,2],[300.0,300.0,300.0,300.0],[1000,1000,1000,10000],\
[1.0,1.0,1.0],['on',30,200.0,10],thermofrequency=1000,dumpfrequency=1000,\
producationrun='npt')

lmpin.polyrelax('polyrelax',[10.0,12.0],'chain',1,temperature=[1000.0,1000.0,300.0],bar=\
[1000.0,30000.0,50000.0,25000.0,5000.0,500.0,1.0],run=[1000,1000,1000])

print('#-------------------------------------------------------#')
print('                        Test plot                        ')
print('#-------------------------------------------------------#')
print('\n')

os.chdir('../')

column,data=GL.readxvg('mobley_1017962_energy.xvg')
ThermoP=GL.thermodynamic_properties(data,100)
GL.write_ThermoP('mobley_1017962',ThermoP)

column,data=GL.readxvg('density.xvg')
GL.coordpropertiesplot(column,data,['density','kg/m^3'],combine='off',interpolate='on',kind='cubic')
	
print('#-------------------------------------------------------#')
print('SMILES convert to mol2 and packmol input file write done ')
print('    GROMACS .mdp file and LAMMPS .in file write done     ')
print('               Shell file write done                     ')
print('           Thermodynamic properties write done           ')
print('                      Plot done                          ')
print('#-------------------------------------------------------#')
