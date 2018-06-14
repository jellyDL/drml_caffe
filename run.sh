#!/bin/bash

wget https://github.com/BVLC/caffe/archive/1.0.tar.gz
tar xvf 1.0.tar.gz
rm 1.0.tar.gz -rf

cp Makefile.config caffe-1.0
cp caffe.proto caffe-1.0/src/caffe/proto/

cp src/* caffe-1.0/src/caffe/layers/
cp include/* caffe-1.0/include/caffe/layers/

cd caffe-1.0
make -j12
if [ "$$?" != "0" ]; then
    make -j12
fi



