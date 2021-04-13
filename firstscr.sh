#!/bin/bash
for O in {1..3};do
icc -O$O c.cpp -o yra
echo
echo "O"$O
time 'for i in {1..1000};do ./yra;done'
done
~