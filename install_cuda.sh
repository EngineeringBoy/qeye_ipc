#!/bin/zsh
cd cuda
wget https://developer.download.nvidia.com/compute/cuda/11.0.3/local_installers/cuda_11.0.3_450.51.06_linux.run
sudo sh cuda_11.0.3_450.51.06_linux.run
echo "export PATH=/usr/local/cuda-11.0/bin\${PATH:+:\$PATH}}
export LD_LIBRARY_PATH=/usr/local/cuda-11.0/lib64\${LD_LIBRARY_PATH:+:\${LD_LIBRARY_PATH}}" >> ~/.zshrc
source ~/.zshrc
cd -