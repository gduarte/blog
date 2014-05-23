#!/bin/sh
gcc -ggdb -mpreferred-stack-boundary=2 -o $1 $1.c && ./$1
