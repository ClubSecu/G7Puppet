#!/bin/bash -eu
txtgreen="\e[32m"
txtred="\e[31m"
txtnormal="\e[0m"
usage(){
    echo -e "\
    Usage : $0 module_name...
    This script validates the puppet module"
}

action(){
    if $1
    then
        printf "%*b\r%s\n" "$(($(tput cols)+9))" "[${txtgreen}    OK    ${txtnormal}]" "$2"
    else
        printf "%*b\r%s\n" "$(($(tput cols)+9))" "[${txtred}   FAIL   ${txtnormal}]" "$2"
    fi
}

[ $# -ne 1 ] \
    && ( usage && exit 1 )\
    || module=$1

action "puppet parser validate $PWD/$module/manifests/*" "Checking parse for $module"
if puppet apply --modulepath=$PWD -e "include $module" --noop 
then
    printf "%*b\r%s\n" "$(($(tput cols)+9))" "[${txtgreen}    OK    ${txtnormal}]" "Trying a puppet apply !"
else
    printf "%*b\r%s\n" "$(($(tput cols)+9))" "[${txtred}   FAIL   ${txtnormal}]" "Trying a puppet apply !"
fi
