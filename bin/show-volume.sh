#!/bin/bash
# volume=$(amixer get Master | egrep -o "[0-9]+%" | tr -d '%'| head -n1)
volume1=$(pacmd list-sinks | awk '/^^[[:space:]]volume/ { print $5 }' | tr -d '%')
volume2=$(pacmd list-sinks | awk '/^^[[:space:]]volume/ { print $12 }' | tr -d '%')
muted=$(pacmd list-sinks | awk '/muted/ { print $2 }')

function show_vol() {
  if [[ $1 -lt 1 ]]; then
      echo -n ' '
  elif [[ $1 -lt 30 ]]; then
      echo -n ' '
  elif [[ $1 -lt 101 ]]; then
      echo -n ' '
  else
      echo -n '<fc=#EE1111> '
  fi

  # echo " $1%"
  if [[ $1 -gt 100 ]]; then
    echo " $1%</fc>"
  else
    echo " $1%"
  fi
}

if [[ $muted == 'yes' ]]; then
  echo -n '<fc=#EE6666> muted</fc>'
elif [[ $volume1 -ne $volume2 ]]; then
  echo 'L:'
  show_vol $volume1
  echo 'R:'
  show_vol $volume2
else
  show_vol $volume1
fi
