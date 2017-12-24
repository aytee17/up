#!/bin/bash

# Include the following line to .bashrc
# . /path/to/up

function up() {
    re='^[0-9]+$'
    if [ $# -gt 1 ] || (! [[ -z "$1" ]] && ! [[ $1 =~ $re ]])
    then
        printf "usage: up [levels]\n  levels: the number of directories to go up\n"
        return -1
    fi
    
    local count=${1-1}
    while [ $count -gt 0 ]
    do
       cd ..
       let "count--"
    done
}
