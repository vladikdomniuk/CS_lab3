#!/bin/bash
cd /home/grid/testbed/tb022/CS_lab3-main
ml icc
yra=$(date+%A_%H_%M_%S)
w1=( "sse2" "sse3" "sse4.1" "sse4.2" "avx")
for p in "${w1[@]}";do
icc -O -m$p c.cpp -o yra$yra
echo
echo $p
time `for i in {1..700};do ./yra$yra;done`
done
~