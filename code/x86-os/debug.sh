#!/bin/sh
gcc -O0 -ggdb -mpreferred-stack-boundary=2 -o $1 $1.c && gdb ./$1
