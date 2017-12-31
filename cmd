#!/bin/bash

CMD='/mnt/c/Windows/System32/cmd.exe'

HELP_STRING='Usage: cmd [command]'
VERSION_NUMBER='0.0.1'
VERSION_STRING="WSL-CMD version $VERSION_NUMBER"

if [[ $# -eq 0 ]] ; then
    "$CMD"
    echo
else
    if [[ "$1" = '--help' ]] ; then
        echo "$HELP_STRING"
    elif [[ "$1" = '--version' ]] ; then
        echo "$VERSION_STRING"
    else
        COMMAND="${@:1}"
        echo "$($CMD /c $COMMAND)"
    fi
fi
