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

if [ $# -eq 0 ]; then
	# install all if no args
	for file in scripts/* ; do
		run_script $file
	done
	exit 1
else
	# only install args provided
	for arg in "$@"; do
		file="scripts/${arg}.sh"

		if [ -e "$file" ]; then
			run_script $file
		else
			echo "->  ${ERR}No install script found for: '$file'${NC}"
		fi
	done
fi
