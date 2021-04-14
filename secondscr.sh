#!/bin/bash
cd /home/grid/testbed/tb022/CS_lab3-main
ml icc
w1=( "sse2" "sse3" "sse4.1" "sse4.2" "avx")
for p in "${w1[@]}";do
icc -O -m$p c.cpp -o yra
echo
echo $p
time `for i in {1..1200000};do ./yra;done`
done
~