#!/bin/bash

## to install this project add "source ~/commandLineTool_config/bin/.clt.sh" to your /etc/bashrc file
function clt() {
  case $1 in
    -o | open)
        DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
        cd $DIR
        ./commandLineTool get $2;
        cd "$(cat recent_command.sh)"
        ;;
    -c | code)
        DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
        cd $DIR
        ./commandLineTool get $2;
        code "$(cat recent_command.sh)"
        cd "$(cat recent_command.sh)"
        ;;
    -a | add)
        DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
        cd $DIR
        ./commandLineTool add;
        ;;
    -r | remove)
        DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
        cd $DIR
        ./commandLineTool remove $2;
        ;;
    -l | list)
        DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
        cd $DIR
        ./commandLineTool list;
        ;;
    -h | help)
        DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
        cd $DIR
        ./commandLineTool help;
        ;;
    ${var+x} ) #checks if no argument was passed
        echo "Please enter a command argument"
        echo "For help run... clt help"
        ;;
    *) 
        echo "No path exists..."
esac
}


