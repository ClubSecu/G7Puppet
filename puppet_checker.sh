#!/bin/bash -eu
puppet apply --modulepath=$(pwd) -e "include $1" --noop
