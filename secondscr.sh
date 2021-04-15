#!/bin/bash
cd /home/grid/testbed/tb022/CS_lab3-main
ml icc
scr=$(date+%A_%H_%M_%S)
w1=( "sse2" "sse3" "sse4.1" "sse4.2" "avx")
for p in "${w1[@]}";do
icc -O -m$p c.cpp -o yra$scr
echo
echo $p
time `for i in {1..700};do ./yra$scr;done`
done
~