#!/bin/bash
brightness=$(lux -G | tr -d '%')

if [[ $brightness -lt 1 ]]; then
    echo -n ' '
elif [[ $brightness -lt 50 ]]; then
    echo -n ' '
else
    echo -n ' '
fi
echo " $brightness%"
