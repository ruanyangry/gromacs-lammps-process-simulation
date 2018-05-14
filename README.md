# gromacs-lammps-Process-simulation  

  I hope to realize the process simulation and high throughput screening material.

  This repository contained  python code used to do gromacs and lammps molecular dynamics simulation. Process to generate topology   files compatible with AMBER force field (GAFF). Automatically generate simulation control files for gromacs and lammps.   
  
# athor: Ruan Yang
  
# pre-installed software and python code 

  GROMACS: http://lammps.sandia.gov/  
  LAMMPS: http://lammps.sandia.gov/  
  Anaconda: https://mirrors.tuna.tsinghua.edu.cn/anaconda/archive/  
  Openbabel-2.4.1: http://openbabel.org/wiki/Main_Page  
  Antechamber: http://ambermd.org/antechamber/ac.html  
  Gaussian: http://gaussian.com/  
  PACKMOL: http://www.ime.unicamp.br/~martinez/packmol/userguide.shtml  
  Acpype.py: https://github.com/t-/acpype  
  amber2lammpsry.py: https://github.com/lammps/lammps/tree/master/tools/amber2lmp  
  
 # Script basic idea  
   
   1. Get SMILES format file for organic matter (web scraping with python, updates coming soon);  
   2. Fitting molecules RESP charge (Gaussian);
   3. Antechamber+acpype.py generated GAFF force field files .top and .gro;
   4. PACKMOL build molecules bulk system;
   5. GROMACS and LAMMPS run molecular dynamics simulation;
   6. Analysis organic molecules thermodynamic and dynamics properties, store data information;
   7. Use machine learning methods to analyze data and find correlations among molecules properties (updates coming soon);
   8. Plot data;
   
   
 
   
  
  
  
  

  


