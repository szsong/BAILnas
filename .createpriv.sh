#!/bin/bash

cd /mnt/BAILnas/Pub
declare -a synclistshare=(
				"Anthony-Anthony-Anthony"
				"Diana-Diana-Diana"
				"Fupeng-Fupeng-Fupeng"
				"Guest-0guest-BAILguest"
				"Jayson-Jayson-jingjiang"
				"Jenny-Jenny-Jenny"
				"Kanheng-Kanheng-Kanheng"
				"Kevin-Kevin-Kevin"
				"Mitch-Mitch-Mitch"
				"Nhan-Nhan-nhanle"
				"Peijun-Peijun-Peijun"
				"Qinqin-Qinqin-Qinqin"
				"Ricky-Ricky-Ricky"
				"Shaozhen-Shaozhen-szsong"
				"Shuyuan-Shuyuan-Shuyuan"
				"Wei-Wei-Wei"
				"Yining-Yining-Yining"
				"Yuxuan-Yuxuan-yuxuan"
				"Zhongdi-Zhongdi-Zhongdi"
				)

	printf "\n=====Synchronizing shared folders=====\n\n\n" | tee -a $pathLOG
for i in "${synclistshare[@]}"
	do
		pathSOR=$(echo $i | cut -f1 -d-)
		pathTAR=$(echo $i | cut -f2 -d-)
		userTAR=$(echo $i | cut -f3 -d-)
		printf "\n=====Synchronizing $pathSOR to $pathTAR=====\n" | tee -a $pathLOG
		mkdir "$pathTAR.p/0priv"
		chown -R "$userTAR:wheel" "$pathTAR.p/0priv" | tee -a $pathLOG
	done
	