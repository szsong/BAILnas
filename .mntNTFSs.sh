#!/bin/bash
set -x
printf "Hello, $USER.\n"
echo "Creating folders for user: $1, folder name: $2"
declare -a ntfstomount=(
				"24"
				"25"
				"26"
				"27"
				"28"
				"29"
				"31"
				"32"
				)
for i in "${ntfstomount[@]}"
	do
		printf "\n=====mounting$i=====\n"
		mkdir "/mnt/s$i"
		ntfs-3g /dev/da$(echo $i)p2 /mnt/s$(echo $i) -o ro,uid=1000
	done