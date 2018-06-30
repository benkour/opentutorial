 #!/bin/bash         
source /opt/openfoam5/etc/bashrc
#decomposePar
#mpirun -np 4 rhoPimpleFoam -parallel | tee saverun.txt
#reconstructPar
#rm -f -r processor*
rhoPimpleFoam | tee saverun.txt
