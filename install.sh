#!/bin/bash

ERR=$(tput setaf 1)
MSG=$(tput setaf 2)
NC=$(tput sgr0)

run_script () {
	echo "________________________________________________________"
	echo "\n->  ${MSG}Running: ${NC}${1}"
	echo "________________________________________________________\n"
	sh "${1}"
}

if [ `id -u` -eq 0 ]; then
    # Running as root causes issues with pip's install dir and some other stuff
    echo "Script must not be run as root!"
    exit 1
fi

for file in scripts/* ; do
	run_script $file
done
