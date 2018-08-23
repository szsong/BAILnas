#!/bin/bash
set -x
printf "Hello, $USER.\n"
echo "Creating folders for user: $1, folder name: $2"
declare -a ntfstomount=(
				"30"
				"33"
				"34"
				"35"
				"36"
				"37"
				"38"
				"39"
				)
for i in "${ntfstomount[@]}"
	do
		printf "\n=====mounting$i=====\n"
		mkdir "/mnt/q$i"
		ntfs-3g /dev/da$(echo $i)p2 /mnt/q$(echo $i) -o ro,uid=1000
	done