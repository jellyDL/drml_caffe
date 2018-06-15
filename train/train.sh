#!/bin/bash

LOG_FILE=$(date +%Y%m%d_%H_%M.log)

../caffe-1.0/build/tools/caffe train --solver=../model/solver.prototxt 2>&1| tee ${LOG_FILE} &
