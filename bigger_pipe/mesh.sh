 #!/bin/bash         
source /opt/openfoam5/etc/bashrc
blockMesh | tee blockMesh.txt
surfaceFeatureExtract | tee surfaceFeatureExtract.txt
snappyHexMesh -overwrite | tee snappyHexMesh.txt

