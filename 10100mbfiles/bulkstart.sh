#!/bin/bash

mkdir ../hashes
echo "Delete ../hashes to begin"

for i in {1..10}; do
	while [ -d ../hashes ]; do
		sleep 5
	done
	./init.sh
	echo "Pass $i is done"
done
