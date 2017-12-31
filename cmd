#!/bin/bash

CMD='/mnt/c/Windows/System32/cmd.exe'

HELP_STRING='Usage: cmd [COMMAND]...
  If COMMAND is provided, run that COMMAND then exit.
  If COMNAND is not provided, run cmd interactively.
  
Options:
  --help                    Show this help.
  --version                 Show the version number.'

VERSION_NUMBER='0.0.2'
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
