#!/bin/bash 

# Analysis molecular basic properties.
# Reference: http://virtualchemistry.org/properties.php
# Liquid density ¦Ñ: https://en.wikipedia.org/wiki/Density
# Surface tension ¦Ã: https://en.wikipedia.org/wiki/Surface_tension
# Static dielectric constant ¦Å0: https://en.wikipedia.org/wiki/Relative_permittivity
# Volumetric expansion coefficient ¦ÁP: https://en.wikipedia.org/wiki/Thermal_expansion
# Isothermal compressibility ¦ÊT: https://en.wikipedia.org/wiki/Compressibility
# Viscosity ¦Ç: https://en.wikipedia.org/wiki/Viscosity
# Enthalpy of vaporization ¦¤Hvap: https://en.wikipedia.org/wiki/Enthalpy_of_vaporization
# Standard Entropy S0: https://en.wikipedia.org/wiki/Standard_molar_entropy
# Heat capacity at constant volume CV: https://en.wikipedia.org/wiki/Heat_capacity
# Heat capacity at constant pressure CP: https://en.wikipedia.org/wiki/Heat_capacity
# Speed of sound cfluid: https://en.wikipedia.org/wiki/Speed_of_sound

cd mobley_1017962/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_1017962_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_1017962_msd.xvg -mol mobley_1017962_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_1017962_Mtot.xvg -c mobley_1017962_dipcorr.xvg 			-eps mobley_1017962_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_1019269/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_1019269_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_1019269_msd.xvg -mol mobley_1019269_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_1019269_Mtot.xvg -c mobley_1019269_dipcorr.xvg 			-eps mobley_1019269_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_1034539/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_1034539_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_1034539_msd.xvg -mol mobley_1034539_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_1034539_Mtot.xvg -c mobley_1034539_dipcorr.xvg 			-eps mobley_1034539_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_1036761/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_1036761_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_1036761_msd.xvg -mol mobley_1036761_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_1036761_Mtot.xvg -c mobley_1036761_dipcorr.xvg 			-eps mobley_1036761_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_1046331/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_1046331_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_1046331_msd.xvg -mol mobley_1046331_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_1046331_Mtot.xvg -c mobley_1046331_dipcorr.xvg 			-eps mobley_1046331_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_1075836/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_1075836_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_1075836_msd.xvg -mol mobley_1075836_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_1075836_Mtot.xvg -c mobley_1075836_dipcorr.xvg 			-eps mobley_1075836_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_1079207/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_1079207_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_1079207_msd.xvg -mol mobley_1079207_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_1079207_Mtot.xvg -c mobley_1079207_dipcorr.xvg 			-eps mobley_1079207_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_1107178/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_1107178_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_1107178_msd.xvg -mol mobley_1107178_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_1107178_Mtot.xvg -c mobley_1107178_dipcorr.xvg 			-eps mobley_1107178_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_1139153/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_1139153_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_1139153_msd.xvg -mol mobley_1139153_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_1139153_Mtot.xvg -c mobley_1139153_dipcorr.xvg 			-eps mobley_1139153_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_1144156/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_1144156_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_1144156_msd.xvg -mol mobley_1144156_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_1144156_Mtot.xvg -c mobley_1144156_dipcorr.xvg 			-eps mobley_1144156_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_1160109/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_1160109_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_1160109_msd.xvg -mol mobley_1160109_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_1160109_Mtot.xvg -c mobley_1160109_dipcorr.xvg 			-eps mobley_1160109_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_1178614/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_1178614_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_1178614_msd.xvg -mol mobley_1178614_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_1178614_Mtot.xvg -c mobley_1178614_dipcorr.xvg 			-eps mobley_1178614_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_1189457/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_1189457_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_1189457_msd.xvg -mol mobley_1189457_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_1189457_Mtot.xvg -c mobley_1189457_dipcorr.xvg 			-eps mobley_1189457_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_1199854/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_1199854_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_1199854_msd.xvg -mol mobley_1199854_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_1199854_Mtot.xvg -c mobley_1199854_dipcorr.xvg 			-eps mobley_1199854_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_1231151/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_1231151_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_1231151_msd.xvg -mol mobley_1231151_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_1231151_Mtot.xvg -c mobley_1231151_dipcorr.xvg 			-eps mobley_1231151_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_1235151/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_1235151_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_1235151_msd.xvg -mol mobley_1235151_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_1235151_Mtot.xvg -c mobley_1235151_dipcorr.xvg 			-eps mobley_1235151_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_1244778/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_1244778_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_1244778_msd.xvg -mol mobley_1244778_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_1244778_Mtot.xvg -c mobley_1244778_dipcorr.xvg 			-eps mobley_1244778_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_1261349/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_1261349_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_1261349_msd.xvg -mol mobley_1261349_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_1261349_Mtot.xvg -c mobley_1261349_dipcorr.xvg 			-eps mobley_1261349_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_1278715/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_1278715_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_1278715_msd.xvg -mol mobley_1278715_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_1278715_Mtot.xvg -c mobley_1278715_dipcorr.xvg 			-eps mobley_1278715_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_129464/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_129464_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_129464_msd.xvg -mol mobley_129464_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_129464_Mtot.xvg -c mobley_129464_dipcorr.xvg 			-eps mobley_129464_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_1323538/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_1323538_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_1323538_msd.xvg -mol mobley_1323538_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_1323538_Mtot.xvg -c mobley_1323538_dipcorr.xvg 			-eps mobley_1323538_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_1328465/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_1328465_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_1328465_msd.xvg -mol mobley_1328465_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_1328465_Mtot.xvg -c mobley_1328465_dipcorr.xvg 			-eps mobley_1328465_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_1328936/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_1328936_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_1328936_msd.xvg -mol mobley_1328936_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_1328936_Mtot.xvg -c mobley_1328936_dipcorr.xvg 			-eps mobley_1328936_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_1352110/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_1352110_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_1352110_msd.xvg -mol mobley_1352110_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_1352110_Mtot.xvg -c mobley_1352110_dipcorr.xvg 			-eps mobley_1352110_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_1363784/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_1363784_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_1363784_msd.xvg -mol mobley_1363784_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_1363784_Mtot.xvg -c mobley_1363784_dipcorr.xvg 			-eps mobley_1363784_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_1396156/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_1396156_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_1396156_msd.xvg -mol mobley_1396156_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_1396156_Mtot.xvg -c mobley_1396156_dipcorr.xvg 			-eps mobley_1396156_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_1417007/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_1417007_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_1417007_msd.xvg -mol mobley_1417007_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_1417007_Mtot.xvg -c mobley_1417007_dipcorr.xvg 			-eps mobley_1417007_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_1424265/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_1424265_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_1424265_msd.xvg -mol mobley_1424265_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_1424265_Mtot.xvg -c mobley_1424265_dipcorr.xvg 			-eps mobley_1424265_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_1449384/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_1449384_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_1449384_msd.xvg -mol mobley_1449384_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_1449384_Mtot.xvg -c mobley_1449384_dipcorr.xvg 			-eps mobley_1449384_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_1469079/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_1469079_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_1469079_msd.xvg -mol mobley_1469079_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_1469079_Mtot.xvg -c mobley_1469079_dipcorr.xvg 			-eps mobley_1469079_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_1502181/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_1502181_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_1502181_msd.xvg -mol mobley_1502181_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_1502181_Mtot.xvg -c mobley_1502181_dipcorr.xvg 			-eps mobley_1502181_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_1520842/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_1520842_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_1520842_msd.xvg -mol mobley_1520842_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_1520842_Mtot.xvg -c mobley_1520842_dipcorr.xvg 			-eps mobley_1520842_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_1527293/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_1527293_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_1527293_msd.xvg -mol mobley_1527293_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_1527293_Mtot.xvg -c mobley_1527293_dipcorr.xvg 			-eps mobley_1527293_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_1563176/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_1563176_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_1563176_msd.xvg -mol mobley_1563176_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_1563176_Mtot.xvg -c mobley_1563176_dipcorr.xvg 			-eps mobley_1563176_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_1571523/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_1571523_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_1571523_msd.xvg -mol mobley_1571523_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_1571523_Mtot.xvg -c mobley_1571523_dipcorr.xvg 			-eps mobley_1571523_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_1592519/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_1592519_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_1592519_msd.xvg -mol mobley_1592519_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_1592519_Mtot.xvg -c mobley_1592519_dipcorr.xvg 			-eps mobley_1592519_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_1615431/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_1615431_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_1615431_msd.xvg -mol mobley_1615431_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_1615431_Mtot.xvg -c mobley_1615431_dipcorr.xvg 			-eps mobley_1615431_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_1636752/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_1636752_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_1636752_msd.xvg -mol mobley_1636752_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_1636752_Mtot.xvg -c mobley_1636752_dipcorr.xvg 			-eps mobley_1636752_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_1650157/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_1650157_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_1650157_msd.xvg -mol mobley_1650157_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_1650157_Mtot.xvg -c mobley_1650157_dipcorr.xvg 			-eps mobley_1650157_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_1659169/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_1659169_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_1659169_msd.xvg -mol mobley_1659169_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_1659169_Mtot.xvg -c mobley_1659169_dipcorr.xvg 			-eps mobley_1659169_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_1662128/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_1662128_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_1662128_msd.xvg -mol mobley_1662128_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_1662128_Mtot.xvg -c mobley_1662128_dipcorr.xvg 			-eps mobley_1662128_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_1674094/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_1674094_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_1674094_msd.xvg -mol mobley_1674094_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_1674094_Mtot.xvg -c mobley_1674094_dipcorr.xvg 			-eps mobley_1674094_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_1708457/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_1708457_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_1708457_msd.xvg -mol mobley_1708457_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_1708457_Mtot.xvg -c mobley_1708457_dipcorr.xvg 			-eps mobley_1708457_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_1717215/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_1717215_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_1717215_msd.xvg -mol mobley_1717215_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_1717215_Mtot.xvg -c mobley_1717215_dipcorr.xvg 			-eps mobley_1717215_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_1722522/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_1722522_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_1722522_msd.xvg -mol mobley_1722522_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_1722522_Mtot.xvg -c mobley_1722522_dipcorr.xvg 			-eps mobley_1722522_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_1723043/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_1723043_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_1723043_msd.xvg -mol mobley_1723043_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_1723043_Mtot.xvg -c mobley_1723043_dipcorr.xvg 			-eps mobley_1723043_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_1728386/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_1728386_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_1728386_msd.xvg -mol mobley_1728386_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_1728386_Mtot.xvg -c mobley_1728386_dipcorr.xvg 			-eps mobley_1728386_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_172879/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_172879_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_172879_msd.xvg -mol mobley_172879_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_172879_Mtot.xvg -c mobley_172879_dipcorr.xvg 			-eps mobley_172879_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_1733799/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_1733799_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_1733799_msd.xvg -mol mobley_1733799_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_1733799_Mtot.xvg -c mobley_1733799_dipcorr.xvg 			-eps mobley_1733799_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_1735893/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_1735893_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_1735893_msd.xvg -mol mobley_1735893_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_1735893_Mtot.xvg -c mobley_1735893_dipcorr.xvg 			-eps mobley_1735893_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_1743409/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_1743409_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_1743409_msd.xvg -mol mobley_1743409_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_1743409_Mtot.xvg -c mobley_1743409_dipcorr.xvg 			-eps mobley_1743409_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_1755375/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_1755375_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_1755375_msd.xvg -mol mobley_1755375_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_1755375_Mtot.xvg -c mobley_1755375_dipcorr.xvg 			-eps mobley_1755375_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_1760914/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_1760914_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_1760914_msd.xvg -mol mobley_1760914_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_1760914_Mtot.xvg -c mobley_1760914_dipcorr.xvg 			-eps mobley_1760914_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_1770205/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_1770205_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_1770205_msd.xvg -mol mobley_1770205_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_1770205_Mtot.xvg -c mobley_1770205_dipcorr.xvg 			-eps mobley_1770205_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_1781152/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_1781152_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_1781152_msd.xvg -mol mobley_1781152_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_1781152_Mtot.xvg -c mobley_1781152_dipcorr.xvg 			-eps mobley_1781152_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_1792062/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_1792062_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_1792062_msd.xvg -mol mobley_1792062_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_1792062_Mtot.xvg -c mobley_1792062_dipcorr.xvg 			-eps mobley_1792062_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_1800170/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_1800170_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_1800170_msd.xvg -mol mobley_1800170_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_1800170_Mtot.xvg -c mobley_1800170_dipcorr.xvg 			-eps mobley_1800170_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_1803862/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_1803862_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_1803862_msd.xvg -mol mobley_1803862_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_1803862_Mtot.xvg -c mobley_1803862_dipcorr.xvg 			-eps mobley_1803862_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_1821184/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_1821184_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_1821184_msd.xvg -mol mobley_1821184_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_1821184_Mtot.xvg -c mobley_1821184_dipcorr.xvg 			-eps mobley_1821184_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_1827204/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_1827204_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_1827204_msd.xvg -mol mobley_1827204_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_1827204_Mtot.xvg -c mobley_1827204_dipcorr.xvg 			-eps mobley_1827204_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_1838110/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_1838110_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_1838110_msd.xvg -mol mobley_1838110_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_1838110_Mtot.xvg -c mobley_1838110_dipcorr.xvg 			-eps mobley_1838110_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_1849020/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_1849020_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_1849020_msd.xvg -mol mobley_1849020_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_1849020_Mtot.xvg -c mobley_1849020_dipcorr.xvg 			-eps mobley_1849020_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_1855337/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_1855337_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_1855337_msd.xvg -mol mobley_1855337_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_1855337_Mtot.xvg -c mobley_1855337_dipcorr.xvg 			-eps mobley_1855337_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_1857976/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_1857976_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_1857976_msd.xvg -mol mobley_1857976_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_1857976_Mtot.xvg -c mobley_1857976_dipcorr.xvg 			-eps mobley_1857976_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_1858644/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_1858644_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_1858644_msd.xvg -mol mobley_1858644_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_1858644_Mtot.xvg -c mobley_1858644_dipcorr.xvg 			-eps mobley_1858644_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_186894/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_186894_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_186894_msd.xvg -mol mobley_186894_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_186894_Mtot.xvg -c mobley_186894_dipcorr.xvg 			-eps mobley_186894_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_1873346/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_1873346_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_1873346_msd.xvg -mol mobley_1873346_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_1873346_Mtot.xvg -c mobley_1873346_dipcorr.xvg 			-eps mobley_1873346_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_1875719/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_1875719_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_1875719_msd.xvg -mol mobley_1875719_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_1875719_Mtot.xvg -c mobley_1875719_dipcorr.xvg 			-eps mobley_1875719_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_1881249/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_1881249_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_1881249_msd.xvg -mol mobley_1881249_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_1881249_Mtot.xvg -c mobley_1881249_dipcorr.xvg 			-eps mobley_1881249_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_1893815/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_1893815_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_1893815_msd.xvg -mol mobley_1893815_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_1893815_Mtot.xvg -c mobley_1893815_dipcorr.xvg 			-eps mobley_1893815_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_1893937/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_1893937_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_1893937_msd.xvg -mol mobley_1893937_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_1893937_Mtot.xvg -c mobley_1893937_dipcorr.xvg 			-eps mobley_1893937_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_1896013/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_1896013_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_1896013_msd.xvg -mol mobley_1896013_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_1896013_Mtot.xvg -c mobley_1896013_dipcorr.xvg 			-eps mobley_1896013_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_1899443/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_1899443_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_1899443_msd.xvg -mol mobley_1899443_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_1899443_Mtot.xvg -c mobley_1899443_dipcorr.xvg 			-eps mobley_1899443_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_1903702/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_1903702_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_1903702_msd.xvg -mol mobley_1903702_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_1903702_Mtot.xvg -c mobley_1903702_dipcorr.xvg 			-eps mobley_1903702_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_1905088/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_1905088_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_1905088_msd.xvg -mol mobley_1905088_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_1905088_Mtot.xvg -c mobley_1905088_dipcorr.xvg 			-eps mobley_1905088_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_1922649/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_1922649_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_1922649_msd.xvg -mol mobley_1922649_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_1922649_Mtot.xvg -c mobley_1922649_dipcorr.xvg 			-eps mobley_1922649_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_1923244/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_1923244_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_1923244_msd.xvg -mol mobley_1923244_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_1923244_Mtot.xvg -c mobley_1923244_dipcorr.xvg 			-eps mobley_1923244_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_1929982/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_1929982_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_1929982_msd.xvg -mol mobley_1929982_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_1929982_Mtot.xvg -c mobley_1929982_dipcorr.xvg 			-eps mobley_1929982_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_194273/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_194273_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_194273_msd.xvg -mol mobley_194273_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_194273_Mtot.xvg -c mobley_194273_dipcorr.xvg 			-eps mobley_194273_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_1944394/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_1944394_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_1944394_msd.xvg -mol mobley_1944394_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_1944394_Mtot.xvg -c mobley_1944394_dipcorr.xvg 			-eps mobley_1944394_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_1952272/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_1952272_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_1952272_msd.xvg -mol mobley_1952272_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_1952272_Mtot.xvg -c mobley_1952272_dipcorr.xvg 			-eps mobley_1952272_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_1963873/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_1963873_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_1963873_msd.xvg -mol mobley_1963873_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_1963873_Mtot.xvg -c mobley_1963873_dipcorr.xvg 			-eps mobley_1963873_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_1967551/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_1967551_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_1967551_msd.xvg -mol mobley_1967551_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_1967551_Mtot.xvg -c mobley_1967551_dipcorr.xvg 			-eps mobley_1967551_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_197466/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_197466_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_197466_msd.xvg -mol mobley_197466_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_197466_Mtot.xvg -c mobley_197466_dipcorr.xvg 			-eps mobley_197466_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_1976156/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_1976156_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_1976156_msd.xvg -mol mobley_1976156_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_1976156_Mtot.xvg -c mobley_1976156_dipcorr.xvg 			-eps mobley_1976156_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_1977493/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_1977493_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_1977493_msd.xvg -mol mobley_1977493_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_1977493_Mtot.xvg -c mobley_1977493_dipcorr.xvg 			-eps mobley_1977493_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_1987439/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_1987439_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_1987439_msd.xvg -mol mobley_1987439_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_1987439_Mtot.xvg -c mobley_1987439_dipcorr.xvg 			-eps mobley_1987439_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_2005792/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_2005792_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_2005792_msd.xvg -mol mobley_2005792_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_2005792_Mtot.xvg -c mobley_2005792_dipcorr.xvg 			-eps mobley_2005792_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_2008055/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_2008055_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_2008055_msd.xvg -mol mobley_2008055_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_2008055_Mtot.xvg -c mobley_2008055_dipcorr.xvg 			-eps mobley_2008055_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_2023925/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_2023925_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_2023925_msd.xvg -mol mobley_2023925_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_2023925_Mtot.xvg -c mobley_2023925_dipcorr.xvg 			-eps mobley_2023925_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_2043882/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_2043882_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_2043882_msd.xvg -mol mobley_2043882_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_2043882_Mtot.xvg -c mobley_2043882_dipcorr.xvg 			-eps mobley_2043882_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_2049967/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_2049967_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_2049967_msd.xvg -mol mobley_2049967_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_2049967_Mtot.xvg -c mobley_2049967_dipcorr.xvg 			-eps mobley_2049967_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_20524/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_20524_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_20524_msd.xvg -mol mobley_20524_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_20524_Mtot.xvg -c mobley_20524_dipcorr.xvg 			-eps mobley_20524_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_2068538/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_2068538_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_2068538_msd.xvg -mol mobley_2068538_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_2068538_Mtot.xvg -c mobley_2068538_dipcorr.xvg 			-eps mobley_2068538_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_2078467/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_2078467_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_2078467_msd.xvg -mol mobley_2078467_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_2078467_Mtot.xvg -c mobley_2078467_dipcorr.xvg 			-eps mobley_2078467_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_2099370/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_2099370_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_2099370_msd.xvg -mol mobley_2099370_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_2099370_Mtot.xvg -c mobley_2099370_dipcorr.xvg 			-eps mobley_2099370_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_210639/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_210639_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_210639_msd.xvg -mol mobley_210639_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_210639_Mtot.xvg -c mobley_210639_dipcorr.xvg 			-eps mobley_210639_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_2123854/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_2123854_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_2123854_msd.xvg -mol mobley_2123854_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_2123854_Mtot.xvg -c mobley_2123854_dipcorr.xvg 			-eps mobley_2123854_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_2126135/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_2126135_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_2126135_msd.xvg -mol mobley_2126135_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_2126135_Mtot.xvg -c mobley_2126135_dipcorr.xvg 			-eps mobley_2126135_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_2143011/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_2143011_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_2143011_msd.xvg -mol mobley_2143011_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_2143011_Mtot.xvg -c mobley_2143011_dipcorr.xvg 			-eps mobley_2143011_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_2146331/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_2146331_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_2146331_msd.xvg -mol mobley_2146331_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_2146331_Mtot.xvg -c mobley_2146331_dipcorr.xvg 			-eps mobley_2146331_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_2178600/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_2178600_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_2178600_msd.xvg -mol mobley_2178600_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_2178600_Mtot.xvg -c mobley_2178600_dipcorr.xvg 			-eps mobley_2178600_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_2183616/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_2183616_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_2183616_msd.xvg -mol mobley_2183616_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_2183616_Mtot.xvg -c mobley_2183616_dipcorr.xvg 			-eps mobley_2183616_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_2197088/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_2197088_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_2197088_msd.xvg -mol mobley_2197088_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_2197088_Mtot.xvg -c mobley_2197088_dipcorr.xvg 			-eps mobley_2197088_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_2198613/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_2198613_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_2198613_msd.xvg -mol mobley_2198613_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_2198613_Mtot.xvg -c mobley_2198613_dipcorr.xvg 			-eps mobley_2198613_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_2213823/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_2213823_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_2213823_msd.xvg -mol mobley_2213823_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_2213823_Mtot.xvg -c mobley_2213823_dipcorr.xvg 			-eps mobley_2213823_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_2245668/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_2245668_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_2245668_msd.xvg -mol mobley_2245668_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_2245668_Mtot.xvg -c mobley_2245668_dipcorr.xvg 			-eps mobley_2245668_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_2261979/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_2261979_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_2261979_msd.xvg -mol mobley_2261979_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_2261979_Mtot.xvg -c mobley_2261979_dipcorr.xvg 			-eps mobley_2261979_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_2269032/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_2269032_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_2269032_msd.xvg -mol mobley_2269032_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_2269032_Mtot.xvg -c mobley_2269032_dipcorr.xvg 			-eps mobley_2269032_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_2279874/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_2279874_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_2279874_msd.xvg -mol mobley_2279874_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_2279874_Mtot.xvg -c mobley_2279874_dipcorr.xvg 			-eps mobley_2279874_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_2294995/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_2294995_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_2294995_msd.xvg -mol mobley_2294995_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_2294995_Mtot.xvg -c mobley_2294995_dipcorr.xvg 			-eps mobley_2294995_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_2295058/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_2295058_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_2295058_msd.xvg -mol mobley_2295058_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_2295058_Mtot.xvg -c mobley_2295058_dipcorr.xvg 			-eps mobley_2295058_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_2310185/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_2310185_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_2310185_msd.xvg -mol mobley_2310185_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_2310185_Mtot.xvg -c mobley_2310185_dipcorr.xvg 			-eps mobley_2310185_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_2316618/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_2316618_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_2316618_msd.xvg -mol mobley_2316618_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_2316618_Mtot.xvg -c mobley_2316618_dipcorr.xvg 			-eps mobley_2316618_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_2328633/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_2328633_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_2328633_msd.xvg -mol mobley_2328633_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_2328633_Mtot.xvg -c mobley_2328633_dipcorr.xvg 			-eps mobley_2328633_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_2341732/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_2341732_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_2341732_msd.xvg -mol mobley_2341732_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_2341732_Mtot.xvg -c mobley_2341732_dipcorr.xvg 			-eps mobley_2341732_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_2354112/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_2354112_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_2354112_msd.xvg -mol mobley_2354112_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_2354112_Mtot.xvg -c mobley_2354112_dipcorr.xvg 			-eps mobley_2354112_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_2364370/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_2364370_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_2364370_msd.xvg -mol mobley_2364370_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_2364370_Mtot.xvg -c mobley_2364370_dipcorr.xvg 			-eps mobley_2364370_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_2371092/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_2371092_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_2371092_msd.xvg -mol mobley_2371092_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_2371092_Mtot.xvg -c mobley_2371092_dipcorr.xvg 			-eps mobley_2371092_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_2390199/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_2390199_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_2390199_msd.xvg -mol mobley_2390199_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_2390199_Mtot.xvg -c mobley_2390199_dipcorr.xvg 			-eps mobley_2390199_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_2402487/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_2402487_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_2402487_msd.xvg -mol mobley_2402487_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_2402487_Mtot.xvg -c mobley_2402487_dipcorr.xvg 			-eps mobley_2402487_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_2410897/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_2410897_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_2410897_msd.xvg -mol mobley_2410897_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_2410897_Mtot.xvg -c mobley_2410897_dipcorr.xvg 			-eps mobley_2410897_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_2422586/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_2422586_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_2422586_msd.xvg -mol mobley_2422586_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_2422586_Mtot.xvg -c mobley_2422586_dipcorr.xvg 			-eps mobley_2422586_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_242480/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_242480_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_242480_msd.xvg -mol mobley_242480_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_242480_Mtot.xvg -c mobley_242480_dipcorr.xvg 			-eps mobley_242480_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_2451097/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_2451097_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_2451097_msd.xvg -mol mobley_2451097_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_2451097_Mtot.xvg -c mobley_2451097_dipcorr.xvg 			-eps mobley_2451097_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_2457863/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_2457863_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_2457863_msd.xvg -mol mobley_2457863_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_2457863_Mtot.xvg -c mobley_2457863_dipcorr.xvg 			-eps mobley_2457863_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_2481002/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_2481002_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_2481002_msd.xvg -mol mobley_2481002_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_2481002_Mtot.xvg -c mobley_2481002_dipcorr.xvg 			-eps mobley_2481002_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_2484519/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_2484519_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_2484519_msd.xvg -mol mobley_2484519_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_2484519_Mtot.xvg -c mobley_2484519_dipcorr.xvg 			-eps mobley_2484519_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_2487143/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_2487143_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_2487143_msd.xvg -mol mobley_2487143_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_2487143_Mtot.xvg -c mobley_2487143_dipcorr.xvg 			-eps mobley_2487143_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_2489709/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_2489709_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_2489709_msd.xvg -mol mobley_2489709_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_2489709_Mtot.xvg -c mobley_2489709_dipcorr.xvg 			-eps mobley_2489709_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_2492140/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_2492140_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_2492140_msd.xvg -mol mobley_2492140_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_2492140_Mtot.xvg -c mobley_2492140_dipcorr.xvg 			-eps mobley_2492140_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_2493732/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_2493732_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_2493732_msd.xvg -mol mobley_2493732_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_2493732_Mtot.xvg -c mobley_2493732_dipcorr.xvg 			-eps mobley_2493732_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_2501588/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_2501588_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_2501588_msd.xvg -mol mobley_2501588_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_2501588_Mtot.xvg -c mobley_2501588_dipcorr.xvg 			-eps mobley_2501588_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_2517158/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_2517158_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_2517158_msd.xvg -mol mobley_2517158_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_2517158_Mtot.xvg -c mobley_2517158_dipcorr.xvg 			-eps mobley_2517158_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_2518989/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_2518989_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_2518989_msd.xvg -mol mobley_2518989_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_2518989_Mtot.xvg -c mobley_2518989_dipcorr.xvg 			-eps mobley_2518989_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_2523689/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_2523689_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_2523689_msd.xvg -mol mobley_2523689_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_2523689_Mtot.xvg -c mobley_2523689_dipcorr.xvg 			-eps mobley_2523689_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_252413/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_252413_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_252413_msd.xvg -mol mobley_252413_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_252413_Mtot.xvg -c mobley_252413_dipcorr.xvg 			-eps mobley_252413_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_2577969/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_2577969_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_2577969_msd.xvg -mol mobley_2577969_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_2577969_Mtot.xvg -c mobley_2577969_dipcorr.xvg 			-eps mobley_2577969_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_2607611/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_2607611_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_2607611_msd.xvg -mol mobley_2607611_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_2607611_Mtot.xvg -c mobley_2607611_dipcorr.xvg 			-eps mobley_2607611_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_2609604/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_2609604_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_2609604_msd.xvg -mol mobley_2609604_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_2609604_Mtot.xvg -c mobley_2609604_dipcorr.xvg 			-eps mobley_2609604_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_2613240/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_2613240_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_2613240_msd.xvg -mol mobley_2613240_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_2613240_Mtot.xvg -c mobley_2613240_dipcorr.xvg 			-eps mobley_2613240_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_2636578/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_2636578_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_2636578_msd.xvg -mol mobley_2636578_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_2636578_Mtot.xvg -c mobley_2636578_dipcorr.xvg 			-eps mobley_2636578_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_2659552/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_2659552_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_2659552_msd.xvg -mol mobley_2659552_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_2659552_Mtot.xvg -c mobley_2659552_dipcorr.xvg 			-eps mobley_2659552_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_2661134/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_2661134_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_2661134_msd.xvg -mol mobley_2661134_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_2661134_Mtot.xvg -c mobley_2661134_dipcorr.xvg 			-eps mobley_2661134_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_2681549/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_2681549_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_2681549_msd.xvg -mol mobley_2681549_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_2681549_Mtot.xvg -c mobley_2681549_dipcorr.xvg 			-eps mobley_2681549_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_2689721/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_2689721_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_2689721_msd.xvg -mol mobley_2689721_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_2689721_Mtot.xvg -c mobley_2689721_dipcorr.xvg 			-eps mobley_2689721_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_2693089/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_2693089_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_2693089_msd.xvg -mol mobley_2693089_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_2693089_Mtot.xvg -c mobley_2693089_dipcorr.xvg 			-eps mobley_2693089_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_2725215/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_2725215_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_2725215_msd.xvg -mol mobley_2725215_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_2725215_Mtot.xvg -c mobley_2725215_dipcorr.xvg 			-eps mobley_2725215_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_2725802/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_2725802_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_2725802_msd.xvg -mol mobley_2725802_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_2725802_Mtot.xvg -c mobley_2725802_dipcorr.xvg 			-eps mobley_2725802_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_2727678/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_2727678_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_2727678_msd.xvg -mol mobley_2727678_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_2727678_Mtot.xvg -c mobley_2727678_dipcorr.xvg 			-eps mobley_2727678_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_2751110/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_2751110_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_2751110_msd.xvg -mol mobley_2751110_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_2751110_Mtot.xvg -c mobley_2751110_dipcorr.xvg 			-eps mobley_2751110_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_2763835/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_2763835_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_2763835_msd.xvg -mol mobley_2763835_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_2763835_Mtot.xvg -c mobley_2763835_dipcorr.xvg 			-eps mobley_2763835_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_2771569/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_2771569_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_2771569_msd.xvg -mol mobley_2771569_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_2771569_Mtot.xvg -c mobley_2771569_dipcorr.xvg 			-eps mobley_2771569_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_2782339/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_2782339_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_2782339_msd.xvg -mol mobley_2782339_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_2782339_Mtot.xvg -c mobley_2782339_dipcorr.xvg 			-eps mobley_2782339_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_2784376/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_2784376_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_2784376_msd.xvg -mol mobley_2784376_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_2784376_Mtot.xvg -c mobley_2784376_dipcorr.xvg 			-eps mobley_2784376_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_2789243/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_2789243_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_2789243_msd.xvg -mol mobley_2789243_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_2789243_Mtot.xvg -c mobley_2789243_dipcorr.xvg 			-eps mobley_2789243_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_2792521/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_2792521_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_2792521_msd.xvg -mol mobley_2792521_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_2792521_Mtot.xvg -c mobley_2792521_dipcorr.xvg 			-eps mobley_2792521_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_2802855/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_2802855_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_2802855_msd.xvg -mol mobley_2802855_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_2802855_Mtot.xvg -c mobley_2802855_dipcorr.xvg 			-eps mobley_2802855_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_282648/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_282648_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_282648_msd.xvg -mol mobley_282648_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_282648_Mtot.xvg -c mobley_282648_dipcorr.xvg 			-eps mobley_282648_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_2837389/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_2837389_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_2837389_msd.xvg -mol mobley_2837389_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_2837389_Mtot.xvg -c mobley_2837389_dipcorr.xvg 			-eps mobley_2837389_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_2844990/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_2844990_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_2844990_msd.xvg -mol mobley_2844990_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_2844990_Mtot.xvg -c mobley_2844990_dipcorr.xvg 			-eps mobley_2844990_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_2845466/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_2845466_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_2845466_msd.xvg -mol mobley_2845466_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_2845466_Mtot.xvg -c mobley_2845466_dipcorr.xvg 			-eps mobley_2845466_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_2850833/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_2850833_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_2850833_msd.xvg -mol mobley_2850833_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_2850833_Mtot.xvg -c mobley_2850833_dipcorr.xvg 			-eps mobley_2850833_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_2859600/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_2859600_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_2859600_msd.xvg -mol mobley_2859600_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_2859600_Mtot.xvg -c mobley_2859600_dipcorr.xvg 			-eps mobley_2859600_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_2864987/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_2864987_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_2864987_msd.xvg -mol mobley_2864987_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_2864987_Mtot.xvg -c mobley_2864987_dipcorr.xvg 			-eps mobley_2864987_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_2881590/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_2881590_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_2881590_msd.xvg -mol mobley_2881590_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_2881590_Mtot.xvg -c mobley_2881590_dipcorr.xvg 			-eps mobley_2881590_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_2913224/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_2913224_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_2913224_msd.xvg -mol mobley_2913224_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_2913224_Mtot.xvg -c mobley_2913224_dipcorr.xvg 			-eps mobley_2913224_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_2923700/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_2923700_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_2923700_msd.xvg -mol mobley_2923700_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_2923700_Mtot.xvg -c mobley_2923700_dipcorr.xvg 			-eps mobley_2923700_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_2925352/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_2925352_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_2925352_msd.xvg -mol mobley_2925352_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_2925352_Mtot.xvg -c mobley_2925352_dipcorr.xvg 			-eps mobley_2925352_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_2929847/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_2929847_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_2929847_msd.xvg -mol mobley_2929847_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_2929847_Mtot.xvg -c mobley_2929847_dipcorr.xvg 			-eps mobley_2929847_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_2958326/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_2958326_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_2958326_msd.xvg -mol mobley_2958326_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_2958326_Mtot.xvg -c mobley_2958326_dipcorr.xvg 			-eps mobley_2958326_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_2960202/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_2960202_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_2960202_msd.xvg -mol mobley_2960202_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_2960202_Mtot.xvg -c mobley_2960202_dipcorr.xvg 			-eps mobley_2960202_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_296847/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_296847_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_296847_msd.xvg -mol mobley_296847_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_296847_Mtot.xvg -c mobley_296847_dipcorr.xvg 			-eps mobley_296847_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_2972345/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_2972345_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_2972345_msd.xvg -mol mobley_2972345_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_2972345_Mtot.xvg -c mobley_2972345_dipcorr.xvg 			-eps mobley_2972345_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_2972906/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_2972906_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_2972906_msd.xvg -mol mobley_2972906_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_2972906_Mtot.xvg -c mobley_2972906_dipcorr.xvg 			-eps mobley_2972906_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_299266/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_299266_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_299266_msd.xvg -mol mobley_299266_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_299266_Mtot.xvg -c mobley_299266_dipcorr.xvg 			-eps mobley_299266_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_2996632/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_2996632_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_2996632_msd.xvg -mol mobley_2996632_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_2996632_Mtot.xvg -c mobley_2996632_dipcorr.xvg 			-eps mobley_2996632_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_3006808/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_3006808_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_3006808_msd.xvg -mol mobley_3006808_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_3006808_Mtot.xvg -c mobley_3006808_dipcorr.xvg 			-eps mobley_3006808_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_303222/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_303222_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_303222_msd.xvg -mol mobley_303222_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_303222_Mtot.xvg -c mobley_303222_dipcorr.xvg 			-eps mobley_303222_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_3034976/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_3034976_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_3034976_msd.xvg -mol mobley_3034976_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_3034976_Mtot.xvg -c mobley_3034976_dipcorr.xvg 			-eps mobley_3034976_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_3040612/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_3040612_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_3040612_msd.xvg -mol mobley_3040612_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_3040612_Mtot.xvg -c mobley_3040612_dipcorr.xvg 			-eps mobley_3040612_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_3047364/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_3047364_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_3047364_msd.xvg -mol mobley_3047364_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_3047364_Mtot.xvg -c mobley_3047364_dipcorr.xvg 			-eps mobley_3047364_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_3053621/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_3053621_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_3053621_msd.xvg -mol mobley_3053621_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_3053621_Mtot.xvg -c mobley_3053621_dipcorr.xvg 			-eps mobley_3053621_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_3060426/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_3060426_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_3060426_msd.xvg -mol mobley_3060426_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_3060426_Mtot.xvg -c mobley_3060426_dipcorr.xvg 			-eps mobley_3060426_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_3083321/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_3083321_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_3083321_msd.xvg -mol mobley_3083321_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_3083321_Mtot.xvg -c mobley_3083321_dipcorr.xvg 			-eps mobley_3083321_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_3105103/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_3105103_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_3105103_msd.xvg -mol mobley_3105103_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_3105103_Mtot.xvg -c mobley_3105103_dipcorr.xvg 			-eps mobley_3105103_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_313406/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_313406_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_313406_msd.xvg -mol mobley_313406_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_313406_Mtot.xvg -c mobley_313406_dipcorr.xvg 			-eps mobley_313406_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_3144334/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_3144334_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_3144334_msd.xvg -mol mobley_3144334_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_3144334_Mtot.xvg -c mobley_3144334_dipcorr.xvg 			-eps mobley_3144334_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_3151666/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_3151666_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_3151666_msd.xvg -mol mobley_3151666_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_3151666_Mtot.xvg -c mobley_3151666_dipcorr.xvg 			-eps mobley_3151666_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_3167746/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_3167746_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_3167746_msd.xvg -mol mobley_3167746_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_3167746_Mtot.xvg -c mobley_3167746_dipcorr.xvg 			-eps mobley_3167746_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_3169935/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_3169935_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_3169935_msd.xvg -mol mobley_3169935_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_3169935_Mtot.xvg -c mobley_3169935_dipcorr.xvg 			-eps mobley_3169935_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_3183805/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_3183805_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_3183805_msd.xvg -mol mobley_3183805_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_3183805_Mtot.xvg -c mobley_3183805_dipcorr.xvg 			-eps mobley_3183805_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_3187514/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_3187514_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_3187514_msd.xvg -mol mobley_3187514_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_3187514_Mtot.xvg -c mobley_3187514_dipcorr.xvg 			-eps mobley_3187514_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_3201701/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_3201701_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_3201701_msd.xvg -mol mobley_3201701_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_3201701_Mtot.xvg -c mobley_3201701_dipcorr.xvg 			-eps mobley_3201701_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_3210206/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_3210206_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_3210206_msd.xvg -mol mobley_3210206_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_3210206_Mtot.xvg -c mobley_3210206_dipcorr.xvg 			-eps mobley_3210206_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_3211679/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_3211679_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_3211679_msd.xvg -mol mobley_3211679_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_3211679_Mtot.xvg -c mobley_3211679_dipcorr.xvg 			-eps mobley_3211679_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_3234716/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_3234716_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_3234716_msd.xvg -mol mobley_3234716_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_3234716_Mtot.xvg -c mobley_3234716_dipcorr.xvg 			-eps mobley_3234716_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_3259411/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_3259411_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_3259411_msd.xvg -mol mobley_3259411_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_3259411_Mtot.xvg -c mobley_3259411_dipcorr.xvg 			-eps mobley_3259411_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_3264884/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_3264884_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_3264884_msd.xvg -mol mobley_3264884_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_3264884_Mtot.xvg -c mobley_3264884_dipcorr.xvg 			-eps mobley_3264884_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_3265457/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_3265457_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_3265457_msd.xvg -mol mobley_3265457_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_3265457_Mtot.xvg -c mobley_3265457_dipcorr.xvg 			-eps mobley_3265457_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_3266352/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_3266352_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_3266352_msd.xvg -mol mobley_3266352_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_3266352_Mtot.xvg -c mobley_3266352_dipcorr.xvg 			-eps mobley_3266352_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_3269565/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_3269565_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_3269565_msd.xvg -mol mobley_3269565_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_3269565_Mtot.xvg -c mobley_3269565_dipcorr.xvg 			-eps mobley_3269565_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_3269819/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_3269819_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_3269819_msd.xvg -mol mobley_3269819_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_3269819_Mtot.xvg -c mobley_3269819_dipcorr.xvg 			-eps mobley_3269819_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_3274817/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_3274817_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_3274817_msd.xvg -mol mobley_3274817_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_3274817_Mtot.xvg -c mobley_3274817_dipcorr.xvg 			-eps mobley_3274817_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_3318135/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_3318135_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_3318135_msd.xvg -mol mobley_3318135_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_3318135_Mtot.xvg -c mobley_3318135_dipcorr.xvg 			-eps mobley_3318135_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_3323117/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_3323117_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_3323117_msd.xvg -mol mobley_3323117_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_3323117_Mtot.xvg -c mobley_3323117_dipcorr.xvg 			-eps mobley_3323117_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_3325209/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_3325209_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_3325209_msd.xvg -mol mobley_3325209_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_3325209_Mtot.xvg -c mobley_3325209_dipcorr.xvg 			-eps mobley_3325209_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_3359593/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_3359593_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_3359593_msd.xvg -mol mobley_3359593_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_3359593_Mtot.xvg -c mobley_3359593_dipcorr.xvg 			-eps mobley_3359593_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_3370989/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_3370989_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_3370989_msd.xvg -mol mobley_3370989_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_3370989_Mtot.xvg -c mobley_3370989_dipcorr.xvg 			-eps mobley_3370989_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_337666/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_337666_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_337666_msd.xvg -mol mobley_337666_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_337666_Mtot.xvg -c mobley_337666_dipcorr.xvg 			-eps mobley_337666_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_3378420/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_3378420_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_3378420_msd.xvg -mol mobley_3378420_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_3378420_Mtot.xvg -c mobley_3378420_dipcorr.xvg 			-eps mobley_3378420_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_3395921/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_3395921_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_3395921_msd.xvg -mol mobley_3395921_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_3395921_Mtot.xvg -c mobley_3395921_dipcorr.xvg 			-eps mobley_3395921_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_3398536/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_3398536_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_3398536_msd.xvg -mol mobley_3398536_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_3398536_Mtot.xvg -c mobley_3398536_dipcorr.xvg 			-eps mobley_3398536_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_3414356/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_3414356_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_3414356_msd.xvg -mol mobley_3414356_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_3414356_Mtot.xvg -c mobley_3414356_dipcorr.xvg 			-eps mobley_3414356_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_3425174/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_3425174_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_3425174_msd.xvg -mol mobley_3425174_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_3425174_Mtot.xvg -c mobley_3425174_dipcorr.xvg 			-eps mobley_3425174_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_3452749/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_3452749_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_3452749_msd.xvg -mol mobley_3452749_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_3452749_Mtot.xvg -c mobley_3452749_dipcorr.xvg 			-eps mobley_3452749_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_349850/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_349850_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_349850_msd.xvg -mol mobley_349850_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_349850_Mtot.xvg -c mobley_349850_dipcorr.xvg 			-eps mobley_349850_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_3515580/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_3515580_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_3515580_msd.xvg -mol mobley_3515580_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_3515580_Mtot.xvg -c mobley_3515580_dipcorr.xvg 			-eps mobley_3515580_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_352111/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_352111_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_352111_msd.xvg -mol mobley_352111_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_352111_Mtot.xvg -c mobley_352111_dipcorr.xvg 			-eps mobley_352111_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_3525176/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_3525176_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_3525176_msd.xvg -mol mobley_3525176_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_3525176_Mtot.xvg -c mobley_3525176_dipcorr.xvg 			-eps mobley_3525176_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_3546460/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_3546460_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_3546460_msd.xvg -mol mobley_3546460_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_3546460_Mtot.xvg -c mobley_3546460_dipcorr.xvg 			-eps mobley_3546460_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_3572203/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_3572203_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_3572203_msd.xvg -mol mobley_3572203_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_3572203_Mtot.xvg -c mobley_3572203_dipcorr.xvg 			-eps mobley_3572203_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_3573480/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_3573480_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_3573480_msd.xvg -mol mobley_3573480_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_3573480_Mtot.xvg -c mobley_3573480_dipcorr.xvg 			-eps mobley_3573480_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_3589456/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_3589456_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_3589456_msd.xvg -mol mobley_3589456_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_3589456_Mtot.xvg -c mobley_3589456_dipcorr.xvg 			-eps mobley_3589456_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_36119/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_36119_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_36119_msd.xvg -mol mobley_36119_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_36119_Mtot.xvg -c mobley_36119_dipcorr.xvg 			-eps mobley_36119_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_3639400/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_3639400_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_3639400_msd.xvg -mol mobley_3639400_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_3639400_Mtot.xvg -c mobley_3639400_dipcorr.xvg 			-eps mobley_3639400_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_3663158/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_3663158_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_3663158_msd.xvg -mol mobley_3663158_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_3663158_Mtot.xvg -c mobley_3663158_dipcorr.xvg 			-eps mobley_3663158_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_3682850/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_3682850_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_3682850_msd.xvg -mol mobley_3682850_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_3682850_Mtot.xvg -c mobley_3682850_dipcorr.xvg 			-eps mobley_3682850_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_3686115/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_3686115_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_3686115_msd.xvg -mol mobley_3686115_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_3686115_Mtot.xvg -c mobley_3686115_dipcorr.xvg 			-eps mobley_3686115_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_3690931/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_3690931_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_3690931_msd.xvg -mol mobley_3690931_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_3690931_Mtot.xvg -c mobley_3690931_dipcorr.xvg 			-eps mobley_3690931_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_3709920/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_3709920_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_3709920_msd.xvg -mol mobley_3709920_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_3709920_Mtot.xvg -c mobley_3709920_dipcorr.xvg 			-eps mobley_3709920_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_3715043/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_3715043_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_3715043_msd.xvg -mol mobley_3715043_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_3715043_Mtot.xvg -c mobley_3715043_dipcorr.xvg 			-eps mobley_3715043_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_3727287/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_3727287_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_3727287_msd.xvg -mol mobley_3727287_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_3727287_Mtot.xvg -c mobley_3727287_dipcorr.xvg 			-eps mobley_3727287_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_3738859/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_3738859_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_3738859_msd.xvg -mol mobley_3738859_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_3738859_Mtot.xvg -c mobley_3738859_dipcorr.xvg 			-eps mobley_3738859_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_3746675/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_3746675_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_3746675_msd.xvg -mol mobley_3746675_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_3746675_Mtot.xvg -c mobley_3746675_dipcorr.xvg 			-eps mobley_3746675_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_3761215/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_3761215_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_3761215_msd.xvg -mol mobley_3761215_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_3761215_Mtot.xvg -c mobley_3761215_dipcorr.xvg 			-eps mobley_3761215_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_3762186/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_3762186_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_3762186_msd.xvg -mol mobley_3762186_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_3762186_Mtot.xvg -c mobley_3762186_dipcorr.xvg 			-eps mobley_3762186_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_3775790/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_3775790_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_3775790_msd.xvg -mol mobley_3775790_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_3775790_Mtot.xvg -c mobley_3775790_dipcorr.xvg 			-eps mobley_3775790_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_3777264/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_3777264_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_3777264_msd.xvg -mol mobley_3777264_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_3777264_Mtot.xvg -c mobley_3777264_dipcorr.xvg 			-eps mobley_3777264_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_3802803/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_3802803_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_3802803_msd.xvg -mol mobley_3802803_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_3802803_Mtot.xvg -c mobley_3802803_dipcorr.xvg 			-eps mobley_3802803_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_3843583/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_3843583_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_3843583_msd.xvg -mol mobley_3843583_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_3843583_Mtot.xvg -c mobley_3843583_dipcorr.xvg 			-eps mobley_3843583_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_3867265/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_3867265_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_3867265_msd.xvg -mol mobley_3867265_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_3867265_Mtot.xvg -c mobley_3867265_dipcorr.xvg 			-eps mobley_3867265_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_3968043/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_3968043_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_3968043_msd.xvg -mol mobley_3968043_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_3968043_Mtot.xvg -c mobley_3968043_dipcorr.xvg 			-eps mobley_3968043_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_3968739/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_3968739_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_3968739_msd.xvg -mol mobley_3968739_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_3968739_Mtot.xvg -c mobley_3968739_dipcorr.xvg 			-eps mobley_3968739_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_3969312/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_3969312_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_3969312_msd.xvg -mol mobley_3969312_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_3969312_Mtot.xvg -c mobley_3969312_dipcorr.xvg 			-eps mobley_3969312_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_397645/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_397645_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_397645_msd.xvg -mol mobley_397645_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_397645_Mtot.xvg -c mobley_397645_dipcorr.xvg 			-eps mobley_397645_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_3976574/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_3976574_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_3976574_msd.xvg -mol mobley_3976574_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_3976574_Mtot.xvg -c mobley_3976574_dipcorr.xvg 			-eps mobley_3976574_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_3980099/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_3980099_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_3980099_msd.xvg -mol mobley_3980099_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_3980099_Mtot.xvg -c mobley_3980099_dipcorr.xvg 			-eps mobley_3980099_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_3982371/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_3982371_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_3982371_msd.xvg -mol mobley_3982371_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_3982371_Mtot.xvg -c mobley_3982371_dipcorr.xvg 			-eps mobley_3982371_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_3999471/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_3999471_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_3999471_msd.xvg -mol mobley_3999471_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_3999471_Mtot.xvg -c mobley_3999471_dipcorr.xvg 			-eps mobley_3999471_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_4013838/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_4013838_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_4013838_msd.xvg -mol mobley_4013838_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_4013838_Mtot.xvg -c mobley_4013838_dipcorr.xvg 			-eps mobley_4013838_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_4035953/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_4035953_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_4035953_msd.xvg -mol mobley_4035953_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_4035953_Mtot.xvg -c mobley_4035953_dipcorr.xvg 			-eps mobley_4035953_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_4039055/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_4039055_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_4039055_msd.xvg -mol mobley_4039055_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_4039055_Mtot.xvg -c mobley_4039055_dipcorr.xvg 			-eps mobley_4039055_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_4043951/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_4043951_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_4043951_msd.xvg -mol mobley_4043951_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_4043951_Mtot.xvg -c mobley_4043951_dipcorr.xvg 			-eps mobley_4043951_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_4043987/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_4043987_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_4043987_msd.xvg -mol mobley_4043987_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_4043987_Mtot.xvg -c mobley_4043987_dipcorr.xvg 			-eps mobley_4043987_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_4059279/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_4059279_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_4059279_msd.xvg -mol mobley_4059279_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_4059279_Mtot.xvg -c mobley_4059279_dipcorr.xvg 			-eps mobley_4059279_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_4149784/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_4149784_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_4149784_msd.xvg -mol mobley_4149784_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_4149784_Mtot.xvg -c mobley_4149784_dipcorr.xvg 			-eps mobley_4149784_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_4177472/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_4177472_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_4177472_msd.xvg -mol mobley_4177472_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_4177472_Mtot.xvg -c mobley_4177472_dipcorr.xvg 			-eps mobley_4177472_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_4188615/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_4188615_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_4188615_msd.xvg -mol mobley_4188615_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_4188615_Mtot.xvg -c mobley_4188615_dipcorr.xvg 			-eps mobley_4188615_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_4193752/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_4193752_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_4193752_msd.xvg -mol mobley_4193752_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_4193752_Mtot.xvg -c mobley_4193752_dipcorr.xvg 			-eps mobley_4193752_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_4218209/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_4218209_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_4218209_msd.xvg -mol mobley_4218209_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_4218209_Mtot.xvg -c mobley_4218209_dipcorr.xvg 			-eps mobley_4218209_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_4219614/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_4219614_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_4219614_msd.xvg -mol mobley_4219614_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_4219614_Mtot.xvg -c mobley_4219614_dipcorr.xvg 			-eps mobley_4219614_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_4252724/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_4252724_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_4252724_msd.xvg -mol mobley_4252724_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_4252724_Mtot.xvg -c mobley_4252724_dipcorr.xvg 			-eps mobley_4252724_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_4287564/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_4287564_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_4287564_msd.xvg -mol mobley_4287564_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_4287564_Mtot.xvg -c mobley_4287564_dipcorr.xvg 			-eps mobley_4287564_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_4291494/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_4291494_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_4291494_msd.xvg -mol mobley_4291494_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_4291494_Mtot.xvg -c mobley_4291494_dipcorr.xvg 			-eps mobley_4291494_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_430089/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_430089_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_430089_msd.xvg -mol mobley_430089_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_430089_Mtot.xvg -c mobley_430089_dipcorr.xvg 			-eps mobley_430089_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_4305650/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_4305650_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_4305650_msd.xvg -mol mobley_4305650_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_4305650_Mtot.xvg -c mobley_4305650_dipcorr.xvg 			-eps mobley_4305650_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_4338603/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_4338603_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_4338603_msd.xvg -mol mobley_4338603_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_4338603_Mtot.xvg -c mobley_4338603_dipcorr.xvg 			-eps mobley_4338603_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_4364398/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_4364398_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_4364398_msd.xvg -mol mobley_4364398_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_4364398_Mtot.xvg -c mobley_4364398_dipcorr.xvg 			-eps mobley_4364398_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_4371692/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_4371692_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_4371692_msd.xvg -mol mobley_4371692_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_4371692_Mtot.xvg -c mobley_4371692_dipcorr.xvg 			-eps mobley_4371692_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_4375719/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_4375719_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_4375719_msd.xvg -mol mobley_4375719_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_4375719_Mtot.xvg -c mobley_4375719_dipcorr.xvg 			-eps mobley_4375719_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_4395315/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_4395315_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_4395315_msd.xvg -mol mobley_4395315_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_4395315_Mtot.xvg -c mobley_4395315_dipcorr.xvg 			-eps mobley_4395315_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_4434915/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_4434915_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_4434915_msd.xvg -mol mobley_4434915_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_4434915_Mtot.xvg -c mobley_4434915_dipcorr.xvg 			-eps mobley_4434915_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_4463913/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_4463913_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_4463913_msd.xvg -mol mobley_4463913_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_4463913_Mtot.xvg -c mobley_4463913_dipcorr.xvg 			-eps mobley_4463913_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_4465023/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_4465023_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_4465023_msd.xvg -mol mobley_4465023_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_4465023_Mtot.xvg -c mobley_4465023_dipcorr.xvg 			-eps mobley_4465023_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_4479135/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_4479135_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_4479135_msd.xvg -mol mobley_4479135_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_4479135_Mtot.xvg -c mobley_4479135_dipcorr.xvg 			-eps mobley_4479135_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_4483973/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_4483973_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_4483973_msd.xvg -mol mobley_4483973_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_4483973_Mtot.xvg -c mobley_4483973_dipcorr.xvg 			-eps mobley_4483973_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_4494568/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_4494568_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_4494568_msd.xvg -mol mobley_4494568_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_4494568_Mtot.xvg -c mobley_4494568_dipcorr.xvg 			-eps mobley_4494568_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_4506634/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_4506634_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_4506634_msd.xvg -mol mobley_4506634_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_4506634_Mtot.xvg -c mobley_4506634_dipcorr.xvg 			-eps mobley_4506634_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_4553008/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_4553008_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_4553008_msd.xvg -mol mobley_4553008_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_4553008_Mtot.xvg -c mobley_4553008_dipcorr.xvg 			-eps mobley_4553008_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_4561957/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_4561957_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_4561957_msd.xvg -mol mobley_4561957_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_4561957_Mtot.xvg -c mobley_4561957_dipcorr.xvg 			-eps mobley_4561957_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_4584540/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_4584540_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_4584540_msd.xvg -mol mobley_4584540_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_4584540_Mtot.xvg -c mobley_4584540_dipcorr.xvg 			-eps mobley_4584540_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_4587267/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_4587267_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_4587267_msd.xvg -mol mobley_4587267_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_4587267_Mtot.xvg -c mobley_4587267_dipcorr.xvg 			-eps mobley_4587267_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_4603202/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_4603202_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_4603202_msd.xvg -mol mobley_4603202_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_4603202_Mtot.xvg -c mobley_4603202_dipcorr.xvg 			-eps mobley_4603202_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_4609460/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_4609460_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_4609460_msd.xvg -mol mobley_4609460_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_4609460_Mtot.xvg -c mobley_4609460_dipcorr.xvg 			-eps mobley_4609460_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_4613090/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_4613090_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_4613090_msd.xvg -mol mobley_4613090_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_4613090_Mtot.xvg -c mobley_4613090_dipcorr.xvg 			-eps mobley_4613090_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_4620651/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_4620651_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_4620651_msd.xvg -mol mobley_4620651_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_4620651_Mtot.xvg -c mobley_4620651_dipcorr.xvg 			-eps mobley_4620651_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_4630641/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_4630641_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_4630641_msd.xvg -mol mobley_4630641_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_4630641_Mtot.xvg -c mobley_4630641_dipcorr.xvg 			-eps mobley_4630641_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_4639255/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_4639255_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_4639255_msd.xvg -mol mobley_4639255_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_4639255_Mtot.xvg -c mobley_4639255_dipcorr.xvg 			-eps mobley_4639255_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_4678740/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_4678740_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_4678740_msd.xvg -mol mobley_4678740_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_4678740_Mtot.xvg -c mobley_4678740_dipcorr.xvg 			-eps mobley_4678740_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_4683624/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_4683624_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_4683624_msd.xvg -mol mobley_4683624_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_4683624_Mtot.xvg -c mobley_4683624_dipcorr.xvg 			-eps mobley_4683624_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_4687447/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_4687447_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_4687447_msd.xvg -mol mobley_4687447_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_4687447_Mtot.xvg -c mobley_4687447_dipcorr.xvg 			-eps mobley_4687447_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_468867/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_468867_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_468867_msd.xvg -mol mobley_468867_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_468867_Mtot.xvg -c mobley_468867_dipcorr.xvg 			-eps mobley_468867_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_4690963/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_4690963_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_4690963_msd.xvg -mol mobley_4690963_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_4690963_Mtot.xvg -c mobley_4690963_dipcorr.xvg 			-eps mobley_4690963_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_4694328/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_4694328_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_4694328_msd.xvg -mol mobley_4694328_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_4694328_Mtot.xvg -c mobley_4694328_dipcorr.xvg 			-eps mobley_4694328_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_4699732/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_4699732_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_4699732_msd.xvg -mol mobley_4699732_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_4699732_Mtot.xvg -c mobley_4699732_dipcorr.xvg 			-eps mobley_4699732_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_4715906/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_4715906_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_4715906_msd.xvg -mol mobley_4715906_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_4715906_Mtot.xvg -c mobley_4715906_dipcorr.xvg 			-eps mobley_4715906_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_4759887/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_4759887_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_4759887_msd.xvg -mol mobley_4759887_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_4759887_Mtot.xvg -c mobley_4759887_dipcorr.xvg 			-eps mobley_4759887_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_4762983/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_4762983_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_4762983_msd.xvg -mol mobley_4762983_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_4762983_Mtot.xvg -c mobley_4762983_dipcorr.xvg 			-eps mobley_4762983_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_4780078/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_4780078_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_4780078_msd.xvg -mol mobley_4780078_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_4780078_Mtot.xvg -c mobley_4780078_dipcorr.xvg 			-eps mobley_4780078_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_4792268/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_4792268_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_4792268_msd.xvg -mol mobley_4792268_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_4792268_Mtot.xvg -c mobley_4792268_dipcorr.xvg 			-eps mobley_4792268_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_4845722/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_4845722_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_4845722_msd.xvg -mol mobley_4845722_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_4845722_Mtot.xvg -c mobley_4845722_dipcorr.xvg 			-eps mobley_4845722_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_4850657/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_4850657_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_4850657_msd.xvg -mol mobley_4850657_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_4850657_Mtot.xvg -c mobley_4850657_dipcorr.xvg 			-eps mobley_4850657_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_486214/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_486214_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_486214_msd.xvg -mol mobley_486214_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_486214_Mtot.xvg -c mobley_486214_dipcorr.xvg 			-eps mobley_486214_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_4883284/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_4883284_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_4883284_msd.xvg -mol mobley_4883284_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_4883284_Mtot.xvg -c mobley_4883284_dipcorr.xvg 			-eps mobley_4883284_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_4884177/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_4884177_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_4884177_msd.xvg -mol mobley_4884177_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_4884177_Mtot.xvg -c mobley_4884177_dipcorr.xvg 			-eps mobley_4884177_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_4893032/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_4893032_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_4893032_msd.xvg -mol mobley_4893032_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_4893032_Mtot.xvg -c mobley_4893032_dipcorr.xvg 			-eps mobley_4893032_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_4924862/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_4924862_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_4924862_msd.xvg -mol mobley_4924862_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_4924862_Mtot.xvg -c mobley_4924862_dipcorr.xvg 			-eps mobley_4924862_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_49274/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_49274_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_49274_msd.xvg -mol mobley_49274_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_49274_Mtot.xvg -c mobley_49274_dipcorr.xvg 			-eps mobley_49274_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_4934872/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_4934872_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_4934872_msd.xvg -mol mobley_4934872_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_4934872_Mtot.xvg -c mobley_4934872_dipcorr.xvg 			-eps mobley_4934872_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_4936555/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_4936555_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_4936555_msd.xvg -mol mobley_4936555_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_4936555_Mtot.xvg -c mobley_4936555_dipcorr.xvg 			-eps mobley_4936555_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_4964807/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_4964807_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_4964807_msd.xvg -mol mobley_4964807_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_4964807_Mtot.xvg -c mobley_4964807_dipcorr.xvg 			-eps mobley_4964807_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_4983965/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_4983965_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_4983965_msd.xvg -mol mobley_4983965_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_4983965_Mtot.xvg -c mobley_4983965_dipcorr.xvg 			-eps mobley_4983965_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_5003962/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_5003962_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_5003962_msd.xvg -mol mobley_5003962_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_5003962_Mtot.xvg -c mobley_5003962_dipcorr.xvg 			-eps mobley_5003962_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_5006685/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_5006685_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_5006685_msd.xvg -mol mobley_5006685_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_5006685_Mtot.xvg -c mobley_5006685_dipcorr.xvg 			-eps mobley_5006685_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_5026370/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_5026370_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_5026370_msd.xvg -mol mobley_5026370_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_5026370_Mtot.xvg -c mobley_5026370_dipcorr.xvg 			-eps mobley_5026370_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_5052949/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_5052949_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_5052949_msd.xvg -mol mobley_5052949_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_5052949_Mtot.xvg -c mobley_5052949_dipcorr.xvg 			-eps mobley_5052949_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_5056289/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_5056289_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_5056289_msd.xvg -mol mobley_5056289_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_5056289_Mtot.xvg -c mobley_5056289_dipcorr.xvg 			-eps mobley_5056289_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_5063386/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_5063386_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_5063386_msd.xvg -mol mobley_5063386_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_5063386_Mtot.xvg -c mobley_5063386_dipcorr.xvg 			-eps mobley_5063386_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_5072416/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_5072416_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_5072416_msd.xvg -mol mobley_5072416_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_5072416_Mtot.xvg -c mobley_5072416_dipcorr.xvg 			-eps mobley_5072416_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_5076071/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_5076071_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_5076071_msd.xvg -mol mobley_5076071_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_5076071_Mtot.xvg -c mobley_5076071_dipcorr.xvg 			-eps mobley_5076071_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_5079234/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_5079234_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_5079234_msd.xvg -mol mobley_5079234_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_5079234_Mtot.xvg -c mobley_5079234_dipcorr.xvg 			-eps mobley_5079234_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_5094777/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_5094777_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_5094777_msd.xvg -mol mobley_5094777_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_5094777_Mtot.xvg -c mobley_5094777_dipcorr.xvg 			-eps mobley_5094777_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_5110043/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_5110043_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_5110043_msd.xvg -mol mobley_5110043_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_5110043_Mtot.xvg -c mobley_5110043_dipcorr.xvg 			-eps mobley_5110043_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_511661/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_511661_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_511661_msd.xvg -mol mobley_511661_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_511661_Mtot.xvg -c mobley_511661_dipcorr.xvg 			-eps mobley_511661_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_5123639/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_5123639_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_5123639_msd.xvg -mol mobley_5123639_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_5123639_Mtot.xvg -c mobley_5123639_dipcorr.xvg 			-eps mobley_5123639_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_5157661/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_5157661_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_5157661_msd.xvg -mol mobley_5157661_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_5157661_Mtot.xvg -c mobley_5157661_dipcorr.xvg 			-eps mobley_5157661_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_5200358/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_5200358_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_5200358_msd.xvg -mol mobley_5200358_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_5200358_Mtot.xvg -c mobley_5200358_dipcorr.xvg 			-eps mobley_5200358_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_5220185/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_5220185_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_5220185_msd.xvg -mol mobley_5220185_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_5220185_Mtot.xvg -c mobley_5220185_dipcorr.xvg 			-eps mobley_5220185_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_525934/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_525934_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_525934_msd.xvg -mol mobley_525934_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_525934_Mtot.xvg -c mobley_525934_dipcorr.xvg 			-eps mobley_525934_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_5263791/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_5263791_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_5263791_msd.xvg -mol mobley_5263791_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_5263791_Mtot.xvg -c mobley_5263791_dipcorr.xvg 			-eps mobley_5263791_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_52782/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_52782_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_52782_msd.xvg -mol mobley_52782_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_52782_Mtot.xvg -c mobley_52782_dipcorr.xvg 			-eps mobley_52782_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_5282042/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_5282042_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_5282042_msd.xvg -mol mobley_5282042_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_5282042_Mtot.xvg -c mobley_5282042_dipcorr.xvg 			-eps mobley_5282042_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_5286200/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_5286200_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_5286200_msd.xvg -mol mobley_5286200_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_5286200_Mtot.xvg -c mobley_5286200_dipcorr.xvg 			-eps mobley_5286200_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_5310099/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_5310099_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_5310099_msd.xvg -mol mobley_5310099_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_5310099_Mtot.xvg -c mobley_5310099_dipcorr.xvg 			-eps mobley_5310099_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_5311804/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_5311804_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_5311804_msd.xvg -mol mobley_5311804_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_5311804_Mtot.xvg -c mobley_5311804_dipcorr.xvg 			-eps mobley_5311804_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_5326154/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_5326154_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_5326154_msd.xvg -mol mobley_5326154_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_5326154_Mtot.xvg -c mobley_5326154_dipcorr.xvg 			-eps mobley_5326154_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_5346580/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_5346580_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_5346580_msd.xvg -mol mobley_5346580_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_5346580_Mtot.xvg -c mobley_5346580_dipcorr.xvg 			-eps mobley_5346580_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_5347550/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_5347550_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_5347550_msd.xvg -mol mobley_5347550_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_5347550_Mtot.xvg -c mobley_5347550_dipcorr.xvg 			-eps mobley_5347550_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_5371840/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_5371840_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_5371840_msd.xvg -mol mobley_5371840_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_5371840_Mtot.xvg -c mobley_5371840_dipcorr.xvg 			-eps mobley_5371840_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_5390332/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_5390332_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_5390332_msd.xvg -mol mobley_5390332_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_5390332_Mtot.xvg -c mobley_5390332_dipcorr.xvg 			-eps mobley_5390332_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_5393242/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_5393242_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_5393242_msd.xvg -mol mobley_5393242_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_5393242_Mtot.xvg -c mobley_5393242_dipcorr.xvg 			-eps mobley_5393242_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_5445548/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_5445548_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_5445548_msd.xvg -mol mobley_5445548_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_5445548_Mtot.xvg -c mobley_5445548_dipcorr.xvg 			-eps mobley_5445548_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_5449201/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_5449201_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_5449201_msd.xvg -mol mobley_5449201_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_5449201_Mtot.xvg -c mobley_5449201_dipcorr.xvg 			-eps mobley_5449201_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_5456566/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_5456566_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_5456566_msd.xvg -mol mobley_5456566_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_5456566_Mtot.xvg -c mobley_5456566_dipcorr.xvg 			-eps mobley_5456566_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_5467162/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_5467162_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_5467162_msd.xvg -mol mobley_5467162_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_5467162_Mtot.xvg -c mobley_5467162_dipcorr.xvg 			-eps mobley_5467162_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_5471704/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_5471704_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_5471704_msd.xvg -mol mobley_5471704_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_5471704_Mtot.xvg -c mobley_5471704_dipcorr.xvg 			-eps mobley_5471704_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_547634/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_547634_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_547634_msd.xvg -mol mobley_547634_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_547634_Mtot.xvg -c mobley_547634_dipcorr.xvg 			-eps mobley_547634_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_5494918/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_5494918_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_5494918_msd.xvg -mol mobley_5494918_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_5494918_Mtot.xvg -c mobley_5494918_dipcorr.xvg 			-eps mobley_5494918_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_5499659/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_5499659_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_5499659_msd.xvg -mol mobley_5499659_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_5499659_Mtot.xvg -c mobley_5499659_dipcorr.xvg 			-eps mobley_5499659_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_550662/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_550662_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_550662_msd.xvg -mol mobley_550662_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_550662_Mtot.xvg -c mobley_550662_dipcorr.xvg 			-eps mobley_550662_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_5510474/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_5510474_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_5510474_msd.xvg -mol mobley_5510474_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_5510474_Mtot.xvg -c mobley_5510474_dipcorr.xvg 			-eps mobley_5510474_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_5518547/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_5518547_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_5518547_msd.xvg -mol mobley_5518547_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_5518547_Mtot.xvg -c mobley_5518547_dipcorr.xvg 			-eps mobley_5518547_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_5520946/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_5520946_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_5520946_msd.xvg -mol mobley_5520946_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_5520946_Mtot.xvg -c mobley_5520946_dipcorr.xvg 			-eps mobley_5520946_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_5538249/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_5538249_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_5538249_msd.xvg -mol mobley_5538249_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_5538249_Mtot.xvg -c mobley_5538249_dipcorr.xvg 			-eps mobley_5538249_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_5561855/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_5561855_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_5561855_msd.xvg -mol mobley_5561855_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_5561855_Mtot.xvg -c mobley_5561855_dipcorr.xvg 			-eps mobley_5561855_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_5571660/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_5571660_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_5571660_msd.xvg -mol mobley_5571660_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_5571660_Mtot.xvg -c mobley_5571660_dipcorr.xvg 			-eps mobley_5571660_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_5600967/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_5600967_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_5600967_msd.xvg -mol mobley_5600967_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_5600967_Mtot.xvg -c mobley_5600967_dipcorr.xvg 			-eps mobley_5600967_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_5616693/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_5616693_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_5616693_msd.xvg -mol mobley_5616693_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_5616693_Mtot.xvg -c mobley_5616693_dipcorr.xvg 			-eps mobley_5616693_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_5627459/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_5627459_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_5627459_msd.xvg -mol mobley_5627459_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_5627459_Mtot.xvg -c mobley_5627459_dipcorr.xvg 			-eps mobley_5627459_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_5631798/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_5631798_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_5631798_msd.xvg -mol mobley_5631798_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_5631798_Mtot.xvg -c mobley_5631798_dipcorr.xvg 			-eps mobley_5631798_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_5665561/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_5665561_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_5665561_msd.xvg -mol mobley_5665561_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_5665561_Mtot.xvg -c mobley_5665561_dipcorr.xvg 			-eps mobley_5665561_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_5690766/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_5690766_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_5690766_msd.xvg -mol mobley_5690766_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_5690766_Mtot.xvg -c mobley_5690766_dipcorr.xvg 			-eps mobley_5690766_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_5692472/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_5692472_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_5692472_msd.xvg -mol mobley_5692472_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_5692472_Mtot.xvg -c mobley_5692472_dipcorr.xvg 			-eps mobley_5692472_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_5708811/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_5708811_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_5708811_msd.xvg -mol mobley_5708811_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_5708811_Mtot.xvg -c mobley_5708811_dipcorr.xvg 			-eps mobley_5708811_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_5732611/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_5732611_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_5732611_msd.xvg -mol mobley_5732611_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_5732611_Mtot.xvg -c mobley_5732611_dipcorr.xvg 			-eps mobley_5732611_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_5747188/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_5747188_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_5747188_msd.xvg -mol mobley_5747188_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_5747188_Mtot.xvg -c mobley_5747188_dipcorr.xvg 			-eps mobley_5747188_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_5747981/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_5747981_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_5747981_msd.xvg -mol mobley_5747981_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_5747981_Mtot.xvg -c mobley_5747981_dipcorr.xvg 			-eps mobley_5747981_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_5759258/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_5759258_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_5759258_msd.xvg -mol mobley_5759258_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_5759258_Mtot.xvg -c mobley_5759258_dipcorr.xvg 			-eps mobley_5759258_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_5760563/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_5760563_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_5760563_msd.xvg -mol mobley_5760563_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_5760563_Mtot.xvg -c mobley_5760563_dipcorr.xvg 			-eps mobley_5760563_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_5816127/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_5816127_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_5816127_msd.xvg -mol mobley_5816127_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_5816127_Mtot.xvg -c mobley_5816127_dipcorr.xvg 			-eps mobley_5816127_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_5852491/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_5852491_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_5852491_msd.xvg -mol mobley_5852491_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_5852491_Mtot.xvg -c mobley_5852491_dipcorr.xvg 			-eps mobley_5852491_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_5857/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_5857_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_5857_msd.xvg -mol mobley_5857_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_5857_Mtot.xvg -c mobley_5857_dipcorr.xvg 			-eps mobley_5857_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_5880265/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_5880265_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_5880265_msd.xvg -mol mobley_5880265_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_5880265_Mtot.xvg -c mobley_5880265_dipcorr.xvg 			-eps mobley_5880265_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_588781/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_588781_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_588781_msd.xvg -mol mobley_588781_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_588781_Mtot.xvg -c mobley_588781_dipcorr.xvg 			-eps mobley_588781_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_5890803/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_5890803_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_5890803_msd.xvg -mol mobley_5890803_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_5890803_Mtot.xvg -c mobley_5890803_dipcorr.xvg 			-eps mobley_5890803_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_590519/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_590519_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_590519_msd.xvg -mol mobley_590519_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_590519_Mtot.xvg -c mobley_590519_dipcorr.xvg 			-eps mobley_590519_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_5917842/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_5917842_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_5917842_msd.xvg -mol mobley_5917842_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_5917842_Mtot.xvg -c mobley_5917842_dipcorr.xvg 			-eps mobley_5917842_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_5935995/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_5935995_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_5935995_msd.xvg -mol mobley_5935995_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_5935995_Mtot.xvg -c mobley_5935995_dipcorr.xvg 			-eps mobley_5935995_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_5948990/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_5948990_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_5948990_msd.xvg -mol mobley_5948990_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_5948990_Mtot.xvg -c mobley_5948990_dipcorr.xvg 			-eps mobley_5948990_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_5952846/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_5952846_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_5952846_msd.xvg -mol mobley_5952846_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_5952846_Mtot.xvg -c mobley_5952846_dipcorr.xvg 			-eps mobley_5952846_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_5973402/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_5973402_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_5973402_msd.xvg -mol mobley_5973402_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_5973402_Mtot.xvg -c mobley_5973402_dipcorr.xvg 			-eps mobley_5973402_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_5977084/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_5977084_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_5977084_msd.xvg -mol mobley_5977084_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_5977084_Mtot.xvg -c mobley_5977084_dipcorr.xvg 			-eps mobley_5977084_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_6006813/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_6006813_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_6006813_msd.xvg -mol mobley_6006813_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_6006813_Mtot.xvg -c mobley_6006813_dipcorr.xvg 			-eps mobley_6006813_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_6055410/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_6055410_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_6055410_msd.xvg -mol mobley_6055410_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_6055410_Mtot.xvg -c mobley_6055410_dipcorr.xvg 			-eps mobley_6055410_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_6060301/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_6060301_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_6060301_msd.xvg -mol mobley_6060301_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_6060301_Mtot.xvg -c mobley_6060301_dipcorr.xvg 			-eps mobley_6060301_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_6081058/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_6081058_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_6081058_msd.xvg -mol mobley_6081058_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_6081058_Mtot.xvg -c mobley_6081058_dipcorr.xvg 			-eps mobley_6081058_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_6082662/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_6082662_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_6082662_msd.xvg -mol mobley_6082662_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_6082662_Mtot.xvg -c mobley_6082662_dipcorr.xvg 			-eps mobley_6082662_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_6091882/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_6091882_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_6091882_msd.xvg -mol mobley_6091882_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_6091882_Mtot.xvg -c mobley_6091882_dipcorr.xvg 			-eps mobley_6091882_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_6102880/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_6102880_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_6102880_msd.xvg -mol mobley_6102880_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_6102880_Mtot.xvg -c mobley_6102880_dipcorr.xvg 			-eps mobley_6102880_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_6115639/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_6115639_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_6115639_msd.xvg -mol mobley_6115639_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_6115639_Mtot.xvg -c mobley_6115639_dipcorr.xvg 			-eps mobley_6115639_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_6175884/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_6175884_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_6175884_msd.xvg -mol mobley_6175884_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_6175884_Mtot.xvg -c mobley_6175884_dipcorr.xvg 			-eps mobley_6175884_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_6190089/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_6190089_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_6190089_msd.xvg -mol mobley_6190089_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_6190089_Mtot.xvg -c mobley_6190089_dipcorr.xvg 			-eps mobley_6190089_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_6195751/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_6195751_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_6195751_msd.xvg -mol mobley_6195751_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_6195751_Mtot.xvg -c mobley_6195751_dipcorr.xvg 			-eps mobley_6195751_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_6198745/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_6198745_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_6198745_msd.xvg -mol mobley_6198745_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_6198745_Mtot.xvg -c mobley_6198745_dipcorr.xvg 			-eps mobley_6198745_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_6201330/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_6201330_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_6201330_msd.xvg -mol mobley_6201330_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_6201330_Mtot.xvg -c mobley_6201330_dipcorr.xvg 			-eps mobley_6201330_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_6232400/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_6232400_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_6232400_msd.xvg -mol mobley_6232400_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_6232400_Mtot.xvg -c mobley_6232400_dipcorr.xvg 			-eps mobley_6232400_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_6235784/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_6235784_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_6235784_msd.xvg -mol mobley_6235784_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_6235784_Mtot.xvg -c mobley_6235784_dipcorr.xvg 			-eps mobley_6235784_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_6239320/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_6239320_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_6239320_msd.xvg -mol mobley_6239320_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_6239320_Mtot.xvg -c mobley_6239320_dipcorr.xvg 			-eps mobley_6239320_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_6248915/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_6248915_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_6248915_msd.xvg -mol mobley_6248915_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_6248915_Mtot.xvg -c mobley_6248915_dipcorr.xvg 			-eps mobley_6248915_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_6250025/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_6250025_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_6250025_msd.xvg -mol mobley_6250025_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_6250025_Mtot.xvg -c mobley_6250025_dipcorr.xvg 			-eps mobley_6250025_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_6257907/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_6257907_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_6257907_msd.xvg -mol mobley_6257907_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_6257907_Mtot.xvg -c mobley_6257907_dipcorr.xvg 			-eps mobley_6257907_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_6266306/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_6266306_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_6266306_msd.xvg -mol mobley_6266306_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_6266306_Mtot.xvg -c mobley_6266306_dipcorr.xvg 			-eps mobley_6266306_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_627267/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_627267_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_627267_msd.xvg -mol mobley_627267_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_627267_Mtot.xvg -c mobley_627267_dipcorr.xvg 			-eps mobley_627267_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_628086/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_628086_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_628086_msd.xvg -mol mobley_628086_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_628086_Mtot.xvg -c mobley_628086_dipcorr.xvg 			-eps mobley_628086_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_628951/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_628951_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_628951_msd.xvg -mol mobley_628951_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_628951_Mtot.xvg -c mobley_628951_dipcorr.xvg 			-eps mobley_628951_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_6303022/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_6303022_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_6303022_msd.xvg -mol mobley_6303022_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_6303022_Mtot.xvg -c mobley_6303022_dipcorr.xvg 			-eps mobley_6303022_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_6309289/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_6309289_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_6309289_msd.xvg -mol mobley_6309289_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_6309289_Mtot.xvg -c mobley_6309289_dipcorr.xvg 			-eps mobley_6309289_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_632905/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_632905_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_632905_msd.xvg -mol mobley_632905_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_632905_Mtot.xvg -c mobley_632905_dipcorr.xvg 			-eps mobley_632905_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_6334915/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_6334915_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_6334915_msd.xvg -mol mobley_6334915_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_6334915_Mtot.xvg -c mobley_6334915_dipcorr.xvg 			-eps mobley_6334915_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_6338073/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_6338073_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_6338073_msd.xvg -mol mobley_6338073_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_6338073_Mtot.xvg -c mobley_6338073_dipcorr.xvg 			-eps mobley_6338073_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_6353617/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_6353617_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_6353617_msd.xvg -mol mobley_6353617_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_6353617_Mtot.xvg -c mobley_6353617_dipcorr.xvg 			-eps mobley_6353617_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_6358463/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_6358463_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_6358463_msd.xvg -mol mobley_6358463_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_6358463_Mtot.xvg -c mobley_6358463_dipcorr.xvg 			-eps mobley_6358463_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_6359135/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_6359135_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_6359135_msd.xvg -mol mobley_6359135_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_6359135_Mtot.xvg -c mobley_6359135_dipcorr.xvg 			-eps mobley_6359135_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_6359156/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_6359156_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_6359156_msd.xvg -mol mobley_6359156_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_6359156_Mtot.xvg -c mobley_6359156_dipcorr.xvg 			-eps mobley_6359156_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_63712/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_63712_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_63712_msd.xvg -mol mobley_63712_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_63712_Mtot.xvg -c mobley_63712_dipcorr.xvg 			-eps mobley_63712_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_637522/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_637522_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_637522_msd.xvg -mol mobley_637522_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_637522_Mtot.xvg -c mobley_637522_dipcorr.xvg 			-eps mobley_637522_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_6416775/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_6416775_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_6416775_msd.xvg -mol mobley_6416775_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_6416775_Mtot.xvg -c mobley_6416775_dipcorr.xvg 			-eps mobley_6416775_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_6430250/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_6430250_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_6430250_msd.xvg -mol mobley_6430250_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_6430250_Mtot.xvg -c mobley_6430250_dipcorr.xvg 			-eps mobley_6430250_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_6456034/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_6456034_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_6456034_msd.xvg -mol mobley_6456034_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_6456034_Mtot.xvg -c mobley_6456034_dipcorr.xvg 			-eps mobley_6456034_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_646007/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_646007_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_646007_msd.xvg -mol mobley_646007_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_646007_Mtot.xvg -c mobley_646007_dipcorr.xvg 			-eps mobley_646007_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_6474572/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_6474572_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_6474572_msd.xvg -mol mobley_6474572_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_6474572_Mtot.xvg -c mobley_6474572_dipcorr.xvg 			-eps mobley_6474572_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_6497672/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_6497672_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_6497672_msd.xvg -mol mobley_6497672_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_6497672_Mtot.xvg -c mobley_6497672_dipcorr.xvg 			-eps mobley_6497672_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_6522117/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_6522117_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_6522117_msd.xvg -mol mobley_6522117_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_6522117_Mtot.xvg -c mobley_6522117_dipcorr.xvg 			-eps mobley_6522117_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_6571751/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_6571751_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_6571751_msd.xvg -mol mobley_6571751_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_6571751_Mtot.xvg -c mobley_6571751_dipcorr.xvg 			-eps mobley_6571751_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_6619554/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_6619554_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_6619554_msd.xvg -mol mobley_6619554_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_6619554_Mtot.xvg -c mobley_6619554_dipcorr.xvg 			-eps mobley_6619554_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_6620221/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_6620221_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_6620221_msd.xvg -mol mobley_6620221_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_6620221_Mtot.xvg -c mobley_6620221_dipcorr.xvg 			-eps mobley_6620221_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_6632459/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_6632459_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_6632459_msd.xvg -mol mobley_6632459_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_6632459_Mtot.xvg -c mobley_6632459_dipcorr.xvg 			-eps mobley_6632459_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_664966/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_664966_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_664966_msd.xvg -mol mobley_664966_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_664966_Mtot.xvg -c mobley_664966_dipcorr.xvg 			-eps mobley_664966_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_667278/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_667278_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_667278_msd.xvg -mol mobley_667278_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_667278_Mtot.xvg -c mobley_667278_dipcorr.xvg 			-eps mobley_667278_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_6688723/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_6688723_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_6688723_msd.xvg -mol mobley_6688723_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_6688723_Mtot.xvg -c mobley_6688723_dipcorr.xvg 			-eps mobley_6688723_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_6714389/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_6714389_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_6714389_msd.xvg -mol mobley_6714389_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_6714389_Mtot.xvg -c mobley_6714389_dipcorr.xvg 			-eps mobley_6714389_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_6727159/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_6727159_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_6727159_msd.xvg -mol mobley_6727159_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_6727159_Mtot.xvg -c mobley_6727159_dipcorr.xvg 			-eps mobley_6727159_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_6733657/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_6733657_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_6733657_msd.xvg -mol mobley_6733657_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_6733657_Mtot.xvg -c mobley_6733657_dipcorr.xvg 			-eps mobley_6733657_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_6739648/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_6739648_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_6739648_msd.xvg -mol mobley_6739648_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_6739648_Mtot.xvg -c mobley_6739648_dipcorr.xvg 			-eps mobley_6739648_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_6743808/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_6743808_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_6743808_msd.xvg -mol mobley_6743808_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_6743808_Mtot.xvg -c mobley_6743808_dipcorr.xvg 			-eps mobley_6743808_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_676247/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_676247_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_676247_msd.xvg -mol mobley_676247_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_676247_Mtot.xvg -c mobley_676247_dipcorr.xvg 			-eps mobley_676247_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_6794076/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_6794076_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_6794076_msd.xvg -mol mobley_6794076_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_6794076_Mtot.xvg -c mobley_6794076_dipcorr.xvg 			-eps mobley_6794076_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_6804509/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_6804509_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_6804509_msd.xvg -mol mobley_6804509_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_6804509_Mtot.xvg -c mobley_6804509_dipcorr.xvg 			-eps mobley_6804509_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_6812653/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_6812653_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_6812653_msd.xvg -mol mobley_6812653_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_6812653_Mtot.xvg -c mobley_6812653_dipcorr.xvg 			-eps mobley_6812653_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_6843802/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_6843802_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_6843802_msd.xvg -mol mobley_6843802_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_6843802_Mtot.xvg -c mobley_6843802_dipcorr.xvg 			-eps mobley_6843802_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_6854178/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_6854178_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_6854178_msd.xvg -mol mobley_6854178_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_6854178_Mtot.xvg -c mobley_6854178_dipcorr.xvg 			-eps mobley_6854178_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_6861308/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_6861308_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_6861308_msd.xvg -mol mobley_6861308_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_6861308_Mtot.xvg -c mobley_6861308_dipcorr.xvg 			-eps mobley_6861308_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_6896128/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_6896128_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_6896128_msd.xvg -mol mobley_6896128_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_6896128_Mtot.xvg -c mobley_6896128_dipcorr.xvg 			-eps mobley_6896128_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_6911232/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_6911232_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_6911232_msd.xvg -mol mobley_6911232_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_6911232_Mtot.xvg -c mobley_6911232_dipcorr.xvg 			-eps mobley_6911232_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_6917738/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_6917738_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_6917738_msd.xvg -mol mobley_6917738_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_6917738_Mtot.xvg -c mobley_6917738_dipcorr.xvg 			-eps mobley_6917738_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_6929123/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_6929123_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_6929123_msd.xvg -mol mobley_6929123_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_6929123_Mtot.xvg -c mobley_6929123_dipcorr.xvg 			-eps mobley_6929123_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_6935906/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_6935906_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_6935906_msd.xvg -mol mobley_6935906_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_6935906_Mtot.xvg -c mobley_6935906_dipcorr.xvg 			-eps mobley_6935906_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_6973347/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_6973347_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_6973347_msd.xvg -mol mobley_6973347_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_6973347_Mtot.xvg -c mobley_6973347_dipcorr.xvg 			-eps mobley_6973347_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_6978427/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_6978427_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_6978427_msd.xvg -mol mobley_6978427_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_6978427_Mtot.xvg -c mobley_6978427_dipcorr.xvg 			-eps mobley_6978427_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_6981465/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_6981465_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_6981465_msd.xvg -mol mobley_6981465_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_6981465_Mtot.xvg -c mobley_6981465_dipcorr.xvg 			-eps mobley_6981465_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_6988468/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_6988468_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_6988468_msd.xvg -mol mobley_6988468_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_6988468_Mtot.xvg -c mobley_6988468_dipcorr.xvg 			-eps mobley_6988468_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_7009711/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_7009711_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_7009711_msd.xvg -mol mobley_7009711_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_7009711_Mtot.xvg -c mobley_7009711_dipcorr.xvg 			-eps mobley_7009711_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_7010316/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_7010316_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_7010316_msd.xvg -mol mobley_7010316_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_7010316_Mtot.xvg -c mobley_7010316_dipcorr.xvg 			-eps mobley_7010316_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_7015518/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_7015518_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_7015518_msd.xvg -mol mobley_7015518_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_7015518_Mtot.xvg -c mobley_7015518_dipcorr.xvg 			-eps mobley_7015518_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_7017274/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_7017274_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_7017274_msd.xvg -mol mobley_7017274_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_7017274_Mtot.xvg -c mobley_7017274_dipcorr.xvg 			-eps mobley_7017274_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_7039935/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_7039935_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_7039935_msd.xvg -mol mobley_7039935_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_7039935_Mtot.xvg -c mobley_7039935_dipcorr.xvg 			-eps mobley_7039935_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_7047032/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_7047032_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_7047032_msd.xvg -mol mobley_7047032_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_7047032_Mtot.xvg -c mobley_7047032_dipcorr.xvg 			-eps mobley_7047032_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_7066554/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_7066554_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_7066554_msd.xvg -mol mobley_7066554_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_7066554_Mtot.xvg -c mobley_7066554_dipcorr.xvg 			-eps mobley_7066554_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_7099614/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_7099614_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_7099614_msd.xvg -mol mobley_7099614_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_7099614_Mtot.xvg -c mobley_7099614_dipcorr.xvg 			-eps mobley_7099614_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_7106722/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_7106722_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_7106722_msd.xvg -mol mobley_7106722_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_7106722_Mtot.xvg -c mobley_7106722_dipcorr.xvg 			-eps mobley_7106722_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_7142697/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_7142697_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_7142697_msd.xvg -mol mobley_7142697_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_7142697_Mtot.xvg -c mobley_7142697_dipcorr.xvg 			-eps mobley_7142697_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_7150646/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_7150646_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_7150646_msd.xvg -mol mobley_7150646_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_7150646_Mtot.xvg -c mobley_7150646_dipcorr.xvg 			-eps mobley_7150646_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_7157427/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_7157427_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_7157427_msd.xvg -mol mobley_7157427_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_7157427_Mtot.xvg -c mobley_7157427_dipcorr.xvg 			-eps mobley_7157427_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_7176248/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_7176248_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_7176248_msd.xvg -mol mobley_7176248_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_7176248_Mtot.xvg -c mobley_7176248_dipcorr.xvg 			-eps mobley_7176248_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_7176290/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_7176290_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_7176290_msd.xvg -mol mobley_7176290_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_7176290_Mtot.xvg -c mobley_7176290_dipcorr.xvg 			-eps mobley_7176290_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_718988/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_718988_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_718988_msd.xvg -mol mobley_718988_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_718988_Mtot.xvg -c mobley_718988_dipcorr.xvg 			-eps mobley_718988_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_7200804/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_7200804_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_7200804_msd.xvg -mol mobley_7200804_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_7200804_Mtot.xvg -c mobley_7200804_dipcorr.xvg 			-eps mobley_7200804_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_7203421/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_7203421_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_7203421_msd.xvg -mol mobley_7203421_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_7203421_Mtot.xvg -c mobley_7203421_dipcorr.xvg 			-eps mobley_7203421_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_7227357/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_7227357_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_7227357_msd.xvg -mol mobley_7227357_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_7227357_Mtot.xvg -c mobley_7227357_dipcorr.xvg 			-eps mobley_7227357_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_7239499/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_7239499_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_7239499_msd.xvg -mol mobley_7239499_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_7239499_Mtot.xvg -c mobley_7239499_dipcorr.xvg 			-eps mobley_7239499_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_7261305/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_7261305_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_7261305_msd.xvg -mol mobley_7261305_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_7261305_Mtot.xvg -c mobley_7261305_dipcorr.xvg 			-eps mobley_7261305_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_7295828/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_7295828_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_7295828_msd.xvg -mol mobley_7295828_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_7295828_Mtot.xvg -c mobley_7295828_dipcorr.xvg 			-eps mobley_7295828_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_7298388/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_7298388_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_7298388_msd.xvg -mol mobley_7298388_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_7298388_Mtot.xvg -c mobley_7298388_dipcorr.xvg 			-eps mobley_7298388_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_7326706/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_7326706_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_7326706_msd.xvg -mol mobley_7326706_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_7326706_Mtot.xvg -c mobley_7326706_dipcorr.xvg 			-eps mobley_7326706_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_7326982/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_7326982_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_7326982_msd.xvg -mol mobley_7326982_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_7326982_Mtot.xvg -c mobley_7326982_dipcorr.xvg 			-eps mobley_7326982_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_7360181/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_7360181_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_7360181_msd.xvg -mol mobley_7360181_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_7360181_Mtot.xvg -c mobley_7360181_dipcorr.xvg 			-eps mobley_7360181_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_7364468/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_7364468_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_7364468_msd.xvg -mol mobley_7364468_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_7364468_Mtot.xvg -c mobley_7364468_dipcorr.xvg 			-eps mobley_7364468_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_7375018/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_7375018_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_7375018_msd.xvg -mol mobley_7375018_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_7375018_Mtot.xvg -c mobley_7375018_dipcorr.xvg 			-eps mobley_7375018_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_7378987/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_7378987_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_7378987_msd.xvg -mol mobley_7378987_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_7378987_Mtot.xvg -c mobley_7378987_dipcorr.xvg 			-eps mobley_7378987_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_7393673/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_7393673_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_7393673_msd.xvg -mol mobley_7393673_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_7393673_Mtot.xvg -c mobley_7393673_dipcorr.xvg 			-eps mobley_7393673_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_7415647/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_7415647_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_7415647_msd.xvg -mol mobley_7415647_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_7415647_Mtot.xvg -c mobley_7415647_dipcorr.xvg 			-eps mobley_7415647_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_7417968/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_7417968_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_7417968_msd.xvg -mol mobley_7417968_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_7417968_Mtot.xvg -c mobley_7417968_dipcorr.xvg 			-eps mobley_7417968_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_7455579/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_7455579_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_7455579_msd.xvg -mol mobley_7455579_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_7455579_Mtot.xvg -c mobley_7455579_dipcorr.xvg 			-eps mobley_7455579_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_7463408/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_7463408_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_7463408_msd.xvg -mol mobley_7463408_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_7463408_Mtot.xvg -c mobley_7463408_dipcorr.xvg 			-eps mobley_7463408_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_7463799/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_7463799_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_7463799_msd.xvg -mol mobley_7463799_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_7463799_Mtot.xvg -c mobley_7463799_dipcorr.xvg 			-eps mobley_7463799_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_7497999/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_7497999_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_7497999_msd.xvg -mol mobley_7497999_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_7497999_Mtot.xvg -c mobley_7497999_dipcorr.xvg 			-eps mobley_7497999_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_7532833/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_7532833_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_7532833_msd.xvg -mol mobley_7532833_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_7532833_Mtot.xvg -c mobley_7532833_dipcorr.xvg 			-eps mobley_7532833_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_7542832/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_7542832_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_7542832_msd.xvg -mol mobley_7542832_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_7542832_Mtot.xvg -c mobley_7542832_dipcorr.xvg 			-eps mobley_7542832_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_755351/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_755351_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_755351_msd.xvg -mol mobley_755351_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_755351_Mtot.xvg -c mobley_755351_dipcorr.xvg 			-eps mobley_755351_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_7573149/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_7573149_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_7573149_msd.xvg -mol mobley_7573149_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_7573149_Mtot.xvg -c mobley_7573149_dipcorr.xvg 			-eps mobley_7573149_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_7578802/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_7578802_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_7578802_msd.xvg -mol mobley_7578802_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_7578802_Mtot.xvg -c mobley_7578802_dipcorr.xvg 			-eps mobley_7578802_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_7599023/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_7599023_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_7599023_msd.xvg -mol mobley_7599023_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_7599023_Mtot.xvg -c mobley_7599023_dipcorr.xvg 			-eps mobley_7599023_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_7608435/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_7608435_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_7608435_msd.xvg -mol mobley_7608435_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_7608435_Mtot.xvg -c mobley_7608435_dipcorr.xvg 			-eps mobley_7608435_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_7608462/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_7608462_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_7608462_msd.xvg -mol mobley_7608462_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_7608462_Mtot.xvg -c mobley_7608462_dipcorr.xvg 			-eps mobley_7608462_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_7610437/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_7610437_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_7610437_msd.xvg -mol mobley_7610437_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_7610437_Mtot.xvg -c mobley_7610437_dipcorr.xvg 			-eps mobley_7610437_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_766666/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_766666_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_766666_msd.xvg -mol mobley_766666_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_766666_Mtot.xvg -c mobley_766666_dipcorr.xvg 			-eps mobley_766666_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_7676709/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_7676709_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_7676709_msd.xvg -mol mobley_7676709_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_7676709_Mtot.xvg -c mobley_7676709_dipcorr.xvg 			-eps mobley_7676709_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_7688753/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_7688753_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_7688753_msd.xvg -mol mobley_7688753_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_7688753_Mtot.xvg -c mobley_7688753_dipcorr.xvg 			-eps mobley_7688753_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_7690440/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_7690440_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_7690440_msd.xvg -mol mobley_7690440_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_7690440_Mtot.xvg -c mobley_7690440_dipcorr.xvg 			-eps mobley_7690440_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_7708038/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_7708038_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_7708038_msd.xvg -mol mobley_7708038_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_7708038_Mtot.xvg -c mobley_7708038_dipcorr.xvg 			-eps mobley_7708038_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_7732703/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_7732703_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_7732703_msd.xvg -mol mobley_7732703_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_7732703_Mtot.xvg -c mobley_7732703_dipcorr.xvg 			-eps mobley_7732703_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_7735340/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_7735340_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_7735340_msd.xvg -mol mobley_7735340_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_7735340_Mtot.xvg -c mobley_7735340_dipcorr.xvg 			-eps mobley_7735340_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_7754849/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_7754849_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_7754849_msd.xvg -mol mobley_7754849_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_7754849_Mtot.xvg -c mobley_7754849_dipcorr.xvg 			-eps mobley_7754849_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_7758918/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_7758918_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_7758918_msd.xvg -mol mobley_7758918_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_7758918_Mtot.xvg -c mobley_7758918_dipcorr.xvg 			-eps mobley_7758918_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_7768165/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_7768165_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_7768165_msd.xvg -mol mobley_7768165_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_7768165_Mtot.xvg -c mobley_7768165_dipcorr.xvg 			-eps mobley_7768165_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_7769613/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_7769613_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_7769613_msd.xvg -mol mobley_7769613_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_7769613_Mtot.xvg -c mobley_7769613_dipcorr.xvg 			-eps mobley_7769613_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_7774695/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_7774695_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_7774695_msd.xvg -mol mobley_7774695_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_7774695_Mtot.xvg -c mobley_7774695_dipcorr.xvg 			-eps mobley_7774695_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_778352/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_778352_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_778352_msd.xvg -mol mobley_778352_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_778352_Mtot.xvg -c mobley_778352_dipcorr.xvg 			-eps mobley_778352_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_7794077/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_7794077_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_7794077_msd.xvg -mol mobley_7794077_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_7794077_Mtot.xvg -c mobley_7794077_dipcorr.xvg 			-eps mobley_7794077_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_7814642/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_7814642_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_7814642_msd.xvg -mol mobley_7814642_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_7814642_Mtot.xvg -c mobley_7814642_dipcorr.xvg 			-eps mobley_7814642_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_7829570/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_7829570_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_7829570_msd.xvg -mol mobley_7829570_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_7829570_Mtot.xvg -c mobley_7829570_dipcorr.xvg 			-eps mobley_7829570_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_7859387/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_7859387_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_7859387_msd.xvg -mol mobley_7859387_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_7859387_Mtot.xvg -c mobley_7859387_dipcorr.xvg 			-eps mobley_7859387_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_7860938/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_7860938_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_7860938_msd.xvg -mol mobley_7860938_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_7860938_Mtot.xvg -c mobley_7860938_dipcorr.xvg 			-eps mobley_7860938_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_7869158/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_7869158_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_7869158_msd.xvg -mol mobley_7869158_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_7869158_Mtot.xvg -c mobley_7869158_dipcorr.xvg 			-eps mobley_7869158_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_7893124/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_7893124_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_7893124_msd.xvg -mol mobley_7893124_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_7893124_Mtot.xvg -c mobley_7893124_dipcorr.xvg 			-eps mobley_7893124_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_7912193/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_7912193_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_7912193_msd.xvg -mol mobley_7912193_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_7912193_Mtot.xvg -c mobley_7912193_dipcorr.xvg 			-eps mobley_7912193_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_7913234/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_7913234_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_7913234_msd.xvg -mol mobley_7913234_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_7913234_Mtot.xvg -c mobley_7913234_dipcorr.xvg 			-eps mobley_7913234_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_7943327/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_7943327_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_7943327_msd.xvg -mol mobley_7943327_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_7943327_Mtot.xvg -c mobley_7943327_dipcorr.xvg 			-eps mobley_7943327_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_7977115/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_7977115_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_7977115_msd.xvg -mol mobley_7977115_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_7977115_Mtot.xvg -c mobley_7977115_dipcorr.xvg 			-eps mobley_7977115_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_7983227/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_7983227_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_7983227_msd.xvg -mol mobley_7983227_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_7983227_Mtot.xvg -c mobley_7983227_dipcorr.xvg 			-eps mobley_7983227_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_7988076/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_7988076_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_7988076_msd.xvg -mol mobley_7988076_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_7988076_Mtot.xvg -c mobley_7988076_dipcorr.xvg 			-eps mobley_7988076_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_8006582/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_8006582_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_8006582_msd.xvg -mol mobley_8006582_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_8006582_Mtot.xvg -c mobley_8006582_dipcorr.xvg 			-eps mobley_8006582_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_8011706/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_8011706_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_8011706_msd.xvg -mol mobley_8011706_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_8011706_Mtot.xvg -c mobley_8011706_dipcorr.xvg 			-eps mobley_8011706_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_8048190/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_8048190_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_8048190_msd.xvg -mol mobley_8048190_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_8048190_Mtot.xvg -c mobley_8048190_dipcorr.xvg 			-eps mobley_8048190_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_8052240/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_8052240_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_8052240_msd.xvg -mol mobley_8052240_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_8052240_Mtot.xvg -c mobley_8052240_dipcorr.xvg 			-eps mobley_8052240_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_8057732/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_8057732_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_8057732_msd.xvg -mol mobley_8057732_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_8057732_Mtot.xvg -c mobley_8057732_dipcorr.xvg 			-eps mobley_8057732_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_8117218/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_8117218_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_8117218_msd.xvg -mol mobley_8117218_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_8117218_Mtot.xvg -c mobley_8117218_dipcorr.xvg 			-eps mobley_8117218_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_8118832/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_8118832_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_8118832_msd.xvg -mol mobley_8118832_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_8118832_Mtot.xvg -c mobley_8118832_dipcorr.xvg 			-eps mobley_8118832_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_8124669/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_8124669_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_8124669_msd.xvg -mol mobley_8124669_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_8124669_Mtot.xvg -c mobley_8124669_dipcorr.xvg 			-eps mobley_8124669_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_8127829/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_8127829_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_8127829_msd.xvg -mol mobley_8127829_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_8127829_Mtot.xvg -c mobley_8127829_dipcorr.xvg 			-eps mobley_8127829_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_819018/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_819018_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_819018_msd.xvg -mol mobley_819018_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_819018_Mtot.xvg -c mobley_819018_dipcorr.xvg 			-eps mobley_819018_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_8191186/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_8191186_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_8191186_msd.xvg -mol mobley_8191186_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_8191186_Mtot.xvg -c mobley_8191186_dipcorr.xvg 			-eps mobley_8191186_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_8207196/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_8207196_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_8207196_msd.xvg -mol mobley_8207196_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_8207196_Mtot.xvg -c mobley_8207196_dipcorr.xvg 			-eps mobley_8207196_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_820789/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_820789_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_820789_msd.xvg -mol mobley_820789_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_820789_Mtot.xvg -c mobley_820789_dipcorr.xvg 			-eps mobley_820789_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_8208692/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_8208692_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_8208692_msd.xvg -mol mobley_8208692_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_8208692_Mtot.xvg -c mobley_8208692_dipcorr.xvg 			-eps mobley_8208692_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_8221999/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_8221999_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_8221999_msd.xvg -mol mobley_8221999_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_8221999_Mtot.xvg -c mobley_8221999_dipcorr.xvg 			-eps mobley_8221999_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_8260524/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_8260524_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_8260524_msd.xvg -mol mobley_8260524_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_8260524_Mtot.xvg -c mobley_8260524_dipcorr.xvg 			-eps mobley_8260524_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_8311303/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_8311303_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_8311303_msd.xvg -mol mobley_8311303_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_8311303_Mtot.xvg -c mobley_8311303_dipcorr.xvg 			-eps mobley_8311303_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_8311321/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_8311321_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_8311321_msd.xvg -mol mobley_8311321_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_8311321_Mtot.xvg -c mobley_8311321_dipcorr.xvg 			-eps mobley_8311321_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_8320545/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_8320545_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_8320545_msd.xvg -mol mobley_8320545_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_8320545_Mtot.xvg -c mobley_8320545_dipcorr.xvg 			-eps mobley_8320545_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_8337722/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_8337722_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_8337722_msd.xvg -mol mobley_8337722_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_8337722_Mtot.xvg -c mobley_8337722_dipcorr.xvg 			-eps mobley_8337722_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_8337977/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_8337977_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_8337977_msd.xvg -mol mobley_8337977_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_8337977_Mtot.xvg -c mobley_8337977_dipcorr.xvg 			-eps mobley_8337977_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_8426916/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_8426916_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_8426916_msd.xvg -mol mobley_8426916_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_8426916_Mtot.xvg -c mobley_8426916_dipcorr.xvg 			-eps mobley_8426916_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_8427539/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_8427539_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_8427539_msd.xvg -mol mobley_8427539_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_8427539_Mtot.xvg -c mobley_8427539_dipcorr.xvg 			-eps mobley_8427539_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_8436428/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_8436428_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_8436428_msd.xvg -mol mobley_8436428_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_8436428_Mtot.xvg -c mobley_8436428_dipcorr.xvg 			-eps mobley_8436428_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_8449031/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_8449031_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_8449031_msd.xvg -mol mobley_8449031_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_8449031_Mtot.xvg -c mobley_8449031_dipcorr.xvg 			-eps mobley_8449031_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_8467917/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_8467917_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_8467917_msd.xvg -mol mobley_8467917_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_8467917_Mtot.xvg -c mobley_8467917_dipcorr.xvg 			-eps mobley_8467917_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_8492526/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_8492526_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_8492526_msd.xvg -mol mobley_8492526_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_8492526_Mtot.xvg -c mobley_8492526_dipcorr.xvg 			-eps mobley_8492526_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_8514745/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_8514745_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_8514745_msd.xvg -mol mobley_8514745_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_8514745_Mtot.xvg -c mobley_8514745_dipcorr.xvg 			-eps mobley_8514745_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_8522124/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_8522124_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_8522124_msd.xvg -mol mobley_8522124_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_8522124_Mtot.xvg -c mobley_8522124_dipcorr.xvg 			-eps mobley_8522124_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_8525830/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_8525830_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_8525830_msd.xvg -mol mobley_8525830_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_8525830_Mtot.xvg -c mobley_8525830_dipcorr.xvg 			-eps mobley_8525830_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_852937/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_852937_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_852937_msd.xvg -mol mobley_852937_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_852937_Mtot.xvg -c mobley_852937_dipcorr.xvg 			-eps mobley_852937_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_8558116/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_8558116_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_8558116_msd.xvg -mol mobley_8558116_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_8558116_Mtot.xvg -c mobley_8558116_dipcorr.xvg 			-eps mobley_8558116_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_8573194/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_8573194_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_8573194_msd.xvg -mol mobley_8573194_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_8573194_Mtot.xvg -c mobley_8573194_dipcorr.xvg 			-eps mobley_8573194_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_8578590/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_8578590_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_8578590_msd.xvg -mol mobley_8578590_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_8578590_Mtot.xvg -c mobley_8578590_dipcorr.xvg 			-eps mobley_8578590_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_859464/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_859464_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_859464_msd.xvg -mol mobley_859464_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_859464_Mtot.xvg -c mobley_859464_dipcorr.xvg 			-eps mobley_859464_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_8614858/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_8614858_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_8614858_msd.xvg -mol mobley_8614858_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_8614858_Mtot.xvg -c mobley_8614858_dipcorr.xvg 			-eps mobley_8614858_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_8668219/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_8668219_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_8668219_msd.xvg -mol mobley_8668219_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_8668219_Mtot.xvg -c mobley_8668219_dipcorr.xvg 			-eps mobley_8668219_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_8685905/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_8685905_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_8685905_msd.xvg -mol mobley_8685905_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_8685905_Mtot.xvg -c mobley_8685905_dipcorr.xvg 			-eps mobley_8685905_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_8691603/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_8691603_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_8691603_msd.xvg -mol mobley_8691603_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_8691603_Mtot.xvg -c mobley_8691603_dipcorr.xvg 			-eps mobley_8691603_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_8705848/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_8705848_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_8705848_msd.xvg -mol mobley_8705848_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_8705848_Mtot.xvg -c mobley_8705848_dipcorr.xvg 			-eps mobley_8705848_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_8713762/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_8713762_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_8713762_msd.xvg -mol mobley_8713762_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_8713762_Mtot.xvg -c mobley_8713762_dipcorr.xvg 			-eps mobley_8713762_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_8723116/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_8723116_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_8723116_msd.xvg -mol mobley_8723116_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_8723116_Mtot.xvg -c mobley_8723116_dipcorr.xvg 			-eps mobley_8723116_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_8739734/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_8739734_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_8739734_msd.xvg -mol mobley_8739734_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_8739734_Mtot.xvg -c mobley_8739734_dipcorr.xvg 			-eps mobley_8739734_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_8746821/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_8746821_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_8746821_msd.xvg -mol mobley_8746821_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_8746821_Mtot.xvg -c mobley_8746821_dipcorr.xvg 			-eps mobley_8746821_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_8754702/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_8754702_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_8754702_msd.xvg -mol mobley_8754702_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_8754702_Mtot.xvg -c mobley_8754702_dipcorr.xvg 			-eps mobley_8754702_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_8764620/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_8764620_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_8764620_msd.xvg -mol mobley_8764620_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_8764620_Mtot.xvg -c mobley_8764620_dipcorr.xvg 			-eps mobley_8764620_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_8765203/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_8765203_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_8765203_msd.xvg -mol mobley_8765203_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_8765203_Mtot.xvg -c mobley_8765203_dipcorr.xvg 			-eps mobley_8765203_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_8772587/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_8772587_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_8772587_msd.xvg -mol mobley_8772587_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_8772587_Mtot.xvg -c mobley_8772587_dipcorr.xvg 			-eps mobley_8772587_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_8785107/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_8785107_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_8785107_msd.xvg -mol mobley_8785107_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_8785107_Mtot.xvg -c mobley_8785107_dipcorr.xvg 			-eps mobley_8785107_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_8789465/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_8789465_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_8789465_msd.xvg -mol mobley_8789465_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_8789465_Mtot.xvg -c mobley_8789465_dipcorr.xvg 			-eps mobley_8789465_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_8789864/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_8789864_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_8789864_msd.xvg -mol mobley_8789864_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_8789864_Mtot.xvg -c mobley_8789864_dipcorr.xvg 			-eps mobley_8789864_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_8798016/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_8798016_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_8798016_msd.xvg -mol mobley_8798016_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_8798016_Mtot.xvg -c mobley_8798016_dipcorr.xvg 			-eps mobley_8798016_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_8809190/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_8809190_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_8809190_msd.xvg -mol mobley_8809190_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_8809190_Mtot.xvg -c mobley_8809190_dipcorr.xvg 			-eps mobley_8809190_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_8809274/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_8809274_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_8809274_msd.xvg -mol mobley_8809274_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_8809274_Mtot.xvg -c mobley_8809274_dipcorr.xvg 			-eps mobley_8809274_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_8823527/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_8823527_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_8823527_msd.xvg -mol mobley_8823527_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_8823527_Mtot.xvg -c mobley_8823527_dipcorr.xvg 			-eps mobley_8823527_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_8827942/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_8827942_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_8827942_msd.xvg -mol mobley_8827942_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_8827942_Mtot.xvg -c mobley_8827942_dipcorr.xvg 			-eps mobley_8827942_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_8861672/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_8861672_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_8861672_msd.xvg -mol mobley_8861672_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_8861672_Mtot.xvg -c mobley_8861672_dipcorr.xvg 			-eps mobley_8861672_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_8882696/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_8882696_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_8882696_msd.xvg -mol mobley_8882696_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_8882696_Mtot.xvg -c mobley_8882696_dipcorr.xvg 			-eps mobley_8882696_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_8883511/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_8883511_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_8883511_msd.xvg -mol mobley_8883511_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_8883511_Mtot.xvg -c mobley_8883511_dipcorr.xvg 			-eps mobley_8883511_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_8885088/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_8885088_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_8885088_msd.xvg -mol mobley_8885088_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_8885088_Mtot.xvg -c mobley_8885088_dipcorr.xvg 			-eps mobley_8885088_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_8899867/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_8899867_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_8899867_msd.xvg -mol mobley_8899867_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_8899867_Mtot.xvg -c mobley_8899867_dipcorr.xvg 			-eps mobley_8899867_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_8916409/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_8916409_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_8916409_msd.xvg -mol mobley_8916409_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_8916409_Mtot.xvg -c mobley_8916409_dipcorr.xvg 			-eps mobley_8916409_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_8966374/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_8966374_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_8966374_msd.xvg -mol mobley_8966374_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_8966374_Mtot.xvg -c mobley_8966374_dipcorr.xvg 			-eps mobley_8966374_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_8983100/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_8983100_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_8983100_msd.xvg -mol mobley_8983100_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_8983100_Mtot.xvg -c mobley_8983100_dipcorr.xvg 			-eps mobley_8983100_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_900088/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_900088_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_900088_msd.xvg -mol mobley_900088_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_900088_Mtot.xvg -c mobley_900088_dipcorr.xvg 			-eps mobley_900088_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_9007496/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_9007496_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_9007496_msd.xvg -mol mobley_9007496_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_9007496_Mtot.xvg -c mobley_9007496_dipcorr.xvg 			-eps mobley_9007496_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_9015240/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_9015240_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_9015240_msd.xvg -mol mobley_9015240_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_9015240_Mtot.xvg -c mobley_9015240_dipcorr.xvg 			-eps mobley_9015240_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_9028462/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_9028462_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_9028462_msd.xvg -mol mobley_9028462_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_9028462_Mtot.xvg -c mobley_9028462_dipcorr.xvg 			-eps mobley_9028462_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_902954/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_902954_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_902954_msd.xvg -mol mobley_902954_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_902954_Mtot.xvg -c mobley_902954_dipcorr.xvg 			-eps mobley_902954_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_9029594/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_9029594_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_9029594_msd.xvg -mol mobley_9029594_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_9029594_Mtot.xvg -c mobley_9029594_dipcorr.xvg 			-eps mobley_9029594_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_9055303/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_9055303_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_9055303_msd.xvg -mol mobley_9055303_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_9055303_Mtot.xvg -c mobley_9055303_dipcorr.xvg 			-eps mobley_9055303_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_9073553/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_9073553_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_9073553_msd.xvg -mol mobley_9073553_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_9073553_Mtot.xvg -c mobley_9073553_dipcorr.xvg 			-eps mobley_9073553_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_9100956/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_9100956_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_9100956_msd.xvg -mol mobley_9100956_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_9100956_Mtot.xvg -c mobley_9100956_dipcorr.xvg 			-eps mobley_9100956_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_9112978/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_9112978_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_9112978_msd.xvg -mol mobley_9112978_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_9112978_Mtot.xvg -c mobley_9112978_dipcorr.xvg 			-eps mobley_9112978_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_9114381/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_9114381_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_9114381_msd.xvg -mol mobley_9114381_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_9114381_Mtot.xvg -c mobley_9114381_dipcorr.xvg 			-eps mobley_9114381_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_9121449/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_9121449_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_9121449_msd.xvg -mol mobley_9121449_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_9121449_Mtot.xvg -c mobley_9121449_dipcorr.xvg 			-eps mobley_9121449_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_9139060/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_9139060_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_9139060_msd.xvg -mol mobley_9139060_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_9139060_Mtot.xvg -c mobley_9139060_dipcorr.xvg 			-eps mobley_9139060_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_9185328/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_9185328_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_9185328_msd.xvg -mol mobley_9185328_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_9185328_Mtot.xvg -c mobley_9185328_dipcorr.xvg 			-eps mobley_9185328_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_9197172/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_9197172_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_9197172_msd.xvg -mol mobley_9197172_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_9197172_Mtot.xvg -c mobley_9197172_dipcorr.xvg 			-eps mobley_9197172_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_9201263/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_9201263_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_9201263_msd.xvg -mol mobley_9201263_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_9201263_Mtot.xvg -c mobley_9201263_dipcorr.xvg 			-eps mobley_9201263_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_9209581/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_9209581_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_9209581_msd.xvg -mol mobley_9209581_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_9209581_Mtot.xvg -c mobley_9209581_dipcorr.xvg 			-eps mobley_9209581_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_9246215/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_9246215_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_9246215_msd.xvg -mol mobley_9246215_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_9246215_Mtot.xvg -c mobley_9246215_dipcorr.xvg 			-eps mobley_9246215_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_9246351/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_9246351_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_9246351_msd.xvg -mol mobley_9246351_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_9246351_Mtot.xvg -c mobley_9246351_dipcorr.xvg 			-eps mobley_9246351_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_9257453/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_9257453_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_9257453_msd.xvg -mol mobley_9257453_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_9257453_Mtot.xvg -c mobley_9257453_dipcorr.xvg 			-eps mobley_9257453_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_9281946/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_9281946_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_9281946_msd.xvg -mol mobley_9281946_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_9281946_Mtot.xvg -c mobley_9281946_dipcorr.xvg 			-eps mobley_9281946_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_929676/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_929676_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_929676_msd.xvg -mol mobley_929676_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_929676_Mtot.xvg -c mobley_929676_dipcorr.xvg 			-eps mobley_929676_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_9407874/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_9407874_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_9407874_msd.xvg -mol mobley_9407874_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_9407874_Mtot.xvg -c mobley_9407874_dipcorr.xvg 			-eps mobley_9407874_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_9414831/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_9414831_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_9414831_msd.xvg -mol mobley_9414831_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_9414831_Mtot.xvg -c mobley_9414831_dipcorr.xvg 			-eps mobley_9414831_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_9434451/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_9434451_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_9434451_msd.xvg -mol mobley_9434451_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_9434451_Mtot.xvg -c mobley_9434451_dipcorr.xvg 			-eps mobley_9434451_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_9460824/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_9460824_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_9460824_msd.xvg -mol mobley_9460824_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_9460824_Mtot.xvg -c mobley_9460824_dipcorr.xvg 			-eps mobley_9460824_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_9478823/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_9478823_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_9478823_msd.xvg -mol mobley_9478823_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_9478823_Mtot.xvg -c mobley_9478823_dipcorr.xvg 			-eps mobley_9478823_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_9507933/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_9507933_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_9507933_msd.xvg -mol mobley_9507933_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_9507933_Mtot.xvg -c mobley_9507933_dipcorr.xvg 			-eps mobley_9507933_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_9510785/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_9510785_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_9510785_msd.xvg -mol mobley_9510785_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_9510785_Mtot.xvg -c mobley_9510785_dipcorr.xvg 			-eps mobley_9510785_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_951560/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_951560_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_951560_msd.xvg -mol mobley_951560_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_951560_Mtot.xvg -c mobley_951560_dipcorr.xvg 			-eps mobley_951560_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_9534740/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_9534740_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_9534740_msd.xvg -mol mobley_9534740_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_9534740_Mtot.xvg -c mobley_9534740_dipcorr.xvg 			-eps mobley_9534740_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_9557440/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_9557440_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_9557440_msd.xvg -mol mobley_9557440_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_9557440_Mtot.xvg -c mobley_9557440_dipcorr.xvg 			-eps mobley_9557440_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_9565165/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_9565165_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_9565165_msd.xvg -mol mobley_9565165_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_9565165_Mtot.xvg -c mobley_9565165_dipcorr.xvg 			-eps mobley_9565165_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_9571888/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_9571888_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_9571888_msd.xvg -mol mobley_9571888_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_9571888_Mtot.xvg -c mobley_9571888_dipcorr.xvg 			-eps mobley_9571888_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_9617923/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_9617923_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_9617923_msd.xvg -mol mobley_9617923_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_9617923_Mtot.xvg -c mobley_9617923_dipcorr.xvg 			-eps mobley_9617923_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_9624458/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_9624458_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_9624458_msd.xvg -mol mobley_9624458_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_9624458_Mtot.xvg -c mobley_9624458_dipcorr.xvg 			-eps mobley_9624458_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_9626434/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_9626434_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_9626434_msd.xvg -mol mobley_9626434_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_9626434_Mtot.xvg -c mobley_9626434_dipcorr.xvg 			-eps mobley_9626434_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_9653690/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_9653690_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_9653690_msd.xvg -mol mobley_9653690_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_9653690_Mtot.xvg -c mobley_9653690_dipcorr.xvg 			-eps mobley_9653690_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_967099/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_967099_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_967099_msd.xvg -mol mobley_967099_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_967099_Mtot.xvg -c mobley_967099_dipcorr.xvg 			-eps mobley_967099_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_9671033/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_9671033_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_9671033_msd.xvg -mol mobley_9671033_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_9671033_Mtot.xvg -c mobley_9671033_dipcorr.xvg 			-eps mobley_9671033_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_9705941/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_9705941_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_9705941_msd.xvg -mol mobley_9705941_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_9705941_Mtot.xvg -c mobley_9705941_dipcorr.xvg 			-eps mobley_9705941_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_9717937/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_9717937_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_9717937_msd.xvg -mol mobley_9717937_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_9717937_Mtot.xvg -c mobley_9717937_dipcorr.xvg 			-eps mobley_9717937_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_9729792/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_9729792_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_9729792_msd.xvg -mol mobley_9729792_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_9729792_Mtot.xvg -c mobley_9729792_dipcorr.xvg 			-eps mobley_9729792_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_9733743/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_9733743_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_9733743_msd.xvg -mol mobley_9733743_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_9733743_Mtot.xvg -c mobley_9733743_dipcorr.xvg 			-eps mobley_9733743_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_9740891/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_9740891_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_9740891_msd.xvg -mol mobley_9740891_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_9740891_Mtot.xvg -c mobley_9740891_dipcorr.xvg 			-eps mobley_9740891_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_9741965/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_9741965_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_9741965_msd.xvg -mol mobley_9741965_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_9741965_Mtot.xvg -c mobley_9741965_dipcorr.xvg 			-eps mobley_9741965_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_9794857/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_9794857_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_9794857_msd.xvg -mol mobley_9794857_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_9794857_Mtot.xvg -c mobley_9794857_dipcorr.xvg 			-eps mobley_9794857_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_9821936/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_9821936_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_9821936_msd.xvg -mol mobley_9821936_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_9821936_Mtot.xvg -c mobley_9821936_dipcorr.xvg 			-eps mobley_9821936_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_9838013/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_9838013_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_9838013_msd.xvg -mol mobley_9838013_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_9838013_Mtot.xvg -c mobley_9838013_dipcorr.xvg 			-eps mobley_9838013_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_9883303/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_9883303_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_9883303_msd.xvg -mol mobley_9883303_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_9883303_Mtot.xvg -c mobley_9883303_dipcorr.xvg 			-eps mobley_9883303_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_9897248/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_9897248_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_9897248_msd.xvg -mol mobley_9897248_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_9897248_Mtot.xvg -c mobley_9897248_dipcorr.xvg 			-eps mobley_9897248_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_9913368/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_9913368_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_9913368_msd.xvg -mol mobley_9913368_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_9913368_Mtot.xvg -c mobley_9913368_dipcorr.xvg 			-eps mobley_9913368_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_9942801/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_9942801_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_9942801_msd.xvg -mol mobley_9942801_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_9942801_Mtot.xvg -c mobley_9942801_dipcorr.xvg 			-eps mobley_9942801_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_994483/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_994483_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_994483_msd.xvg -mol mobley_994483_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_994483_Mtot.xvg -c mobley_994483_dipcorr.xvg 			-eps mobley_994483_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_9974966/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_9974966_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_9974966_msd.xvg -mol mobley_9974966_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_9974966_Mtot.xvg -c mobley_9974966_dipcorr.xvg 			-eps mobley_9974966_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

