#!/bin/zsh
# LICENSE: PUBLIC DOMAIN
# switch between my layouts

# If an explicit layout is provided as an argument, use it. Otherwise, select the next layout from
# the set [us, it, fr].
if [[ -n "$1" ]]; then
    setxkbmap $1
else
    layout=$(setxkbmap -query | grep 'layout' | cut -d':' -f2 | sed 's/ //g')
    case $layout in
        us)
                setxkbmap bg phonetic 
            ;;
        bg)
                setxkbmap us 
            ;;
        *)
                setxkbmap us
            ;;
    esac
fi
