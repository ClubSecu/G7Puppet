#!/bin/bash -eu

usage(){
    echo -e "\
    Usage : $0 module_name... \
    This script validates the puppet module"
}

[ $# -ne 1 ] \
    && usage \
    || module=$1

echo -e "Checking if directory exists...\t"
[ -d $module ] \
    && echo -e "OK !\t" \
    || ( echo -e "KO !" && exit 1 )

echo -e "Checking parse for $module"
puppet parser validate $PWD/$module/manifests/* \
    && echo -e "Parse OK !" \
    || ( echo -e "Parse KO !" && exit 1 )

echo -e "Trying a puppet apply !\t"
puppet apply --modulepath=$PWD -e "include $module" --noop \
    && echo -e "module OK !" \
    || ( echo -e "module KO !" && exit 1 )
