#!/bin/sh
# this is the least amount of optimization I know of that still delivers TCO
gcc -mpreferred-stack-boundary=2 -O1 -foptimize-sibling-calls -o $1-tco.s -S $1.c
