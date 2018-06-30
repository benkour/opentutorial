 #!/bin/bash         
#source /opt/openfoam5/etc/bashrc
blockMesh | tee blockMesh.txt
surfaceFeatureExtract | tee surfaceFeatureExtract.txt
snappyHexMesh -overwrite | tee snappyHexMesh.txt
#decomposePar
#mpirun -np 4 rhoPimpleFoam -parallel | tee saverun.txt
#reconstructPar
#rm -f -r processor*
rhoPimpleFoam #| tee saverun.txt
