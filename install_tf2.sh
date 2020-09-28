#!/bin/zsh
conda create -n tf2 python=3.7
source ~/.zshrc
conda activate tf2
pip install -i https://pypi.doubanio.com/simple/ tf-nightly # unstable, cuda 11.0
