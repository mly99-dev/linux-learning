#!/bin/bash

echo "===== Network Info ====="

echo ""
echo "IP Address:"
hostname -I

echo ""
echo "Network Interface:"
ip addr | grep "state UP"

echo ""
echo "DNS:"
cat /etc/resolv.conf | grep nameserver

echo ""
echo "Internet:"
ping -c 1 github.com >/dev/null 2>&1

if [ $? -eq 0 ]; then
    echo "Connection OK"
else
    echo "Connection Failed"
fi
