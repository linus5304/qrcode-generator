#!/bin/bash

# Description : System Inventory
# Author : Gwenola
# Date : 15/11/2024

echo "OS : " uname -o
echo "Kernel Version: "uname -r
echo "CPU Info : " lscpu
echo "Memory Info : " free -m
echo "Hardrive Info: " lsblk
