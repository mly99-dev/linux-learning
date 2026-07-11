#!/bin/bash

echo "===== System Info ====="

echo "Kernel:"
uname -r

echo "CPU:"
lscpu | grep "Model name"

echo "Memory:"
free -h

echo "Disk:"
df -h /
