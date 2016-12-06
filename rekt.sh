#!/bin/bash
for line in $(cat $1); do 
	if [[ ${#line} -ge 26 && ${#line} -le 35 ]]; then
		if [[ $line == 1* || $line == 3*  ]]; then
			echo $line
		fi
	fi
done
