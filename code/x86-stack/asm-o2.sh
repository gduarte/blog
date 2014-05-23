#!/bin/sh
gcc -mpreferred-stack-boundary=2 -O2 -o $1-o2.s -S $1.c
