#!/bin/bash
volume=$(amixer get Master | egrep -o "[0-9]+%" | tr -d '%'| head -n1)

# if [[ $volume -lt 1 ]]; then
#     echo -n '<fn=1></fn>'
# elif [[ $volume -lt 30 ]]; then
#     echo -n '<fn=1></fn>'
# else
#     echo -n '<fn=1></fn>'
# fi

if [[ $volume -lt 1 ]]; then
    echo -n ' '
elif [[ $volume -lt 30 ]]; then
    echo -n ' '
else
    echo -n ' '
fi

echo " $volume%"
