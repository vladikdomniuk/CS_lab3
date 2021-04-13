#!/bin/bash
for O in {1..3};do
icc -O$O c.cpp -o try
echo
echo "O"$O
time ./try
done
~