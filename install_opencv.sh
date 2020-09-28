#!/bin/zsh
CURRENT_DIR=$(cd `dirname $0`; pwd)
echo $CURRENT_DIR

sudo apt update
sudo apt install build-essential cmake git pkg-config libgtk-3-dev libavcodec-dev libavformat-dev libswscale-dev libv4l-dev libxvidcore-dev libx264-dev
sudo apt install libjpeg-dev libpng-dev libtiff-dev gfortran openexr libatlas-base-dev python3-dev python3-numpy libtbb2 libtbb-dev libdc1394-22-dev

cd opencv
unzip opencv-4.4.0.zip
unzip opencv_contrib-4.4.0.zip
cd opencv-4.4.0
mkdir build && cd build
cmake -D CMAKE_BUILD_TYPE=RELEASE \
    -D CMAKE_INSTALL_PREFIX=/usr/local \
    -D INSTALL_C_EXAMPLES=ON \
    -D INSTALL_PYTHON_EXAMPLES=ON \
    -D OPENCV_GENERATE_PKGCONFIG=ON \
    -D OPENCV_EXTRA_MODULES_PATH=$CURRENT_DIR/opencv/opencv_contrib-4.4.0/modules \
    -D WITH_CUDA=ON \
    -D BUILD_opencv_cudacodec=OFF \
    -D BUILD_EXAMPLES=ON ..
make -j $(nproc)
sudo make install