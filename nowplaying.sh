#!/bin/bash

root_dir=$0
if [ "$(readlink ${root_dir})" != "" ]; then
	root_dir=$(readlink ${root_dir})
fi
root_dir=$(dirname ${root_dir})

playerctl=$(which playerctl)
if [ "${playerctl}" = "" ]; then
	echo "ERROR: playerctl is not installed." 1>&2
	exit 1
fi

template_file="${root_dir}/template.txt"
if [ ! -f ${template_file} ]; then
	echo "ERROR: template file '${template_file}' is not found." 1>&2
	exit 1
fi

if [ "$1" = "-c" ]; then
	${playerctl} metadata --format "$(cat ${template_file})" | xclip -selection clipboard
	echo "Copied." 1>&2
else
	${playerctl} metadata --format "$(cat ${template_file})"
fi

