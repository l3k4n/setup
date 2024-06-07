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

for file in scripts/* ; do
	run_script $file
done
