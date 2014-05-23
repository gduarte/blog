#!/bin/sh
gcc -mpreferred-stack-boundary=2 -S $1.c
