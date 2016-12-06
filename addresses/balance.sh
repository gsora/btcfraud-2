#!/bin/bash
for i in $(cat addresses); do
	fname=$i-balance
	echo "$(curl https://blockchain.info//q/addressbalance/$i)/100000000" | bc -l > $fname
	sleep 1
done
