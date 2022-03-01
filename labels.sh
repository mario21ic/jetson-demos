#!/bin/bash

kubectl label node jetson61 jetson62 jetson63 node-role.kubernetes.io/worker=worker
