#!/bin/bash
for O in {1..3};do
icc -O$O c.cpp -o yra
echo
echo "O"$O
time ./yra
done
~