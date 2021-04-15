#!/bin/bash
cd /home/grid/testbed/tb022/CS_lab3-main
ml icc
for O in {1..3};do
try=$(date+%A_%H_%M_%S)
icc -O$O c.cpp -o try$try
echo
echo "O"$O
time `for i in {1..700};do ./try$try;done`
done
~