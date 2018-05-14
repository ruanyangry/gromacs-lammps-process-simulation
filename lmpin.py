# _*_ coding: utf-8 _*_

'''
@author: Ruan Yang
Created on 2018.5.7
Generated lammps contol parameters file.
Default force field: Amber
We used amber2lammpsry.py get the data file, angel_style = harmonic, dihedral_style = harmonic
In lammps manual for amber force field: angle_style = charmm, dihedral_style = charmm.
Simulation process: EM---NVE---NVT---NPT---ANNEAL---Production run.
'''

def lammpsin(filename,cutoff,dataname,timestep,temperature,runstep,bar,anneal,thermofrequency=1000,dumpfrequency=1000,\
producationrun='npt'):
	'''
	filename: The name of the .in file.
	cutoff(list): cut-off distance of Electrostatic force and van der Waals force, default=10.0,12.0
	mixing rule: geometric
	dataname: the name of data file
	restartname: the name of restart file
	timestep(list): the timestep size for subsequent molecular dynamics simulations. len(timestep)=2
	temperature(list): contains the temperature value used in .in file. len(temperature)=4
	runstep(list): contains the total steps for each fix run commands. len(runstep)=4
	bar(list): contains the pressure used for fix npt commands. len(bar)=3
	htype:
	thermofrequency: thermodynamics properties output frequency.
	dumpfrequency: dump every this many timesteps.
	anneal(list): do annealing simulation. if anneal[0]='on',start annealing procedure,anneal[1]=cycle,anneal[2]=Tstart,anneal[3]=deltT.
	producationrun: define the producation run ensemble. defaule='npt'
	'''
	with open('%s.in'%(filename),'w') as f:
		f.write('# Author Ruan Yang\n')
		f.write('# Default force field: Amber \n')
		f.write('\n')
		f.write('####################################################\n')
		f.write('  units             real\n')
		f.write('  atom_style        full\n')
		f.write('  dimension           3 \n')
		f.write('  newton             on\n')
		f.write('  boundary          p p p\n')
		f.write('####################################################\n')
		f.write('\n')
		f.write('####################################################\n')
		f.write('  pair_style lj/charmm/coul/long %.2f %.2f\n'%(cutoff[0],cutoff[1]))
		f.write('  pair_modify shift yes mix geometric\n')
		f.write('  bond_style harmonic\n')
		#f.write('  angle_style charmm\n')
		#f.write('  dihedral_style charmm\n')
		f.write('  angle_style harmonic\n')
		f.write('  dihedral_style harmonic\n')
		f.write('  kspace_style pppm 1.0e-4\n')
		f.write('  special_bonds amber\n')
		f.write('####################################################\n')
		f.write('\n')
		f.write('####################################################\n')
		f.write('  read_data     %s.data\n'%(dataname))
		f.write('####################################################\n')
		f.write('\n')
		f.write('####################################################\n')
		f.write('  dielectric     1.0\n')
		f.write('  neighbor       2.0 bin\n')
		f.write('  neigh_modify delay 0 every 1 check yes\n')
		f.write('  run_style      verlet\n')
		f.write('####################################################\n')
		f.write('\n')
		f.write('####################################################\n')
		f.write('  timestep       %.4f\n'%(timestep[0]))
		f.write('####################################################\n')
		f.write('\n')
		f.write('####################################################\n')
		f.write('  thermo_style   one\n')
		f.write('  thermo         10 \n')
		f.write('  run            0\n')
		f.write('####################################################\n')
		f.write('\n')
		f.write('####################################################\n')
		f.write('  shell mkdir EM\n')
		f.write('  shell cd EM\n')
		f.write('\n')
		f.write('  min_style      cg\n')
		f.write('  minimize 1.0e-5 1.0e-6 1000000 10000\n')
		f.write('  velocity all create %.2f 4928459 \n'%(temperature[0]))
		f.write('  write_data     %s_mini.data\n'%(filename))
		f.write('  write_restart  %s_mini.restart\n'%(filename))
		f.write(' \n')
		f.write('  print "minimize done"\n')
		f.write('  shell cd ../\n')
		f.write('####################################################\n')
		f.write('\n')
		f.write('####################################################\n')
		f.write('#  fix  Hshake  all shake 1.0e-4 10 0 t \n')
		f.write('####################################################\n')
		f.write('\n')
		f.write('####################################################\n')
		f.write('  shell mkdir nve\n')
		f.write('  shell cd nve\n')
		f.write('  \n')
		f.write('  fix    1  all   nve\n')
		f.write('  fix    2  all   langevin  300.0   300.0  10.0  12345\n')
		f.write('  \n')
		f.write('  write_data    nve.data \n')
		f.write('  write_restart nve.restart \n')
		f.write('  \n')
		f.write('  shell cd ../\n')
		f.write('####################################################\n')
		f.write('\n')
		f.write('####################################################\n')
		f.write('  shell mkdir nvt\n')
		f.write('  shell cd nvt\n')
		f.write('  \n')
		f.write('  timestep       %.4f\n'%(timestep[1]))
		f.write('  reset_timestep   0\n')
		f.write('  \n')
		f.write('  fix 1 all nvt temp %.4f %.4f 100\n'%(temperature[1],temperature[1]))
		f.write('  \n')
		f.write('# etotal = pe+ke\n')
		f.write('# epair = pairwise energy (evdwl + ecoul + elong + etail)\n')
		f.write('# emol = molecular energy (ebond + eangle + edihed + eimp)\n')
		f.write(' \n')
		f.write('  thermo         %d\n'%(thermofrequency))
		f.write('  thermo_style custom step temp press pe ke enthalpy evdwl \
		ecoul elong etail ebond eangle edihed eimp vol density pxx pyy pzz pxy pxz pyz\n')
		f.write(' \n')
		f.write('  dump 1 all custom %d %s_nvt.lammpstrj id type x y z vx vy vz fx fy fz\n'%(dumpfrequency,filename))
		f.write('  dump_modify 1 sort 1 first no\n')
		f.write('  \n')
		f.write('  log     %s_nvt.lammps\n'%(filename))
		f.write('  run     %d\n'%(runstep[0]))
		f.write('  \n')
		f.write('  unfix   1\n')
		f.write('  undump  1\n')
		f.write('  \n')
		f.write('  write_data     %s_nvt.data \n'%(filename))
		f.write('  write_restart  %s_nvt.restart \n'%(filename))
		f.write('  \n')
		f.write('  print " nvt done"\n')
		f.write('  \n')
		f.write('####################################################\n')
		f.write('\n')
		f.write('####################################################\n')
		f.write('  fix 1 all npt temp %.4f %.4f 100 iso %.4f %.4f 100 drag 0.2\n'%(temperature[2],\
		temperature[2],bar[0],bar[0]))
		f.write('  \n')
		f.write('  thermo %d\n'%(thermofrequency))
		f.write('  thermo_style custom step temp press pe ke enthalpy evdwl \
		ecoul elong etail ebond eangle edihed eimp vol density pxx pyy pzz pxy pxz pyz\n')
		f.write('  \n')
		f.write('  dump 1 all custom %d %s_npt.lammpstrj id type x y z vx vy vz fx fy fz\n'%(dumpfrequency,filename))
		f.write('  dump_modify 1 sort 1 first no\n')
		f.write('  \n')
		f.write('  log      %s_npt.lammps\n'%(filename))
		f.write('  \n')
		f.write('  run       %d\n'%(runstep[1]))
		f.write('  \n')
		f.write('  unfix     1\n')
		f.write('  undump    1\n')
		f.write('  \n')
		f.write('  write_data      %s_npt.data\n'%(filename))
		f.write('  write_restart   %s_npt.restart \n'%(filename))
		f.write('  \n')
		f.write('  print "npt done"\n')
		f.write('  \n')
		f.write('  shell cd ../\n')
		f.write('####################################################\n')
		f.write('\n')
		f.write('####################################################\n')
		if anneal[0] == "on":
			f.write('  shell mkdir anneal\n')
			f.write('  shell cd anneal\n')
			f.write('  \n')
			f.write('  reset_timestep 0.0\n')
			f.write('  \n')
			f.write('  label loopa\n')
			f.write('  variable i loop %d\n'%(anneal[1]))
			f.write('  variable anneal_T equal %.4f+%.4f*$i\n'%(anneal[2],anneal[3]))
			f.write('  \n')
			f.write('  fix 1 all npt temp ${anneal_T} ${anneal_T} 100 iso %.4f %.4f 100 drag 0.2\n'%(bar[1],\
			bar[1]))
			f.write('  \n')
			f.write('  thermo   %d\n'%(thermofrequency))
			f.write('  thermo_style custom step temp press pe ke enthalpy evdwl ecoul elong etail ebond \
			eangle edihed eimp vol density pxx pyy pzz pxy pxz pyz\n')
			f.write('  \n')
			f.write('  dump 1 all custom 1000 ${anneal_T}_anneal.lammpstrj id type x y z vx vy vz fx fy fz\n')
			f.write('  dump_modify 1 sort 1 first no\n')
			f.write('  \n')
			f.write('  log      ${anneal_T}.lammps\n')
			f.write('  \n')
			f.write('  run      %d\n'%(runstep[2]))
			f.write('  \n')
			f.write('  unfix    1\n')
			f.write('  undump   1\n')
			f.write('  \n')
			f.write('  write_data    ${anneal_T}_anneal.data\n')
			f.write('  write_restart ${anneal_T}_anneal.restart\n')
			f.write('  \n')
			f.write('  next i\n')
			f.write('  jump ../%s.in loopa\n'%(filename))
			f.write('  \n')
			f.write('  print "anneal done"\n')
			f.write('  \n')
			f.write('  shell cd ../\n')
			f.write('####################################################\n')
			f.write('  \n')
			f.write('####################################################\n')
		f.write('  shell mkdir %spd\n'%(producationrun))
		f.write('  shell cd %spd\n'%(producationrun))
		f.write('  \n')
		if producationrun=='npt':
			f.write('  fix 1 all %s temp %.4f %.4f 100 iso %.4f %.4f 100 drag 0.2\n'%(producationrun,temperature[3],\
			temperature[3],bar[2],bar[2]))
		if producationrun=='nvt':
			f.write('  fix 1 all %s temp %.4f %.4f 100\n'%(producationrun,temperature[3],temperature[3]))
		f.write('  \n')
		f.write('  thermo %d\n'%(thermofrequency))
		f.write('  thermo_style custom step temp press pe ke enthalpy evdwl \
		ecoul elong etail ebond eangle edihed eimp vol density pxx pyy pzz pxy pxz pyz\n')
		f.write('  \n')
		f.write('  dump 1 all custom %d %s_%spd.lammpstrj id type x y z vx vy vz fx fy fz\n'%(dumpfrequency,filename,producationrun))
		f.write('  dump_modify 1 sort 1 first no\n')
		f.write('  \n')
		f.write('  log      %s_%spd.lammps\n'%(filename,producationrun))
		f.write('  \n')
		f.write('  run       %d\n'%(runstep[3]))
		f.write('  \n')
		f.write('  unfix     1\n')
		f.write('  undump    1\n')
		f.write('  \n')
		f.write('  write_data      %s_%spd.data\n'%(filename,producationrun))
		f.write('  write_restart   %s_%spd.restart \n'%(filename,producationrun))
		f.write('  \n')
		f.write('  print "%spd done"\n'%(producationrun))
		f.write('  \n')
		f.write('  shell cd ../\n')
		
