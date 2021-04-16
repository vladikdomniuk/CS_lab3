#!/bin/bash
cd /home/grid/testbed/tb022/CS_lab3-main
ml icc
for O in {1..3};do
scr=_$(date +%A_%H_%M_%S_%N)
icc -O$O c.cpp -o try$scr
echo
echo "O"$O
time `for i in {1..10};do ./try$scr;done`
done
~