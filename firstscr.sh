#!/bin/bash
cd /home/grid/testbed/tb022/CS_lab3-main
ml icc
for O in {1..3};do
icc -O$O c.cpp -o try
echo
echo "O"$O
time `for i in {1..700000};do ./try;done`
done
~