def polyrelax(filename,cutoff,dataname,timestep,temperature=[1000.0,1000.0,300.0],bar=\
[1000.0,30000.0,50000.0,25000.0,5000.0,500.0,1.0],run=[100000,100000,1000000]):
	'''
	Polymer initial coordinate structure relaxed.
	Simulation process: EM---(NVT-NVT-NPT)*3
	                    NVT: 0.1 ns
	                    NVT: 0.1 ns
	                    NPT: 1.0 ns
	If you publish work using Polymatic or variations of it, please cite this paper and the source code.
	Reference:Abbott, L. J.; Hart, K. E.; Colina, C. M. \Polymatic: A Generalized Simulated \
              Polymerization Algorithm for Amorphous Polymers." Theor. Chem. Acc., 2013, 132, \
              1334. DOI: 10.1007/s00214-013-1334-z.
              Abbott, L. J.; Colina, C. M. Polymatic: A Simulated Polymerization Algo-rithm, \
              Version 1.1, 2015, https://nanohub.org/resources/17278.
	
	filename: The name of the .in file.
	cutoff(list): cut-off distance of Electrostatic force and van der Waals force, default=10.0,12.0
	mixing rule: geometric
	dataname: the name of data file
	timestep: the timestep size for subsequent molecular dynamics simulations.
	temperature(list): NVT-NVT-NPT temperature. [1000.0,1000.0,300.0]
	bar(list): NVT-NVT-NPT pressure. [0.02*Pmax,0.6*Pmax,Pmax=50000,0.5*Pmax,0.1*Pmax,0.01*Pmax,Pfinal=1 bar]
	'''
	with open('%s.in'%(filename),'w') as f:
		f.write('# Author Ruan Yang\n')
		f.write('# Reference:Abbott, L. J.; Hart, K. E.; Colina, C. M. \
		Polymatic: A Generalized Simulated Polymerization Algorithm for Amorphous Polymers." Theor. Chem. Acc., 2013, 132, 1334. DOI: 10.1007/s00214-013-1334-z.\n')
		f.write('# Abbott, L. J.; Colina, C. M. Polymatic: A Simulated Polymerization Algo-rithm,Version 1.1, 2015, https://nanohub.org/resources/17278.\n')           
		f.write('# Default force field: Amber \n')
		f.write('\n')
		f.write('####################################################\n')
		f.write('  units             real\n')
		f.write('  atom_style        full\n')
		f.write('  dimension           3 \n')
		f.write('  newton             on\n')
		f.write('  boundary          p p p\n')
		f.write('####################################################\n')
		f.write('\n')
		f.write('####################################################\n')
		f.write('  pair_style lj/charmm/coul/long %.2f %.2f\n'%(cutoff[0],cutoff[1]))
		f.write('  pair_modify shift yes mix geometric\n')
		f.write('  bond_style harmonic\n')
		#f.write('  angle_style charmm\n')
		#f.write('  dihedral_style charmm\n')
		f.write('  angle_style harmonic\n')
		f.write('  dihedral_style harmonic\n')
		f.write('  kspace_style pppm 1.0e-4\n')
		f.write('  special_bonds amber\n')
		f.write('####################################################\n')
		f.write('\n')
		f.write('####################################################\n')
		f.write('  read_data     %s.data\n'%(dataname))
		f.write('####################################################\n')
		f.write('\n')
		f.write('####################################################\n')
		f.write('  dielectric     1.0\n')
		f.write('  neighbor       2.0 bin\n')
		f.write('  neigh_modify delay 0 every 1 check yes\n')
		f.write('  run_style      verlet\n')
		f.write('####################################################\n')
		f.write('\n')
		f.write('####################################################\n')
		f.write('  timestep       %.4f\n'%(timestep))
		f.write('####################################################\n')
		f.write('\n')
		f.write('####################################################\n')
		f.write('  shell mkdir EM\n')
		f.write('  shell cd EM\n')
		f.write('\n')
		f.write('  min_style      cg\n')
		f.write('  minimize 1.0e-5 1.0e-6 1000000 10000\n')
		f.write('  velocity all create %.2f 4928459 \n'%(temperature[0]))
		f.write('  write_data     %s_mini.data\n'%(filename))
		f.write('  write_restart  %s_mini.restart\n'%(filename))
		f.write(' \n')
		f.write('  print "minimize done"\n')
		f.write('  shell cd ../\n')
		f.write('####################################################\n')
		f.write('\n')
		f.write('####################################################\n')
		f.write('  timestep       %.4f\n'%(timestep))
		f.write('  reset_timestep  0\n')
		f.write('####################################################\n')
		f.write('\n')
		f.write('####################################################\n')
		f.write('  shell mkdir 21step\n')
		f.write('  shell cd 21step\n')
		f.write('  \n')
		for i in range(len(bar)):
			f.write('  fix  1  all  nvt  temp  %.4f %.4f 100.0\n'%(temperature[0],temperature[0]))
			f.write('  \n')
			f.write('  thermo 1000\n')
			f.write('  thermo_style custom step temp press pe ke enthalpy evdwl \
			ecoul elong etail ebond eangle edihed eimp vol density pxx pyy pzz pxy pxz pyz\n')
			f.write('  \n')
			f.write('  log 21step.lammps\n')
			f.write('  \n')
			f.write('  run    %d\n'%(run[0]))
			f.write('  \n')
			f.write('  unfix    1\n')
			f.write('  \n')
			f.write('  write_data  %d_nvt.data\n'%(i*3+1))
			f.write('  write_restart  %d_nvt.restart\n'%(i*3+1))
			f.write('  \n')
			f.write('  fix  1  all  nvt  temp  %.4f %.4f 100.0\n'%(temperature[1],temperature[1]))
			f.write('  \n')
			f.write('  thermo 1000\n')
			f.write('  thermo_style custom step temp press pe ke enthalpy evdwl \
			ecoul elong etail ebond eangle edihed eimp vol density pxx pyy pzz pxy pxz pyz\n')
			f.write('  \n')
			f.write('  log 21step.lammps append\n')
			f.write('  \n')
			f.write('  run    %d\n'%(run[1]))
			f.write('  \n')
			f.write('  unfix    1\n')
			f.write('  \n')
			f.write('  write_data  %d_nvt.data\n'%(i*3+2))
			f.write('  write_restart  %d_nvt.restart\n'%(i*3+2))
			f.write('  \n')
			f.write('  fix  1  all  npt  temp  %.4f %.4f 100.0 iso %.4f %.4f 100.0  drag 0.2\n'%(temperature[2],\
			temperature[2],bar[i],bar[i]))
			f.write('  \n')
			f.write('  thermo 1000\n')
			f.write('  thermo_style custom step temp press pe ke enthalpy evdwl \
			ecoul elong etail ebond eangle edihed eimp vol density pxx pyy pzz pxy pxz pyz\n')
			f.write('  \n')
			f.write('  log 21step.lammps append\n')
			f.write('  \n')
			f.write('  run    %d\n'%(run[2]))
			f.write('  \n')
			f.write('  unfix    1\n')
			f.write('  \n')
			f.write('  write_data  %d_npt.data\n'%(i*3+3))
			f.write('  write_restart  %d_npt.restart\n'%(i*3+3))
			f.write('  \n')
		f.write('  print "polymer relax done"\n')
		f.write('  shell cd ../\n')



