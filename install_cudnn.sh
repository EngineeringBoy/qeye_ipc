#!/bin/bash
cd cudnn
tar -xzvf cudnn-11.0-linux-x64-v8.0.2.39.tgz 
sudo cp cuda/include/cudnn*.h /usr/local/cuda/include
sudo cp cuda/lib64/libcudnn*.a /usr/local/cuda/lib64
sudo cp cuda/lib64/libcudnn*so.8.0.2 /usr/local/cuda/lib64

# sudo chmod a+r /usr/local/cuda/include/cudnn*.h /usr/local/cuda/lib64/libcudnn*
cd -
cd /usr/local/cuda-11.0/lib64

sudo ln -sf libcudnn_adv_infer.so.8.0.2 libcudnn_adv_infer.so.8
sudo ln -sf libcudnn_adv_infer.so.8 libcudnn_adv_infer.so

sudo ln -sf libcudnn_adv_train.so.8.0.2 libcudnn_adv_train.so.8
sudo ln -sf libcudnn_adv_train.so.8 libcudnn_adv_train.so

sudo ln -sf libcudnn_cnn_infer.so.8.0.2 libcudnn_cnn_infer.so.8
sudo ln -sf libcudnn_cnn_infer.so.8 libcudnn_cnn_infer.so

sudo ln -sf libcudnn_cnn_train.so.8.0.2 libcudnn_cnn_train.so.8
sudo ln -sf libcudnn_cnn_train.so.8 libcudnn_cnn_train.so

sudo ln -sf libcudnn_ops_infer.so.8.0.2 libcudnn_ops_infer.so.8
sudo ln -sf libcudnn_ops_infer.so.8 libcudnn_ops_infer.so

sudo ln -sf libcudnn_ops_train.so.8.0.2 libcudnn_ops_train.so.8
sudo ln -sf libcudnn_ops_train.so.8 libcudnn_ops_train.so

sudo ln -sf libcudnn.so.8.0.2 libcudnn.so.8
sudo ln -sf libcudnn.so.8 libcudnn.so
cd -
