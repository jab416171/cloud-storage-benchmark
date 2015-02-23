#!/bin/bash

mkdir -p ../results
timestamp=$(date +%F)-$(date +%T)
for i in {1..10}; do
	while [ -d ../hashes ]; do
		echo "Waiting for test to begin..."
		sleep 5
	done
	echo "Pass $i is starting"
	datebefore=$(date +%s)
	./test.sh
	dateafter=$(date +%s)
	duration=$((dateafter - datebefore))
	echo $duration >> ../results/$(basename $PWD)-$timestamp
	./reset.sh
	echo "Pass $i is done after $duration seconds"
done
./reset.sh
