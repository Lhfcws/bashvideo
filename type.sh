#! /usr/bin/bash


type() {
	mode=$1
	t=0.1
	if [[ $mode = "fast" ]]
	then
		t=0.05
		shift 1
	fi
	list=$@
	cnt=0
	mpg123 -q keypad.mp3&
	for text in $list
	do
		for ((i=0;i<${#text};i++)){
			cnt=$cnt+1
			rr=$((RANDOM % 3))+2
			if (($cnt >= $rr))
			then
				cnt=0
				mpg123 -q keypad.mp3&
			fi
			echo -e ${text:i:1}"\c"
			sleep ${t}s
		}
		echo -e " \c"
	done
	echo -e "\c"
	sleep 1s
	echo ""
}

type $@