cd mobley_9979854/nptpd
echo "#----------------------------------------------------------------#"
echo "Thermodynamic properties."
echo "#----------------------------------------------------------------#"
 
mkdir Energy
cd Energy
seq 1 47 | gmx energy -f ../nptpd.edr -s ../nptpd.tpr -b 1000 -o mobley_9979854_energy.xvg
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Analysis of motor ability"
echo "#----------------------------------------------------------------#"
mkdir Msd
cd Msd
echo 0 | gmx msd -f ../nptpd.trr -s ../nptpd.tpr -o mobley_9979854_msd.xvg -mol mobley_9979854_mol.xvg -b 1000 
cd ../
 
echo "#----------------------------------------------------------------#"
echo "Dielectric constants"
echo "dipcorr.xvg:Dipole Autocorrelation Function"
echo "Mtot.xvg:Total dipole moment of the simulation box vs. time"
echo "epsilon: Epsilon and Kirkwood factors"
echo "#----------------------------------------------------------------#"

mkdir Dielectric
cd Dielectric
echo 0 | gmx dipoles -f ../nptpd.trr -s ../nptpd.tpr -o mobley_9979854_Mtot.xvg -c mobley_9979854_dipcorr.xvg 			-eps mobley_9979854_epsilon.xvg -b 1000 -corr mol -P 2
cd ../ 
cd ../

