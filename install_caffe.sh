#!/bin/bash
sudo apt-get install libboost-all-dev
sudo apt-get install libprotobuf-dev libleveldb-dev libsnappy-dev libopencv-dev libboost-all-dev libhdf5-serial-dev
sudo apt-get install libgflags-dev libgoogle-glog-dev liblmdb-dev protobuf-compiler

cd /qeye/caffe-enet
mkdir cmake_build && cd cmake_build
cmake .. -DBUILD_SHARED_LIB=ON
cmake . -DCMAKE_BUILD_TYPE=Release 
make -j $(nproc) && make install 
make symlink_to_build
